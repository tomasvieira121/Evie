.class Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$4;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "RecyclerViewCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->onFragmentWillClose()V
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

    .line 256
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 0

    .line 258
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->stopScroll()V

    :cond_0
    return-void
.end method
