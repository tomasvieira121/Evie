.class Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RecyclerViewCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->isTransitioning()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getCurrentScrollPositionY()I

    move-result p1

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->access$000(Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->runExitAnimation()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
