.class public Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "IconPackSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;,
        Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;
    }
.end annotation


# instance fields
.field mChosenPack:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

.field mContainer:Landroid/widget/LinearLayout;

.field private mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

.field private mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

.field private mHotseatItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconNormalizationSwitch:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

.field mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

.field mIconPacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/iconpack/IconPack;",
            ">;"
        }
    .end annotation
.end field

.field mItemClickListener:Landroid/view/View$OnClickListener;

.field mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

.field private mMockLauncher:Landroid/view/View;

.field private mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

.field private mMockLauncherStartTranslationY:I

.field private mScrollView:Landroidx/core/widget/NestedScrollView;

.field mViewHolderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/voxel/simplesearchlauncher/iconpack/IconPack;",
            "Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;",
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

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mViewHolderMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)Landroid/view/View;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mMockLauncher:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mMockLauncherStartTranslationY:I

    return p0
.end method

.method static synthetic access$202(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mMockLauncherStartTranslationY:I

    return p1
.end method

.method private clearRadioButtons()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mViewHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;

    .line 330
    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->access$300(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;)Landroid/widget/RadioButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cloneItems(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/ItemInfo;

    .line 119
    iget v2, v1, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    move-object v2, v1

    check-cast v2, Lcom/voxel/launcher3/FolderInfo;

    .line 128
    new-instance v3, Lcom/voxel/launcher3/FolderInfo;

    invoke-direct {v3}, Lcom/voxel/launcher3/FolderInfo;-><init>()V

    .line 129
    invoke-virtual {v3, v1}, Lcom/voxel/launcher3/FolderInfo;->copyFrom(Lcom/voxel/launcher3/ItemInfo;)V

    .line 131
    iget-object v1, v2, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/ShortcutInfo;

    .line 132
    new-instance v4, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-direct {v4, v2}, Lcom/voxel/launcher3/ShortcutInfo;-><init>(Lcom/voxel/launcher3/ShortcutInfo;)V

    invoke-virtual {v3, v4}, Lcom/voxel/launcher3/FolderInfo;->add(Lcom/voxel/launcher3/ShortcutInfo;)V

    goto :goto_1

    .line 135
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :pswitch_1
    new-instance v2, Lcom/voxel/launcher3/ShortcutInfo;

    check-cast v1, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-direct {v2, v1}, Lcom/voxel/launcher3/ShortcutInfo;-><init>(Lcom/voxel/launcher3/ShortcutInfo;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 211
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setIconNormalizationSetting(Z)V

    .line 212
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearCaches()V

    .line 213
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/IconCache;->flush()V

    .line 214
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    .line 215
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->refreshMockLauncher()V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$1(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 219
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mMockLauncher:Landroid/view/View;

    iget p2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mMockLauncherStartTranslationY:I

    int-to-float p2, p2

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic lambda$setupIconPackRows$2(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;Landroid/view/View;)V
    .locals 4

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    .line 266
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mChosenPack:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    if-ne p1, v0, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->clearRadioButtons()V

    .line 271
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mViewHolderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;

    .line 272
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->access$300(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 273
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mChosenPack:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    .line 274
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mChosenPack:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    invoke-virtual {v0, v2}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->setCurrentIconPack(Lcom/voxel/simplesearchlauncher/iconpack/IconPack;)V

    .line 276
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->refreshMockLauncher()V

    .line 278
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAllLocalLaunchApps()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 281
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    .line 282
    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getCustomIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 289
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->newInstance(Lcom/voxel/simplesearchlauncher/iconpack/IconPack;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 291
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static synthetic lambda$setupIconPackRows$3(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;Landroid/view/View;)V
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->getMarketSearchIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/utils/LaunchUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private refreshMockLauncher()V
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mWorkspaceItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->wipeIcons(Ljava/util/List;)V

    .line 336
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mHotseatItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->wipeIcons(Ljava/util/List;)V

    .line 337
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->layout()V

    .line 338
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getWorkspaceCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mWorkspaceItems:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->addItemsToCellLayout(Lcom/voxel/launcher3/CellLayout;Landroid/content/Context;Ljava/util/List;)V

    .line 339
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getHotseatCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mHotseatItems:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->addItemsToCellLayout(Lcom/voxel/launcher3/CellLayout;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private setupIconPackRows(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f0a00ae

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mContainer:Landroid/widget/LinearLayout;

    .line 263
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$IconPackSettingsFragment$csIC6qfQucK44l2UbWk15iYXn3Q;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$IconPackSettingsFragment$csIC6qfQucK44l2UbWk15iYXn3Q;-><init>(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 295
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mIconPacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f0d00a7

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 299
    new-instance v3, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;

    invoke-direct {v3, p0, v2}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;Landroid/view/View;)V

    .line 300
    iget-object v4, v3, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 301
    iget-object v4, v3, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->itemView:Landroid/view/View;

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->access$300(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 303
    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->access$300(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;)Landroid/widget/RadioButton;

    move-result-object v4

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->access$400(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->access$500(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->access$300(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;)Landroid/widget/RadioButton;

    move-result-object v4

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mChosenPack:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 309
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 310
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mViewHolderMap:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 317
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;Landroid/view/View;)V

    .line 319
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->access$400(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f12016b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 320
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->access$500(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f08015b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;->access$300(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$IconPackViewHolder;)Landroid/widget/RadioButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 324
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$IconPackSettingsFragment$1sGujFKf899Sf789EdQICoehR9M;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$IconPackSettingsFragment$1sGujFKf899Sf789EdQICoehR9M;-><init>(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupMockLauncher(Landroid/view/ViewGroup;)V
    .locals 5

    .line 224
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d00b7

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mMockLauncher:Landroid/view/View;

    .line 225
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mMockLauncher:Landroid/view/View;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-direct {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;-><init>(Landroid/view/View;Lcom/voxel/launcher3/DeviceProfile;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    .line 227
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->layout()V

    .line 228
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getWorkspaceCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mWorkspaceItems:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v4}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->addItemsToCellLayout(Lcom/voxel/launcher3/CellLayout;Landroid/content/Context;Ljava/util/List;)V

    .line 229
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mMockLauncherController:Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getHotseatCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mHotseatItems:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v4}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->addItemsToCellLayout(Lcom/voxel/launcher3/CellLayout;Landroid/content/Context;Ljava/util/List;)V

    .line 231
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mMockLauncher:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const v0, 0x7f0a01a6

    .line 234
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private wipeIcons(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/ItemInfo;

    .line 155
    iget v1, v0, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 163
    :pswitch_0
    check-cast v0, Lcom/voxel/launcher3/FolderInfo;

    .line 165
    iget-object v0, v0, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/ShortcutInfo;

    .line 166
    iput-object v2, v1, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 159
    :pswitch_1
    check-cast v0, Lcom/voxel/launcher3/ShortcutInfo;

    iput-object v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->refreshMockLauncher()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 85
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 86
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 91
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 93
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

    .line 94
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 100
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 102
    invoke-static {p1}, Lcom/voxel/launcher3/LauncherModel;->getItemsForScreenPosition(I)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->cloneItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mWorkspaceItems:Ljava/util/List;

    .line 103
    invoke-static {}, Lcom/voxel/launcher3/LauncherModel;->getHotseatItems()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->cloneItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mHotseatItems:Ljava/util/List;

    .line 105
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->getAllIconPacks()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mIconPacks:Ljava/util/List;

    .line 106
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->getCurrentIconPackPackageName()Ljava/lang/String;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mIconPacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    .line 108
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mChosenPack:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 109
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    :cond_1
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mChosenPack:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00a6

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13

    .line 186
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 188
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object p2

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v12, Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v3, p2, Lcom/voxel/launcher3/DeviceProfile;->minWidthDps:F

    iget v4, p2, Lcom/voxel/launcher3/DeviceProfile;->minHeightDps:F

    iget v5, p2, Lcom/voxel/launcher3/DeviceProfile;->widthPx:I

    iget v6, p2, Lcom/voxel/launcher3/DeviceProfile;->heightPx:I

    iget v7, p2, Lcom/voxel/launcher3/DeviceProfile;->availableWidthPx:I

    iget v8, p2, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    .line 197
    invoke-virtual {p2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsMap()Ljava/util/Map;

    move-result-object v9

    .line 198
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 199
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarDesktopEnabled()Z

    move-result v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Ljava/util/ArrayList;FFIIIILjava/util/Map;Landroid/content/res/Resources;Z)V

    iput-object v12, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    .line 201
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->setupMockLauncher(Landroid/view/ViewGroup;)V

    .line 202
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->setupIconPackRows(Landroid/view/View;)V

    .line 204
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v0, 0x7f0a015f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mIconNormalizationSwitch:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    .line 205
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mIconNormalizationSwitch:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->getLabel()Landroid/widget/TextView;

    move-result-object p2

    const v0, 0x7f1200b3

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 206
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mIconNormalizationSwitch:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->getSubLabel()Landroid/widget/TextView;

    move-result-object p2

    const v0, 0x7f1200b2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mIconNormalizationSwitch:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->getSubLabel()Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mIconNormalizationSwitch:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p2

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getIconNormalizationSetting()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 210
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mIconNormalizationSwitch:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p2

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$IconPackSettingsFragment$hxYsl30tn3gmwPiEc3ZnZ7MO2mA;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$IconPackSettingsFragment$hxYsl30tn3gmwPiEc3ZnZ7MO2mA;-><init>(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f0a022d

    .line 218
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 219
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$IconPackSettingsFragment$vFJSRhvJA3Y3M55yR5OL6whRmNQ;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$IconPackSettingsFragment$vFJSRhvJA3Y3M55yR5OL6whRmNQ;-><init>(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    return-void
.end method
