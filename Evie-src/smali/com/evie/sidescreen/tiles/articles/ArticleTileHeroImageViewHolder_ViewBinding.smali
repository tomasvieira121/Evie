.class public Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding;
.super Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder_ViewBinding;
.source "ArticleTileHeroImageViewHolder_ViewBinding.java"


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;

.field private view7f0b008f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;

    .line 26
    sget v0, Lcom/evie/sidescreen/R$id;->image:I

    const-string v1, "field \'mImage\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 27
    sget v0, Lcom/evie/sidescreen/R$id;->content:I

    const-string v1, "method \'onContentClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding;->view7f0b008f:Landroid/view/View;

    .line 29
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;

    .line 43
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 45
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding;->view7f0b008f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder_ViewBinding;->view7f0b008f:Landroid/view/View;

    .line 48
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder_ViewBinding;->unbind()V

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
