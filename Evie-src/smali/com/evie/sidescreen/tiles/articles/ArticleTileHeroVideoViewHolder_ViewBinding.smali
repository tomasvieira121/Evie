.class public Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder_ViewBinding;
.super Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder_ViewBinding;
.source "ArticleTileHeroVideoViewHolder_ViewBinding.java"


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

.field private view7f0b008f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;Landroid/view/View;)V
    .locals 3

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;Landroid/view/View;)V

    .line 24
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    .line 27
    sget v0, Lcom/evie/sidescreen/R$id;->poppable_media:I

    const-string v1, "field \'mPoppableMedia\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mPoppableMedia:Landroid/view/View;

    .line 28
    sget v0, Lcom/evie/sidescreen/R$id;->image:I

    const-string v1, "field \'mImage\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 29
    sget v0, Lcom/evie/sidescreen/R$id;->video:I

    const-string v1, "field \'mVideo\'"

    const-class v2, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mVideo:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    .line 30
    sget v0, Lcom/evie/sidescreen/R$id;->play_button:I

    const-string v1, "field \'mPlayButton\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mPlayButton:Landroid/view/View;

    .line 31
    sget v0, Lcom/evie/sidescreen/R$id;->content:I

    const-string v1, "method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder_ViewBinding;->view7f0b008f:Landroid/view/View;

    .line 33
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    .line 47
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mPoppableMedia:Landroid/view/View;

    .line 48
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 49
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mVideo:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    .line 50
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mPlayButton:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder_ViewBinding;->view7f0b008f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder_ViewBinding;->view7f0b008f:Landroid/view/View;

    .line 55
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder_ViewBinding;->unbind()V

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
