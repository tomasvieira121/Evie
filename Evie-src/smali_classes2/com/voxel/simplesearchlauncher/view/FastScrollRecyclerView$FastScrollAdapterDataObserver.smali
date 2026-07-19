.class Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$FastScrollAdapterDataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "FastScrollRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FastScrollAdapterDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$FastScrollAdapterDataObserver;->this$0:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$FastScrollAdapterDataObserver;-><init>(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$FastScrollAdapterDataObserver;->this$0:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->access$202(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;Z)Z

    .line 79
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$FastScrollAdapterDataObserver;->this$0:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->access$300(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$FastScrollAdapterDataObserver;->onChanged()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$FastScrollAdapterDataObserver;->onChanged()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$FastScrollAdapterDataObserver;->onChanged()V

    return-void
.end method
