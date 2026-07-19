.class public Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "DockSettingsFragment.java"


# instance fields
.field private mBackgroundAlphaViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

.field private mBackgroundBlurViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

.field private mCellParams:Lcom/voxel/launcher3/CellParams;

.field private mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

.field private mEnabledSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

.field private mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

.field private mHotseatItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

.field private mMockLauncher:Landroid/view/View;

.field private mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

.field private mMockLauncherStartTranslationY:F

.field private mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

.field private mSwitchContainer:Landroid/view/View;

.field private mWidgetImageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/voxel/launcher3/ItemInfo;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspaceItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mWorkspaceItems:Ljava/util/List;

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mHotseatItems:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mWidgetImageMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->updateIconSize()V

    return-void
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->updateGrid()V

    return-void
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)Lcom/voxel/simplesearchlauncher/view/MockLauncherController;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)Lcom/voxel/launcher3/CellParams;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    return-object p0
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->updateDockAlpha()V

    return-void
.end method

.method static synthetic access$600(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncher:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    return-object p0
.end method

.method static synthetic access$800(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)F
    .locals 0

    .line 45
    iget p0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherStartTranslationY:F

    return p0
.end method

.method static synthetic access$802(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;F)F
    .locals 0

    .line 45
    iput p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherStartTranslationY:F

    return p1
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 144
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncher:Landroid/view/View;

    iget p2, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherStartTranslationY:F

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic lambda$setupControls$1(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->updateGrid()V

    return-void
.end method

.method public static synthetic lambda$setupControls$2(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 203
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iput-boolean p2, p1, Lcom/voxel/launcher3/CellParams;->enabled:Z

    .line 204
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {p1, v0, v1, v2}, Lcom/voxel/launcher3/DeviceProfile;->updateCellParams(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    .line 205
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->layout()V

    .line 207
    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->setControlsEnabled(Z)V

    return-void
.end method

.method public static synthetic lambda$setupControls$3(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 210
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iput-boolean p2, p1, Lcom/voxel/launcher3/CellParams;->backgroundBlur:Z

    .line 211
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {p1, p2, v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->updateCellParams(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    return-void
.end method

.method public static synthetic lambda$setupControls$4(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 215
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iput-boolean p2, p1, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    .line 216
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {p1, p2, v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->updateCellParams(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    .line 217
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    .line 218
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getHotseatCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object p2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mHotseatItems:Ljava/util/List;

    .line 217
    invoke-virtual {p1, p2, v0, v1}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->addItemsToCellLayout(Lcom/voxel/launcher3/CellLayout;Landroid/content/Context;Ljava/util/List;)V

    .line 219
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->layout()V

    return-void
.end method

.method private saveOptions()V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    iget v1, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    .line 316
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    iget v1, v1, Lcom/voxel/launcher3/CellParams;->iconScale:F

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    .line 317
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    .line 318
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mBackgroundBlurViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/voxel/launcher3/CellParams;->backgroundBlur:Z

    .line 319
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mEnabledSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/voxel/launcher3/CellParams;->enabled:Z

    .line 320
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    iget-boolean v1, v1, Lcom/voxel/launcher3/CellParams;->inheritWorkspace:Z

    iput-boolean v1, v0, Lcom/voxel/launcher3/CellParams;->inheritWorkspace:Z

    .line 322
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->setLayout(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    return-void
.end method

.method private setControlsEnabled(Z)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->setControlsEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->setEnabled(Z)V

    .line 243
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mBackgroundBlurViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mBackgroundAlphaViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->setEnabled(Z)V

    return-void
.end method

.method private setupControls(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a013a

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    .line 150
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v1, 0x7f0a015e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    .line 151
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    const v1, 0x7f0a005a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mBackgroundAlphaViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    .line 152
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v1, 0x7f0a005b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mBackgroundBlurViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    .line 155
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getRowsViewHolder()Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->setParameters(Lcom/voxel/launcher3/DeviceProfile;Lcom/voxel/launcher3/DeviceProfile$ParamType;)V

    .line 158
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mEnabledSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-boolean v0, v0, Lcom/voxel/launcher3/CellParams;->enabled:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 159
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-boolean p1, p1, Lcom/voxel/launcher3/CellParams;->enabled:Z

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->setControlsEnabled(Z)V

    .line 161
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f120244

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-boolean v0, v0, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 164
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget p1, p1, Lcom/voxel/launcher3/CellParams;->backgroundAlpha:F

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 165
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mBackgroundAlphaViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mLabel:Landroid/widget/TextView;

    const v1, 0x7f120049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mBackgroundAlphaViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMin(I)V

    .line 167
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mBackgroundAlphaViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMax(I)V

    .line 168
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mBackgroundAlphaViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    .line 170
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mBackgroundBlurViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f12004a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mBackgroundBlurViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-boolean v0, v0, Lcom/voxel/launcher3/CellParams;->backgroundBlur:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 174
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DockSettingsFragment$FtTN6y1eIfMbIXCDsEEUdyBn-s8;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DockSettingsFragment$FtTN6y1eIfMbIXCDsEEUdyBn-s8;-><init>(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)V

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->setOnInheritChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)V

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 202
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mEnabledSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DockSettingsFragment$bNpL9aFOodcPgvX8_idYMHbZ3NA;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DockSettingsFragment$bNpL9aFOodcPgvX8_idYMHbZ3NA;-><init>(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 209
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mBackgroundBlurViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DockSettingsFragment$YhQ0nd5y4DRtycmvMY8ibLyVdi0;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DockSettingsFragment$YhQ0nd5y4DRtycmvMY8ibLyVdi0;-><init>(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 214
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DockSettingsFragment$0AiG2dvzl8cwxz9h-SCz0B4AlPA;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DockSettingsFragment$0AiG2dvzl8cwxz9h-SCz0B4AlPA;-><init>(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 222
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mBackgroundAlphaViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$2;-><init>(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)V

    invoke-virtual {p1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    return-void
.end method

.method private setupMockLauncher(Landroid/widget/FrameLayout;)V
    .locals 5

    .line 248
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d00b7

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncher:Landroid/view/View;

    .line 249
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncher:Landroid/view/View;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-direct {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;-><init>(Landroid/view/View;Lcom/voxel/launcher3/DeviceProfile;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    .line 251
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->layout()V

    .line 252
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getWorkspaceCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mWorkspaceItems:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v4}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->addItemsToCellLayout(Lcom/voxel/launcher3/CellLayout;Landroid/content/Context;Ljava/util/List;)V

    .line 253
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getHotseatCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mHotseatItems:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v4}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->addItemsToCellLayout(Lcom/voxel/launcher3/CellLayout;Landroid/content/Context;Ljava/util/List;)V

    .line 255
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncher:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const v0, 0x7f0a01a6

    .line 258
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;-><init>(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private updateDockAlpha()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mBackgroundAlphaViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 304
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iput v0, v1, Lcom/voxel/launcher3/CellParams;->backgroundAlpha:F

    .line 306
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->layout()V

    return-void
.end method

.method private updateGrid()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 285
    iget v0, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v0, v0

    .line 286
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/DeviceProfile;->updateAvailableDimensions(Landroid/content/Context;)V

    .line 287
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->layout()V

    .line 288
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getHotseatCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/voxel/launcher3/CellLayout;->setGridSize(II)V

    .line 289
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getHotseatGridLineController()Lcom/voxel/simplesearchlauncher/view/GridLineController;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/voxel/simplesearchlauncher/view/GridLineController;->updateGridLines(II)V

    .line 290
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->updateIconSize()V

    return-void
.end method

.method private updateIconSize()V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->updateAvailableDimensions(Landroid/content/Context;)V

    .line 297
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getWorkspaceCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mWorkspaceItems:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->addItemsToCellLayout(Lcom/voxel/launcher3/CellLayout;Landroid/content/Context;Ljava/util/List;)V

    .line 298
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getHotseatCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mHotseatItems:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->addItemsToCellLayout(Lcom/voxel/launcher3/CellLayout;Landroid/content/Context;Ljava/util/List;)V

    .line 299
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->layout()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 82
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 83
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 88
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 90
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 99
    invoke-static {p1}, Lcom/voxel/launcher3/LauncherModel;->getItemsForScreenPosition(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mWorkspaceItems:Ljava/util/List;

    .line 100
    invoke-static {}, Lcom/voxel/launcher3/LauncherModel;->getHotseatItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mHotseatItems:Ljava/util/List;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0114

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mSwitchContainer:Landroid/view/View;

    .line 117
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mSwitchContainer:Landroid/view/View;

    const v0, 0x7f0a02c1

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mEnabledSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const p3, 0x7f0d00a1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mSwitchContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->getToolbarContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mSwitchContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 109
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 310
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 311
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->saveOptions()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13

    .line 124
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 126
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object p2

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v12, Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v3, p2, Lcom/voxel/launcher3/DeviceProfile;->minWidthDps:F

    iget v4, p2, Lcom/voxel/launcher3/DeviceProfile;->minHeightDps:F

    iget v5, p2, Lcom/voxel/launcher3/DeviceProfile;->widthPx:I

    iget v6, p2, Lcom/voxel/launcher3/DeviceProfile;->heightPx:I

    iget v7, p2, Lcom/voxel/launcher3/DeviceProfile;->availableWidthPx:I

    iget v8, p2, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    .line 135
    invoke-virtual {p2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsMap()Ljava/util/Map;

    move-result-object v9

    .line 136
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 137
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarDesktopEnabled()Z

    move-result v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Ljava/util/ArrayList;FFIIIILjava/util/Map;Landroid/content/res/Resources;Z)V

    iput-object v12, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    .line 139
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p2, v0}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    .line 141
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->setupControls(Landroid/view/View;)V

    .line 142
    move-object p2, p1

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->setupMockLauncher(Landroid/widget/FrameLayout;)V

    const p2, 0x7f0a022d

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 144
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DockSettingsFragment$gGL5dkPwo-h5JbquBbgSIyAnvS4;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DockSettingsFragment$gGL5dkPwo-h5JbquBbgSIyAnvS4;-><init>(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    return-void
.end method
