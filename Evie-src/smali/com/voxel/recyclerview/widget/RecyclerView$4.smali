.class Lcom/voxel/recyclerview/widget/RecyclerView$4;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/voxel/recyclerview/widget/ChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;->initChildrenHelper()V
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

    .line 375
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$4;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$4;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->addView(Landroid/view/View;I)V

    .line 384
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$4;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {p2, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$600(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 423
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Called attach on a child which is not detached: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 432
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$4;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$800(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public detachViewFromParent(I)V
    .locals 3

    .line 439
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$4;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 441
    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 443
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called detach on an already detached child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v1, 0x100

    .line 450
    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$4;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$900(Lcom/voxel/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$4;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$4;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 417
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$4;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public removeAllViews()V
    .locals 4

    .line 408
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$4;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 410
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$4;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$4;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$700(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$4;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->removeAllViews()V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$4;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$4;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$700(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$4;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->removeViewAt(I)V

    return-void
.end method
