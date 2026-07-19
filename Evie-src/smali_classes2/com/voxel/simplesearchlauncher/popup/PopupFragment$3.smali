.class Lcom/voxel/simplesearchlauncher/popup/PopupFragment$3;
.super Ljava/lang/Object;
.source "PopupFragment.java"

# interfaces
.implements Lcom/evie/common/dragndrop/DragSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/popup/PopupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntrinsicIconScaleFactor()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/evie/common/dragndrop/DragObjectAbstraction;ZZ)V
    .locals 0

    .line 528
    check-cast p2, Lcom/voxel/launcher3/DropTarget$DragObject;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    .line 531
    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/DropTarget$DragObject;->setDeferDragViewCleanupPostAnimation(Z)V

    .line 532
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/Launcher;->showWorkspace(Z)V

    :cond_0
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    return-void
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsRemoveDropTarget()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
