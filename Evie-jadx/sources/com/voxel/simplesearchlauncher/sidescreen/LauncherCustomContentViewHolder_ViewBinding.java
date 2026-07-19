package com.voxel.simplesearchlauncher.sidescreen;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.voxel.simplesearchlauncher.view.WindowInsetBackgroundFrameLayout;
import com.voxel.simplesearchlauncher.view.WindowInsetPolicyFrameLayout;
import is.shortcut.R;

/* JADX INFO: loaded from: classes2.dex */
public class LauncherCustomContentViewHolder_ViewBinding implements Unbinder {
    private LauncherCustomContentViewHolder target;

    public LauncherCustomContentViewHolder_ViewBinding(LauncherCustomContentViewHolder launcherCustomContentViewHolder, View view) {
        this.target = launcherCustomContentViewHolder;
        launcherCustomContentViewHolder.mSideScreenFixedView = (WindowInsetPolicyFrameLayout) Utils.findRequiredViewAsType(view, R.id.side_screen_fixed_view, "field 'mSideScreenFixedView'", WindowInsetPolicyFrameLayout.class);
        launcherCustomContentViewHolder.mBarOverlays = (WindowInsetBackgroundFrameLayout) Utils.findRequiredViewAsType(view, R.id.bar_overlays, "field 'mBarOverlays'", WindowInsetBackgroundFrameLayout.class);
        launcherCustomContentViewHolder.mFullBackgroundView = Utils.findRequiredView(view, R.id.side_screen_full_background, "field 'mFullBackgroundView'");
        launcherCustomContentViewHolder.mHalfBackgroundView = Utils.findRequiredView(view, R.id.side_screen_half_background, "field 'mHalfBackgroundView'");
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        LauncherCustomContentViewHolder launcherCustomContentViewHolder = this.target;
        if (launcherCustomContentViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        launcherCustomContentViewHolder.mSideScreenFixedView = null;
        launcherCustomContentViewHolder.mBarOverlays = null;
        launcherCustomContentViewHolder.mFullBackgroundView = null;
        launcherCustomContentViewHolder.mHalfBackgroundView = null;
    }
}
