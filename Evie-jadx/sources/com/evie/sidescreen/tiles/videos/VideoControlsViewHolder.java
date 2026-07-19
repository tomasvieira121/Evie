package com.evie.sidescreen.tiles.videos;

import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.evie.sidescreen.R;
import com.evie.sidescreen.relatedcontent.RelatedVideosActivity;
import com.google.android.exoplayer2.p005ui.DefaultTimeBar;
import com.google.android.exoplayer2.p005ui.TimeBar;
import io.reactivex.Observable;
import java.util.Locale;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class VideoControlsViewHolder {

    /* JADX INFO: renamed from: ID */
    public static final int f371ID = R.layout.ss_popup_video_viewer_playback_control;

    @BindView
    TextView mDurationText;

    @BindView
    ImageButton mEnterFullScreenButton;

    @BindView
    ImageButton mExitFullScreenButton;
    private Unbinder mFullScreenBinder;
    public RelatedVideosActivity.PlayerActionHandler mHandler;

    @BindView
    ImageButton mPauseButton;

    @BindView
    ImageButton mPlayButton;

    @BindView
    TextView mPositionText;

    @BindView
    DefaultTimeBar mProgressBar;
    private TimeBar.OnScrubListener mScrubListener;
    private Unbinder mSmallScreenBinder;
    private View mSmallScreenControls;

    public interface ActionHandler {
        Observable<Boolean> observeControlsFocus();
    }

    public VideoControlsViewHolder(View view, RelatedVideosActivity.PlayerActionHandler playerActionHandler) {
        this.mSmallScreenControls = view;
        this.mSmallScreenBinder = ButterKnife.bind(this, this.mSmallScreenControls);
        this.mHandler = playerActionHandler;
        this.mPauseButton.setVisibility(8);
        this.mScrubListener = new TimeBar.OnScrubListener() { // from class: com.evie.sidescreen.tiles.videos.VideoControlsViewHolder.1
            @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
            public void onScrubMove(TimeBar timeBar, long j) {
            }

            @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
            public void onScrubStart(TimeBar timeBar, long j) {
                VideoControlsViewHolder.this.mHandler.onPause();
            }

            @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
            public void onScrubStop(TimeBar timeBar, long j, boolean z) {
                if (!z) {
                    VideoControlsViewHolder.this.mHandler.onScrub(j);
                } else {
                    VideoControlsViewHolder.this.mHandler.onPlay();
                }
            }
        };
        this.mProgressBar.addListener(this.mScrubListener);
        setExpand(false);
    }

    @OnClick
    public void onPlayClick() {
        setPlaying(true, true);
    }

    @OnClick
    public void onPauseClick() {
        setPlaying(false, true);
    }

    public void setDuration(long j) {
        if (j == -1) {
            this.mProgressBar.setDuration(60000L);
            this.mProgressBar.setPosition(0L);
            this.mProgressBar.setEnabled(false);
            this.mPositionText.setText("0:00");
            this.mDurationText.setText("-:--");
            return;
        }
        this.mProgressBar.setDuration(j);
        this.mProgressBar.setEnabled(true);
        this.mDurationText.setText(formatVideoProgressText(j));
        setTextWidth(j);
    }

    public void setPosition(long j) {
        this.mProgressBar.setPosition(j);
        this.mPositionText.setText(formatVideoProgressText(j));
    }

    public void setPlaying(boolean z) {
        setPlaying(z, false);
    }

    public void setPlaying(boolean z, boolean z2) {
        if (z) {
            this.mPlayButton.setVisibility(8);
            this.mPauseButton.setVisibility(0);
        } else {
            this.mPlayButton.setVisibility(0);
            this.mPauseButton.setVisibility(8);
        }
        if (z2) {
            if (z) {
                this.mHandler.onPlay();
            } else {
                this.mHandler.onPause();
            }
        }
    }

    private static String formatVideoProgressText(long j) {
        long j2 = j / 1000;
        return String.format(Locale.US, "%d:%02d", Long.valueOf(j2 / 60), Long.valueOf(j2 % 60));
    }

    private void setTextWidth(long j) {
        String str;
        long j2 = j / 60000;
        if (j2 >= 100) {
            str = "000:00";
        } else {
            str = j2 >= 10 ? "00:00" : "0:00";
        }
        this.mPositionText.setWidth((int) (this.mPositionText.getPaint().measureText(str) + this.mPositionText.getPaddingStart() + this.mPositionText.getPaddingEnd()));
    }

    @OnClick
    public void onEnterFullScreen(View view) {
        this.mHandler.manuallyEnterFullScreen();
    }

    @OnClick
    public void onExitFullScreen() {
        this.mHandler.manuallyExitFullScreen();
    }

    public void setExpand(boolean z) {
        if (z) {
            this.mEnterFullScreenButton.setVisibility(8);
            this.mExitFullScreenButton.setVisibility(0);
        } else {
            this.mEnterFullScreenButton.setVisibility(0);
            this.mExitFullScreenButton.setVisibility(8);
        }
    }

    public void bindFullScreenControls(View view) {
        try {
            this.mProgressBar.removeListener(this.mScrubListener);
            this.mSmallScreenBinder.unbind();
            this.mFullScreenBinder = ButterKnife.bind(this, view);
            this.mProgressBar.addListener(this.mScrubListener);
        } catch (IllegalStateException e) {
            Timber.m554e(e);
        }
    }

    public void bindSmallScreenControls() {
        try {
            this.mProgressBar.removeListener(this.mScrubListener);
            this.mFullScreenBinder.unbind();
            this.mSmallScreenBinder = ButterKnife.bind(this, this.mSmallScreenControls);
            this.mProgressBar.addListener(this.mScrubListener);
        } catch (IllegalStateException e) {
            Timber.m554e(e);
        }
    }
}
