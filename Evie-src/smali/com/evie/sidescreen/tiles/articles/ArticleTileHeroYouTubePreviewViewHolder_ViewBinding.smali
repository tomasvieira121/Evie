.class public Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder_ViewBinding;
.super Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder_ViewBinding;
.source "ArticleTileHeroYouTubePreviewViewHolder_ViewBinding.java"


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;

.field private view7f0b010f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;Landroid/view/View;)V
    .locals 4

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;

    .line 27
    sget v0, Lcom/evie/sidescreen/R$id;->video_frame:I

    const-string v1, "field \'mVideoFrame\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mVideoFrame:Landroid/view/View;

    .line 28
    sget v0, Lcom/evie/sidescreen/R$id;->poppable_media:I

    const-string v1, "field \'mPoppableMedia\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mPoppableMedia:Landroid/view/View;

    .line 29
    sget v0, Lcom/evie/sidescreen/R$id;->image:I

    const-string v1, "field \'mImage\' and method \'onImageClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 30
    sget v1, Lcom/evie/sidescreen/R$id;->image:I

    const-string v2, "field \'mImage\'"

    const-class v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 31
    iput-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder_ViewBinding;->view7f0b010f:Landroid/view/View;

    .line 32
    new-instance v1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    sget v0, Lcom/evie/sidescreen/R$id;->video_progress:I

    const-string v1, "field \'mVideoProgress\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mVideoProgress:Landroid/view/View;

    .line 39
    sget v0, Lcom/evie/sidescreen/R$id;->video_progress_text:I

    const-string v1, "field \'mProgressText\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mProgressText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;

    .line 48
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mVideoFrame:Landroid/view/View;

    .line 49
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mPoppableMedia:Landroid/view/View;

    .line 50
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 51
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mVideoProgress:Landroid/view/View;

    .line 52
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mProgressText:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder_ViewBinding;->view7f0b010f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder_ViewBinding;->view7f0b010f:Landroid/view/View;

    .line 57
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder_ViewBinding;->unbind()V

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
