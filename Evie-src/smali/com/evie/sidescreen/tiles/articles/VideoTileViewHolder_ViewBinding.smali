.class public Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder_ViewBinding;
.super Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder_ViewBinding;
.source "VideoTileViewHolder_ViewBinding.java"


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;Landroid/content/Context;)V

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;

    .line 24
    sget v0, Lcom/evie/sidescreen/R$id;->video_frame:I

    const-string v1, "field \'mVideoFrame\'"

    const-class v2, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoFrame:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    .line 25
    sget v0, Lcom/evie/sidescreen/R$id;->loading:I

    const-string v1, "field \'mLoading\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mLoading:Landroid/view/View;

    .line 26
    sget v0, Lcom/evie/sidescreen/R$id;->error:I

    const-string v1, "field \'mError\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mError:Landroid/view/View;

    .line 27
    sget v0, Lcom/evie/sidescreen/R$id;->snapshot:I

    const-string v1, "field \'mSnapshot\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mSnapshot:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 28
    sget v0, Lcom/evie/sidescreen/R$id;->video_progress:I

    const-string v1, "field \'mVideoProgress\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoProgress:Landroid/view/View;

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 31
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 32
    sget v0, Lcom/evie/sidescreen/R$dimen;->ss_image_rounded_corner_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mCornerRadius:I

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;

    .line 41
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoFrame:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    .line 42
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mLoading:Landroid/view/View;

    .line 43
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mError:Landroid/view/View;

    .line 44
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mSnapshot:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 45
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoProgress:Landroid/view/View;

    .line 47
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder_ViewBinding;->unbind()V

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
