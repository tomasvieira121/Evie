.class Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;
.super Landroid/os/AsyncTask;
.source "AllAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->refreshAppList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mLocalApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private calculateMapIndex(Ljava/util/List;I)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;",
            ">;I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 561
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x23

    .line 562
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x41

    const/16 v2, 0x41

    .line 565
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x5a

    if-ge p2, v3, :cond_5

    .line 566
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;

    .line 567
    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 572
    :cond_0
    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 574
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 578
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    if-lt v3, v1, :cond_4

    if-le v3, v5, :cond_2

    goto :goto_1

    :cond_2
    if-lt v3, v2, :cond_3

    .line 583
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    if-le v2, v5, :cond_2

    :cond_3
    if-le v2, v5, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    if-gt v2, v5, :cond_6

    :goto_3
    if-gt v2, v5, :cond_6

    .line 597
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_3

    :cond_6
    return-object v0
.end method

.method static synthetic lambda$doInBackground$0(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)I
    .locals 3

    .line 518
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getFirstInstallTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getFirstInstallTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmp-long v2, v0, p0

    if-lez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;
    .locals 11

    .line 471
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->localAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAllLocalLaunchApps()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->mLocalApps:Ljava/util/List;

    .line 473
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->mLocalApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 474
    invoke-static {}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v1, "refreshAppList waiting for local apps load to complete"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 478
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$702(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Z)Z

    .line 480
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->mLocalApps:Ljava/util/List;

    new-instance v1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8$1;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8$1;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 496
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 497
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$800(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 499
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getAllAppsShowNewApps()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 500
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->mLocalApps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    .line 503
    invoke-static {}, Lcom/voxel/launcher3/BaseApplication;->getApplication()Lcom/voxel/launcher3/BaseApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/voxel/launcher3/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getHasOpened()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 511
    :cond_3
    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getFirstInstallTime()J

    move-result-wide v6

    sub-long v6, v1, v6

    const-wide/32 v8, 0x1499700

    cmp-long v10, v6, v8

    if-gez v10, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    .line 513
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 517
    :cond_4
    sget-object v1, Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$8$zAnz0sl-bPxKB4mfk2oe4nhCGI8;->INSTANCE:Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$8$zAnz0sl-bPxKB4mfk2oe4nhCGI8;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 529
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 531
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$900(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 532
    new-instance v2, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$SetDefaultLauncherItem;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-direct {v2, v4, v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$SetDefaultLauncherItem;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 534
    new-instance v2, Lcom/voxel/simplesearchlauncher/adapter/ListSeparator;

    invoke-direct {v2}, Lcom/voxel/simplesearchlauncher/adapter/ListSeparator;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 538
    new-instance v2, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$NewSectionSeparator;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-direct {v2, v4}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$NewSectionSeparator;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_8

    .line 540
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 541
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 544
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 545
    new-instance p1, Lcom/voxel/simplesearchlauncher/adapter/ListSeparator;

    invoke-direct {p1}, Lcom/voxel/simplesearchlauncher/adapter/ListSeparator;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    .line 549
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->mLocalApps:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 550
    invoke-direct {p0, v1, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->calculateMapIndex(Ljava/util/List;I)Ljava/util/HashMap;

    move-result-object p1

    .line 552
    new-instance v2, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-direct {v2, v3, v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$1;)V

    .line 553
    iput-object v1, v2, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;->mSearchItemDatas:Ljava/util/List;

    .line 554
    iput-object p1, v2, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;->mMapIndex:Ljava/util/HashMap;

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 466
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->doInBackground([Ljava/lang/Void;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;)V
    .locals 4

    .line 607
    monitor-enter p0

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$1202(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 609
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$1300(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$1302(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Z)Z

    .line 611
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$1400(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    .line 613
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    .line 614
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;->mSearchItemDatas:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$1500(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$1500(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 619
    :cond_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$1600(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;

    move-result-object v0

    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;->mSearchItemDatas:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->setResultListItems(Ljava/util/List;)Z

    move-result v0

    .line 620
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$1600(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;

    move-result-object v2

    iget-object v3, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;->mMapIndex:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->setMapIndex(Ljava/util/HashMap;)V

    if-eqz v0, :cond_3

    .line 622
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$1600(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->notifyDataSetChanged()V

    .line 625
    :cond_3
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$500(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;

    move-result-object v0

    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;->mSearchItemDatas:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->setResultListItems(Ljava/util/List;)Z

    move-result v0

    .line 626
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$500(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;

    move-result-object v2

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;->mMapIndex:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->setMapIndex(Ljava/util/HashMap;)V

    if-eqz v0, :cond_4

    .line 628
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$500(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->notifyDataSetChanged()V

    .line 632
    :cond_4
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$1700(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 633
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_5

    .line 634
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 637
    :cond_5
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->mLocalApps:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$1800(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Ljava/util/List;I)V

    return-void

    :cond_6
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 613
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 466
    check-cast p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->onPostExecute(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;)V

    return-void
.end method
