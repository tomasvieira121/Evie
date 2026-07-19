.class Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$1;
.super Ljava/lang/Object;
.source "DeepShortcutManagerCompatVNMr1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$1;->this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$1;->this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;

    invoke-static {v0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->access$000(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$1;->this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;

    invoke-virtual {v0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->hasHostPermission()Z

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$1;->this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;

    invoke-static {v1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->access$100(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$1;->this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;

    invoke-static {v1, v0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->access$102(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;Z)Z

    .line 78
    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$1;->this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;

    invoke-static {v1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->access$200(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager$ShortcutHostPermissionChangedListener;

    .line 79
    iget-object v3, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$1;->this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;

    invoke-static {v3}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->access$300(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/voxel/launcher3/shortcuts/-$$Lambda$t6awJl0CtBzulF8XtwweAj5DiMc;

    invoke-direct {v4, v2}, Lcom/voxel/launcher3/shortcuts/-$$Lambda$t6awJl0CtBzulF8XtwweAj5DiMc;-><init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutManager$ShortcutHostPermissionChangedListener;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$1;->this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;

    iget-object v0, v0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mDeepShortcutIdsMap:Lcom/voxel/launcher3/util/MultiHashMap;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$1;->this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;

    iget-object v1, v1, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->mDeepShortcutIdsMap:Lcom/voxel/launcher3/util/MultiHashMap;

    invoke-virtual {v1}, Lcom/voxel/launcher3/util/MultiHashMap;->clear()V

    .line 85
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$1;->this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->access$002(Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;Z)Z

    .line 88
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1$1;->this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;

    invoke-virtual {v0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;->finishStartup()V

    :cond_2
    :goto_1
    return-void
.end method
