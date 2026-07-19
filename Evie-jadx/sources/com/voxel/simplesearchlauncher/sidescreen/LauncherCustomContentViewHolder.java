package com.voxel.simplesearchlauncher.sidescreen;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.FrameLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.voxel.simplesearchlauncher.utils.AlphaUtil;
import com.voxel.simplesearchlauncher.utils.CombinedFactorHelper;
import com.voxel.simplesearchlauncher.view.WindowInsetBackgroundFrameLayout;
import com.voxel.simplesearchlauncher.view.WindowInsetPolicyFrameLayout;
import is.shortcut.R;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class LauncherCustomContentViewHolder {

    @BindView
    WindowInsetBackgroundFrameLayout mBarOverlays;
    private WindowInsetBackgroundFrameLayout mCustomContentView;
    private ColorDrawable mFullBackgroundDrawable;
    private CombinedFactorHelper mFullBackgroundFactor;

    @BindView
    View mFullBackgroundView;
    private GradientDrawable mHalfBackgroundDrawable;

    @BindView
    View mHalfBackgroundView;

    @BindView
    WindowInsetPolicyFrameLayout mSideScreenFixedView;

    public WindowInsetBackgroundFrameLayout getCustomContentView() {
        return this.mCustomContentView;
    }

    public LauncherCustomContentViewHolder(View view, LauncherCustomContentPresenter launcherCustomContentPresenter) {
        ButterKnife.bind(this, view);
        this.mCustomContentView = new WindowInsetBackgroundFrameLayout(view.getContext());
        this.mCustomContentView.setFitsSystemWindows(true);
        this.mCustomContentView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        View fixedHeaderView = launcherCustomContentPresenter.getSideScreen().getSideScreenView().getFixedHeaderView();
        View view2 = launcherCustomContentPresenter.getSideScreen().getSideScreenView().getView();
        this.mSideScreenFixedView.addView(fixedHeaderView, 0);
        this.mCustomContentView.addView(view2);
        this.mFullBackgroundDrawable = new ColorDrawable(view.getResources().getColor(R.color.side_screen_background_color));
        this.mFullBackgroundDrawable.setAlpha(0);
        this.mFullBackgroundView.setBackground(this.mFullBackgroundDrawable);
        this.mHalfBackgroundDrawable = (GradientDrawable) view.getResources().getDrawable(R.drawable.side_screen_background_gradient);
        this.mHalfBackgroundDrawable.setAlpha(0);
        this.mHalfBackgroundView.setBackground(this.mHalfBackgroundDrawable);
        this.mFullBackgroundFactor = new CombinedFactorHelper();
        this.mFullBackgroundFactor.addObserver(new Observer() { // from class: com.voxel.simplesearchlauncher.sidescreen.-$$Lambda$LauncherCustomContentViewHolder$awHfO99ffIvJ7y2Kwlq1TetnwRM
            @Override // java.util.Observer
            public final void update(Observable observable, Object obj) {
                LauncherCustomContentViewHolder.lambda$new$0(this.f$0, observable, obj);
            }
        });
    }

    public static /* synthetic */ void lambda$new$0(LauncherCustomContentViewHolder launcherCustomContentViewHolder, Observable observable, Object obj) {
        launcherCustomContentViewHolder.mFullBackgroundDrawable.setAlpha(AlphaUtil.floatToIntAlpha(launcherCustomContentViewHolder.mFullBackgroundFactor.getCombinedFactor(CombinedFactorHelper.MULTIPLY_COMBINER)));
        launcherCustomContentViewHolder.mBarOverlays.setTopStartInsetBackgroundColor(launcherCustomContentViewHolder.mFullBackgroundDrawable.getColor());
        launcherCustomContentViewHolder.mBarOverlays.setTopEndInsetBackgroundColor(launcherCustomContentViewHolder.mFullBackgroundDrawable.getColor());
    }

    public void setBackgroundAlpha(float f) {
        this.mBarOverlays.setBottomStartInsetBackgroundColor(AlphaUtil.applyAlphaToColor(f, -16777216));
        this.mBarOverlays.setBottomEndInsetBackgroundColor(AlphaUtil.applyAlphaToColor(f, -16777216));
        this.mHalfBackgroundDrawable.setAlpha(AlphaUtil.floatToIntAlpha(f));
        this.mFullBackgroundFactor.put("normal", f);
    }

    public void setFullBackgroundAlpha(float f) {
        this.mFullBackgroundFactor.put("full", f);
    }
}
