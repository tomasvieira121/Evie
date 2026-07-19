package com.evie.sidescreen.tiles.articles;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.Pair;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.exoplayer.ExoPlayerEvent;
import com.evie.sidescreen.exoplayer.ExoPlayerObservable;
import com.evie.sidescreen.exoplayer.VideoFocusHandler;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.lifecycle.LifecycleEvent;
import com.evie.sidescreen.relatedcontent.RelatedVideosActivity;
import com.evie.sidescreen.tiles.imageviewer.PopupVideoViewerPresenter;
import com.evie.sidescreen.tiles.imageviewer.PopupVideoViewerPresenterFactory;
import com.evie.sidescreen.tiles.imageviewer.PopupVideoViewerViewHolder;
import com.evie.sidescreen.topicdetail.TopicDetailActivity;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.BiPredicate;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.BehaviorSubject;
import io.reactivex.subjects.Subject;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.schema.MediaObject;
import org.schema.MediaSelector;
import org.schema.NewsArticle;
import org.schema.VideoObject;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class ArticleTileHeroVideoPresenter extends AbstractHeroPresenter<ArticleTileHeroVideoViewHolder> implements PopupVideoViewerPresenter.VideoPopupDismissListener {
    private final ActivityStarter mActivityStarter;
    private final NewsArticle mArticle;
    private Observable<Boolean> mAutoPlayObservable;
    private Boolean mAutoPlayOn;
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
    private final PopupVideoViewerPresenterFactory mPopupVideoViewerPresenterFactory;
    private int mServerDefinedAspectRatioHeight;
    private int mServerDefinedAspectRatioWidth;
    private final VideoFocusHandler mVideoFocusHandler;
    private final int mVideoFocusPriority;

    /* JADX INFO: Access modifiers changed from: private */
    enum MediaState {
        VIDEO_LOADING,
        VIDEO_READY,
        VIDEO_PAUSED,
        VIDEO_ERROR,
        IMAGE,
        SNAPSHOT,
        VIDEO_PREVIEW
    }

    @Override // com.evie.sidescreen.tiles.TilePresenter, com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowTopTileDivider() {
        return false;
    }

    public ArticleTileHeroVideoPresenter(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo, @Provided ActivityStarter activityStarter, @Provided ExoPlayerObservable exoPlayerObservable, @Provided VideoFocusHandler videoFocusHandler, @Provided AnalyticsModel analyticsModel, @Provided LifecycleCallbacks lifecycleCallbacks, @Provided PopupVideoViewerPresenterFactory popupVideoViewerPresenterFactory, @Provided Observable<Boolean> observable) {
        super(sideScreenContentTile, screenInfo, analyticsModel);
        this.mPlay = BehaviorSubject.create();
        this.mPlayOnce = true;
        this.mMediaState = BehaviorSubject.createDefault(MediaState.IMAGE);
        this.mFocus = BehaviorSubject.createDefault(false);
        this.mMediaSelected = false;
        this.mAutoPlayOn = false;
        this.mLastKnownVideoDuration = -1L;
        this.mLastKnownVideoPosition = 0L;
        this.mServerDefinedAspectRatioWidth = 16;
        this.mServerDefinedAspectRatioHeight = 9;
        this.mLastStartPosition = 0L;
        this.mAutoplayDuration = 0L;
        this.mArticle = newsArticle;
        this.mActivityStarter = activityStarter;
        this.mPlayer = exoPlayerObservable;
        this.mVideoFocusPriority = sideScreenContentTile.getPositionY();
        this.mVideoFocusHandler = videoFocusHandler;
        this.mLifecycleCallbacks = lifecycleCallbacks;
        this.mAutoPlayObservable = observable;
        this.mPlay.onNext(this.mAutoPlayOn);
        this.mPopupVideoViewerPresenterFactory = popupVideoViewerPresenterFactory;
    }

    @Override // com.evie.sidescreen.tiles.TilePresenter, com.evie.sidescreen.mvp.ItemPresenter
    public void onVisibilityChanged(boolean z) {
        super.onVisibilityChanged(z);
        this.mPlay.onNext(this.mAutoPlayOn);
        if (z) {
            this.mVideoFocusHandler.requestFocus(this.mVideoFocusPriority, this);
        } else {
            this.mVideoFocusHandler.unrequestFocus(this.mVideoFocusPriority, this);
            this.mAutoplayDuration += this.mPlayer.getPosition() - this.mLastStartPosition;
        }
    }

    @Override // com.evie.sidescreen.tiles.TilePresenter
    protected Map<String, Object> getAnalyticsAttributes() {
        HashMap map = new HashMap();
        map.put("item_type", "trending_video");
        map.put("attribute_news_article", this.mArticle);
        map.put("autoplay_duration", Long.valueOf(this.mAutoplayDuration));
        map.put("video_length", Long.valueOf(this.mPlayer.getDuration()));
        return map;
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractHeroPresenter
    public void onMediaClick(View view, ArticleTileHeroVideoViewHolder articleTileHeroVideoViewHolder) {
        super.onMediaClick(view, articleTileHeroVideoViewHolder);
        this.mViewHolder = articleTileHeroVideoViewHolder;
        if (this.mViewHolder == 0) {
            return;
        }
        if ("imageVideo".equals(this.mArticle.getContentType())) {
            trackTap("trending_gif");
            MediaObject mediaObjectSelectMedia = MediaSelector.selectMedia(this.mArticle.getVideo(), 1100, 0.5f);
            if (mediaObjectSelectMedia == null || mediaObjectSelectMedia.getUrl() == null) {
                return;
            }
            PopupVideoViewerPresenter popupVideoViewerPresenterCreate = this.mPopupVideoViewerPresenterFactory.create(mediaObjectSelectMedia.getUrl(), mediaObjectSelectMedia.getExternalUrl(), this.mArticle, mediaObjectSelectMedia, view, this.mPlayer.getPosition(), (TextureView) ((ArticleTileHeroVideoViewHolder) this.mViewHolder).mVideo.getVideoSurfaceView(), this);
            PopupVideoViewerViewHolder popupVideoViewerViewHolder = (PopupVideoViewerViewHolder) popupVideoViewerPresenterCreate.onCreateViewHolder(((ArticleTileHeroVideoViewHolder) this.mViewHolder).itemView.getContext(), (ViewGroup) null);
            popupVideoViewerViewHolder.bindPresenter(popupVideoViewerPresenterCreate);
            popupVideoViewerPresenterCreate.bindViewHolder(popupVideoViewerViewHolder);
            popupVideoViewerPresenterCreate.showPopup();
            return;
        }
        trackTap("trending_video");
        if (view != null) {
            Context context = view.getContext();
            if ((context instanceof TopicDetailActivity) && ((TopicDetailActivity) context).setArticleResult(this.mArticle)) {
                return;
            }
        }
        Intent localActivityIntent = this.mActivityStarter.getLocalActivityIntent(RelatedVideosActivity.class);
        localActivityIntent.putExtra(RelatedVideosActivity.EXTRA_ARTICLE, this.mArticle);
        try {
            this.mPlayer.pause();
            localActivityIntent.putExtra(RelatedVideosActivity.EXTRA_START_POSITION, this.mPlayer.getPosition());
        } catch (NullPointerException unused) {
        }
        this.mActivityStarter.startActivity(view, localActivityIntent, true);
    }

    protected void trackTap(String str) {
        HashMap map = new HashMap();
        map.put("item_type", str);
        map.put("attribute_news_article", this.mArticle);
        map.put("attribute_content_tile", this.mTile);
        map.put("attribute_screen_info", this.mScreenInfo);
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public float getVisibilityThreshold(Context context) {
        selectMediaAspectRatio(context);
        return ((Math.max(1.0f, Math.min(1.7777778f, this.mServerDefinedAspectRatioWidth / this.mServerDefinedAspectRatioHeight)) - 1.0f) * 0.51428574f) + 0.5f;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return ArticleTileHeroVideoViewHolder.f355ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public ArticleTileHeroVideoViewHolder createViewHolderInstance(View view) {
        return new ArticleTileHeroVideoViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.tiles.articles.AbstractHeroPresenter
    public void onBindViewHolder(ArticleTileHeroVideoViewHolder articleTileHeroVideoViewHolder) {
        super.onBindViewHolder(articleTileHeroVideoViewHolder);
        this.mPlayer.initialize();
        if ("imageVideo".equals(this.mArticle.getContentType())) {
            this.mPlayOnce = false;
        }
        selectMediaAspectRatio(articleTileHeroVideoViewHolder.itemView.getContext());
        articleTileHeroVideoViewHolder.setVideoFrameAspectRatio(this.mServerDefinedAspectRatioWidth, this.mServerDefinedAspectRatioHeight);
        CompositeDisposable compositeDisposable = this.mDisposables;
        Observable<Boolean> observableRegister = this.mVideoFocusHandler.register(this);
        final Subject<Boolean> subject = this.mFocus;
        subject.getClass();
        compositeDisposable.add(observableRegister.subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$usAR21Wj9EIH8pI58Ljt4un3Wnc
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                subject.onNext((Boolean) obj);
            }
        }));
        if (this.mArticle.getVideo() != null && !this.mArticle.getVideo().isEmpty()) {
            this.mMediaState.onNext(MediaState.VIDEO_PREVIEW);
        }
        this.mDisposables.add(this.mAutoPlayObservable.subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$ArticleTileHeroVideoPresenter$H-g-4WgcHHKQs6MiZ6fby4o1Sw0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.mAutoPlayOn = (Boolean) obj;
            }
        }));
        this.mDisposables.add(Observable.combineLatest(this.mFocus, this.mPlay, new BiFunction() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$jLZC61SXYy7GWujl-NhzjNKZotQ
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new Pair((Boolean) obj, (Boolean) obj2);
            }
        }).filter(new Predicate() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$ArticleTileHeroVideoPresenter$McIA2liXTpixAjUhtu2M19miOlY
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return this.f$0.mMediaState.blockingFirst().equals(ArticleTileHeroVideoPresenter.MediaState.VIDEO_PREVIEW);
            }
        }).debounce(new Function() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$ArticleTileHeroVideoPresenter$Dd4NrWerX38_fInxLpFlTcPypJU
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Observable.timer(((Boolean) ((Pair) obj).first).booleanValue() ? 200L : 0L, TimeUnit.MILLISECONDS);
            }
        }).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$ArticleTileHeroVideoPresenter$MmVNg6Et5hxuterdGEAU5cgl9uc
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                ArticleTileHeroVideoPresenter.lambda$onBindViewHolder$3(this.f$0, (Pair) obj);
            }
        }, new C0586xbacd4e17(this)));
        this.mDisposables.add(Observable.combineLatest(this.mFocus, this.mMediaState, new BiFunction() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$ArticleTileHeroVideoPresenter$fETDiGzYJkc0GNFtBRTP7kXIHLc
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ArticleTileHeroVideoPresenter.lambda$onBindViewHolder$4((Boolean) obj, (ArticleTileHeroVideoPresenter.MediaState) obj2);
            }
        }).distinctUntilChanged(new BiPredicate() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$ArticleTileHeroVideoPresenter$p9SLvWew3ZQvoHmRC3wAx0EOOts
            @Override // io.reactivex.functions.BiPredicate
            public final boolean test(Object obj, Object obj2) {
                return ArticleTileHeroVideoPresenter.lambda$onBindViewHolder$5((ArticleTileHeroVideoPresenter.MediaState) obj, (ArticleTileHeroVideoPresenter.MediaState) obj2);
            }
        }).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$ArticleTileHeroVideoPresenter$OHWxeemKUi8duUSqtEVr8Y4oQJ0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.bindMediaWithState((ArticleTileHeroVideoPresenter.MediaState) obj);
            }
        }, new C0586xbacd4e17(this)));
        this.mDisposables.add(this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.RESUME).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$ArticleTileHeroVideoPresenter$lEeG6-LGRmy83_DAKG9iX7OkJtU
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.bindPreviewImage();
            }
        }, new Consumer() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$ArticleTileHeroVideoPresenter$kNaQ3UNdb1TW94v7UTP43bYvoE4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.handleUnanticipatedException((Throwable) obj);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void lambda$onBindViewHolder$3(ArticleTileHeroVideoPresenter articleTileHeroVideoPresenter, Pair pair) throws Exception {
        if (((Boolean) pair.first).booleanValue() && ((Boolean) pair.second).booleanValue()) {
            articleTileHeroVideoPresenter.mMediaState.onNext(MediaState.VIDEO_LOADING);
        }
    }

    static /* synthetic */ MediaState lambda$onBindViewHolder$4(Boolean bool, MediaState mediaState) throws Exception {
        return (bool.booleanValue() || mediaState != MediaState.VIDEO_READY) ? mediaState : MediaState.VIDEO_PAUSED;
    }

    static /* synthetic */ boolean lambda$onBindViewHolder$5(MediaState mediaState, MediaState mediaState2) throws Exception {
        if (mediaState.equals(mediaState2) && (mediaState2.equals(MediaState.VIDEO_PREVIEW) || mediaState.equals(MediaState.SNAPSHOT))) {
            return false;
        }
        return mediaState.equals(mediaState2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindPreviewImage() {
        MediaObject mediaObjectSelectMedia = MediaSelector.selectMedia(this.mArticle.getVideo(), getScreenWidthPixels(((ArticleTileHeroVideoViewHolder) this.mViewHolder).itemView.getContext()), 1.7777778f);
        String previewUrl = mediaObjectSelectMedia instanceof VideoObject ? ((VideoObject) mediaObjectSelectMedia).getPreviewUrl() : null;
        if (!TextUtils.isEmpty(previewUrl)) {
            ((ArticleTileHeroVideoViewHolder) this.mViewHolder).showImage(previewUrl);
        } else {
            ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideImage();
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
            this.mPlay.onNext(this.mAutoPlayOn);
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
        int screenWidthPixels = getScreenWidthPixels(((ArticleTileHeroVideoViewHolder) this.mViewHolder).itemView.getContext());
        switch (mediaState) {
            case VIDEO_LOADING:
                String strSelectMediaUrl = MediaSelector.selectMediaUrl(this.mArticle.getVideo(), screenWidthPixels, 1.7777778f);
                if (!TextUtils.isEmpty(strSelectMediaUrl)) {
                    this.mDisposables.add(this.mPlayer.prepare(strSelectMediaUrl).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$ArticleTileHeroVideoPresenter$I9qYm3xWY14XsC8YbZpesmsV-u8
                        @Override // io.reactivex.functions.Consumer
                        public final void accept(Object obj) throws Exception {
                            ArticleTileHeroVideoPresenter.lambda$bindMediaWithState$8(this.f$0, (ExoPlayerEvent) obj);
                        }
                    }, new C0586xbacd4e17(this)));
                }
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).showLoading();
                break;
            case SNAPSHOT:
                break;
            case VIDEO_READY:
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideError();
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideLoading();
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideImage();
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideSnapshot();
                if (this.mLastKnownVideoDuration == -1) {
                    this.mLastKnownVideoDuration = this.mPlayer.getDuration();
                }
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).showVideoProgressText(this.mLastKnownVideoDuration - this.mLastKnownVideoPosition);
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).showVideoProgress(false);
                this.mLastStartPosition = this.mPlayer.getPosition();
                if (this.mPlay.blockingFirst().booleanValue()) {
                    ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hidePlayButton();
                    this.mPlayer.setVolume(0.0f);
                    this.mPlayer.play();
                    return;
                } else {
                    ((ArticleTileHeroVideoViewHolder) this.mViewHolder).showPlayButton();
                    this.mPlayer.pause();
                    return;
                }
            case VIDEO_PAUSED:
                this.mPlayer.pause();
                long position = this.mPlayer.getPosition();
                this.mAutoplayDuration += position - this.mLastStartPosition;
                this.mLastStartPosition = position;
                this.mLastKnownVideoPosition = position;
                return;
            case VIDEO_ERROR:
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideLoading();
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideVideo();
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideVideoProgress(false);
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).showImage(MediaSelector.selectMediaUrl(this.mArticle.getImage(), screenWidthPixels, 1.7777778f));
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).showError();
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hidePlayButton();
                this.mPlayer.pause();
                return;
            case IMAGE:
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideError();
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideLoading();
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideVideo();
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideVideoProgress(false);
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hidePlayButton();
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).showImage(MediaSelector.selectMediaUrl(this.mArticle.getImage(), screenWidthPixels, 1.7777778f));
                return;
            case VIDEO_PREVIEW:
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideError();
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideLoading();
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideVideo();
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideVideoProgress(false);
                ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideSnapshot();
                if (this.mPlay.blockingFirst().booleanValue()) {
                    ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hidePlayButton();
                } else {
                    ((ArticleTileHeroVideoViewHolder) this.mViewHolder).showPlayButton();
                }
                bindPreviewImage();
                return;
            default:
                return;
        }
        bindPreviewImage();
        ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideError();
        ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideVideoProgress(false);
        this.mPlayer.seek(this.mLastKnownVideoPosition);
        ((ArticleTileHeroVideoViewHolder) this.mViewHolder).showVideo(this.mPlayer.getPlayer());
    }

    public static /* synthetic */ void lambda$bindMediaWithState$8(ArticleTileHeroVideoPresenter articleTileHeroVideoPresenter, ExoPlayerEvent exoPlayerEvent) throws Exception {
        if (exoPlayerEvent instanceof ExoPlayerEvent.Ready) {
            articleTileHeroVideoPresenter.mMediaState.onNext(MediaState.VIDEO_READY);
            return;
        }
        if (exoPlayerEvent instanceof ExoPlayerEvent.Error) {
            articleTileHeroVideoPresenter.mMediaState.onNext(MediaState.VIDEO_ERROR);
            return;
        }
        if (exoPlayerEvent instanceof ExoPlayerEvent.Progress) {
            long duration = articleTileHeroVideoPresenter.mPlayer.getDuration();
            long position = ((ExoPlayerEvent.Progress) exoPlayerEvent).getPosition();
            ((ArticleTileHeroVideoViewHolder) articleTileHeroVideoPresenter.mViewHolder).showVideoProgressText(duration - position);
            articleTileHeroVideoPresenter.mLastKnownVideoDuration = duration;
            articleTileHeroVideoPresenter.mLastKnownVideoPosition = position;
            return;
        }
        if (!(exoPlayerEvent instanceof ExoPlayerEvent.SizeChanged) && (exoPlayerEvent instanceof ExoPlayerEvent.Finished)) {
            if (articleTileHeroVideoPresenter.mPlayOnce) {
                articleTileHeroVideoPresenter.mPlay.onNext(false);
            }
            articleTileHeroVideoPresenter.mPlayer.seek(0L);
            if (articleTileHeroVideoPresenter.mPlay.blockingFirst().booleanValue()) {
                return;
            }
            articleTileHeroVideoPresenter.mPlayer.pause();
            ((ArticleTileHeroVideoViewHolder) articleTileHeroVideoPresenter.mViewHolder).showPlayButton();
        }
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected void onUnbindViewHolder() {
        super.onUnbindViewHolder();
        this.mPlayer.dispose();
        this.mVideoFocusHandler.unregister(this);
    }

    @Override // com.evie.sidescreen.tiles.imageviewer.PopupVideoViewerPresenter.VideoPopupDismissListener
    public void onPopupDismiss(long j, TextureView textureView) {
        if (textureView != null) {
            ((ArticleTileHeroVideoViewHolder) this.mViewHolder).showSnapshot(textureView.getBitmap());
        } else {
            ((ArticleTileHeroVideoViewHolder) this.mViewHolder).hideSnapshot();
        }
        this.mLastKnownVideoPosition = j;
        if (!this.mAutoPlayOn.booleanValue()) {
            ((ArticleTileHeroVideoViewHolder) this.mViewHolder).showPlayButton();
        }
        this.mMediaState.onNext(MediaState.SNAPSHOT);
    }
}
