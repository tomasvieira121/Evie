package com.evie.sidescreen.relatedcontent;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.crashlytics.android.Crashlytics;
import com.evie.sidescreen.R;
import com.evie.sidescreen.exoplayer.ExoPlayerEvent;
import com.evie.sidescreen.exoplayer.ExoPlayerObservable;
import com.evie.sidescreen.tiles.videos.VideoControlsViewHolder;
import com.google.android.exoplayer2.p005ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.p005ui.PlayerView;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import javax.inject.Provider;
import org.schema.MediaSelector;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class ExoVideoHandler implements VideoHandler {
    private CompositeDisposable mActivityDisposables;
    private Context mContext;
    PlayerView mCurrentPlayerView;
    private ExoPlayerActionHandler mExoPlayerActionHandler;
    private Disposable mExoPlayerDisposable;
    private ExoPlayerObservable mExoPlayerObservable;

    @BindView
    AspectRatioFrameLayout mExoplayerContainer;
    private FullScreenExoDialog mFullScreenExoDialog;
    private boolean mIsInitialized = false;
    private Provider<ExoPlayerObservable> mObservableProvider;
    private RelatedVideosActivity.PlayerActionHandler mPlayerActionHandler;

    @BindView
    PlayerView mSimpleExoPlayerView;
    private VideoControlsViewHolder mVideoControlsViewHolder;
    private VideoHandler.VideoHelperInterface mVideoHelperInterface;

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onAdInterrupted() {
    }

    public ExoVideoHandler(Provider<ExoPlayerObservable> provider, RelatedVideosActivity relatedVideosActivity, VideoHandler.VideoHelperInterface videoHelperInterface, VideoControlsViewHolder videoControlsViewHolder, CompositeDisposable compositeDisposable, RelatedVideosActivity.PlayerActionHandler playerActionHandler) {
        ButterKnife.bind(this, relatedVideosActivity);
        this.mObservableProvider = provider;
        this.mContext = relatedVideosActivity;
        this.mVideoHelperInterface = videoHelperInterface;
        this.mVideoControlsViewHolder = videoControlsViewHolder;
        this.mActivityDisposables = compositeDisposable;
        this.mPlayerActionHandler = playerActionHandler;
        this.mCurrentPlayerView = this.mSimpleExoPlayerView;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public boolean isInitialized() {
        return this.mIsInitialized;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void initializeParams() {
        this.mExoplayerContainer.setAspectRatio(this.mVideoHelperInterface.getDefaultAspectRatio());
        this.mIsInitialized = true;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void setUp() {
        this.mExoplayerContainer.setVisibility(0);
        setVideoContainerAspectRatio();
        initExoPlayer();
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void tearDown() {
        disposeExoPlayer();
        this.mExoplayerContainer.setVisibility(8);
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void samePlayerTransition() {
        pauseExoPlayer();
        setVideoContainerAspectRatio();
        loadVideoExoPlayer();
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onActivityResume() {
        initExoPlayer();
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onActivityPause() {
        pauseExoPlayer();
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onActivityDestroy() {
        disposeExoPlayer();
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onVideoPlay() {
        ExoPlayerObservable exoPlayerObservable = this.mExoPlayerObservable;
        if (exoPlayerObservable != null) {
            if (exoPlayerObservable.getPlayer().getPlaybackState() == 4) {
                this.mExoPlayerObservable.seek(0L);
            } else {
                playExoPlayer();
            }
        }
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onVideoPause() {
        ExoPlayerObservable exoPlayerObservable = this.mExoPlayerObservable;
        if (exoPlayerObservable != null) {
            exoPlayerObservable.pause();
            this.mVideoControlsViewHolder.setPlaying(false);
        }
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onVideoScrub(long j) {
        ExoPlayerObservable exoPlayerObservable = this.mExoPlayerObservable;
        if (exoPlayerObservable != null) {
            exoPlayerObservable.seek(j);
        }
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void enterFullscreen() {
        this.mFullScreenExoDialog = new FullScreenExoDialog(this.mContext, R.style.DialogTheme, this.mVideoControlsViewHolder) { // from class: com.evie.sidescreen.relatedcontent.ExoVideoHandler.1
            @Override // android.app.Dialog
            public void onBackPressed() {
                super.onBackPressed();
                ExoVideoHandler.this.mVideoHelperInterface.manuallyExitFullScreen();
            }
        };
        this.mFullScreenExoDialog.enterFullScreen(this.mExoPlayerObservable.getPlayer(), this.mSimpleExoPlayerView);
        this.mCurrentPlayerView = this.mFullScreenExoDialog.mPlayerView;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void exitFullscreen() {
        FullScreenExoDialog fullScreenExoDialog = this.mFullScreenExoDialog;
        if (fullScreenExoDialog != null) {
            fullScreenExoDialog.exitFullScreen(this.mExoPlayerObservable.getPlayer(), this.mSimpleExoPlayerView);
            this.mFullScreenExoDialog = null;
        }
        this.mCurrentPlayerView = this.mSimpleExoPlayerView;
    }

    private void setVideoContainerAspectRatio() {
        float mediaAspectRatio = this.mVideoHelperInterface.getMediaAspectRatio();
        AspectRatioFrameLayout aspectRatioFrameLayout = this.mExoplayerContainer;
        if (mediaAspectRatio < this.mVideoHelperInterface.getAspectRatioLowerLimit()) {
            mediaAspectRatio = this.mVideoHelperInterface.getDefaultAspectRatio();
        }
        aspectRatioFrameLayout.setAspectRatio(mediaAspectRatio);
    }

    private void initExoPlayer() {
        String strSelectMediaUrl = MediaSelector.selectMediaUrl(this.mVideoHelperInterface.getVideoObjectList(), this.mVideoHelperInterface.getScreenWidthPixels(), this.mVideoHelperInterface.getMediaAspectRatio());
        if (TextUtils.isEmpty(strSelectMediaUrl)) {
            return;
        }
        Disposable disposable = this.mExoPlayerDisposable;
        if (disposable != null) {
            this.mActivityDisposables.remove(disposable);
        }
        if (this.mExoPlayerActionHandler == null) {
            this.mExoPlayerActionHandler = new ExoPlayerActionHandler();
        }
        if (this.mExoPlayerObservable != null) {
            disposeExoPlayer();
        }
        createExoPlayer();
        this.mVideoHelperInterface.onVideoVisibilityChanged(true);
        this.mVideoControlsViewHolder.setDuration(-1L);
        this.mExoPlayerDisposable = this.mExoPlayerObservable.prepare(strSelectMediaUrl).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.relatedcontent.-$$Lambda$ExoVideoHandler$dH9NH52iOsL9X27DElIswqJsxyU
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.mExoPlayerActionHandler.dispatchEvent((ExoPlayerEvent) obj);
            }
        }, new Consumer() { // from class: com.evie.sidescreen.relatedcontent.-$$Lambda$jzs1_YGlS1lmWPc2__D-9jMLOU0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.handleUnanticipatedException((Throwable) obj);
            }
        });
        this.mActivityDisposables.add(this.mExoPlayerDisposable);
    }

    protected final void handleUnanticipatedException(Throwable th) {
        Timber.m554e(th);
        Crashlytics.logException(th);
    }

    private void loadVideoExoPlayer() {
        this.mExoPlayerObservable.prepare(MediaSelector.selectMediaUrl(this.mVideoHelperInterface.getVideoObjectList(), this.mVideoHelperInterface.getScreenWidthPixels(), this.mVideoHelperInterface.getMediaAspectRatio()));
        this.mVideoControlsViewHolder.setDuration(-1L);
        this.mExoPlayerObservable.seek(0L);
        this.mExoPlayerObservable.play();
        this.mVideoHelperInterface.onVideoVisibilityChanged(true);
    }

    private void createExoPlayer() {
        if (this.mExoPlayerObservable == null) {
            this.mExoPlayerObservable = this.mObservableProvider.get();
            this.mExoPlayerObservable.initialize();
            this.mCurrentPlayerView.setPlayer(this.mExoPlayerObservable.getPlayer());
        }
    }

    private void playExoPlayer() {
        ExoPlayerObservable exoPlayerObservable = this.mExoPlayerObservable;
        if (exoPlayerObservable != null) {
            exoPlayerObservable.play();
            this.mVideoControlsViewHolder.setPlaying(true);
            this.mVideoHelperInterface.onVideoVisibilityChanged(true);
        }
    }

    private void pauseExoPlayer() {
        ExoPlayerObservable exoPlayerObservable = this.mExoPlayerObservable;
        if (exoPlayerObservable != null) {
            exoPlayerObservable.pause();
            this.mVideoControlsViewHolder.setPlaying(false);
        }
    }

    private void disposeExoPlayer() {
        Disposable disposable = this.mExoPlayerDisposable;
        if (disposable != null) {
            this.mActivityDisposables.remove(disposable);
        }
        ExoPlayerObservable exoPlayerObservable = this.mExoPlayerObservable;
        if (exoPlayerObservable != null) {
            if (exoPlayerObservable.getPlayer() != null) {
                this.mVideoHelperInterface.setStartPosition((int) this.mExoPlayerObservable.getPlayer().getCurrentPosition());
            }
            this.mCurrentPlayerView.setPlayer(null);
            this.mExoPlayerObservable.dispose();
            this.mExoPlayerObservable = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ExoPlayerActionHandler {
        void onError() {
        }

        void onSizeChanged(ExoPlayerEvent.SizeChanged sizeChanged) {
        }

        private ExoPlayerActionHandler() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void dispatchEvent(ExoPlayerEvent exoPlayerEvent) {
            if (exoPlayerEvent instanceof ExoPlayerEvent.Ready) {
                onReady();
                return;
            }
            if (exoPlayerEvent instanceof ExoPlayerEvent.Error) {
                onError();
                return;
            }
            if (exoPlayerEvent instanceof ExoPlayerEvent.Progress) {
                onProgress((ExoPlayerEvent.Progress) exoPlayerEvent);
            } else if (exoPlayerEvent instanceof ExoPlayerEvent.SizeChanged) {
                onSizeChanged((ExoPlayerEvent.SizeChanged) exoPlayerEvent);
            } else if (exoPlayerEvent instanceof ExoPlayerEvent.Finished) {
                onVideoEnded();
            }
        }

        void onReady() {
            ExoVideoHandler.this.mVideoControlsViewHolder.setDuration(ExoVideoHandler.this.mExoPlayerObservable.getDuration());
            long startPosition = ExoVideoHandler.this.mVideoHelperInterface.getStartPosition();
            if (startPosition > 0) {
                ExoVideoHandler.this.mExoPlayerObservable.seek(startPosition);
                ExoVideoHandler.this.mVideoControlsViewHolder.setPosition(startPosition);
                ExoVideoHandler.this.mVideoHelperInterface.setStartPosition(0L);
            }
            ExoVideoHandler.this.mVideoControlsViewHolder.setPlaying(true);
            ExoVideoHandler.this.mExoPlayerObservable.play();
        }

        void onProgress(ExoPlayerEvent.Progress progress) {
            ExoVideoHandler.this.mVideoControlsViewHolder.setPosition(progress.getPosition());
        }

        void onVideoEnded() {
            ExoVideoHandler.this.mVideoHelperInterface.onVideoEnded();
        }
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public View getContainerView() {
        return this.mExoplayerContainer;
    }
}
