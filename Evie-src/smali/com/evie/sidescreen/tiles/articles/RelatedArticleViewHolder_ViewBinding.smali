.class public Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder_ViewBinding;
.super Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;
.source "RelatedArticleViewHolder_ViewBinding.java"


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;Landroid/view/View;)V
    .locals 3

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;Landroid/view/View;)V

    .line 19
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;

    .line 21
    sget v0, Lcom/evie/sidescreen/R$id;->subtitle:I

    const-string v1, "field \'mSubtitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 22
    sget v0, Lcom/evie/sidescreen/R$id;->play_button:I

    const-string v1, "field \'mPlayButton\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->mPlayButton:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;

    .line 31
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 32
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->mPlayButton:Landroid/view/View;

    .line 34
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;->unbind()V

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
