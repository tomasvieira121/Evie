.class public Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "NotificationSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AllAppsSection;,
        Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;,
        Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;,
        Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;,
        Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SectionHeaderViewHolder;,
        Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$SwitchViewHolder;
    }
.end annotation


# instance fields
.field private mAllApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllSection:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AllAppsSection;

.field private mAppsInfoDataHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

.field private mAppsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mCommonApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCommonSection:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;

.field private mConfigSection:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;

.field private mController:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

.field private mEnabledSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private mInitContainer:Landroid/view/View;

.field private mPendingPackageToEnable:Ljava/lang/String;

.field private mPendingWidgetExtractor:Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;

.field private mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

.field private mStartedConfiguration:Z

.field private mSwitchContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mCommonApps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mController:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    return-object p0
.end method

.method private cleanupPendingData()V
    .locals 1

    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mPendingWidgetExtractor:Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;

    .line 431
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mPendingPackageToEnable:Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v0}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private configureWidget(I)V
    .locals 3

    .line 404
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 405
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 409
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "appWidgetId"

    .line 411
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x65

    .line 412
    invoke-virtual {p0, v1, p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 414
    :cond_1
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->createWidget(I)V

    :goto_0
    return-void
.end method

.method private createWidget(I)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mPendingWidgetExtractor:Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->createWidget(I)V

    const/4 p1, 0x0

    .line 425
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mPendingWidgetExtractor:Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;

    .line 426
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mPendingPackageToEnable:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->setEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 207
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mController:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->setEnabled(Z)V

    .line 208
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic lambda$setupPermissionsView$1(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;Landroid/view/View;)V
    .locals 2

    .line 236
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 238
    instance-of v1, v0, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;

    if-eqz v1, :cond_0

    .line 239
    check-cast v0, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;

    invoke-interface {v0, p1}, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;->startActivitySafely(Landroid/content/Intent;)Z

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private setupMainView()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mAppsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSwitchContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mInitContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setupPermissionsView()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mAppsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSwitchContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mInitContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mInitContainer:Landroid/view/View;

    const v1, 0x7f0a00c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120041

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 233
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mInitContainer:Landroid/view/View;

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f120040

    .line 234
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 235
    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$TvGmoMHDGPb14on4iDDJV1j304U;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$TvGmoMHDGPb14on4iDDJV1j304U;-><init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 281
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->cleanupPendingData()V

    return-void

    :cond_0
    const/16 p2, 0x64

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    if-nez p3, :cond_1

    return-void

    :cond_1
    const-string p1, "appWidgetId"

    .line 291
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 292
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->configureWidget(I)V

    goto/16 :goto_3

    :cond_2
    const/16 p2, 0x65

    if-ne p1, p2, :cond_6

    if-nez p3, :cond_3

    return-void

    :cond_3
    if-eqz p3, :cond_4

    const-string p1, "appWidgetId"

    .line 298
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_4
    if-eqz v0, :cond_5

    .line 301
    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->createWidget(I)V

    goto :goto_3

    .line 303
    :cond_5
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->cleanupPendingData()V

    goto :goto_3

    :cond_6
    const/16 p2, 0x66

    if-ne p1, p2, :cond_7

    .line 306
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mPendingPackageToEnable:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->setEnabled(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_7
    const/16 p2, 0x67

    if-ne p1, p2, :cond_a

    const-string p1, "ID"

    const-wide/16 v1, -0x1

    .line 308
    invoke-virtual {p3, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    long-to-int p1, p1

    .line 309
    invoke-static {}, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->values()[Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    move-result-object p2

    array-length p3, p2

    :goto_0
    if-ge v0, p3, :cond_9

    aget-object v1, p2, v0

    .line 310
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->hashCode()I

    move-result v2

    if-ne p1, v2, :cond_8

    .line 311
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mController:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    invoke-virtual {p1, v1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->setBadgeStyle(Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;)V

    .line 312
    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setStyle(Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;)V

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 317
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mConfigSection:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;->mConfigViewHolder:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigViewHolder;->mIcons:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;

    .line 318
    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->requestLayout()V

    .line 319
    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->invalidate()V

    goto :goto_2

    :cond_a
    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mController:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mCommonApps:Ljava/util/List;

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mAllApps:Ljava/util/List;

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mStartedConfiguration:Z

    .line 99
    new-instance p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mAppsInfoDataHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0114

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSwitchContainer:Landroid/view/View;

    .line 187
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSwitchContainer:Landroid/view/View;

    const v0, 0x7f0a02c1

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mEnabledSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const p3, 0x7f0d00ab

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 195
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 196
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mController:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->start()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 262
    :goto_0
    array-length v1, p2

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    .line 264
    aget v1, p3, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 271
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    .line 272
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mPendingPackageToEnable:Ljava/lang/String;

    goto :goto_1

    .line 274
    :cond_2
    iput-boolean v2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mStartedConfiguration:Z

    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 104
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 106
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSwitchContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->getToolbarContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSwitchContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 108
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mStartedConfiguration:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mPendingPackageToEnable:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0, v0, v1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->setEnabled(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mStartedConfiguration:Z

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v0}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 8

    .line 121
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 123
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mController:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->stop()V

    .line 125
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mCommonApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mAllApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getValidExtractors(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    .line 129
    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getPackageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mAppsInfoDataHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->getAllApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    .line 135
    iget-object v5, v3, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->isHighAccuracy(Ljava/lang/String;)Z

    move-result v5

    .line 137
    iget-object v6, v3, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    iget-object v6, v3, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 139
    iget-object v7, v3, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    move v4, v5

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 143
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mCommonApps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    :cond_3
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mAllApps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    :cond_4
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)V

    .line 161
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mCommonApps:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 162
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mAllApps:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 165
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 167
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_6

    .line 169
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->setupMainView()V

    .line 170
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v0}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 172
    :cond_6
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->setupPermissionsView()V

    :goto_4
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 178
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 179
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mController:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->save()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 201
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a016b

    .line 203
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mInitContainer:Landroid/view/View;

    .line 205
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mEnabledSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mController:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 206
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mEnabledSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$3W4N1WWHzKA7BvA26CGgLYtKa3E;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$3W4N1WWHzKA7BvA26CGgLYtKa3E;-><init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f0a0218

    .line 211
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mAppsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 212
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mAppsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 214
    new-instance p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mCommonApps:Ljava/util/List;

    const v0, 0x7f120044

    const v1, 0x7f120045

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;-><init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;IILjava/util/List;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mCommonSection:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;

    .line 215
    new-instance p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AllAppsSection;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mAllApps:Ljava/util/List;

    const v0, 0x7f120042

    const v1, 0x7f120043

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AllAppsSection;-><init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;IILjava/util/List;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mAllSection:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AllAppsSection;

    .line 216
    new-instance p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;-><init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mConfigSection:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;

    .line 218
    new-instance p1, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-direct {p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    .line 219
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mConfigSection:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;

    invoke-virtual {p1, p2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 220
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mCommonSection:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AppSwitchSection;

    invoke-virtual {p1, p2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 221
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mAllSection:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$AllAppsSection;

    invoke-virtual {p1, p2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 222
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mAppsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setEnabled(Ljava/lang/String;Z)V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mController:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getExtractor(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 328
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mController:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    invoke-virtual {p2, p1, v1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->setAppEnabled(Ljava/lang/String;Z)V

    .line 329
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void

    .line 334
    :cond_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mController:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isExtractorRequired(Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;)Z

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->hasPermission()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->isConfigured()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    if-eqz v1, :cond_4

    .line 343
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mController:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    invoke-virtual {v0, p1, v2}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->setAppEnabled(Ljava/lang/String;Z)V

    .line 344
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mPendingPackageToEnable:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 345
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mPendingPackageToEnable:Ljava/lang/String;

    .line 347
    :cond_3
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mSectionedAdapter:Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p1}, Lio/github/luizgrp/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void

    .line 353
    :cond_4
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mPendingPackageToEnable:Ljava/lang/String;

    .line 355
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->hasPermission()Z

    move-result p1

    if-nez p1, :cond_5

    .line 357
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getPermissions()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 361
    :cond_5
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->isConfigured()Z

    move-result p1

    if-nez p1, :cond_8

    .line 363
    instance-of p1, v0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;

    if-eqz p1, :cond_7

    .line 364
    check-cast v0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mPendingWidgetExtractor:Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;

    .line 366
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;

    move-result-object p1

    .line 367
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->allocateAppWidgetId()I

    move-result p1

    .line 368
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    .line 369
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mPendingWidgetExtractor:Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->getWidgetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 371
    :try_start_0
    invoke-virtual {p2, p1, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 373
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->configureWidget(I)V

    goto :goto_1

    .line 376
    :cond_6
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "appWidgetId"

    .line 377
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "appWidgetProvider"

    .line 378
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x64

    .line 379
    invoke-virtual {p0, p2, p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    return-void

    .line 385
    :cond_7
    instance-of p1, v0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;

    if-eqz p1, :cond_8

    .line 387
    new-instance p1, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;

    invoke-direct {p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;-><init>()V

    .line 391
    iput-boolean v2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->mStartedConfiguration:Z

    .line 392
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010015

    const v2, 0x7f010012

    .line 393
    invoke-virtual {v0, v2, v1, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    const v1, 0x7f0a00ae

    .line 394
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const p1, 0x7f12003f

    .line 395
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroidx/fragment/app/FragmentTransaction;

    .line 396
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 397
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_8
    :goto_1
    return-void
.end method
