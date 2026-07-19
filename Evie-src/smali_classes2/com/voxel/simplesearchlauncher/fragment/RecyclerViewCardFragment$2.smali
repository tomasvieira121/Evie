.class Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$2;
.super Lcom/voxel/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->onCreateChildContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 98
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lcom/voxel/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 102
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    if-ne p1, p2, :cond_0

    .line 103
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->invalidateBackgroundWashAlpha()V

    .line 104
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mBackground:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getCurrentScrollPositionY()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->setTranslationY(F)V

    :cond_0
    return-void
.end method
