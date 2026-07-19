package com.evie.sidescreen.relatedcontent;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.fragment.app.FragmentManager;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.evie.sidescreen.R;
import com.evie.sidescreen.tiles.videos.VideoControlsViewHolder;
import com.google.android.youtube.player.YouTubeInitializationResult;
import com.google.android.youtube.player.YouTubePlayer;
import com.google.android.youtube.player.YouTubePlayerSupportFragment;

/* JADX INFO: loaded from: classes.dex */
public class YouTubeVideoHandler implements VideoHandler {
    private Context mContext;
    private FullScreenControllerFragment mFullScreenYTControllerDialog;
    private Handler mHandler;
    private RelatedVideosActivity.PlayerActionHandler mPlayerActionHandler;
    private boolean mScrubPending;
    private VideoControlsViewHolder mVideoControlsViewHolder;
    private VideoHandler.VideoHelperInterface mVideoHelperInterface;

    @BindView
    ViewGroup mYouTubeContainer;
    private YouTubePlayer mYouTubePlayer;
    private String mYouTubeVideoId;
    private boolean mIsYouTubePlayerLoaded = false;
    private boolean mIsInitialized = false;
    private Runnable mYouTubeRefreshPosition = new Runnable() { // from class: com.evie.sidescreen.relatedcontent.YouTubeVideoHandler.1
        @Override // java.lang.Runnable
        public void run() {
            if (!YouTubeVideoHandler.this.mVideoHelperInterface.isActivityStarted() || YouTubeVideoHandler.this.mYouTubePlayer == null) {
                return;
            }
            if (!YouTubeVideoHandler.this.mScrubPending || YouTubeVideoHandler.this.mYouTubePlayer.getCurrentTimeMillis() != 0) {
                YouTubeVideoHandler.this.mVideoControlsViewHolder.setPosition(YouTubeVideoHandler.this.mYouTubePlayer.getCurrentTimeMillis());
                YouTubeVideoHandler.this.mScrubPending = false;
            }
            YouTubeVideoHandler.this.mHandler.postDelayed(YouTubeVideoHandler.this.mYouTubeRefreshPosition, 800L);
        }
    };

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onAdInterrupted() {
    }

