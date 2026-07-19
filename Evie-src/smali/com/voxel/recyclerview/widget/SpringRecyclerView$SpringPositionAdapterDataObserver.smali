.class Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringPositionAdapterDataObserver;
.super Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SpringRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/SpringRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringPositionAdapterDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;


# direct methods
.method private constructor <init>(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringPositionAdapterDataObserver;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/recyclerview/widget/SpringRecyclerView;Lcom/voxel/recyclerview/widget/SpringRecyclerView$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringPositionAdapterDataObserver;-><init>(Lcom/voxel/recyclerview/widget/SpringRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringPositionAdapterDataObserver;->this$0:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->resetOverscrollPositions()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringPositionAdapterDataObserver;->onChanged()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringPositionAdapterDataObserver;->onChanged()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringPositionAdapterDataObserver;->onChanged()V

    return-void
.end method
