.class Lcom/voxel/launcher3/Launcher$9;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/voxel/launcher3/dragndrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field needsReshow:Z

.field showLockOverlay:Z

.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 2440
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$9;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2442
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$9;->needsReshow:Z

    .line 2443
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher$9;->showLockOverlay:Z

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 3

    .line 2462
    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher$9;->needsReshow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2463
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$9;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/SearchDropTargetBar;->showSearchBar(Z)V

    .line 2464
    iput-boolean v1, p0, Lcom/voxel/launcher3/Launcher$9;->needsReshow:Z

    .line 2467
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher$9;->showLockOverlay:Z

    if-eqz v0, :cond_1

    .line 2468
    new-instance v0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;-><init>()V

    .line 2469
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$9;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2, v0}, Lcom/voxel/launcher3/Launcher;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    .line 2471
    iput-boolean v1, p0, Lcom/voxel/launcher3/Launcher$9;->showLockOverlay:Z

    :cond_1
    return-void
.end method

.method public onDragStart(Lcom/voxel/launcher3/DropTarget$DragObject;Lcom/voxel/launcher3/dragndrop/DragOptions;)V
    .locals 3

    .line 2447
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$9;->this$0:Lcom/voxel/launcher3/Launcher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/voxel/launcher3/Launcher;->access$2300(Lcom/voxel/launcher3/Launcher;ZZ)V

    .line 2448
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$9;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->clearFocus()V

    .line 2449
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$9;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, v2, v1}, Lcom/voxel/launcher3/Launcher;->changeAllAppsVisibility(ZZ)V

    .line 2451
    iget-boolean p2, p2, Lcom/voxel/launcher3/dragndrop/DragOptions;->isDesktopLocked:Z

    iput-boolean p2, p0, Lcom/voxel/launcher3/Launcher$9;->showLockOverlay:Z

    .line 2453
    iget-object p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    instance-of p1, p1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    if-eqz p1, :cond_0

    .line 2455
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$9;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    invoke-virtual {p1, v2}, Lcom/voxel/launcher3/SearchDropTargetBar;->hideSearchBar(Z)V

    .line 2456
    iput-boolean v1, p0, Lcom/voxel/launcher3/Launcher$9;->needsReshow:Z

    :cond_0
    return-void
.end method
