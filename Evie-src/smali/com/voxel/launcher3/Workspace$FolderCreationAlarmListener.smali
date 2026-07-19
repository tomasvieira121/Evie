.class Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/voxel/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderCreationAlarmListener"
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field layout:Lcom/voxel/launcher3/CellLayout;

.field final synthetic this$0:Lcom/voxel/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/CellLayout;II)V
    .locals 0

    .line 3637
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3638
    iput-object p2, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/voxel/launcher3/CellLayout;

    .line 3639
    iput p3, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->cellX:I

    .line 3640
    iput p4, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->cellY:I

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/voxel/launcher3/Alarm;)V
    .locals 3

    .line 3644
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {p1}, Lcom/voxel/launcher3/Workspace;->access$1200(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3646
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {p1}, Lcom/voxel/launcher3/Workspace;->access$1200(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 3648
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    new-instance v0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    invoke-static {p1}, Lcom/voxel/launcher3/Workspace;->access$000(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;-><init>(Landroid/content/Context;Lcom/voxel/launcher3/FolderIcon;)V

    invoke-static {p1, v0}, Lcom/voxel/launcher3/Workspace;->access$1202(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;)Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    .line 3649
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {p1}, Lcom/voxel/launcher3/Workspace;->access$1200(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    move-result-object p1

    iget v0, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->cellX:I

    iget v1, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->cellY:I

    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->setCell(II)V

    .line 3650
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {p1}, Lcom/voxel/launcher3/Workspace;->access$1200(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->setCellLayout(Lcom/voxel/launcher3/CellLayout;)V

    .line 3651
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {p1}, Lcom/voxel/launcher3/Workspace;->access$1200(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->animateToAcceptState()V

    .line 3652
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/voxel/launcher3/CellLayout;

    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v0}, Lcom/voxel/launcher3/Workspace;->access$1200(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/CellLayout;->showFolderAccept(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;)V

    .line 3653
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->clearDragOutlines()V

    .line 3654
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/Workspace;->setDragMode(I)V

    return-void
.end method
