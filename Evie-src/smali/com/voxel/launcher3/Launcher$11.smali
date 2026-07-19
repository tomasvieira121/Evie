.class Lcom/voxel/launcher3/Launcher$11;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 2630
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$11;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 2635
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$11;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Workspace;->isTouchActive()Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$11;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Workspace;->getPageCount()I

    move-result p1

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$11;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Workspace;->isAllowOverScroll()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$11;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    if-eqz p1, :cond_1

    .line 2637
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$11;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->sendMotionEvent(Landroid/view/MotionEvent;)V

    return p3

    .line 2639
    :cond_1
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$11;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    if-eqz p1, :cond_2

    .line 2640
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$11;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->cancelMotion()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
