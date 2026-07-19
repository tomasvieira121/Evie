.class Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUpdatedTask"
.end annotation


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

.field final synthetic this$0:Lcom/voxel/launcher3/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 3250
    iput-object p1, p0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3251
    iput p2, p0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    .line 3252
    iput-object p3, p0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 3253
    iput-object p4, p0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 1

    .line 3356
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$800(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$800(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    if-eqz v0, :cond_1

    .line 3358
    invoke-interface {p1, p2}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->bindAppsUpdated(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$run$1(Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 3475
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherModel;->getCallback()Lcom/voxel/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    if-ne p1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 3477
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-interface {p1, p2, p3, v0}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$run$2(Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 1

    .line 3488
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherModel;->getCallback()Lcom/voxel/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    if-ne p1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 3490
    invoke-interface {p1, p2}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->bindWidgetsRestored(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$run$3(Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 1

    .line 3532
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$800(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$800(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    if-eqz v0, :cond_1

    .line 3534
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-interface {p1, p2, p3, v0}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->bindComponentsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$run$4(Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;)V
    .locals 1

    .line 3541
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$800(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$800(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    if-eqz v0, :cond_1

    .line 3543
    invoke-interface {p1}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->dumpLogsToLocalData()V

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v1, p0

    .line 3257
    iget-object v0, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$700(Lcom/voxel/launcher3/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3261
    :cond_0
    iget-object v0, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$900(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3263
    iget-object v2, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 3264
    array-length v3, v2

    .line 3265
    sget-object v3, Lcom/voxel/launcher3/util/FlagOp;->NO_OP:Lcom/voxel/launcher3/util/FlagOp;

    .line 3266
    new-instance v4, Ljava/util/HashSet;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Lcom/voxel/launcher3/util/StringFilter;->of(Ljava/util/Set;)Lcom/voxel/launcher3/util/StringFilter;

    move-result-object v4

    .line 3267
    iget v5, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v6, 0x2

    packed-switch v5, :pswitch_data_0

    goto :goto_4

    .line 3285
    :pswitch_0
    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v8, v2, v5

    .line 3287
    iget-object v9, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v9}, Lcom/voxel/launcher3/LauncherModel;->access$2000(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/IconCache;

    move-result-object v9

    iget-object v10, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v9, v8, v10}, Lcom/voxel/launcher3/IconCache;->remove(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3291
    :cond_1
    :pswitch_1
    array-length v3, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v8, v2, v5

    .line 3293
    iget-object v9, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v9, v9, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v10, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v9, v8, v10}, Lcom/voxel/launcher3/AllAppsList;->removePackage(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3295
    :cond_2
    invoke-static {v6}, Lcom/voxel/launcher3/util/FlagOp;->addFlag(I)Lcom/voxel/launcher3/util/FlagOp;

    move-result-object v3

    goto :goto_4

    .line 3276
    :pswitch_2
    array-length v3, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_3

    aget-object v8, v2, v5

    .line 3278
    iget-object v9, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v9}, Lcom/voxel/launcher3/LauncherModel;->access$2000(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/IconCache;

    move-result-object v9

    iget-object v10, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v9, v8, v10}, Lcom/voxel/launcher3/IconCache;->updateIconsForPkg(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 3279
    iget-object v9, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v9, v9, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v10, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v9, v0, v8, v10}, Lcom/voxel/launcher3/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3282
    :cond_3
    invoke-static {v6}, Lcom/voxel/launcher3/util/FlagOp;->removeFlag(I)Lcom/voxel/launcher3/util/FlagOp;

    move-result-object v3

    goto :goto_4

    .line 3269
    :pswitch_3
    array-length v5, v2

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_4

    aget-object v9, v2, v8

    .line 3271
    iget-object v10, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v10}, Lcom/voxel/launcher3/LauncherModel;->access$2000(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/IconCache;

    move-result-object v10

    iget-object v11, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v10, v9, v11}, Lcom/voxel/launcher3/IconCache;->updateIconsForPkg(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 3272
    iget-object v10, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v10, v10, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v11, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v10, v0, v9, v11}, Lcom/voxel/launcher3/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3301
    :cond_4
    :goto_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3303
    iget-object v8, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v8, v8, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v8, v8, Lcom/voxel/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 3304
    new-instance v8, Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v10, v10, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v10, v10, Lcom/voxel/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3305
    iget-object v10, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v10, v10, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v10, v10, Lcom/voxel/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 3307
    :goto_5
    iget-object v10, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v10, v10, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v10, v10, Lcom/voxel/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 3308
    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v11, v11, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v11, v11, Lcom/voxel/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3309
    iget-object v11, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v11, v11, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v11, v11, Lcom/voxel/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    goto :goto_6

    :cond_6
    const/4 v10, 0x0

    .line 3311
    :goto_6
    iget-object v11, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v11, v11, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v11, v11, Lcom/voxel/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    .line 3312
    iget-object v11, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v11, v11, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v11, v11, Lcom/voxel/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3313
    iget-object v11, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v11, v11, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v11, v11, Lcom/voxel/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 3316
    :cond_7
    iget-object v11, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v11}, Lcom/voxel/launcher3/LauncherModel;->access$800(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v11

    if-eqz v11, :cond_8

    iget-object v11, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v11}, Lcom/voxel/launcher3/LauncherModel;->access$800(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    goto :goto_7

    :cond_8
    const/4 v11, 0x0

    :goto_7
    if-nez v11, :cond_9

    const-string v0, "Launcher.Model"

    const-string v2, "Nobody to tell about the new app.  Launcher is probably loading."

    .line 3318
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3322
    :cond_9
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    if-eqz v8, :cond_b

    .line 3325
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 3326
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3327
    iget-object v14, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v14, v0, v13}, Lcom/voxel/launcher3/LauncherModel;->addAndBindAddedWorkspaceApps(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_8

    .line 3329
    :cond_a
    iget-object v13, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v13, v0, v8}, Lcom/voxel/launcher3/LauncherModel;->addAppsToAllApps(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3331
    :goto_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/voxel/launcher3/AppInfo;

    .line 3332
    iget-object v14, v13, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_b
    if-eqz v10, :cond_10

    .line 3338
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/voxel/launcher3/AppInfo;

    .line 3339
    iget-object v14, v13, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 3342
    :cond_c
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/voxel/launcher3/AppInfo;

    .line 3343
    iget-object v14, v13, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v15, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 3344
    invoke-static {v14, v15}, Lcom/voxel/launcher3/LauncherModel;->getItemInfoForComponentName(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v14

    .line 3345
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_e
    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/voxel/launcher3/ItemInfo;

    .line 3346
    invoke-static {v15}, Lcom/voxel/launcher3/LauncherModel;->isShortcutInfoUpdateable(Lcom/voxel/launcher3/ItemInfo;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 3347
    check-cast v15, Lcom/voxel/launcher3/ShortcutInfo;

    .line 3348
    iget-object v9, v13, Lcom/voxel/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v15, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3349
    iget-object v9, v13, Lcom/voxel/launcher3/AppInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object v9, v15, Lcom/voxel/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 3350
    invoke-static {v0, v15}, Lcom/voxel/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    goto :goto_b

    .line 3355
    :cond_f
    iget-object v8, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v8}, Lcom/voxel/launcher3/LauncherModel;->access$200(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/DeferredHandler;

    move-result-object v8

    new-instance v9, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$egGdxlkzGOh62O-gvjU0hwyRsio;

    invoke-direct {v9, v1, v11, v10}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$egGdxlkzGOh62O-gvjU0hwyRsio;-><init>(Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v9}, Lcom/voxel/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3364
    :cond_10
    iget v8, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_12

    sget-object v8, Lcom/voxel/launcher3/util/FlagOp;->NO_OP:Lcom/voxel/launcher3/util/FlagOp;

    if-eq v3, v8, :cond_11

    goto :goto_c

    :cond_11
    move-object/from16 v21, v11

    goto/16 :goto_16

    .line 3365
    :cond_12
    :goto_c
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3366
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3367
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3369
    sget-object v14, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v14

    .line 3370
    :try_start_0
    sget-object v15, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-virtual {v15}, Lcom/voxel/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_24

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Lcom/voxel/launcher3/ItemInfo;

    .line 3371
    instance-of v6, v9, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v6, :cond_21

    iget-object v6, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iget-object v7, v9, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v6, v7}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 3372
    check-cast v9, Lcom/voxel/launcher3/ShortcutInfo;

    .line 3377
    iget-object v6, v9, Lcom/voxel/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v6, :cond_13

    iget-object v6, v9, Lcom/voxel/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v6, v6, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 3378
    invoke-virtual {v4, v6}, Lcom/voxel/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 3379
    iget-object v6, v9, Lcom/voxel/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v6, v6, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v7, v9, Lcom/voxel/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v7, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-static {v6, v7, v0}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 3383
    invoke-virtual {v9, v6}, Lcom/voxel/launcher3/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    .line 3384
    iput-boolean v6, v9, Lcom/voxel/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    const/4 v6, 0x1

    goto :goto_e

    :cond_13
    const/4 v6, 0x0

    .line 3389
    :goto_e
    invoke-virtual {v9}, Lcom/voxel/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_1d

    move/from16 v18, v6

    .line 3390
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/voxel/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 3391
    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/AppInfo;

    .line 3393
    invoke-virtual {v9}, Lcom/voxel/launcher3/ShortcutInfo;->isPromise()Z

    move-result v19

    if-eqz v19, :cond_1a

    move-object/from16 v19, v6

    const/4 v6, 0x2

    .line 3394
    invoke-virtual {v9, v6}, Lcom/voxel/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 3396
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object/from16 v20, v15

    .line 3397
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v21, v11

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v15, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3399
    invoke-virtual {v15, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v11

    const-string v15, "android.intent.category.LAUNCHER"

    invoke-virtual {v11, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const/high16 v15, 0x10000

    .line 3397
    invoke-virtual {v6, v11, v15}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-nez v11, :cond_18

    .line 3404
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3403
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 3406
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 3407
    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voxel/launcher3/AppInfo;

    move-object/from16 v19, v7

    :cond_14
    if-eqz v6, :cond_16

    if-nez v19, :cond_15

    goto :goto_f

    .line 3414
    :cond_15
    iput-object v6, v9, Lcom/voxel/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    move-object/from16 v6, v19

    goto :goto_10

    .line 3411
    :cond_16
    :goto_f
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v20

    move-object/from16 v11, v21

    const/4 v6, 0x2

    const/4 v9, 0x1

    goto/16 :goto_d

    :cond_17
    move-object/from16 v21, v11

    move-object/from16 v20, v15

    :cond_18
    move-object/from16 v6, v19

    :goto_10
    if-eqz v6, :cond_19

    .line 3420
    iget v7, v6, Lcom/voxel/launcher3/AppInfo;->flags:I

    iput v7, v9, Lcom/voxel/launcher3/ShortcutInfo;->flags:I

    .line 3423
    :cond_19
    iget-object v7, v9, Lcom/voxel/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    iput-object v7, v9, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v7, 0x0

    .line 3424
    iput-object v7, v9, Lcom/voxel/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    const/4 v11, 0x0

    .line 3425
    iput v11, v9, Lcom/voxel/launcher3/ShortcutInfo;->status:I

    .line 3427
    iget-object v11, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v11}, Lcom/voxel/launcher3/LauncherModel;->access$2000(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/IconCache;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/voxel/launcher3/ShortcutInfo;->updateIcon(Lcom/voxel/launcher3/IconCache;)V

    const/16 v18, 0x1

    goto :goto_11

    :cond_1a
    move-object/from16 v19, v6

    move-object/from16 v21, v11

    move-object/from16 v20, v15

    const/4 v7, 0x0

    :goto_11
    if-eqz v6, :cond_1b

    const-string v11, "android.intent.action.MAIN"

    .line 3430
    iget-object v15, v9, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    iget v11, v9, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    if-nez v11, :cond_1b

    .line 3432
    iget-object v11, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v11}, Lcom/voxel/launcher3/LauncherModel;->access$2000(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/IconCache;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/voxel/launcher3/ShortcutInfo;->updateIcon(Lcom/voxel/launcher3/IconCache;)V

    .line 3433
    iget-object v11, v6, Lcom/voxel/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v11}, Lcom/voxel/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3434
    iget-object v6, v6, Lcom/voxel/launcher3/AppInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object v6, v9, Lcom/voxel/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    const/4 v6, 0x1

    goto :goto_12

    :cond_1b
    move/from16 v6, v18

    .line 3438
    :goto_12
    iget v11, v9, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    .line 3439
    iget v15, v9, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    invoke-virtual {v3, v15}, Lcom/voxel/launcher3/util/FlagOp;->apply(I)I

    move-result v15

    iput v15, v9, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    .line 3440
    iget v15, v9, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    if-eq v15, v11, :cond_1c

    const/4 v11, 0x1

    goto :goto_13

    :cond_1c
    const/4 v11, 0x0

    goto :goto_13

    :cond_1d
    move/from16 v18, v6

    :cond_1e
    move-object/from16 v21, v11

    move-object/from16 v20, v15

    const/4 v7, 0x0

    move/from16 v6, v18

    const/4 v11, 0x0

    :goto_13
    if-nez v6, :cond_1f

    if-eqz v11, :cond_20

    .line 3446
    :cond_1f
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    if-eqz v6, :cond_22

    .line 3449
    invoke-static {v0, v9}, Lcom/voxel/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    goto :goto_14

    :cond_21
    move-object/from16 v21, v11

    move-object/from16 v20, v15

    const/4 v7, 0x0

    .line 3451
    instance-of v6, v9, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    if-eqz v6, :cond_22

    iget v6, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v11, 0x1

    if-ne v6, v11, :cond_23

    .line 3452
    check-cast v9, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    .line 3453
    iget-object v6, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iget-object v15, v9, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v6, v15}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    const/4 v6, 0x2

    .line 3454
    invoke-virtual {v9, v6}, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v15

    if-eqz v15, :cond_23

    iget-object v6, v9, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 3455
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/voxel/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 3456
    iget v6, v9, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v6, v6, -0xb

    iput v6, v9, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 3463
    iget v6, v9, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v9, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 3465
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3466
    invoke-static {v0, v9}, Lcom/voxel/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    goto :goto_15

    :cond_22
    :goto_14
    const/4 v11, 0x1

    :cond_23
    :goto_15
    move-object/from16 v15, v20

    move-object/from16 v11, v21

    const/4 v6, 0x2

    const/4 v9, 0x1

    goto/16 :goto_d

    :cond_24
    move-object/from16 v21, v11

    .line 3470
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3472
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    .line 3473
    :cond_25
    iget-object v3, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v3}, Lcom/voxel/launcher3/LauncherModel;->getCallback()Lcom/voxel/launcher3/LauncherModel$Callbacks;

    move-result-object v3

    .line 3474
    iget-object v4, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v4}, Lcom/voxel/launcher3/LauncherModel;->access$200(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/DeferredHandler;

    move-result-object v4

    new-instance v6, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$Ca0_1k2xkjhRN38lUBgkT9CBHrA;

    invoke-direct {v6, v1, v3, v8, v10}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$Ca0_1k2xkjhRN38lUBgkT9CBHrA;-><init>(Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Lcom/voxel/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3481
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    .line 3482
    invoke-static {v0, v10}, Lcom/voxel/launcher3/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3485
    :cond_26
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_27

    .line 3486
    iget-object v3, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v3}, Lcom/voxel/launcher3/LauncherModel;->getCallback()Lcom/voxel/launcher3/LauncherModel$Callbacks;

    move-result-object v3

    .line 3487
    iget-object v4, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v4}, Lcom/voxel/launcher3/LauncherModel;->access$200(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/DeferredHandler;

    move-result-object v4

    new-instance v6, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$D9pI7pbDDr0lGZYj5HicR7ukl54;

    invoke-direct {v6, v1, v3, v13}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$D9pI7pbDDr0lGZYj5HicR7ukl54;-><init>(Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Lcom/voxel/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3496
    :cond_27
    :goto_16
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 3498
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 3499
    iget v6, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_28

    .line 3501
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    :cond_28
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2b

    .line 3504
    array-length v6, v2

    const/4 v7, 0x0

    :goto_17
    if-ge v7, v6, :cond_2a

    aget-object v8, v2, v7

    .line 3505
    iget-object v9, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-static {v0, v8, v9}, Lcom/voxel/launcher3/LauncherModel;->access$2100(Landroid/content/Context;Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 3506
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 3510
    :cond_2a
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/AppInfo;

    .line 3511
    iget-object v6, v6, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 3516
    :cond_2b
    :goto_19
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_1a

    :cond_2c
    move-object/from16 v9, v21

    goto :goto_1d

    .line 3517
    :cond_2d
    :goto_1a
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3518
    iget-object v6, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-static {v0, v5, v6}, Lcom/voxel/launcher3/LauncherModel;->deletePackageFromDatabase(Landroid/content/Context;Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    goto :goto_1b

    .line 3520
    :cond_2e
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3521
    iget-object v6, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-static {v5, v6}, Lcom/voxel/launcher3/LauncherModel;->getItemInfoForComponentName(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/voxel/launcher3/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_1c

    .line 3525
    :cond_2f
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    .line 3527
    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3528
    invoke-static {v0, v3}, Lcom/voxel/launcher3/InstallShortcutReceiver;->removeFromInstallQueue(Landroid/content/SharedPreferences;Ljava/util/HashSet;)V

    .line 3531
    iget-object v0, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$200(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/DeferredHandler;

    move-result-object v0

    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$2-w8RpcETTCCIKNOAcH97Lx436k;

    move-object/from16 v9, v21

    invoke-direct {v2, v1, v9, v3, v4}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$2-w8RpcETTCCIKNOAcH97Lx436k;-><init>(Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/HashSet;Ljava/util/HashSet;)V

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 3540
    :goto_1d
    iget-object v0, v1, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$200(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/DeferredHandler;

    move-result-object v0

    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$VdI_zFikssRazzH9GAGZ70fLXdk;

    invoke-direct {v2, v1, v9}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$VdI_zFikssRazzH9GAGZ70fLXdk;-><init>(Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;)V

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3470
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
