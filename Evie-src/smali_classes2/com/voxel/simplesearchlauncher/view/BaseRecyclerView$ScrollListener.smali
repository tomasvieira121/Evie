.class Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BaseRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollListener;->this$0:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollListener;->this$0:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    iput p3, p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mDy:I

    .line 98
    invoke-virtual {p1, p3}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->onUpdateScrollbar(I)V

    return-void
.end method
