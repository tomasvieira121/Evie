package com.voxel.simplesearchlauncher.settings.gridsettings;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.voxel.launcher3.CellParams;
import com.voxel.launcher3.DeviceProfile;
import com.voxel.simplesearchlauncher.settings.SettingsSeekBarViewHolder;
import com.voxel.simplesearchlauncher.settings.SettingsSwitchViewHolder;
import is.shortcut.R;
import org.adw.library.widgets.discreteseekbar.DiscreteSeekBar;

/* JADX INFO: loaded from: classes2.dex */
public class GridSettingsView extends LinearLayout {
    private CellParams mCellParams;
    private SettingsSeekBarViewHolder mColumnsViewHolder;
    private DeviceProfile mDeviceProfile;
    private TextView mErrorText;
    private SettingsSeekBarViewHolder mIconSizeViewHolder;
    private SettingsSwitchViewHolder mInheritViewHolder;
    private CompoundButton.OnCheckedChangeListener mOnInheritChangeListener;
    private DiscreteSeekBar.OnProgressChangeListener mOnProgressChangeListener;
    private DeviceProfile.ParamType mParamType;
    private SettingsSeekBarViewHolder mRowsViewHolder;

    public TextView getErrorText() {
        return this.mErrorText;
    }

    public SettingsSwitchViewHolder getInheritViewHolder() {
        return this.mInheritViewHolder;
    }

    public SettingsSeekBarViewHolder getColumnsViewHolder() {
        return this.mColumnsViewHolder;
    }

    public SettingsSeekBarViewHolder getRowsViewHolder() {
        return this.mRowsViewHolder;
    }

    public SettingsSeekBarViewHolder getIconSizeViewHolder() {
        return this.mIconSizeViewHolder;
    }

    public DeviceProfile getDeviceProfile() {
        return this.mDeviceProfile;
    }

    public DeviceProfile.ParamType getParamType() {
        return this.mParamType;
    }

    public CellParams getCellParams() {
        return this.mCellParams;
    }

    public DiscreteSeekBar.OnProgressChangeListener getOnProgressChangeListener() {
        return this.mOnProgressChangeListener;
    }

    public CompoundButton.OnCheckedChangeListener getOnInheritChangeListener() {
        return this.mOnInheritChangeListener;
    }

