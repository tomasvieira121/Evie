.class Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$2;
.super Ljava/lang/Object;
.source "FolderFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHandleTouch:Z

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 260
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$300(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$300(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 262
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$2;->mHandleTouch:Z

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 265
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$2;->mHandleTouch:Z

    .line 267
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$2;->mHandleTouch:Z

    return p1
.end method
