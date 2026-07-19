.class Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NoItemClickRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;->access$000(Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;->access$100(Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;)Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$OnNoItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;->access$100(Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;)Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$OnNoItemClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$OnNoItemClickListener;->onNoItemClicked()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