    public YouTubeVideoHandler(RelatedVideosActivity relatedVideosActivity, VideoHandler.VideoHelperInterface videoHelperInterface, VideoControlsViewHolder videoControlsViewHolder, RelatedVideosActivity.PlayerActionHandler playerActionHandler) {
        ButterKnife.bind(this, relatedVideosActivity);
        this.mContext = relatedVideosActivity;
        this.mVideoHelperInterface = videoHelperInterface;
        this.mVideoControlsViewHolder = videoControlsViewHolder;
        this.mPlayerActionHandler = playerActionHandler;
        this.mHandler = new Handler(Looper.getMainLooper());
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public boolean isInitialized() {
        return this.mIsInitialized;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void initializeParams() {
        this.mIsInitialized = true;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void setUp() {
        this.mYouTubeContainer.setVisibility(0);
        initYouTube();
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void tearDown() {
        disposeYouTube();
        this.mYouTubeContainer.setVisibility(8);
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void samePlayerTransition() {
        pauseYouTube();
        loadVideoYouTube();
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onActivityResume() {
        this.mHandler.postDelayed(new Runnable() { // from class: com.evie.sidescreen.relatedcontent.-$$Lambda$YouTubeVideoHandler$MtvTR-UP1UGttTlcf7lB1D6RKs4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.playYouTube();
            }
        }, 100L);
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onActivityPause() {
        pauseYouTube();
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onActivityDestroy() {
        this.mIsYouTubePlayerLoaded = false;
        if (this.mYouTubePlayer != null) {
            disposeYouTube();
        }
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onVideoPlay() {
        YouTubePlayer youTubePlayer = this.mYouTubePlayer;
        if (youTubePlayer != null) {
            if (youTubePlayer.getDurationMillis() - this.mYouTubePlayer.getCurrentTimeMillis() <= 1000) {
                this.mYouTubePlayer.seekToMillis(0);
                playYouTube();
                this.mScrubPending = true;
                this.mVideoControlsViewHolder.setPosition(0L);
                this.mVideoControlsViewHolder.setPlaying(true);
                return;
            }
            playYouTube();
        }
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onVideoPause() {
        if (this.mYouTubePlayer != null) {
            pauseYouTube();
        }
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void onVideoScrub(long j) {
        YouTubePlayer youTubePlayer = this.mYouTubePlayer;
        if (youTubePlayer != null) {
            youTubePlayer.seekToMillis((int) j);
            this.mScrubPending = true;
            if (j < this.mYouTubePlayer.getDurationMillis()) {
                playYouTube();
            }
            this.mVideoControlsViewHolder.setPosition(j);
        }
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void enterFullscreen() {
        long j;
        long j2;
        boolean zIsPlaying;
        enterYouTubeFullScreenMode();
        YouTubePlayer youTubePlayer = this.mYouTubePlayer;
        if (youTubePlayer != null) {
            long currentTimeMillis = youTubePlayer.getCurrentTimeMillis();
            long durationMillis = this.mYouTubePlayer.getDurationMillis();
            zIsPlaying = this.mYouTubePlayer.isPlaying();
            j = currentTimeMillis;
            j2 = durationMillis;
        } else {
            j = -1;
            j2 = -1;
            zIsPlaying = true;
        }
        FragmentManager supportFragmentManager = this.mVideoHelperInterface.getSupportFragmentManager();
        this.mFullScreenYTControllerDialog = FullScreenControllerFragment.newInstance(true, false, j, j2, zIsPlaying);
        this.mFullScreenYTControllerDialog.show(supportFragmentManager, null);
    }

    private void enterYouTubeFullScreenMode() {
        YouTubePlayer youTubePlayer = this.mYouTubePlayer;
        if (youTubePlayer != null) {
            youTubePlayer.setFullscreen(true);
        }
        this.mVideoHelperInterface.setPersistentImmersiveMode();
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public void exitFullscreen() {
        exitYouTubeFullScreenMode();
    }

    private void exitYouTubeFullScreenMode() {
        if (this.mFullScreenYTControllerDialog != null) {
            this.mYouTubePlayer.setFullscreen(false);
            this.mVideoHelperInterface.setToolBarVisibility(true);
            this.mVideoHelperInterface.setIsFullScreen(false);
            this.mFullScreenYTControllerDialog.exitFullScreen();
            this.mFullScreenYTControllerDialog = null;
            YouTubePlayer youTubePlayer = this.mYouTubePlayer;
            if (youTubePlayer != null) {
                this.mVideoControlsViewHolder.setPosition(youTubePlayer.getCurrentTimeMillis());
                this.mVideoControlsViewHolder.setDuration(this.mYouTubePlayer.getDurationMillis());
                this.mVideoControlsViewHolder.setPlaying(this.mYouTubePlayer.isPlaying());
            }
        }
    }

    private class YouTubePlayerStateHandler implements YouTubePlayer.PlayerStateChangeListener {
        @Override // com.google.android.youtube.player.YouTubePlayer.PlayerStateChangeListener
        public void onError(YouTubePlayer.ErrorReason errorReason) {
        }

        @Override // com.google.android.youtube.player.YouTubePlayer.PlayerStateChangeListener
        public void onLoading() {
        }

        private YouTubePlayerStateHandler() {
        }

        @Override // com.google.android.youtube.player.YouTubePlayer.PlayerStateChangeListener
        public void onLoaded(String str) {
            YouTubeVideoHandler.this.mIsYouTubePlayerLoaded = true;
            YouTubeVideoHandler.this.playYouTube();
        }

        @Override // com.google.android.youtube.player.YouTubePlayer.PlayerStateChangeListener
        public void onAdStarted() {
            YouTubeVideoHandler.this.mVideoControlsViewHolder.setDuration(-1L);
        }

        @Override // com.google.android.youtube.player.YouTubePlayer.PlayerStateChangeListener
        public void onVideoStarted() {
            YouTubeVideoHandler.this.mVideoControlsViewHolder.setPlaying(true, false);
            YouTubeVideoHandler.this.mVideoControlsViewHolder.setDuration(YouTubeVideoHandler.this.mYouTubePlayer.getDurationMillis());
            YouTubeVideoHandler.this.mVideoControlsViewHolder.setPosition(YouTubeVideoHandler.this.mYouTubePlayer.getCurrentTimeMillis());
        }

        @Override // com.google.android.youtube.player.YouTubePlayer.PlayerStateChangeListener
        public void onVideoEnded() {
            YouTubeVideoHandler.this.mVideoHelperInterface.onVideoEnded();
            if (YouTubeVideoHandler.this.mVideoHelperInterface.getIsPlaylistAutoplayEnabled()) {
                YouTubeVideoHandler.this.pauseYouTube();
            }
        }
    }

    private void initYouTube() {
        ((YouTubePlayerSupportFragment) this.mVideoHelperInterface.getSupportFragmentManager().findFragmentById(R.id.youtube_player_fragment)).initialize("INJECT_YOUTUBE_API_KEY", new C05672());
    }

    /* JADX INFO: renamed from: com.evie.sidescreen.relatedcontent.YouTubeVideoHandler$2 */
    class C05672 implements YouTubePlayer.OnInitializedListener {
        C05672() {
        }

        @Override // com.google.android.youtube.player.YouTubePlayer.OnInitializedListener
        public void onInitializationSuccess(YouTubePlayer.Provider provider, YouTubePlayer youTubePlayer, boolean z) {
            YouTubeVideoHandler.this.mVideoHelperInterface.onVideoVisibilityChanged(true);
            YouTubeVideoHandler.this.mYouTubePlayer = youTubePlayer;
            YouTubeVideoHandler.this.mYouTubePlayer.addFullscreenControlFlag(8);
            YouTubeVideoHandler.this.mYouTubePlayer.setPlayerStyle(YouTubePlayer.PlayerStyle.CHROMELESS);
            YouTubeVideoHandler.this.mYouTubePlayer.setPlayerStateChangeListener(new YouTubePlayerStateHandler());
            YouTubeVideoHandler.this.mYouTubePlayer.setOnFullscreenListener(new YouTubePlayer.OnFullscreenListener() { // from class: com.evie.sidescreen.relatedcontent.-$$Lambda$YouTubeVideoHandler$2$Wnq7j1m2xv4z72B5nklAH4ebnz0
                @Override // com.google.android.youtube.player.YouTubePlayer.OnFullscreenListener
                public final void onFullscreen(boolean z2) {
                    YouTubeVideoHandler.C05672.lambda$onInitializationSuccess$0(this.f$0, z2);
                }
            });
            YouTubeVideoHandler.this.loadVideoYouTube();
        }

        public static /* synthetic */ void lambda$onInitializationSuccess$0(C05672 c05672, boolean z) {
            YouTubeVideoHandler.this.mVideoControlsViewHolder.setPlaying(true, false);
            YouTubeVideoHandler.this.mVideoControlsViewHolder.setDuration(YouTubeVideoHandler.this.mYouTubePlayer.getDurationMillis());
        }

        @Override // com.google.android.youtube.player.YouTubePlayer.OnInitializedListener
        public void onInitializationFailure(YouTubePlayer.Provider provider, YouTubeInitializationResult youTubeInitializationResult) {
            Toast.makeText(YouTubeVideoHandler.this.mContext, "init failure", 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadVideoYouTube() {
        this.mIsYouTubePlayerLoaded = false;
        this.mYouTubeVideoId = this.mVideoHelperInterface.getVideoObjectList().get(0).getId();
        this.mVideoControlsViewHolder.setDuration(-1L);
        this.mYouTubePlayer.cueVideo(this.mYouTubeVideoId);
        if (this.mVideoHelperInterface.isActivityStarted()) {
            playYouTube();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playYouTube() {
        YouTubePlayer youTubePlayer = this.mYouTubePlayer;
        if (youTubePlayer == null) {
            return;
        }
        if (!this.mIsYouTubePlayerLoaded) {
            int startPosition = (int) this.mVideoHelperInterface.getStartPosition();
            if (startPosition > 0) {
                this.mYouTubePlayer.seekToMillis(startPosition);
                this.mVideoHelperInterface.setStartPosition(0L);
            }
            this.mVideoControlsViewHolder.setPlaying(true);
            this.mVideoControlsViewHolder.setDuration(-1L);
            this.mYouTubePlayer.loadVideo(this.mYouTubeVideoId);
            return;
        }
        youTubePlayer.play();
        this.mVideoControlsViewHolder.setPlaying(true);
        this.mHandler.post(this.mYouTubeRefreshPosition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pauseYouTube() {
        YouTubePlayer youTubePlayer = this.mYouTubePlayer;
        if (youTubePlayer == null) {
            return;
        }
        youTubePlayer.pause();
        this.mVideoControlsViewHolder.setPlaying(false);
        this.mHandler.removeCallbacks(this.mYouTubeRefreshPosition);
    }

    private void disposeYouTube() {
        this.mHandler.removeCallbacks(this.mYouTubeRefreshPosition);
        YouTubePlayer youTubePlayer = this.mYouTubePlayer;
        if (youTubePlayer != null) {
            try {
                youTubePlayer.setPlayerStateChangeListener(null);
            } catch (Exception unused) {
            }
            this.mYouTubePlayer.release();
            this.mYouTubePlayer = null;
        }
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler
    public View getContainerView() {
        return this.mYouTubeContainer;
    }
}
