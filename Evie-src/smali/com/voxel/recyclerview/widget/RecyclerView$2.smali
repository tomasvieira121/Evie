.class Lcom/voxel/recyclerview/widget/RecyclerView$2;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$2;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$2;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$2;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->runPendingAnimations()V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$2;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$502(Lcom/voxel/recyclerview/widget/RecyclerView;Z)Z

    return-void
.end method
