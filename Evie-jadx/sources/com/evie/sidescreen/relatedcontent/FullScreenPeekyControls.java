package com.evie.sidescreen.relatedcontent;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.evie.sidescreen.R;
import com.evie.sidescreen.tiles.videos.VideoControlsViewHolder;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class FullScreenPeekyControls {
    private VideoControlsViewHolder.ActionHandler mActionHandler;
    private View mContainer;
    private View mFullScreenController;
    private int mHeight;
    private Runnable mRunnable;
    private Window mWindow;
    private CompositeDisposable mDisposable = new CompositeDisposable();
    private boolean isShown = true;
    private Handler mHandler = new Handler();

    public FullScreenPeekyControls(Context context, Window window, View view, View view2, VideoControlsViewHolder.ActionHandler actionHandler) {
        this.mWindow = window;
        this.mFullScreenController = view;
        view.findViewById(R.id.fullscreen_controller).setBackground(context.getDrawable(R.color.dark_theme_bg_transparent));
        this.mContainer = view2;
        this.mWindow.getDecorView().setSystemUiVisibility(4102);
        this.mWindow.addFlags(1024);
        this.mActionHandler = actionHandler;
    }

    public void initialize(Context context) {
        this.mRunnable = new Runnable() { // from class: com.evie.sidescreen.relatedcontent.-$$Lambda$8Ll1RBhZHBAVi2-dB_ehD9ycrcI
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.hideControls();
            }
        };
        this.mDisposable.add(this.mActionHandler.observeControlsFocus().distinctUntilChanged().subscribe(new Consumer() { // from class: com.evie.sidescreen.relatedcontent.-$$Lambda$FullScreenPeekyControls$kmDlNlkXkUuWUHbDthVlXo0QRpM
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                FullScreenPeekyControls.lambda$initialize$0(this.f$0, (Boolean) obj);
            }
        }));
        this.mHeight = context.getResources().getDimensionPixelSize(R.dimen.ss_popup_video_viewer_playback_control_height);
        this.mContainer.setOnClickListener(new View.OnClickListener() { // from class: com.evie.sidescreen.relatedcontent.-$$Lambda$FullScreenPeekyControls$3R6rBy_f5kE_wzUm1tyihyFQtDA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.toggleController();
            }
        });
    }

    public static /* synthetic */ void lambda$initialize$0(FullScreenPeekyControls fullScreenPeekyControls, Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            fullScreenPeekyControls.showControls();
        } else {
            fullScreenPeekyControls.hideControlsDelayed();
        }
    }

    public void dispose() {
        this.mDisposable.dispose();
        this.mHandler.removeCallbacks(this.mRunnable);
    }

    public void showControls() {
        this.isShown = true;
        this.mHandler.removeCallbacks(this.mRunnable);
        this.mFullScreenController.clearAnimation();
        this.mFullScreenController.animate().translationY(0.0f).setInterpolator(new FastOutSlowInInterpolator()).setDuration(250L);
    }

    public void hideControlsDelayed() {
        this.mHandler.postDelayed(this.mRunnable, 1500L);
    }

    public void hideControls() {
        this.isShown = false;
        this.mFullScreenController.clearAnimation();
        this.mFullScreenController.animate().translationY(this.mHeight).setInterpolator(new FastOutSlowInInterpolator()).setDuration(250L);
    }

    public void setClickable(boolean z) {
        this.mContainer.setClickable(z);
        this.mContainer.setFocusable(z);
    }

    public void toggleController() {
        if (this.isShown) {
            hideControls();
        } else {
            showControls();
            hideControlsDelayed();
        }
    }
}
