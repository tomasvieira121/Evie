.class public Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "AppDrawerSettingsFragment.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;


# instance fields
.field private mAllAppsFragment:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

.field private mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

.field private mDisplayStyleViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

.field private mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

.field mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mIndexStyleViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

.field mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

.field private mMockStartTranslationY:F

.field mMockTarget:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mMockView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mScrollView:Landroidx/core/widget/NestedScrollView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

.field private mShowNewAppsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->refreshLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockStartTranslationY:F

    return p0
.end method

.method static synthetic access$202(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;F)F
    .locals 0

    .line 39
    iput p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockStartTranslationY:F

    return p1
.end method

.method public static synthetic lambda$setupControls$0(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;Landroid/view/View;)V
    .locals 5

    .line 130
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    const-string v1, "list"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f080174

    const v4, 0x7f120064

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;-><init>(IIII)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    const-string v1, "grid"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, 0x7f080173

    const v4, 0x7f120063

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;-><init>(IIII)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getAllAppsDisplayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "grid"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f120062

    const v2, 0x7f0d0045

    .line 137
    invoke-static {v1, v0, p1, v2}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->newInstance(IILjava/util/List;I)Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p1, v1, v0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 139
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setupControls$1(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 143
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setAllAppsShowNewApps(Z)V

    return-void
.end method

.method public static synthetic lambda$setupControls$2(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;Landroid/view/View;)V
    .locals 5

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    const/4 v1, 0x0

    const v2, 0x7f080175

    const v3, 0x7f120069

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;-><init>(IIII)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    const/4 v2, 0x1

    const v3, 0x7f080172

    const v4, 0x7f120067

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;-><init>(IIII)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getAllAppsIndexType()I

    move-result v0

    const/4 v2, 0x0

    .line 154
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 155
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    iget v3, v3, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;->id:I

    if-ne v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const v0, 0x7f120068

    const v2, 0x7f0d0045

    .line 161
    invoke-static {v0, v1, p1, v2}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->newInstance(IILjava/util/List;I)Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 162
    invoke-virtual {p1, v1, v0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 163
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setupControls$3(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->refreshLayout()V

    return-void
.end method

.method public static synthetic lambda$setupControls$4(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 191
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ALLAPPS:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object p1

    .line 192
    iput-boolean p2, p1, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    .line 193
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ALLAPPS:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p2, v0, v1, p1}, Lcom/voxel/launcher3/DeviceProfile;->updateCellParams(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    .line 194
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->refreshLayout()V

    return-void
.end method

.method public static synthetic lambda$setupMock$5(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 231
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockView:Landroid/view/View;

    iget p2, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockStartTranslationY:F

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private refreshLayout()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mAllAppsFragment:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    return-void
.end method

.method private saveOptions()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ALLAPPS:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v1, v2, v3, v0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->setLayout(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    return-void
.end method

.method private setupControls(Landroid/view/View;)V
    .locals 2

    .line 121
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v1, 0x7f0a015e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    .line 122
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    const v1, 0x7f0a00d4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mDisplayStyleViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    .line 123
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v1, 0x7f0a026c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mShowNewAppsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    .line 124
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    const v1, 0x7f0a0167

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mIndexStyleViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    .line 126
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mDisplayStyleViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f120061

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 127
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->updateDisplayStyle()V

    .line 129
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mDisplayStyleViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$AppDrawerSettingsFragment$UDFrYJ4644xtNbMvcm-0NjsD9ik;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$AppDrawerSettingsFragment$UDFrYJ4644xtNbMvcm-0NjsD9ik;-><init>(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mShowNewAppsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f12006a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mShowNewAppsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getAllAppsShowNewApps()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 143
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mShowNewAppsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    sget-object v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$AppDrawerSettingsFragment$zaN46mt9GmIp3S4xG83_-Prm5Sg;->INSTANCE:Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$AppDrawerSettingsFragment$zaN46mt9GmIp3S4xG83_-Prm5Sg;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mIndexStyleViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f120066

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 146
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->updateIndexStyle()V

    .line 147
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mIndexStyleViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$AppDrawerSettingsFragment$YFgT_uXUHI9F3oLZ2Eo3266j4T4;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$AppDrawerSettingsFragment$YFgT_uXUHI9F3oLZ2Eo3266j4T4;-><init>(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getRowsViewHolder()Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ALLAPPS:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->setParameters(Lcom/voxel/launcher3/DeviceProfile;Lcom/voxel/launcher3/DeviceProfile$ParamType;)V

    .line 168
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$AppDrawerSettingsFragment$oaThjBO9gMCgWNP-uff1nkHAzpA;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$AppDrawerSettingsFragment$oaThjBO9gMCgWNP-uff1nkHAzpA;-><init>(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->setOnInheritChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 169
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 188
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f120244

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 190
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$AppDrawerSettingsFragment$OekfTKd9bgbVSV5_TT2xQdANqQE;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$AppDrawerSettingsFragment$OekfTKd9bgbVSV5_TT2xQdANqQE;-><init>(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private setupMock()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x60000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 206
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 210
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockTarget:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$2;-><init>(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 231
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$AppDrawerSettingsFragment$CN4ODrouIikbGzZQRp5wXHm7PKY;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$AppDrawerSettingsFragment$CN4ODrouIikbGzZQRp5wXHm7PKY;-><init>(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    return-void
.end method

.method private updateDisplayStyle()V
    .locals 4

    .line 246
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getAllAppsDisplayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    .line 251
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v0, 0x7f120064

    .line 253
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    const v3, 0x7f120065

    invoke-virtual {v1, v3}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->showErrorText(I)V

    .line 254
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->setControlsEnabled(Z)V

    .line 255
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->setEnabled(Z)V

    const v2, 0x7f120064

    goto :goto_0

    :cond_0
    const-string v1, "grid"

    .line 256
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v2, 0x7f120063

    .line 258
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->hideErrorText()V

    .line 259
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->setControlsEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->setEnabled(Z)V

    .line 263
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mDisplayStyleViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mAllAppsFragment:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    if-eqz v0, :cond_2

    .line 266
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->updateStyle()V

    :cond_2
    return-void
.end method

.method private updateIndexStyle()V
    .locals 2

    .line 272
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getAllAppsIndexType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const v0, 0x7f120069

    goto :goto_0

    :cond_0
    const v0, 0x7f120067

    .line 285
    :goto_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mIndexStyleViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 287
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mAllAppsFragment:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->updateStyle()V

    :cond_1
    return-void
.end method


# virtual methods
.method public canShowAllAppsSetDefaultPrompt()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-wide/16 v0, -0x1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    const-string p1, "ID"

    .line 295
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    long-to-int p1, p1

    const-string p2, "list"

    .line 296
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 297
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    const-string p3, "list"

    invoke-virtual {p2, p3}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setAllAppsDisplayType(Ljava/lang/String;)V

    :cond_0
    const-string p2, "grid"

    .line 299
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 300
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    const-string p2, "grid"

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setAllAppsDisplayType(Ljava/lang/String;)V

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->updateDisplayStyle()V

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    const-string p1, "ID"

    .line 304
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    long-to-int p1, p1

    .line 305
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setAllAppsIndexType(I)V

    .line 306
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->updateIndexStyle()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onAllAppsDropCompleted(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onAllAppsLongPress(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Landroid/view/View;Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 79
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 81
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

    .line 82
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

    .line 87
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d009d

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStop()V
    .locals 0

    .line 236
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 237
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->saveOptions()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13

    .line 99
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 100
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object p2

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v12, Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v3, p2, Lcom/voxel/launcher3/DeviceProfile;->minWidthDps:F

    iget v4, p2, Lcom/voxel/launcher3/DeviceProfile;->minHeightDps:F

    iget v5, p2, Lcom/voxel/launcher3/DeviceProfile;->widthPx:I

    iget v6, p2, Lcom/voxel/launcher3/DeviceProfile;->heightPx:I

    iget v7, p2, Lcom/voxel/launcher3/DeviceProfile;->availableWidthPx:I

    iget v8, p2, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    .line 109
    invoke-virtual {p2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsMap()Ljava/util/Map;

    move-result-object v9

    .line 110
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 111
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarDesktopEnabled()Z

    move-result v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Ljava/util/ArrayList;FFIIIILjava/util/Map;Landroid/content/res/Resources;Z)V

    iput-object v12, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    .line 114
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->setupControls(Landroid/view/View;)V

    .line 115
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->setupMock()V

    .line 117
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const p2, 0x7f0a003d

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mAllAppsFragment:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    return-void
.end method
