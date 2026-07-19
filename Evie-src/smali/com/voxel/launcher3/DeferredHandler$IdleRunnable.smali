.class Lcom/voxel/launcher3/DeferredHandler$IdleRunnable;
.super Ljava/lang/Object;
.source "DeferredHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunnable"
.end annotation


# instance fields
.field mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/voxel/launcher3/DeferredHandler;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/DeferredHandler;Ljava/lang/Runnable;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/voxel/launcher3/DeferredHandler$IdleRunnable;->this$0:Lcom/voxel/launcher3/DeferredHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/voxel/launcher3/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/voxel/launcher3/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
