.class Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionPoolKiller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller$1;->this$0:Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "Connectivity changed"

    const/4 p2, 0x0

    .line 35
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller$1;->this$0:Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;->clearConnectionPool()V

    return-void
.end method
