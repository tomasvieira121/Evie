package com.voxel.simplesearchlauncher.settings;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.crashlytics.android.Crashlytics;
import com.voxel.launcher3.CellParams;
import com.voxel.launcher3.DeviceProfile;
import com.voxel.launcher3.ItemInfo;
import com.voxel.launcher3.LauncherAppState;
import com.voxel.launcher3.LauncherModel;
import com.voxel.launcher3.Utilities;
import com.voxel.simplesearchlauncher.model.managers.SettingsStorage;
import com.voxel.simplesearchlauncher.settings.gridsettings.GridSettingsView;
import com.voxel.simplesearchlauncher.view.GridLineController;
import com.voxel.simplesearchlauncher.view.MockLauncherController;
import dagger.android.support.AndroidSupportInjection;
import is.shortcut.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.adw.library.widgets.discreteseekbar.DiscreteSeekBar;

/* JADX INFO: loaded from: classes2.dex */
public class DesktopSettingsFragment extends Fragment {
    private SettingsSwitchViewHolder mAppDrawerHintViewHolder;
    private CellParams mCellParams;
    private DeviceProfile mDeviceProfile;
    private MockLauncherController.MockLauncherHolder mFragmentInteractionListener;
    private GridSettingsView mGridSettingsView;

    @BindView
    View mHiddenButton;
    LayoutSettingsManager mLayoutSettingsManager;
    private SettingsSwitchViewHolder mLockDesktopViewHolder;
    private View mMockLauncher;
    private MockLauncherController mMockLauncherController;
    private float mMockLauncherStartTranslationY;
    private NestedScrollView mScrollView;
    private SettingsSwitchViewHolder mScrollingWallpaperViewHolder;
    private SettingsSwitchViewHolder mSearchBarDesktopEnabled;
    private SettingsSwitchViewHolder mShowLabelsViewHolder;
    private SettingsSwitchViewHolder mSidescreenEnabled;
    private SettingsSwitchViewHolder mUseFahrenheitHolder;
    private List<ItemInfo> mWorkspaceItems = Collections.emptyList();
    private List<ItemInfo> mHotseatItems = Collections.emptyList();
    private Map<ItemInfo, Drawable> mWidgetImageMap = new HashMap();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        AndroidSupportInjection.inject(this);
        super.onAttach(context);
        try {
            this.mFragmentInteractionListener = (MockLauncherController.MockLauncherHolder) context;
        } catch (ClassCastException unused) {
            throw new ClassCastException(context.toString() + " must implement " + MockLauncherController.MockLauncherHolder.class.getCanonicalName());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mWorkspaceItems = LauncherModel.getItemsForScreenPosition(0);
        this.mHotseatItems = LauncherModel.getHotseatItems();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.settings_activity_desktop_fragment, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ButterKnife.bind(this, view);
        DeviceProfile deviceProfile = LauncherAppState.getInstance().getDynamicGrid().getDeviceProfile();
        ArrayList arrayList = new ArrayList();
        arrayList.add(deviceProfile);
        this.mDeviceProfile = new DeviceProfile(getActivity(), (ArrayList<DeviceProfile>) arrayList, deviceProfile.minWidthDps, deviceProfile.minHeightDps, deviceProfile.widthPx, deviceProfile.heightPx, deviceProfile.availableWidthPx, deviceProfile.availableHeightPx, deviceProfile.getCellParamsMap(), getActivity().getResources(), SettingsStorage.getInstance().getSearchBarDesktopEnabled());
        this.mCellParams = this.mDeviceProfile.getCellParamsForType(DeviceProfile.ParamType.WORKSPACE);
        setupControls(view);
        setupMockLauncher((FrameLayout) view);
        this.mScrollView = (NestedScrollView) view.findViewById(R.id.scroll_view);
        this.mScrollView.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$DesktopSettingsFragment$3O87P_rHrsrn83sfI5iTcC_PGoU
            @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
            public final void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
                DesktopSettingsFragment desktopSettingsFragment = this.f$0;
                desktopSettingsFragment.mMockLauncher.setTranslationY(desktopSettingsFragment.mMockLauncherStartTranslationY - (i2 / 2.0f));
            }
        });
    }

    private void setupControls(View view) {
        this.mShowLabelsViewHolder = new SettingsSwitchViewHolder(view.findViewById(R.id.icon_label_switch));
        this.mScrollingWallpaperViewHolder = new SettingsSwitchViewHolder(view.findViewById(R.id.scrolling_wallpaper_switch));
        this.mGridSettingsView = (GridSettingsView) view.findViewById(R.id.grid_settings);
        this.mSearchBarDesktopEnabled = new SettingsSwitchViewHolder(view.findViewById(R.id.search_bar_desktop_enabled));
        this.mAppDrawerHintViewHolder = new SettingsSwitchViewHolder(view.findViewById(R.id.app_drawer_hint_switch));
        this.mLockDesktopViewHolder = new SettingsSwitchViewHolder(view.findViewById(R.id.lock_switch));
        this.mSidescreenEnabled = new SettingsSwitchViewHolder(view.findViewById(R.id.sidescreen_switch));
        this.mUseFahrenheitHolder = new SettingsSwitchViewHolder(view.findViewById(R.id.celsius_switch));
        final SettingsStorage settingsStorage = SettingsStorage.getInstance();
        this.mShowLabelsViewHolder.mLabel.setText(R.string.settings_show_icon_labels);
        this.mShowLabelsViewHolder.mSwitch.setChecked(this.mCellParams.showLabels);
        this.mScrollingWallpaperViewHolder.mLabel.setText(R.string.app_settings_item_desktop_scrolling_wallpaper_title);
        this.mScrollingWallpaperViewHolder.mSubLabel.setText(R.string.app_settings_item_desktop_scrolling_wallpaper_subtitle);
        this.mScrollingWallpaperViewHolder.mSubLabel.setVisibility(0);
        this.mScrollingWallpaperViewHolder.mSwitch.setChecked(settingsStorage.getScrollingWallpaperType());
        this.mAppDrawerHintViewHolder.mLabel.setText(R.string.app_settings_item_desktop_app_drawer_hint_title);
        this.mAppDrawerHintViewHolder.mSwitch.setChecked(settingsStorage.isAppDrawerHintEnabled());
        this.mLockDesktopViewHolder.mLabel.setText(R.string.app_settings_item_desktop_lock_title);
        this.mLockDesktopViewHolder.mSwitch.setChecked(settingsStorage.isDesktopLocked());
        this.mLockDesktopViewHolder.mSubLabel.setVisibility(0);
        this.mLockDesktopViewHolder.mSubLabel.setText(R.string.app_settings_item_desktop_lock_subtitle);
        this.mGridSettingsView.getInheritViewHolder().itemView.setVisibility(8);
        this.mGridSettingsView.setParameters(this.mDeviceProfile, DeviceProfile.ParamType.WORKSPACE);
        this.mSearchBarDesktopEnabled.mLabel.setText(R.string.app_settings_item_search_bar_desktop_enable);
        this.mSearchBarDesktopEnabled.mSwitch.setChecked(SettingsStorage.getInstance().getSearchBarDesktopEnabled());
        this.mSidescreenEnabled.mLabel.setText(R.string.app_settings_item_desktop_sidescreen_title);
        this.mSidescreenEnabled.mSwitch.setChecked(settingsStorage.getSideScreenEnabled());
        this.mSidescreenEnabled.mSubLabel.setVisibility(0);
        this.mSidescreenEnabled.mSubLabel.setText(R.string.app_settings_item_desktop_sidescreen_subtitle);
        this.mUseFahrenheitHolder.mLabel.setText(R.string.app_settings_item_desktop_use_fahrenheit_title);
        this.mUseFahrenheitHolder.mSwitch.setChecked(!settingsStorage.getUseCelsius());
        this.mUseFahrenheitHolder.setEnabled(settingsStorage.getSideScreenEnabled());
        this.mUseFahrenheitHolder.mSubLabel.setVisibility(0);
        this.mUseFahrenheitHolder.mSubLabel.setText(R.string.app_settings_item_desktop_use_fahrenheit_subtitle);
        this.mShowLabelsViewHolder.mSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$DesktopSettingsFragment$uPl74RmNzoH1YXuQJfRblYE6Nh4
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                DesktopSettingsFragment.lambda$setupControls$1(this.f$0, compoundButton, z);
            }
        });
        this.mAppDrawerHintViewHolder.mSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$DesktopSettingsFragment$RqYWjatq7CbfQbAie1QwYhkVHbA
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                settingsStorage.setAppDrawerHintEnabled(z);
            }
        });
        this.mScrollingWallpaperViewHolder.mSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$DesktopSettingsFragment$AiVNlJHs3HdfOf0czgO2G5hgag8
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                settingsStorage.setScrollingWallpaperType(z);
            }
        });
        this.mLockDesktopViewHolder.mSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$DesktopSettingsFragment$jTKhT0rgfv88nVavIFAcBMZij64
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                settingsStorage.setDesktopLocked(z);
            }
        });
        this.mGridSettingsView.setOnProgressChangeListener(new DiscreteSeekBar.OnProgressChangeListener() { // from class: com.voxel.simplesearchlauncher.settings.DesktopSettingsFragment.1
            @Override // org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.OnProgressChangeListener
            public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
                if (z) {
                    DesktopSettingsFragment.this.updateGrid();
                }
            }

            @Override // org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.OnProgressChangeListener
            public void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
                GridLineController workspaceGridLineController = DesktopSettingsFragment.this.mMockLauncherController.getWorkspaceGridLineController();
                workspaceGridLineController.updateGridLines(Math.round(DesktopSettingsFragment.this.mCellParams.numRows), Math.round(DesktopSettingsFragment.this.mCellParams.numColumns));
                workspaceGridLineController.showGridLines();
            }

            @Override // org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.OnProgressChangeListener
            public void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
                DesktopSettingsFragment.this.mMockLauncherController.getWorkspaceGridLineController().hideGridLines();
            }
        });
        this.mSearchBarDesktopEnabled.mSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$DesktopSettingsFragment$6cTA9bS9_EJMQyMUnmZ9tV01KY0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                DesktopSettingsFragment.lambda$setupControls$5(this.f$0, compoundButton, z);
            }
        });
        this.mSidescreenEnabled.mSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$DesktopSettingsFragment$WHRoIHqDmyK0CaVnlHKW0SrrpN8
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                DesktopSettingsFragment.lambda$setupControls$6(this.f$0, settingsStorage, compoundButton, z);
            }
        });
        this.mUseFahrenheitHolder.mSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$DesktopSettingsFragment$VTjPgICa2XcFkA8AJZqLsLHW9rU
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                settingsStorage.setUseCelsius(!z);
            }
        });
        this.mHiddenButton.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.settings.DesktopSettingsFragment.2
            int clickCount = 0;

            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                this.clickCount++;
                if (this.clickCount >= 10) {
                    this.clickCount = 0;
                    Intent intent = new Intent(DesktopSettingsFragment.this.getActivity(), (Class<?>) com.evie.screen.SettingsActivity.class);
                    intent.addFlags(268468224);
                    DesktopSettingsFragment.this.getActivity().startActivity(intent);
                }
            }
        });
    }

    public static /* synthetic */ void lambda$setupControls$1(DesktopSettingsFragment desktopSettingsFragment, CompoundButton compoundButton, boolean z) {
        desktopSettingsFragment.mCellParams.showLabels = z;
        desktopSettingsFragment.mDeviceProfile.updateAvailableDimensions(desktopSettingsFragment.getContext());
        MockLauncherController mockLauncherController = desktopSettingsFragment.mMockLauncherController;
        mockLauncherController.addItemsToCellLayout(mockLauncherController.getWorkspaceCellLayout(), desktopSettingsFragment.getActivity(), desktopSettingsFragment.mWorkspaceItems);
    }

    public static /* synthetic */ void lambda$setupControls$5(DesktopSettingsFragment desktopSettingsFragment, CompoundButton compoundButton, boolean z) {
        SettingsStorage.getInstance().setSearchBarDesktopEnabled(z);
        LauncherAppState.getInstance().getDynamicGrid().getDeviceProfile().searchBarEnabled = z;
        LauncherAppState.getInstance().getModel().forceReload();
        desktopSettingsFragment.mDeviceProfile.searchBarEnabled = z;
        desktopSettingsFragment.mGridSettingsView.updateGrid();
        desktopSettingsFragment.updateIconSize();
        desktopSettingsFragment.mMockLauncherController.layout();
    }

    public static /* synthetic */ void lambda$setupControls$6(DesktopSettingsFragment desktopSettingsFragment, SettingsStorage settingsStorage, CompoundButton compoundButton, boolean z) {
        desktopSettingsFragment.mUseFahrenheitHolder.setEnabled(z);
        settingsStorage.setSideScreenEnabled(z);
    }

    private void setupMockLauncher(FrameLayout frameLayout) {
        this.mMockLauncher = LayoutInflater.from(frameLayout.getContext()).inflate(R.layout.settings_mock_launcher, (ViewGroup) frameLayout, false);
        this.mMockLauncherController = new MockLauncherController(this.mMockLauncher, this.mDeviceProfile);
        this.mMockLauncherController.layout();
        MockLauncherController mockLauncherController = this.mMockLauncherController;
        mockLauncherController.addItemsToCellLayout(mockLauncherController.getWorkspaceCellLayout(), getActivity(), this.mWorkspaceItems);
        MockLauncherController mockLauncherController2 = this.mMockLauncherController;
        mockLauncherController2.addItemsToCellLayout(mockLauncherController2.getHotseatCellLayout(), getActivity(), this.mHotseatItems);
        this.mFragmentInteractionListener.getRootView().addView(this.mMockLauncher, 0);
        final View viewFindViewById = frameLayout.findViewById(R.id.mock_launcher_target);
        viewFindViewById.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.voxel.simplesearchlauncher.settings.DesktopSettingsFragment.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                try {
                    viewFindViewById.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    int dimensionPixelSize = DesktopSettingsFragment.this.getResources().getDimensionPixelSize(R.dimen.spacer);
                    float height = (viewFindViewById.getHeight() - (dimensionPixelSize * 2)) / DesktopSettingsFragment.this.mMockLauncher.getHeight();
                    DesktopSettingsFragment.this.mMockLauncher.setPivotY(0.0f);
                    DesktopSettingsFragment.this.mMockLauncher.setScaleX(height);
                    DesktopSettingsFragment.this.mMockLauncher.setScaleY(height);
                    int[] iArr = {0, dimensionPixelSize};
                    Utilities.getDescendantCoordRelativeToParent((View) viewFindViewById.getParent(), DesktopSettingsFragment.this.mFragmentInteractionListener.getRootView(), iArr, false);
                    DesktopSettingsFragment.this.mMockLauncherStartTranslationY = iArr[1] - DesktopSettingsFragment.this.mMockLauncher.getTop();
                    DesktopSettingsFragment.this.mMockLauncher.setTranslationY(DesktopSettingsFragment.this.mMockLauncherStartTranslationY);
                } catch (Exception e) {
                    Crashlytics.logException(e);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateGrid() {
        CellParams cellParams = this.mGridSettingsView.getCellParams();
        int i = (int) cellParams.numRows;
        int i2 = (int) cellParams.numColumns;
        this.mMockLauncherController.layout();
        this.mMockLauncherController.getWorkspaceCellLayout().setGridSize(i2, i);
        this.mMockLauncherController.getWorkspaceGridLineController().updateGridLines(i, i2);
        updateIconSize();
    }

    private void updateIconSize() {
        this.mDeviceProfile.updateAvailableDimensions(getContext());
        MockLauncherController mockLauncherController = this.mMockLauncherController;
        mockLauncherController.addItemsToCellLayout(mockLauncherController.getWorkspaceCellLayout(), getActivity(), this.mWorkspaceItems);
        MockLauncherController mockLauncherController2 = this.mMockLauncherController;
        mockLauncherController2.addItemsToCellLayout(mockLauncherController2.getHotseatCellLayout(), getActivity(), this.mHotseatItems);
        this.mMockLauncherController.layout();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        saveOptions();
    }

    private void saveOptions() {
        CellParams cellParams = this.mGridSettingsView.getCellParams();
        this.mCellParams.numRows = (int) cellParams.numRows;
        this.mCellParams.numColumns = (int) cellParams.numColumns;
        this.mCellParams.iconScale = cellParams.iconScale;
        this.mCellParams.showLabels = this.mShowLabelsViewHolder.mSwitch.isChecked();
        this.mLayoutSettingsManager.setLayout(getContext(), DeviceProfile.ParamType.WORKSPACE, this.mCellParams);
    }
}
