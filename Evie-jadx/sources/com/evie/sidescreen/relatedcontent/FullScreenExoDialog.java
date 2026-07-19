package com.evie.sidescreen.relatedcontent;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.evie.sidescreen.R;
import com.evie.sidescreen.tiles.videos.VideoControlsViewHolder;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.p005ui.PlayerView;

/* JADX INFO: loaded from: classes.dex */
public class FullScreenExoDialog extends Dialog {

    /* JADX INFO: renamed from: ID */
    public static final int f346ID = R.layout.ss_related_fullscreen_dialog;

    @BindView
    View mContainer;
    private VideoControlsViewHolder mControllerViewHolder;

    @BindView
    View mFullScreenController;
    private PlayerView mOldView;
    private FullScreenPeekyControls mPeekyControls;
    private SimpleExoPlayer mPlayer;

    @BindView
    PlayerView mPlayerView;

    public FullScreenExoDialog(Context context, int i, VideoControlsViewHolder videoControlsViewHolder) {
        super(context, i);
        this.mControllerViewHolder = videoControlsViewHolder;
    }

    public void enterFullScreen(SimpleExoPlayer simpleExoPlayer, PlayerView playerView) {
        this.mPlayer = simpleExoPlayer;
        this.mOldView = playerView;
        show();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(f346ID);
        ButterKnife.bind(this);
        PlayerView.switchTargetView(this.mPlayer, this.mOldView, this.mPlayerView);
        this.mControllerViewHolder.bindFullScreenControls(findViewById(R.id.fullscreen_controller));
        this.mControllerViewHolder.setExpand(true);
        this.mPlayerView.setClickable(false);
        this.mPeekyControls = new FullScreenPeekyControls(getContext(), getWindow(), this.mFullScreenController, this.mContainer, this.mControllerViewHolder.mHandler);
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        this.mPeekyControls.initialize(getContext());
    }

    public void exitFullScreen(SimpleExoPlayer simpleExoPlayer, PlayerView playerView) {
        PlayerView.switchTargetView(simpleExoPlayer, this.mPlayerView, playerView);
        this.mControllerViewHolder.bindSmallScreenControls();
        this.mPeekyControls.dispose();
        dismiss();
    }
}
