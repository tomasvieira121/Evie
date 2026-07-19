package com.evie.sidescreen.tiles.imageviewer;

import android.content.Context;
import android.text.TextUtils;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.Pair;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.LayerStack;
import com.evie.sidescreen.SideScreenDependencies;
import com.evie.sidescreen.StackLayer;
import com.evie.sidescreen.exoplayer.ExoPlayerEvent;
import com.evie.sidescreen.exoplayer.ExoPlayerObservable;
import com.evie.sidescreen.exoplayer.VideoFocusHandler;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.lifecycle.LifecycleEvent;
import com.evie.sidescreen.tiles.TopLevelTilePresenterFactory;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.BehaviorSubject;
import io.reactivex.subjects.Subject;
import java.util.concurrent.TimeUnit;
import org.schema.MediaObject;
import org.schema.MediaSelector;
import org.schema.NewsArticle;
import org.schema.VideoObject;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class PopupVideoViewerPresenter extends PopupPresenter<PopupVideoViewerViewHolder> implements StackLayer {
    private final ActivityStarter mActivityStarter;
    private final NewsArticle mArticle;
    private long mAutoplayDuration;
    private final Subject<Boolean> mFocus;
    private long mLastKnownVideoDuration;
    private long mLastKnownVideoPosition;
    private long mLastStartPosition;
    private final LifecycleCallbacks mLifecycleCallbacks;
    private boolean mMediaSelected;
    private final Subject<MediaState> mMediaState;
    private final Subject<Boolean> mPlay;
    private boolean mPlayOnce;
    private final ExoPlayerObservable mPlayer;
    private int mServerDefinedAspectRatioHeight;
    private int mServerDefinedAspectRatioWidth;
    private TextureView mTextureView;
    private final VideoFocusHandler mVideoFocusHandler;
    private VideoPopupDismissListener mVideoPopupDismissListener;

    /* JADX INFO: Access modifiers changed from: private */
    enum MediaState {
        VIDEO_LOADING,
        VIDEO_READY,
        VIDEO_PAUSED,
        VIDEO_ERROR,
        IMAGE,
        VIDEO_PREVIEW
    }

    public interface VideoPopupDismissListener {
        void onPopupDismiss(long j, TextureView textureView);
    }

    public PopupVideoViewerPresenter(String str, String str2, NewsArticle newsArticle, MediaObject mediaObject, View view, long j, TextureView textureView, VideoPopupDismissListener videoPopupDismissListener, @Provided ExoPlayerObservable exoPlayerObservable, @Provided LayerStack layerStack, @Provided PopupViewProvider popupViewProvider, @Provided TopLevelTilePresenterFactory topLevelTilePresenterFactory, @Provided ActivityStarter activityStarter, @Provided LifecycleCallbacks lifecycleCallbacks, @Provided VideoFocusHandler videoFocusHandler, @Provided SideScreenDependencies.PopupListener popupListener) {
        super(str, str2, newsArticle, mediaObject, view, layerStack, popupViewProvider, topLevelTilePresenterFactory, activityStarter, popupListener);
        this.mPlay = BehaviorSubject.create();
        this.mPlayOnce = false;
        this.mMediaState = BehaviorSubject.createDefault(MediaState.IMAGE);
        this.mFocus = BehaviorSubject.createDefault(false);
        this.mMediaSelected = false;
        this.mLastKnownVideoDuration = -1L;
        this.mLastKnownVideoPosition = 0L;
        this.mServerDefinedAspectRatioWidth = 16;
        this.mServerDefinedAspectRatioHeight = 9;
        this.mLastStartPosition = 0L;
        this.mAutoplayDuration = 0L;
        this.mLastKnownVideoPosition = j;
        this.mTextureView = textureView;
        this.mPlayer = exoPlayerObservable;
        this.mLifecycleCallbacks = lifecycleCallbacks;
        this.mVideoFocusHandler = videoFocusHandler;
        this.mArticle = newsArticle;
        this.mActivityStarter = activityStarter;
        this.mVideoPopupDismissListener = videoPopupDismissListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.evie.sidescreen.tiles.imageviewer.PopupPresenter
    public PopupVideoViewerViewHolder createNewViewHolderInstance(View view, ViewGroup viewGroup) {
        return new PopupVideoViewerViewHolder(view, viewGroup);
    }

    @Override // com.evie.sidescreen.tiles.imageviewer.PopupPresenter
    public int getPopupType() {
        return PopupVideoViewerViewHolder.f366ID;
    }

    @Override // com.evie.sidescreen.tiles.imageviewer.PopupPresenter
    protected void onBindViewHolder(PopupViewHolder popupViewHolder) {
        super.onBindViewHolder(popupViewHolder);
        this.mPlayer.initialize();
        selectMediaAspectRatio(popupViewHolder.itemView.getContext());
        ((PopupVideoViewerViewHolder) this.mViewHolder).setVideoFrameAspectRatio(this.mServerDefinedAspectRatioWidth, this.mServerDefinedAspectRatioHeight);
        CompositeDisposable compositeDisposable = this.mDisposables;
        Observable<Boolean> observableRegister = this.mVideoFocusHandler.register(this);
        final Subject<Boolean> subject = this.mFocus;
        subject.getClass();
        compositeDisposable.add(observableRegister.subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$usAR21Wj9EIH8pI58Ljt4un3Wnc
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                subject.onNext((Boolean) obj);
            }
        }));
        this.mVideoFocusHandler.takeSpecialFocus(this);
        if (this.mArticle.getVideo() != null && !this.mArticle.getVideo().isEmpty()) {
            this.mMediaState.onNext(MediaState.VIDEO_PREVIEW);
        }
        this.mDisposables.add(Observable.combineLatest(this.mFocus, this.mPlay, new BiFunction() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$jLZC61SXYy7GWujl-NhzjNKZotQ
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new Pair((Boolean) obj, (Boolean) obj2);
            }
        }).filter(new Predicate() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$PopupVideoViewerPresenter$OnVROc6N6Cl1Yp88-a6RgpcO3uc
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return this.f$0.mMediaState.blockingFirst().equals(PopupVideoViewerPresenter.MediaState.VIDEO_PREVIEW);
            }
        }).debounce(new Function() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$PopupVideoViewerPresenter$8o_BBfWi55ZZ94g8-7GHkhr1PsM
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Observable.timer(((Boolean) ((Pair) obj).first).booleanValue() ? 200L : 0L, TimeUnit.MILLISECONDS);
            }
        }).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$PopupVideoViewerPresenter$9shTIFMQ5cPZm5TmVk0Ax_g2E34
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                PopupVideoViewerPresenter.lambda$onBindViewHolder$2(this.f$0, (Pair) obj);
            }
        }, new $$Lambda$PopupVideoViewerPresenter$ZVa8MPt4uJO3zKSeFUB5cM0zdA(this)));
        this.mDisposables.add(Observable.combineLatest(this.mFocus, this.mMediaState, new BiFunction() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$PopupVideoViewerPresenter$7nGbUjQBMzf3J9CO0iZcyLCT_Fg
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return PopupVideoViewerPresenter.lambda$onBindViewHolder$3((Boolean) obj, (PopupVideoViewerPresenter.MediaState) obj2);
            }
        }).distinctUntilChanged().observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$PopupVideoViewerPresenter$YLWnVzFD6YG3gBITymICAuaSBTU
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.bindMediaWithState((PopupVideoViewerPresenter.MediaState) obj);
            }
        }, new $$Lambda$PopupVideoViewerPresenter$ZVa8MPt4uJO3zKSeFUB5cM0zdA(this)));
        this.mDisposables.add(this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.RESUME).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$PopupVideoViewerPresenter$nKzsgqDHrXzxOm0CJ5wFIHCzazc
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.dismissPopup(false);
            }
        }, new Consumer() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$PopupVideoViewerPresenter$YRkj7hkedazi5GDu0g8uubQOyxE
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.handleUnanticipatedException((Throwable) obj);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void lambda$onBindViewHolder$2(PopupVideoViewerPresenter popupVideoViewerPresenter, Pair pair) throws Exception {
        if (((Boolean) pair.first).booleanValue() && ((Boolean) pair.second).booleanValue()) {
            popupVideoViewerPresenter.mMediaState.onNext(MediaState.VIDEO_LOADING);
        }
    }

    static /* synthetic */ MediaState lambda$onBindViewHolder$3(Boolean bool, MediaState mediaState) throws Exception {
        return (bool.booleanValue() || mediaState != MediaState.VIDEO_READY) ? mediaState : MediaState.VIDEO_PAUSED;
    }

    private void bindPreviewImage() {
        if (this.mTextureView != null) {
            ((PopupVideoViewerViewHolder) this.mViewHolder).showSnapshot(this.mTextureView.getBitmap());
            return;
        }
        ((PopupVideoViewerViewHolder) this.mViewHolder).hideSnapshot();
        MediaObject mediaObjectSelectMedia = MediaSelector.selectMedia(this.mArticle.getVideo(), getScreenWidthPixels(((PopupVideoViewerViewHolder) this.mViewHolder).itemView.getContext()), 1.7777778f);
        String previewUrl = mediaObjectSelectMedia instanceof VideoObject ? ((VideoObject) mediaObjectSelectMedia).getPreviewUrl() : null;
        if (!TextUtils.isEmpty(previewUrl)) {
            ((PopupVideoViewerViewHolder) this.mViewHolder).showImage(previewUrl);
        } else {
            ((PopupVideoViewerViewHolder) this.mViewHolder).hideImage();
        }
    }

    private void selectMediaAspectRatio(Context context) {
        int iIntValue;
        if (this.mMediaSelected) {
            return;
        }
        this.mMediaSelected = true;
        MediaObject mediaObjectSelectMedia = MediaSelector.selectMedia(this.mArticle.getVideo(), getScreenWidthPixels(context), 1.7777778f);
        if (mediaObjectSelectMedia instanceof VideoObject) {
            this.mPlay.onNext(true);
        }
        int i = 0;
        if (mediaObjectSelectMedia != null) {
            int iIntValue2 = mediaObjectSelectMedia.getWidth() != null ? mediaObjectSelectMedia.getWidth().intValue() : 0;
            iIntValue = mediaObjectSelectMedia.getHeight() != null ? mediaObjectSelectMedia.getHeight().intValue() : 0;
            i = iIntValue2;
        } else {
            iIntValue = 0;
        }
        if (i == 0 || iIntValue == 0) {
            i = 16;
            iIntValue = 9;
        }
        int iMin = Math.min(i, iIntValue);
        this.mServerDefinedAspectRatioWidth = i;
        this.mServerDefinedAspectRatioHeight = iMin;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindMediaWithState(MediaState mediaState) {
        int screenWidthPixels = getScreenWidthPixels(((PopupVideoViewerViewHolder) this.mViewHolder).itemView.getContext());
        switch (mediaState) {
            case VIDEO_LOADING:
                String strSelectMediaUrl = MediaSelector.selectMediaUrl(this.mArticle.getVideo(), screenWidthPixels, 1.7777778f);
                if (!TextUtils.isEmpty(strSelectMediaUrl)) {
                    this.mDisposables.add(this.mPlayer.prepare(strSelectMediaUrl).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$PopupVideoViewerPresenter$qD-k4qr_P2jN8xKB20uu5Gv2y6o
                        @Override // io.reactivex.functions.Consumer
                        public final void accept(Object obj) throws Exception {
                            PopupVideoViewerPresenter.lambda$bindMediaWithState$6(this.f$0, (ExoPlayerEvent) obj);
                        }
                    }, new $$Lambda$PopupVideoViewerPresenter$ZVa8MPt4uJO3zKSeFUB5cM0zdA(this)));
                }
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideError();
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideVideoProgress(false);
                ((PopupVideoViewerViewHolder) this.mViewHolder).showLoading();
                bindPreviewImage();
                ((PopupVideoViewerViewHolder) this.mViewHolder).showVideo(this.mPlayer.getPlayer());
                this.mPlayer.seek(this.mLastKnownVideoPosition);
                break;
            case VIDEO_READY:
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideError();
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideLoading();
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideImage();
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideSnapshot();
                if (this.mLastKnownVideoDuration == -1) {
                    this.mLastKnownVideoDuration = this.mPlayer.getDuration();
                }
                ((PopupVideoViewerViewHolder) this.mViewHolder).showVideoProgressText(this.mLastKnownVideoDuration - this.mLastKnownVideoPosition);
                ((PopupVideoViewerViewHolder) this.mViewHolder).showVideoProgress(false);
                this.mLastStartPosition = this.mPlayer.getPosition();
                if (this.mPlay.blockingFirst().booleanValue()) {
                    ((PopupVideoViewerViewHolder) this.mViewHolder).hidePlayButton();
                    this.mPlayer.setVolume(0.0f);
                    this.mPlayer.play();
                } else {
                    ((PopupVideoViewerViewHolder) this.mViewHolder).showPlayButton();
                    this.mPlayer.pause();
                }
                break;
            case VIDEO_PAUSED:
                this.mPlayer.pause();
                long position = this.mPlayer.getPosition();
                this.mAutoplayDuration += position - this.mLastStartPosition;
                this.mLastStartPosition = position;
                this.mLastKnownVideoPosition = position;
                break;
            case VIDEO_ERROR:
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideLoading();
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideVideo();
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideVideoProgress(false);
                ((PopupVideoViewerViewHolder) this.mViewHolder).showImage(MediaSelector.selectMediaUrl(this.mArticle.getImage(), screenWidthPixels, 1.7777778f));
                ((PopupVideoViewerViewHolder) this.mViewHolder).showError();
                ((PopupVideoViewerViewHolder) this.mViewHolder).hidePlayButton();
                this.mPlayer.pause();
                break;
            case IMAGE:
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideError();
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideLoading();
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideVideo();
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideVideoProgress(false);
                ((PopupVideoViewerViewHolder) this.mViewHolder).hidePlayButton();
                ((PopupVideoViewerViewHolder) this.mViewHolder).showImage(MediaSelector.selectMediaUrl(this.mArticle.getImage(), screenWidthPixels, 1.7777778f));
                break;
            case VIDEO_PREVIEW:
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideError();
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideLoading();
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideVideo();
                ((PopupVideoViewerViewHolder) this.mViewHolder).hideVideoProgress(false);
                if (this.mPlay.blockingFirst().booleanValue()) {
                    ((PopupVideoViewerViewHolder) this.mViewHolder).hidePlayButton();
                } else {
                    ((PopupVideoViewerViewHolder) this.mViewHolder).showPlayButton();
                }
                bindPreviewImage();
                break;
        }
    }

    public static /* synthetic */ void lambda$bindMediaWithState$6(PopupVideoViewerPresenter popupVideoViewerPresenter, ExoPlayerEvent exoPlayerEvent) throws Exception {
        if (exoPlayerEvent instanceof ExoPlayerEvent.Ready) {
            popupVideoViewerPresenter.mMediaState.onNext(MediaState.VIDEO_READY);
            return;
        }
        if (exoPlayerEvent instanceof ExoPlayerEvent.Error) {
            popupVideoViewerPresenter.mMediaState.onNext(MediaState.VIDEO_ERROR);
            return;
        }
        if (exoPlayerEvent instanceof ExoPlayerEvent.Progress) {
            long duration = popupVideoViewerPresenter.mPlayer.getDuration();
            long position = ((ExoPlayerEvent.Progress) exoPlayerEvent).getPosition();
            ((PopupVideoViewerViewHolder) popupVideoViewerPresenter.mViewHolder).showVideoProgressText(duration - position);
            popupVideoViewerPresenter.mLastKnownVideoDuration = duration;
            popupVideoViewerPresenter.mLastKnownVideoPosition = position;
            return;
        }
        if (!(exoPlayerEvent instanceof ExoPlayerEvent.SizeChanged) && (exoPlayerEvent instanceof ExoPlayerEvent.Finished)) {
            if (popupVideoViewerPresenter.mPlayOnce) {
                popupVideoViewerPresenter.mPlay.onNext(false);
            }
            popupVideoViewerPresenter.mPlayer.seek(0L);
            if (popupVideoViewerPresenter.mPlay.blockingFirst().booleanValue()) {
                return;
            }
            popupVideoViewerPresenter.mPlayer.pause();
            ((PopupVideoViewerViewHolder) popupVideoViewerPresenter.mViewHolder).showPlayButton();
        }
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected void onUnbindViewHolder() {
        super.onUnbindViewHolder();
        this.mPlayer.dispose();
        this.mVideoFocusHandler.unregister(this);
    }

    @Override // com.evie.sidescreen.tiles.imageviewer.PopupPresenter
    public void dismissPopup(boolean z) {
        this.mMediaState.onNext(MediaState.VIDEO_PAUSED);
        this.mTextureView = (TextureView) ((PopupVideoViewerViewHolder) this.mViewHolder).mVideo.getVideoSurfaceView();
        this.mVideoPopupDismissListener.onPopupDismiss(this.mLastKnownVideoPosition, this.mTextureView);
        this.mVideoFocusHandler.loseSpecialFocus(this);
        super.dismissPopup(z);
    }
}
