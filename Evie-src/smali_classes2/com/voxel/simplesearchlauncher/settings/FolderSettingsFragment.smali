.class public Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "FolderSettingsFragment.java"


# instance fields
.field private mCellParams:Lcom/voxel/launcher3/CellParams;

.field private mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

.field private mFolder:Lcom/voxel/launcher3/Folder;

.field private mFolderAlphaSort:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

.field private mFolderAlphaSortOriginalValue:Z

.field private mFolderInfo:Lcom/voxel/launcher3/FolderInfo;

.field private mFolderShape:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

.field private mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

.field private mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

.field mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

.field mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

.field private mMockStartTranslationY:F

.field mMockTarget:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mMockView:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mScrollView:Landroidx/core/widget/NestedScrollView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

.field private mShuffledRankList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->refreshLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockStartTranslationY:F

    return p0
.end method

.method static synthetic access$202(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;F)F
    .locals 0

    .line 48
    iput p1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockStartTranslationY:F

    return p1
.end method

.method private applyShuffledRanksToFolderInfo()V
    .locals 3

    const/4 v0, 0x0

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mShuffledRankList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-object v1, v1, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/ShortcutInfo;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mShuffledRankList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/voxel/launcher3/ShortcutInfo;->rank:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getResourceIdForFolderShape(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const p0, 0x7f1200ae

    return p0

    :pswitch_0
    const p0, 0x7f1200af

    return p0

    :pswitch_1
    const p0, 0x7f1200ac

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 130
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iput-boolean p2, p1, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    .line 131
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->FOLDER:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {p1, p2, v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->updateCellParams(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    .line 132
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->refreshLayout()V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$1(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->refreshLayout()V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$2(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;Landroid/view/View;)V
    .locals 6

    .line 164
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    const/4 v1, 0x0

    const v2, 0x7f0800ba

    const v3, 0x7f1200ac

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;-><init>(IIII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    const/4 v2, 0x1

    const v3, 0x7f0800bc

    const v4, 0x7f1200af

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;-><init>(IIII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    const/4 v3, 0x2

    const v4, 0x7f0800bb

    const v5, 0x7f1200ae

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;-><init>(IIII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getFolderShapeStyle()I

    move-result v0

    const v1, 0x7f1200ad

    const v3, 0x7f0d0045

    .line 171
    invoke-static {v1, v0, p1, v3}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->newInstance(IILjava/util/List;I)Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;

    move-result-object p1

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p1, v0, v2}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 177
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$3(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 185
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setFolderAlphabetSortEnabled(Z)V

    .line 186
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->refreshLayout()V

    return-void
.end method

.method public static synthetic lambda$setupMockTarget$4(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 272
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockView:Landroid/view/ViewGroup;

    iget p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockStartTranslationY:F

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private refreshLayout()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    iget v1, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    .line 193
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    iget v1, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    .line 194
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    iget v1, v1, Lcom/voxel/launcher3/CellParams;->iconScale:F

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    .line 195
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Folder;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 196
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/FolderPagedView;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 198
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->applyShuffledRanksToFolderInfo()V

    .line 200
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderInfo:Lcom/voxel/launcher3/FolderInfo;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getFolderAlphabetSortEnabled()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/voxel/launcher3/Folder;->bind(Lcom/voxel/launcher3/FolderInfo;ZZ)V

    return-void
.end method

.method private saveOptions()V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/voxel/launcher3/DeviceProfile$ParamType;->FOLDER:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v1, v2, v3, v0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->setLayout(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    .line 289
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderAlphaSortOriginalValue:Z

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getFolderAlphabetSortEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 290
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    .line 291
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getFolderAlphabetSortEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderAlphaSortOriginalValue:Z

    :cond_0
    return-void
.end method

.method private setupMockTarget()V
    .locals 7

    .line 211
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x60000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 213
    new-instance v0, Lcom/voxel/launcher3/FolderInfo;

    invoke-direct {v0}, Lcom/voxel/launcher3/FolderInfo;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderInfo:Lcom/voxel/launcher3/FolderInfo;

    .line 214
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderInfo:Lcom/voxel/launcher3/FolderInfo;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAllLocalLaunchApps()Ljava/util/List;

    move-result-object v1

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mShuffledRankList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 222
    new-instance v5, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-direct {v5}, Lcom/voxel/launcher3/ShortcutInfo;-><init>()V

    .line 223
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iput-object v6, v5, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 224
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/voxel/launcher3/IconCache;->getDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/voxel/launcher3/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 226
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 227
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    rem-int v6, v4, v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    invoke-virtual {v6}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getLabel()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 229
    :cond_0
    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderInfo:Lcom/voxel/launcher3/FolderInfo;

    invoke-virtual {v6, v5}, Lcom/voxel/launcher3/FolderInfo;->add(Lcom/voxel/launcher3/ShortcutInfo;)V

    .line 230
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mShuffledRankList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mShuffledRankList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 234
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->applyShuffledRanksToFolderInfo()V

    .line 238
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/Folder;->fromXml(Landroid/content/Context;)Lcom/voxel/launcher3/Folder;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    .line 239
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderInfo:Lcom/voxel/launcher3/FolderInfo;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getFolderAlphabetSortEnabled()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/launcher3/Folder;->bind(Lcom/voxel/launcher3/FolderInfo;ZZ)V

    .line 241
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 242
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 243
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 246
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 250
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockTarget:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;-><init>(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 272
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$FolderSettingsFragment$hT55fNRufRPTlE0OFNmHvGOiaoU;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$FolderSettingsFragment$hT55fNRufRPTlE0OFNmHvGOiaoU;-><init>(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    return-void
.end method

.method private updateFolderShapeText()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderShape:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getFolderShapeStyle()I

    move-result v1

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->getResourceIdForFolderShape(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const-string p1, "ID"

    const-wide/16 v0, -0x1

    .line 310
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    long-to-int p1, p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 312
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setFolderShapeStyle(I)V

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->updateFolderShapeText()V

    .line 315
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 81
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 82
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 87
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 89
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

    .line 90
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

    .line 96
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00a3

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStop()V
    .locals 0

    .line 281
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 282
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->saveOptions()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13

    .line 107
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 109
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object p2

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v12, Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v3, p2, Lcom/voxel/launcher3/DeviceProfile;->minWidthDps:F

    iget v4, p2, Lcom/voxel/launcher3/DeviceProfile;->minHeightDps:F

    iget v5, p2, Lcom/voxel/launcher3/DeviceProfile;->widthPx:I

    iget v6, p2, Lcom/voxel/launcher3/DeviceProfile;->heightPx:I

    iget v7, p2, Lcom/voxel/launcher3/DeviceProfile;->availableWidthPx:I

    iget v8, p2, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    .line 118
    invoke-virtual {p2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsMap()Ljava/util/Map;

    move-result-object v9

    .line 119
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 120
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarDesktopEnabled()Z

    move-result v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Ljava/util/ArrayList;FFIIIILjava/util/Map;Landroid/content/res/Resources;Z)V

    iput-object v12, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    .line 121
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->FOLDER:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p2, v0}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    .line 124
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v0, 0x7f0a015e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    .line 125
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f120244

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-boolean v0, v0, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 129
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mShowLabelsViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$FolderSettingsFragment$1_XWSeOuWnzBddLV3Xx5aV8F1QM;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$FolderSettingsFragment$1_XWSeOuWnzBddLV3Xx5aV8F1QM;-><init>(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->setupMockTarget()V

    const p2, 0x7f0a013a

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    .line 138
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getRowsViewHolder()Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    move-result-object p2

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->FOLDER:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p2, v0, v1}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->setParameters(Lcom/voxel/launcher3/DeviceProfile;Lcom/voxel/launcher3/DeviceProfile$ParamType;)V

    .line 140
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$FolderSettingsFragment$fd6cZN-yz0Zei2cHRPBEgsIUs4E;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$FolderSettingsFragment$fd6cZN-yz0Zei2cHRPBEgsIUs4E;-><init>(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)V

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->setOnInheritChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)V

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 159
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    const v0, 0x7f0a0121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderShape:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    .line 160
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderShape:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f1200ab

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 161
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->updateFolderShapeText()V

    .line 163
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderShape:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$FolderSettingsFragment$L7AD5iPw6pmRIwXsBtKn5teIbv4;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$FolderSettingsFragment$L7AD5iPw6pmRIwXsBtKn5teIbv4;-><init>(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getFolderAlphabetSortEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderAlphaSortOriginalValue:Z

    .line 181
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v0, 0x7f0a0119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderAlphaSort:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    .line 182
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderAlphaSort:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const p2, 0x7f1200a9

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderAlphaSort:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean p2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderAlphaSortOriginalValue:Z

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 184
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mFolderAlphaSort:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$FolderSettingsFragment$vdDmDg9B6sU2FpLnqvwB2Svz0eg;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$FolderSettingsFragment$vdDmDg9B6sU2FpLnqvwB2Svz0eg;-><init>(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
