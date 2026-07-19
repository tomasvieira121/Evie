.class Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/recyclerview/widget/RecyclerView;


# direct methods
.method private constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 8352
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$1;)V
    .locals 0

    .line 8352
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onAddFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const/4 v0, 0x1

    .line 8364
    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8365
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->access$4600(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8366
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$4500(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public onChangeFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    const/4 v0, 0x1

    .line 8380
    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8408
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    .line 8409
    iput-object v1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    const/16 v0, -0x41

    .line 8410
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->access$4700(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 8414
    :cond_0
    iput-object v1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 8415
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->access$4600(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8416
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$4500(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    :cond_1
    return-void
.end method

.method public onMoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const/4 v0, 0x1

    .line 8372
    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8373
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->access$4600(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8374
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$4500(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public onRemoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    const/4 v0, 0x1

    .line 8356
    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8357
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$4500(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8358
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
