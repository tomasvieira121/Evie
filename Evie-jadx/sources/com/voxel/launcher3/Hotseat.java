package com.voxel.launcher3;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import is.shortcut.R;

/* JADX INFO: loaded from: classes.dex */
public class Hotseat extends FrameLayout {
    private int mAllAppsButtonRank;
    private View mBackgroundView;
    private CellLayout mContent;
    private boolean mIsLandscape;
    private Launcher mLauncher;
    private boolean mTransposeLayoutWithOrientation;

    public boolean isAllAppsButtonRank(int i) {
        return false;
    }

    public Hotseat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Hotseat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTransposeLayoutWithOrientation = context.getResources().getBoolean(R.bool.hotseat_transpose_layout_with_orientation);
        this.mIsLandscape = context.getResources().getConfiguration().orientation == 2;
    }

    public void setup(Launcher launcher) {
        this.mLauncher = launcher;
    }

    CellLayout getLayout() {
        return this.mContent;
    }

    public View getBackgroundView() {
        return this.mBackgroundView;
    }

    public void setBackgroundView(View view) {
        this.mBackgroundView = view;
    }

    public boolean hasIcons() {
        return this.mContent.getShortcutsAndWidgets().getChildCount() > 1;
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.mContent.setOnLongClickListener(onLongClickListener);
    }

    private boolean hasVerticalHotseat() {
        return this.mIsLandscape && this.mTransposeLayoutWithOrientation;
    }

    int getOrderInHotseat(int i, int i2) {
        return hasVerticalHotseat() ? (this.mContent.getCountY() - i2) - 1 : i;
    }

    int getCellXFromOrder(int i) {
        if (hasVerticalHotseat()) {
            return 0;
        }
        return i;
    }

    int getCellYFromOrder(int i) {
        if (hasVerticalHotseat()) {
            return this.mContent.getCountY() - (i + 1);
        }
        return 0;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        refreshLayout();
    }

    public void refreshLayout() {
        DeviceProfile deviceProfile = LauncherAppState.getInstance().getDynamicGrid().getDeviceProfile();
        CellParams cellParamsForType = deviceProfile.getCellParamsForType(DeviceProfile.ParamType.HOTSEAT);
        this.mAllAppsButtonRank = deviceProfile.hotseatAllAppsRank;
        this.mContent = (CellLayout) findViewById(R.id.layout);
        if (deviceProfile.isLandscape && !deviceProfile.isLargeTablet()) {
            this.mContent.setGridSize(1, (int) cellParamsForType.numColumns);
        } else {
            this.mContent.setGridSize((int) cellParamsForType.numColumns, 1);
        }
        this.mContent.setCellParams(cellParamsForType);
        resetLayout();
    }

    void resetLayout() {
        this.mContent.removeAllViewsInLayout();
    }

    public CellParams getCellParams() {
        return LauncherAppState.getInstance().getDynamicGrid().getDeviceProfile().getCellParamsForType(DeviceProfile.ParamType.HOTSEAT);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.mLauncher.getWorkspace().workspaceInModalState();
    }
}
