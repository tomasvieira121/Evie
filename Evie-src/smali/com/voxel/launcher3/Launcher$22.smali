.class Lcom/voxel/launcher3/Launcher$22;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->onWindowVisibilityChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStarted:Z

.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 3521
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$22;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3522
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$22;->mStarted:Z

    return-void
.end method

.method public static synthetic lambda$onDraw$0(Lcom/voxel/launcher3/Launcher$22;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 1

    .line 3535
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$22;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$22;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3536
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$22;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3537
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 4

    .line 3525
    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher$22;->mStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3526
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher$22;->mStarted:Z

    .line 3532
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$22;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$22;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->access$4700(Lcom/voxel/launcher3/Launcher;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3534
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$22;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$Launcher$22$R6qAcwXG0PhQC5Pcsh1tRNjSz_0;

    invoke-direct {v1, p0, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$22$R6qAcwXG0PhQC5Pcsh1tRNjSz_0;-><init>(Lcom/voxel/launcher3/Launcher$22;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
