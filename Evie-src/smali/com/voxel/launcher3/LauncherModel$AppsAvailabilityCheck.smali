.class Lcom/voxel/launcher3/LauncherModel$AppsAvailabilityCheck;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppsAvailabilityCheck"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/LauncherModel;


# direct methods
.method private constructor <init>(Lcom/voxel/launcher3/LauncherModel;)V
    .locals 0

    .line 3094
    iput-object p1, p0, Lcom/voxel/launcher3/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/LauncherModel$1;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherModel$AppsAvailabilityCheck;-><init>(Lcom/voxel/launcher3/LauncherModel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 3098
    sget-object p2, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter p2

    .line 3099
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/voxel/launcher3/LauncherModel;

    .line 3100
    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$900(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 3101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 3102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3104
    sget-object v3, Lcom/voxel/launcher3/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3105
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 3106
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3107
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3108
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3109
    invoke-virtual {v0, v6, v5}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3110
    invoke-static {p1, v6}, Lcom/voxel/launcher3/util/PackageManagerHelper;->isAppOnSdcard(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3111
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v7, "Launcher.Model"

    .line 3113
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3114
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3118
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3119
    iget-object v4, p0, Lcom/voxel/launcher3/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/voxel/launcher3/LauncherModel;

    new-instance v6, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;

    iget-object v7, p0, Lcom/voxel/launcher3/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/voxel/launcher3/LauncherModel;

    const/4 v8, 0x3

    .line 3120
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/voxel/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 3119
    invoke-static {v4, v6}, Lcom/voxel/launcher3/LauncherModel;->access$1900(Lcom/voxel/launcher3/LauncherModel;Ljava/lang/Runnable;)V

    .line 3122
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3123
    iget-object v4, p0, Lcom/voxel/launcher3/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/voxel/launcher3/LauncherModel;

    new-instance v6, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;

    iget-object v7, p0, Lcom/voxel/launcher3/LauncherModel$AppsAvailabilityCheck;->this$0:Lcom/voxel/launcher3/LauncherModel;

    const/4 v8, 0x4

    .line 3124
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/voxel/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 3123
    invoke-static {v4, v6}, Lcom/voxel/launcher3/LauncherModel;->access$1900(Lcom/voxel/launcher3/LauncherModel;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3127
    :cond_5
    sget-object p1, Lcom/voxel/launcher3/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 3128
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    return-void
.end method
