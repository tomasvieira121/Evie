package com.evie.sidescreen.tiles.videos;

import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.google.android.exoplayer2.p005ui.DefaultTimeBar;

/* JADX INFO: loaded from: classes.dex */
public class VideoControlsViewHolder_ViewBinding implements Unbinder {
    private VideoControlsViewHolder target;
    private View view7f0b00bd;
    private View view7f0b00be;
    private View view7f0b00c4;
    private View view7f0b00c5;

    public VideoControlsViewHolder_ViewBinding(final VideoControlsViewHolder videoControlsViewHolder, View view) {
        this.target = videoControlsViewHolder;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.exo_play, "field 'mPlayButton' and method 'onPlayClick'");
        videoControlsViewHolder.mPlayButton = (ImageButton) Utils.castView(viewFindRequiredView, R.id.exo_play, "field 'mPlayButton'", ImageButton.class);
        this.view7f0b00c5 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.videos.VideoControlsViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                videoControlsViewHolder.onPlayClick();
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.exo_pause, "field 'mPauseButton' and method 'onPauseClick'");
        videoControlsViewHolder.mPauseButton = (ImageButton) Utils.castView(viewFindRequiredView2, R.id.exo_pause, "field 'mPauseButton'", ImageButton.class);
        this.view7f0b00c4 = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.videos.VideoControlsViewHolder_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                videoControlsViewHolder.onPauseClick();
            }
        });
        videoControlsViewHolder.mPositionText = (TextView) Utils.findRequiredViewAsType(view, R.id.exo_position, "field 'mPositionText'", TextView.class);
        videoControlsViewHolder.mProgressBar = (DefaultTimeBar) Utils.findRequiredViewAsType(view, R.id.exo_progress, "field 'mProgressBar'", DefaultTimeBar.class);
        videoControlsViewHolder.mDurationText = (TextView) Utils.findRequiredViewAsType(view, R.id.exo_duration, "field 'mDurationText'", TextView.class);
        View viewFindRequiredView3 = Utils.findRequiredView(view, R.id.exo_enter_fullscreen_button, "field 'mEnterFullScreenButton' and method 'onEnterFullScreen'");
        videoControlsViewHolder.mEnterFullScreenButton = (ImageButton) Utils.castView(viewFindRequiredView3, R.id.exo_enter_fullscreen_button, "field 'mEnterFullScreenButton'", ImageButton.class);
        this.view7f0b00bd = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.videos.VideoControlsViewHolder_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                videoControlsViewHolder.onEnterFullScreen(view2);
            }
        });
        View viewFindRequiredView4 = Utils.findRequiredView(view, R.id.exo_exit_fullscreen_button, "field 'mExitFullScreenButton' and method 'onExitFullScreen'");
        videoControlsViewHolder.mExitFullScreenButton = (ImageButton) Utils.castView(viewFindRequiredView4, R.id.exo_exit_fullscreen_button, "field 'mExitFullScreenButton'", ImageButton.class);
        this.view7f0b00be = viewFindRequiredView4;
        viewFindRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.videos.VideoControlsViewHolder_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                videoControlsViewHolder.onExitFullScreen();
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        VideoControlsViewHolder videoControlsViewHolder = this.target;
        if (videoControlsViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        videoControlsViewHolder.mPlayButton = null;
        videoControlsViewHolder.mPauseButton = null;
        videoControlsViewHolder.mPositionText = null;
        videoControlsViewHolder.mProgressBar = null;
        videoControlsViewHolder.mDurationText = null;
        videoControlsViewHolder.mEnterFullScreenButton = null;
        videoControlsViewHolder.mExitFullScreenButton = null;
        this.view7f0b00c5.setOnClickListener(null);
        this.view7f0b00c5 = null;
        this.view7f0b00c4.setOnClickListener(null);
        this.view7f0b00c4 = null;
        this.view7f0b00bd.setOnClickListener(null);
        this.view7f0b00bd = null;
        this.view7f0b00be.setOnClickListener(null);
        this.view7f0b00be = null;
    }
}
