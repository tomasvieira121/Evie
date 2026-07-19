.class Lcom/voxel/launcher3/LauncherModel$DeepShortcutsChangedTask;
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
    name = "DeepShortcutsChangedTask"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

.field final synthetic this$0:Lcom/voxel/launcher3/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/LauncherModel;Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 3566
    iput-object p1, p0, Lcom/voxel/launcher3/LauncherModel$DeepShortcutsChangedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3567
    iput-object p2, p0, Lcom/voxel/launcher3/LauncherModel$DeepShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    .line 3568
    iput-object p3, p0, Lcom/voxel/launcher3/LauncherModel$DeepShortcutsChangedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 3574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3575
    new-instance v1, Lcom/voxel/launcher3/util/MultiHashMap;

    invoke-direct {v1}, Lcom/voxel/launcher3/util/MultiHashMap;-><init>()V

    .line 3576
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/voxel/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/ItemInfo;

    .line 3577
    iget v4, v3, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 3578
    check-cast v3, Lcom/voxel/launcher3/ShortcutInfo;

    .line 3579
    invoke-virtual {v3}, Lcom/voxel/launcher3/ShortcutInfo;->getPromisedIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/voxel/launcher3/LauncherModel$DeepShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iget-object v5, p0, Lcom/voxel/launcher3/LauncherModel$DeepShortcutsChangedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 3580
    invoke-virtual {v4, v5}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3581
    invoke-virtual {v3}, Lcom/voxel/launcher3/ShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/voxel/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 3586
    :cond_1
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3587
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3588
    invoke-virtual {v1}, Lcom/voxel/launcher3/util/MultiHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3590
    iget-object v4, p0, Lcom/voxel/launcher3/LauncherModel$DeepShortcutsChangedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v4, v4, Lcom/voxel/launcher3/LauncherModel;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    iget-object v5, p0, Lcom/voxel/launcher3/LauncherModel$DeepShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    .line 3591
    invoke-virtual {v1}, Lcom/voxel/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v7, p0, Lcom/voxel/launcher3/LauncherModel$DeepShortcutsChangedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 3590
    invoke-virtual {v4, v5, v6, v7}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->queryForFullDetails(Ljava/lang/String;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v4

    .line 3592
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    .line 3594
    invoke-virtual {v5}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/voxel/launcher3/util/MultiHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3595
    invoke-virtual {v5}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->isPinned()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3601
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 3604
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voxel/launcher3/ShortcutInfo;

    .line 3605
    iget-object v8, p0, Lcom/voxel/launcher3/LauncherModel$DeepShortcutsChangedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v8, v8, Lcom/voxel/launcher3/LauncherModel;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {v7, v5, v8, v2}, Lcom/voxel/launcher3/ShortcutInfo;->updateFromDeepShortcutInfo(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;Landroid/content/Context;)V

    .line 3606
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3614
    :cond_4
    invoke-virtual {v1}, Lcom/voxel/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3615
    invoke-virtual {v1, v5}, Lcom/voxel/launcher3/util/MultiHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 3618
    :cond_5
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel$DeepShortcutsChangedTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v4, p0, Lcom/voxel/launcher3/LauncherModel$DeepShortcutsChangedTask;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-static {v1, v3, v0, v4}, Lcom/voxel/launcher3/LauncherModel;->access$2200(Lcom/voxel/launcher3/LauncherModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 3619
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3620
    invoke-static {v2, v0}, Lcom/voxel/launcher3/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_6
    return-void
.end method
