.class public abstract Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;
.super Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseViewHolder.java"


# instance fields
.field mPresenter:Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$setOnClickListener$0(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;->mPresenter:Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    invoke-interface {p1}, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;->onItemClick()V

    return-void
.end method

.method public static synthetic lambda$setOnLongClickListener$1(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;Landroid/view/View;)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;->mPresenter:Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    invoke-interface {v0, p1}, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;->onItemLongClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;->mPresenter:Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    return-void
.end method

.method public abstract clear()V
.end method

.method public setOnClickListener()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$BaseViewHolder$4hmuriVi6cJny-8HGuPYX9yU0ks;

    invoke-direct {v1, p0}, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$BaseViewHolder$4hmuriVi6cJny-8HGuPYX9yU0ks;-><init>(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnLongClickListener()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$BaseViewHolder$_WtYBA6-ivLSiAwDl3JIDlZUK3g;

    invoke-direct {v1, p0}, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$BaseViewHolder$_WtYBA6-ivLSiAwDl3JIDlZUK3g;-><init>(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public unbindPresenter()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;->mPresenter:Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0, p0}, Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;->unbind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V

    :cond_0
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;->mPresenter:Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    .line 26
    invoke-virtual {p0}, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;->clear()V

    return-void
.end method
