package com.evie.sidescreen.relatedcontent;

import android.R;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.aol.mobile.sdk.player.Binder;
import com.aol.mobile.sdk.player.Player;
import com.aol.mobile.sdk.player.model.properties.AdProperties;
import com.aol.mobile.sdk.player.model.properties.ViewportProperties;
import com.aol.mobile.sdk.player.view.PlayerView;
import com.evie.sidescreen.oathplayer.OathPlayerEvent;
import com.evie.sidescreen.oathplayer.OathPlayerObservable;
import com.evie.sidescreen.tiles.articles.BlankOathContentControlsView;
import com.evie.sidescreen.tiles.videos.VideoControlsViewHolder;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import java.util.HashMap;
import javax.inject.Provider;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class OathVideoHandler implements VideoHandler {
    private CompositeDisposable mActivityDisposables;
    private Context mContext;
    private FullScreenControllerFragment mFullScreenOathControllerDialog;
    private boolean mIsPlayingOathAd;
    private long mOathAdImpressionDuration;
    private long mOathAdLastStartPosition;

    @BindView
    ViewGroup mOathContainer;
    private Binder mOathPlayerBinder;
    private Disposable mOathPlayerDisposable;
    private OathPlayerObservable mOathPlayerObservable;

    @BindView
    PlayerView mOathPlayerView;
    private String mOathVideoId;
    private Provider<OathPlayerObservable> mObservableProvider;
    private View mPlaybackControls;
    private RelatedVideosActivity.PlayerActionHandler mPlayerActionHandler;
    private boolean mShouldReportAdImpressionEvent;
    private VideoControlsViewHolder mVideoControlsViewHolder;
    private VideoHandler.VideoHelperInterface mVideoHelperInterface;
    private ViewGroup.LayoutParams originalOathContainerParams;
    private int mOriginalOathViewPortHeight = -1;
    private int mSquishedOathAdHeight = -1;
    private boolean mIsInitialized = false;

    public OathVideoHandler(Provider<OathPlayerObservable> provider, RelatedVideosActivity relatedVideosActivity, VideoHandler.VideoHelperInterface videoHelperInterface, VideoControlsViewHolder videoControlsViewHolder, CompositeDisposable compositeDisposable, View view, RelatedVideosActivity.PlayerActionHandler playerActionHandler) {
        ButterKnife.bind(this, relatedVideosActivity);
        this.mObservableProvider = provider;
        this.mContext = relatedVideosActivity;
        this.mVideoHelperInterface = videoHelperInterface;
        this.mVideoControlsViewHolder = videoControlsViewHolder;
        this.mActivityDisposables = compositeDisposable;
        this.mPlaybackControls = view;
        this.mPlayerActionHandler = playerActionHandler;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public boolean isInitialized() {
        return this.mIsInitialized;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void initializeParams() {
        int screenWidthPixels = this.mVideoHelperInterface.getScreenWidthPixels();
        ViewGroup.LayoutParams layoutParams = this.mOathContainer.getLayoutParams();
        layoutParams.height = (int) (screenWidthPixels / this.mVideoHelperInterface.getDefaultAspectRatio());
        layoutParams.width = screenWidthPixels;
        this.mOathContainer.setLayoutParams(layoutParams);
        this.mIsInitialized = true;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void setUp() {
        this.mOathContainer.setVisibility(0);
        this.mOathPlayerBinder = new Binder();
        this.originalOathContainerParams = this.mOathContainer.getLayoutParams();
        setVideoContainerParams();
        startObservingOathPlayer();
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void tearDown() {
        disposeAll();
        this.mOathContainer.setVisibility(8);
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void samePlayerTransition() {
        pauseOathVideo();
        setVideoContainerParams();
        resetOathPlayer();
    }

    private void setVideoContainerParams() {
        float f;
        float defaultAspectRatio;
        int screenWidthPixels = this.mVideoHelperInterface.getScreenWidthPixels();
        if (this.mVideoHelperInterface.getMediaAspectRatio() >= this.mVideoHelperInterface.getAspectRatioLowerLimit()) {
            f = screenWidthPixels;
            defaultAspectRatio = this.mVideoHelperInterface.getMediaAspectRatio();
        } else {
            f = screenWidthPixels;
            defaultAspectRatio = this.mVideoHelperInterface.getDefaultAspectRatio();
        }
        int i = (int) (f / defaultAspectRatio);
        ViewGroup.LayoutParams layoutParams = this.originalOathContainerParams;
        layoutParams.height = i;
        layoutParams.width = screenWidthPixels;
        this.mOathContainer.setLayoutParams(layoutParams);
        this.mOathVideoId = this.mVideoHelperInterface.getVideoObjectList().get(0).getVideoId();
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onActivityResume() {
        resumeOathBinder();
        onVideoPlay();
        this.mOathPlayerDisposable = this.mOathPlayerObservable.observeOn(AndroidSchedulers.mainThread()).subscribe(new $$Lambda$OathVideoHandler$Apn2occQoQeukxxZQRqG8NOVV1k(this));
        this.mActivityDisposables.add(this.mOathPlayerDisposable);
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onActivityPause() {
        pauseOathBinder();
        onVideoPause();
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onActivityDestroy() {
        disposeAll();
        this.mOathPlayerView.dispose();
    }

    private void disposeAll() {
        onAdInterrupted();
        disposeOathPlayer();
        destroyOathBinder();
        this.mActivityDisposables.remove(this.mOathPlayerDisposable);
        this.mOathPlayerDisposable.dispose();
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onVideoPlay() {
        if (this.mOathPlayerObservable != null) {
            playOathVideo();
        }
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onVideoPause() {
        if (this.mOathPlayerObservable != null) {
            pauseOathVideo();
        }
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onVideoScrub(long j) {
        OathPlayerObservable oathPlayerObservable = this.mOathPlayerObservable;
        if (oathPlayerObservable != null) {
            oathPlayerObservable.seek(j, oathPlayerObservable.getDuration());
            this.mOathPlayerObservable.play();
        }
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void enterFullscreen() {
        long j;
        long j2;
        boolean z;
        enterOathFullScreenMode();
        OathPlayerObservable oathPlayerObservable = this.mOathPlayerObservable;
        if (oathPlayerObservable != null) {
            long position = oathPlayerObservable.getPosition();
            long duration = this.mOathPlayerObservable.getDuration();
            Player player = this.mOathPlayerObservable.getPlayer();
            if (player != null) {
                j = position;
                z = player.getProperties().shouldPlay;
                j2 = duration;
            } else {
                j = position;
                j2 = duration;
                z = true;
            }
        } else {
            j = -1;
            j2 = -1;
            z = true;
        }
        FragmentManager supportFragmentManager = this.mVideoHelperInterface.getSupportFragmentManager();
        this.mFullScreenOathControllerDialog = FullScreenControllerFragment.newInstance(false, this.mIsPlayingOathAd, j, j2, z);
        FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
        fragmentTransactionBeginTransaction.setTransition(4097);
        FullScreenControllerFragment fullScreenControllerFragment = this.mFullScreenOathControllerDialog;
        if (fullScreenControllerFragment != null) {
            fragmentTransactionBeginTransaction.replace(R.id.content, fullScreenControllerFragment).commit();
        }
    }

    private void enterOathFullScreenMode() {
        this.mVideoHelperInterface.setToolBarVisibility(false);
        this.mOathContainer.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void exitFullscreen() {
        exitOathFullScreenMode();
    }

    private void exitOathFullScreenMode() {
        if (this.mFullScreenOathControllerDialog != null) {
            this.mVideoHelperInterface.setToolBarVisibility(true);
            this.mFullScreenOathControllerDialog.exitFullScreen();
            this.mFullScreenOathControllerDialog = null;
            OathPlayerObservable oathPlayerObservable = this.mOathPlayerObservable;
            if (oathPlayerObservable != null && oathPlayerObservable.getPlayer() != null) {
                this.mVideoControlsViewHolder.setPosition(this.mOathPlayerObservable.getPosition());
                this.mVideoControlsViewHolder.setDuration(this.mOathPlayerObservable.getDuration());
                this.mVideoControlsViewHolder.setPlaying(this.mOathPlayerObservable.getPlayer().getProperties().shouldPlay);
            }
            this.mOathContainer.setLayoutParams(this.originalOathContainerParams);
            if (this.mIsPlayingOathAd) {
                int i = this.mOriginalOathViewPortHeight;
                setOathPlayerHeight(i + (i - this.mSquishedOathAdHeight));
            }
        }
    }

    private void startObservingOathPlayer() {
        this.mOathPlayerObservable = this.mObservableProvider.get();
        Disposable disposable = this.mOathPlayerDisposable;
        if (disposable != null) {
            this.mActivityDisposables.remove(disposable);
        }
        this.mOathPlayerDisposable = this.mOathPlayerObservable.observeOn(AndroidSchedulers.mainThread()).subscribe(new $$Lambda$OathVideoHandler$Apn2occQoQeukxxZQRqG8NOVV1k(this));
        this.mActivityDisposables.add(this.mOathPlayerDisposable);
    }

    private void resetOathPlayer() {
        this.mOathPlayerObservable.reset();
    }

    private void disposeOathPlayer() {
        OathPlayerObservable oathPlayerObservable = this.mOathPlayerObservable;
        if (oathPlayerObservable != null) {
            oathPlayerObservable.dispose();
            this.mOathPlayerObservable = null;
        }
    }

    private void playOathVideo() {
        this.mOathPlayerObservable.play();
    }

    private void pauseOathVideo() {
        this.mOathPlayerObservable.pause();
    }

    private void resumeOathBinder() {
        this.mOathPlayerBinder.onResume();
    }

    private void destroyOathBinder() {
        this.mOathPlayerBinder.onDestroy();
    }

    private void pauseOathBinder() {
        this.mOathPlayerBinder.onPause();
    }

    private void setOathPlayerHeight(int i) {
        this.mOathContainer.setLayoutParams(new LinearLayout.LayoutParams(this.mOathContainer.getLayoutParams().width, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oathPlayerStateHandler(OathPlayerEvent oathPlayerEvent) {
        if (oathPlayerEvent instanceof OathPlayerEvent.BuilderReady) {
            this.mOathPlayerObservable.createPlayer(this.mOathVideoId);
            this.mVideoControlsViewHolder.setPosition(this.mVideoHelperInterface.getStartPosition());
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.Ready) {
            this.mOathPlayerView.setContentControls(new BlankOathContentControlsView(this.mContext));
            Player player = this.mOathPlayerObservable.getPlayer();
            if (player != null) {
                this.mOathPlayerBinder.setPlayer(player);
                this.mOathPlayerBinder.setPlayerView(this.mOathPlayerView);
            }
            this.mOathPlayerObservable.seek(this.mVideoHelperInterface.getStartPosition(), this.mVideoHelperInterface.getStartDuration());
            this.mVideoHelperInterface.setStartPosition(0L);
            this.mOathPlayerObservable.play();
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.Play) {
            this.mVideoControlsViewHolder.setPlaying(true);
            ViewportProperties viewportProperties = this.mOathPlayerObservable.getViewportProperties();
            if (viewportProperties != null) {
                this.mOriginalOathViewPortHeight = viewportProperties.height;
                return;
            }
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.Progress) {
            OathPlayerEvent.Progress progress = (OathPlayerEvent.Progress) oathPlayerEvent;
            long position = progress.getPosition();
            long duration = progress.getDuration();
            this.mVideoControlsViewHolder.setPosition(position);
            this.mVideoControlsViewHolder.setDuration(duration);
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.Pause) {
            this.mVideoControlsViewHolder.setPlaying(false);
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.Finished) {
            this.mVideoHelperInterface.onVideoEnded();
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.Error) {
            Timber.m553e(((OathPlayerEvent.Error) oathPlayerEvent).getMessage(), new Object[0]);
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.AdProgress) {
            if (!this.mIsPlayingOathAd && this.mOathAdLastStartPosition > 100) {
                this.mIsPlayingOathAd = true;
                this.mShouldReportAdImpressionEvent = true;
                this.mPlaybackControls.setVisibility(8);
                ViewportProperties viewportProperties2 = this.mOathPlayerObservable.getViewportProperties();
                if (viewportProperties2 != null) {
                    this.mSquishedOathAdHeight = this.mVideoHelperInterface.getIsFullScreen() ? this.mOriginalOathViewPortHeight - this.mContext.getResources().getDimensionPixelSize(com.evie.sidescreen.R.dimen.ss_oath_ad_fallback_controller_height) : viewportProperties2.height;
                    if (this.mSquishedOathAdHeight > 0 && this.mOriginalOathViewPortHeight > 0 && !this.mVideoHelperInterface.getIsFullScreen()) {
                        int i = this.mOriginalOathViewPortHeight;
                        setOathPlayerHeight(i + (i - this.mSquishedOathAdHeight));
                    }
                }
                FullScreenControllerFragment fullScreenControllerFragment = this.mFullScreenOathControllerDialog;
                if (fullScreenControllerFragment != null) {
                    fullScreenControllerFragment.turnOffControls();
                }
            }
            long position2 = ((OathPlayerEvent.AdProgress) oathPlayerEvent).getPosition();
            this.mOathAdImpressionDuration += position2 - this.mOathAdLastStartPosition;
            this.mOathAdLastStartPosition = position2;
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.AdFinished) {
            this.mIsPlayingOathAd = false;
            this.mPlaybackControls.setVisibility(0);
            if (this.mOriginalOathViewPortHeight > 0 && !this.mVideoHelperInterface.getIsFullScreen()) {
                setOathPlayerHeight(this.mOriginalOathViewPortHeight);
            }
            FullScreenControllerFragment fullScreenControllerFragment2 = this.mFullScreenOathControllerDialog;
            if (fullScreenControllerFragment2 != null) {
                fullScreenControllerFragment2.turnOnControls();
            }
            endAdImpression("oath", ((OathPlayerEvent.AdFinished) oathPlayerEvent).adProps.url);
            return;
        }
        if (oathPlayerEvent instanceof OathPlayerEvent.AdClick) {
            this.mVideoHelperInterface.trackAdTap("oath", this.mOathPlayerObservable.getCurrentAdProperties().url);
        }
    }

    private void endAdImpression(String str, String str2) {
        if (!this.mShouldReportAdImpressionEvent || this.mOathAdImpressionDuration < this.mVideoHelperInterface.getMinimumImpressionDuration()) {
            return;
        }
        HashMap map = new HashMap();
        map.put("entity_id", str2);
        map.put("ad_network", str);
        map.put("item_type", "ad");
        map.put("parent_entity_id", this.mVideoHelperInterface.getVideoObjectList().get(0).getId());
        map.put("screen_position_start", 0);
        map.put("duration", Long.valueOf(this.mOathAdImpressionDuration));
        this.mVideoHelperInterface.trackAnalyticsModel().trackEvent("ev_ss_article_impression", map);
        this.mOathAdLastStartPosition = 0L;
        this.mOathAdImpressionDuration = 0L;
        this.mShouldReportAdImpressionEvent = false;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public View getContainerView() {
        return this.mOathContainer;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onAdInterrupted() {
        if (this.mIsPlayingOathAd) {
            this.mIsPlayingOathAd = false;
            AdProperties currentAdProperties = this.mOathPlayerObservable.getCurrentAdProperties();
            if (currentAdProperties != null) {
                endAdImpression("oath", currentAdProperties.url);
            }
        }
    }
}
