package com.evie.sidescreen.relatedcontent;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.evie.sidescreen.R;
import com.evie.sidescreen.tiles.videos.VideoControlsViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class FullScreenControllerDialog extends Dialog {

    /* JADX INFO: renamed from: ID */
    private static final int f345ID = R.layout.ss_related_fullscreen_controller;

    @BindView
    View mContainer;
    private VideoControlsViewHolder mControllerViewHolder;

    @BindView
    View mControls;
    private FullScreenPeekyControls mPeekyControls;

    public FullScreenControllerDialog(Context context, int i, VideoControlsViewHolder videoControlsViewHolder) {
        super(context, i);
        this.mControllerViewHolder = videoControlsViewHolder;
        Window window = getWindow();
        if (window != null) {
            window.clearFlags(2);
            window.setBackgroundDrawableResource(android.R.color.transparent);
            window.setFlags(32, 32);
            window.addFlags(262144);
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(f345ID);
        ButterKnife.bind(this);
        this.mControllerViewHolder.bindFullScreenControls(findViewById(R.id.fullscreen_controller));
        this.mControllerViewHolder.setExpand(true);
        this.mPeekyControls = new FullScreenPeekyControls(getContext(), getWindow(), this.mControls, this.mContainer, this.mControllerViewHolder.mHandler);
        Window window = getWindow();
        window.setGravity(80);
        window.setLayout(-1, getContext().getResources().getDimensionPixelSize(R.dimen.ss_popup_video_viewer_playback_control_height));
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        this.mPeekyControls.initialize(getContext());
    }

    public void exitFullScreen() {
        dismiss();
        this.mControllerViewHolder.bindSmallScreenControls();
        this.mPeekyControls.dispose();
    }

    @Override // android.app.Dialog
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 4) {
            return false;
        }
        this.mPeekyControls.toggleController();
        return false;
    }

    @Override // android.app.Dialog
    public void show() {
        getWindow().setFlags(8, 8);
        super.show();
        getWindow().clearFlags(8);
    }
}