    public GridSettingsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mErrorText = (TextView) findViewById(R.id.error);
        this.mInheritViewHolder = new SettingsSwitchViewHolder(findViewById(R.id.inherit_switch));
        this.mColumnsViewHolder = new SettingsSeekBarViewHolder(findViewById(R.id.columns_seek));
        this.mRowsViewHolder = new SettingsSeekBarViewHolder(findViewById(R.id.rows_seek));
        this.mIconSizeViewHolder = new SettingsSeekBarViewHolder(findViewById(R.id.icon_size_seek));
        this.mInheritViewHolder.getLabel().setText(R.string.app_settings_item_layout_inherit_title);
        this.mInheritViewHolder.getSubLabel().setText(R.string.app_settings_item_layout_inherit_subtitle);
        this.mInheritViewHolder.getSubLabel().setVisibility(0);
        this.mColumnsViewHolder.getLabel().setText(R.string.app_settings_home_screen_layout_columns);
        this.mRowsViewHolder.getLabel().setText(R.string.app_settings_home_screen_layout_rows);
        this.mIconSizeViewHolder.getLabel().setText(R.string.app_settings_home_screen_layout_icon_size);
        this.mInheritViewHolder.getSwitch().setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.voxel.simplesearchlauncher.settings.gridsettings.-$$Lambda$GridSettingsView$q_IY9iNyp6rHS6kHT7-bfswMXGQ
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                GridSettingsView.lambda$onFinishInflate$0(this.f$0, compoundButton, z);
            }
        });
        DiscreteSeekBar.OnProgressChangeListener onProgressChangeListener = new DiscreteSeekBar.OnProgressChangeListener() { // from class: com.voxel.simplesearchlauncher.settings.gridsettings.GridSettingsView.1
            @Override // org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.OnProgressChangeListener
            public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
                if (z) {
                    if (discreteSeekBar == GridSettingsView.this.mIconSizeViewHolder.getDiscreteSeekBar()) {
                        GridSettingsView.this.updateIconSize();
                    } else {
                        GridSettingsView.this.updateGrid();
                    }
                }
                if (GridSettingsView.this.mOnProgressChangeListener != null) {
                    GridSettingsView.this.mOnProgressChangeListener.onProgressChanged(discreteSeekBar, i, z);
                }
            }

            @Override // org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.OnProgressChangeListener
            public void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
                if (GridSettingsView.this.mOnProgressChangeListener != null) {
                    GridSettingsView.this.mOnProgressChangeListener.onStartTrackingTouch(discreteSeekBar);
                }
            }

            @Override // org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.OnProgressChangeListener
            public void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
                if (GridSettingsView.this.mOnProgressChangeListener != null) {
                    GridSettingsView.this.mOnProgressChangeListener.onStopTrackingTouch(discreteSeekBar);
                }
            }
        };
        this.mRowsViewHolder.getDiscreteSeekBar().setOnProgressChangeListener(onProgressChangeListener);
        this.mColumnsViewHolder.getDiscreteSeekBar().setOnProgressChangeListener(onProgressChangeListener);
        this.mIconSizeViewHolder.getDiscreteSeekBar().setOnProgressChangeListener(onProgressChangeListener);
    }

    public static /* synthetic */ void lambda$onFinishInflate$0(GridSettingsView gridSettingsView, CompoundButton compoundButton, boolean z) {
        gridSettingsView.mCellParams.inheritWorkspace = z;
        gridSettingsView.mDeviceProfile.updateCellParams(gridSettingsView.getContext(), gridSettingsView.mParamType, gridSettingsView.mCellParams);
        gridSettingsView.mRowsViewHolder.getDiscreteSeekBar().setProgress((int) gridSettingsView.mCellParams.numRows);
        gridSettingsView.mColumnsViewHolder.getDiscreteSeekBar().setProgress((int) gridSettingsView.mCellParams.numColumns);
        gridSettingsView.mIconSizeViewHolder.getDiscreteSeekBar().setProgress((int) (gridSettingsView.mCellParams.iconScale * 100.0f));
        gridSettingsView.setControlsEnabled(gridSettingsView.mInheritViewHolder.itemView.isEnabled());
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener = gridSettingsView.mOnInheritChangeListener;
        if (onCheckedChangeListener != null) {
            onCheckedChangeListener.onCheckedChanged(compoundButton, z);
        }
    }

    public void updateGrid() {
        int progress = this.mRowsViewHolder.getDiscreteSeekBar().getProgress();
        int progress2 = this.mColumnsViewHolder.getDiscreteSeekBar().getProgress();
        CellParams cellParams = this.mCellParams;
        cellParams.numRows = progress;
        cellParams.numColumns = progress2;
        this.mDeviceProfile.updateCellParams(getContext(), this.mParamType, this.mCellParams);
        updateIconScaleLimits();
        updateIconSize();
    }

    public void updateIconSize() {
        this.mCellParams.iconScale = this.mIconSizeViewHolder.getDiscreteSeekBar().getProgress() / 100.0f;
        this.mDeviceProfile.updateCellParams(getContext(), this.mParamType, this.mCellParams);
    }

    public void setParameters(DeviceProfile deviceProfile, DeviceProfile.ParamType paramType) {
        this.mDeviceProfile = deviceProfile;
        this.mParamType = paramType;
        this.mCellParams = deviceProfile.getCellParamsForType(paramType);
        this.mInheritViewHolder.getSwitch().setChecked(this.mCellParams.inheritWorkspace);
        this.mColumnsViewHolder.getDiscreteSeekBar().setMin(Math.round(Math.min(this.mDeviceProfile.numBaseColumns, 3.0f)));
        this.mColumnsViewHolder.getDiscreteSeekBar().setMax(12);
        this.mColumnsViewHolder.getDiscreteSeekBar().setProgress(Math.round(this.mCellParams.numColumns));
        this.mRowsViewHolder.getDiscreteSeekBar().setMin(Math.round(Math.min(this.mDeviceProfile.numBaseRows, 4.0f)));
        this.mRowsViewHolder.getDiscreteSeekBar().setMax(12);
        this.mRowsViewHolder.getDiscreteSeekBar().setProgress(Math.round(this.mCellParams.numRows));
        updateIconScaleLimits();
        this.mIconSizeViewHolder.getDiscreteSeekBar().setProgress(limitIconScale(this.mCellParams.iconScale * 100.0f));
    }

    private void updateIconScaleLimits() {
        int progress = this.mIconSizeViewHolder.getDiscreteSeekBar().getProgress();
        float maxIconScaleForType = this.mDeviceProfile.getMaxIconScaleForType(getContext(), this.mParamType) * 100.0f;
        this.mIconSizeViewHolder.getDiscreteSeekBar().setMin((int) (maxIconScaleForType * 0.2f));
        this.mIconSizeViewHolder.getDiscreteSeekBar().setMax((int) (1.0f * maxIconScaleForType));
        if (limitIconScale(progress) != progress) {
            this.mIconSizeViewHolder.getDiscreteSeekBar().setProgress(progress);
        }
    }

    private int limitIconScale(float f) {
        return (int) Math.min(this.mIconSizeViewHolder.getDiscreteSeekBar().getMax(), Math.max(this.mIconSizeViewHolder.getDiscreteSeekBar().getMin(), f));
    }

    public void setOnProgressChangeListener(DiscreteSeekBar.OnProgressChangeListener onProgressChangeListener) {
        this.mOnProgressChangeListener = onProgressChangeListener;
    }

    public void setOnInheritChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.mOnInheritChangeListener = onCheckedChangeListener;
    }

    public void setControlsEnabled(boolean z) {
        this.mInheritViewHolder.setEnabled(z);
        boolean z2 = z & ((this.mInheritViewHolder.itemView.getVisibility() == 0 && this.mInheritViewHolder.getSwitch().isChecked()) ? false : true);
        this.mRowsViewHolder.setEnabled(z2);
        this.mColumnsViewHolder.setEnabled(z2);
        this.mIconSizeViewHolder.setEnabled(z2);
    }

    public void showErrorText(int i) {
        this.mErrorText.setVisibility(0);
        this.mErrorText.setText(i);
    }

    public void hideErrorText() {
        this.mErrorText.setVisibility(8);
        this.mErrorText.setText((CharSequence) null);
    }
}
