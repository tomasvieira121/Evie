.class public Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "DesktopSettingsFragment.java"


# instance fields
.field private mAppDrawerHintViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

.field private mCellParams:Lcom/voxel/launcher3/CellParams;

.field private mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

.field private mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

.field private mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

.field mHiddenButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

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

.field private mLockDesktopViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

.field private mMockLauncher:Landroid/view/View;

.field private mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

.field private mMockLauncherStartTranslationY:F

.field private mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mScrollingWallpaperViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

.field private mSearchBarDesktopEnabled:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

.field private mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

.field private mSidescreenEnabled:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

.field private mUseFahrenheitHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

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

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mWorkspaceItems:Ljava/util/List;

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mHotseatItems:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mWidgetImageMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->updateGrid()V

    return-void
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)Lcom/voxel/simplesearchlauncher/view/MockLauncherController;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)Lcom/voxel/launcher3/CellParams;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    return-object p0
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncher:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    return-object p0
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncherStartTranslationY:F

    return p0
.end method

.method static synthetic access$502(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;F)F
    .locals 0

    .line 49
    iput p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncherStartTranslationY:F

    return p1
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncher:Landroid/view/View;

    iget p2, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncherStartTranslationY:F

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic lambda$setupControls$1(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 193
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iput-boolean p2, p1, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    .line 194
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/DeviceProfile;->updateAvailableDimensions(Landroid/content/Context;)V

    .line 195
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    .line 196
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getWorkspaceCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object p2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mWorkspaceItems:Ljava/util/List;

    .line 195
    invoke-virtual {p1, p2, v0, v1}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->addItemsToCellLayout(Lcom/voxel/launcher3/CellLayout;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$setupControls$2(Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 200
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setAppDrawerHintEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$setupControls$3(Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 201
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setScrollingWallpaperType(Z)V

    return-void
.end method

.method static synthetic lambda$setupControls$4(Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 202
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setDesktopLocked(Z)V

    return-void
.end method

.method public static synthetic lambda$setupControls$5(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 228
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setSearchBarDesktopEnabled(Z)V

    .line 229
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object p1

    iput-boolean p2, p1, Lcom/voxel/launcher3/DeviceProfile;->searchBarEnabled:Z

    .line 230
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    .line 231
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    iput-boolean p2, p1, Lcom/voxel/launcher3/DeviceProfile;->searchBarEnabled:Z

    .line 232
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->updateGrid()V

    .line 233
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->updateIconSize()V

    .line 234
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->layout()V

    return-void
.end method

.method public static synthetic lambda$setupControls$6(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 238
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mUseFahrenheitHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {p2, p3}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->setEnabled(Z)V

    .line 239
    invoke-virtual {p1, p3}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setSideScreenEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$setupControls$7(Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;Landroid/widget/CompoundButton;Z)V
    .locals 0

    xor-int/lit8 p1, p2, 0x1

    .line 241
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setUseCelsius(Z)V

    return-void
.end method

.method private saveOptions()V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v2, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Lcom/voxel/launcher3/CellParams;->numRows:F

    .line 327
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v2, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    .line 328
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    iput v0, v1, Lcom/voxel/launcher3/CellParams;->iconScale:F

    .line 329
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    .line 331
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->setLayout(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    return-void
.end method

.method private setupControls(Landroid/view/View;)V
    .locals 4

    .line 141
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v1, 0x7f0a015e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    .line 142
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v1, 0x7f0a0230

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mScrollingWallpaperViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v0, 0x7f0a013a

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    .line 145
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v1, 0x7f0a0238

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mSearchBarDesktopEnabled:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    .line 146
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v1, 0x7f0a0048

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mAppDrawerHintViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    .line 147
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v1, 0x7f0a0192

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mLockDesktopViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    .line 148
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v1, 0x7f0a027d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mSidescreenEnabled:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    .line 149
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v1, 0x7f0a008f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mUseFahrenheitHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    .line 151
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v1, 0x7f120244

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-boolean v1, v1, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mScrollingWallpaperViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v1, 0x7f12009e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mScrollingWallpaperViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    const v1, 0x7f12009d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mScrollingWallpaperViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mScrollingWallpaperViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getScrollingWallpaperType()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mAppDrawerHintViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f12009a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mAppDrawerHintViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isAppDrawerHintEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mLockDesktopViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f12009c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mLockDesktopViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isDesktopLocked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mLockDesktopViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mLockDesktopViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    const v2, 0x7f12009b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 174
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getInheritViewHolder()Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->itemView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    sget-object v3, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->setParameters(Lcom/voxel/launcher3/DeviceProfile;Lcom/voxel/launcher3/DeviceProfile$ParamType;)V

    .line 177
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mSearchBarDesktopEnabled:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f1200be

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mSearchBarDesktopEnabled:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarDesktopEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 180
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mSidescreenEnabled:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f1200a0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mSidescreenEnabled:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSideScreenEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 182
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mSidescreenEnabled:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mSidescreenEnabled:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    const v2, 0x7f12009f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mUseFahrenheitHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f1200a3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mUseFahrenheitHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getUseCelsius()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 187
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mUseFahrenheitHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSideScreenEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mUseFahrenheitHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mUseFahrenheitHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    const v1, 0x7f1200a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$uPl74RmNzoH1YXuQJfRblYE6Nh4;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$uPl74RmNzoH1YXuQJfRblYE6Nh4;-><init>(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 200
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mAppDrawerHintViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$RqYWjatq7CbfQbAie1QwYhkVHbA;

    invoke-direct {v1, p1}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$RqYWjatq7CbfQbAie1QwYhkVHbA;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 201
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mScrollingWallpaperViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$AiVNlJHs3HdfOf0czgO2G5hgag8;

    invoke-direct {v1, p1}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$AiVNlJHs3HdfOf0czgO2G5hgag8;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 202
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mLockDesktopViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$jTKhT0rgfv88nVavIFAcBMZij64;

    invoke-direct {v1, p1}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$jTKhT0rgfv88nVavIFAcBMZij64;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 204
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 227
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mSearchBarDesktopEnabled:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$6cTA9bS9_EJMQyMUnmZ9tV01KY0;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$6cTA9bS9_EJMQyMUnmZ9tV01KY0;-><init>(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 237
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mSidescreenEnabled:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$WHRoIHqDmyK0CaVnlHKW0SrrpN8;

    invoke-direct {v1, p0, p1}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$WHRoIHqDmyK0CaVnlHKW0SrrpN8;-><init>(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 241
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mUseFahrenheitHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$VTjPgICa2XcFkA8AJZqLsLHW9rU;

    invoke-direct {v1, p1}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$VTjPgICa2XcFkA8AJZqLsLHW9rU;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 243
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mHiddenButton:Landroid/view/View;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$2;-><init>(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupMockLauncher(Landroid/widget/FrameLayout;)V
    .locals 5

    .line 260
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d00b7

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncher:Landroid/view/View;

    .line 261
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncher:Landroid/view/View;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-direct {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;-><init>(Landroid/view/View;Lcom/voxel/launcher3/DeviceProfile;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    .line 263
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->layout()V

    .line 264
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getWorkspaceCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mWorkspaceItems:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v4}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->addItemsToCellLayout(Lcom/voxel/launcher3/CellLayout;Landroid/content/Context;Ljava/util/List;)V

    .line 265
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getHotseatCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mHotseatItems:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v4}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->addItemsToCellLayout(Lcom/voxel/launcher3/CellLayout;Landroid/content/Context;Ljava/util/List;)V

    .line 267
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncher:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const v0, 0x7f0a01a6

    .line 270
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$3;-><init>(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private updateGrid()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 301
    iget v1, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int v1, v1

    .line 302
    iget v0, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v0, v0

    .line 303
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->layout()V

    .line 304
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getWorkspaceCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/voxel/launcher3/CellLayout;->setGridSize(II)V

    .line 305
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getWorkspaceGridLineController()Lcom/voxel/simplesearchlauncher/view/GridLineController;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/voxel/simplesearchlauncher/view/GridLineController;->updateGridLines(II)V

    .line 306
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->updateIconSize()V

    return-void
.end method

.method private updateIconSize()V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->updateAvailableDimensions(Landroid/content/Context;)V

    .line 313
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getWorkspaceCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mWorkspaceItems:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->addItemsToCellLayout(Lcom/voxel/launcher3/CellLayout;Landroid/content/Context;Ljava/util/List;)V

    .line 314
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getHotseatCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mHotseatItems:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->addItemsToCellLayout(Lcom/voxel/launcher3/CellLayout;Landroid/content/Context;Ljava/util/List;)V

    .line 315
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->layout()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 84
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 85
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 90
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 92
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

    .line 93
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

    .line 99
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 101
    invoke-static {p1}, Lcom/voxel/launcher3/LauncherModel;->getItemsForScreenPosition(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mWorkspaceItems:Ljava/util/List;

    .line 102
    invoke-static {}, Lcom/voxel/launcher3/LauncherModel;->getHotseatItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mHotseatItems:Ljava/util/List;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00a0

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStop()V
    .locals 0

    .line 320
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 321
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->saveOptions()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13

    .line 114
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 116
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 118
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object p2

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v12, Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v3, p2, Lcom/voxel/launcher3/DeviceProfile;->minWidthDps:F

    iget v4, p2, Lcom/voxel/launcher3/DeviceProfile;->minHeightDps:F

    iget v5, p2, Lcom/voxel/launcher3/DeviceProfile;->widthPx:I

    iget v6, p2, Lcom/voxel/launcher3/DeviceProfile;->heightPx:I

    iget v7, p2, Lcom/voxel/launcher3/DeviceProfile;->availableWidthPx:I

    iget v8, p2, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    .line 127
    invoke-virtual {p2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsMap()Ljava/util/Map;

    move-result-object v9

    .line 128
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 129
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarDesktopEnabled()Z

    move-result v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Ljava/util/ArrayList;FFIIIILjava/util/Map;Landroid/content/res/Resources;Z)V

    iput-object v12, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    .line 131
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p2, v0}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    .line 133
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->setupControls(Landroid/view/View;)V

    .line 134
    move-object p2, p1

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->setupMockLauncher(Landroid/widget/FrameLayout;)V

    const p2, 0x7f0a022d

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 136
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$3O87P_rHrsrn83sfI5iTcC_PGoU;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$3O87P_rHrsrn83sfI5iTcC_PGoU;-><init>(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    return-void
.end method
