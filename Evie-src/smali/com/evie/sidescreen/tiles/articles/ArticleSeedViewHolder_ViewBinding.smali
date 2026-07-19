.class public Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder_ViewBinding;
.super Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;
.source "ArticleSeedViewHolder_ViewBinding.java"


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;Landroid/view/View;)V
    .locals 3

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;Landroid/view/View;)V

    .line 20
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;

    .line 22
    sget v0, Lcom/evie/sidescreen/R$id;->subtitle:I

    const-string v1, "field \'mSubtitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 23
    sget v0, Lcom/evie/sidescreen/R$id;->image:I

    const-string v1, "field \'mImage\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p2, p1, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;

    .line 32
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 33
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 35
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;->unbind()V

    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
