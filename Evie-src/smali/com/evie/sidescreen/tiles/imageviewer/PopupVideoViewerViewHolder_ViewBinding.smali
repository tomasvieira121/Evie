.class public Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder_ViewBinding;
.super Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;
.source "PopupVideoViewerViewHolder_ViewBinding.java"


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

.field private view7f0b0200:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;Landroid/view/View;)V
    .locals 3

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/view/View;)V

    .line 24
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    .line 27
    sget v0, Lcom/evie/sidescreen/R$id;->video_container:I

    const-string v1, "field \'mVideoContainer\' and method \'onVideoClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 28
    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoContainer:Landroid/view/View;

    .line 29
    iput-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder_ViewBinding;->view7f0b0200:Landroid/view/View;

    .line 30
    new-instance v1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    sget v0, Lcom/evie/sidescreen/R$id;->video_frame:I

    const-string v1, "field \'mVideoFrame\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoFrame:Landroid/view/View;

    .line 37
    sget v0, Lcom/evie/sidescreen/R$id;->poppable_media:I

    const-string v1, "field \'mPoppableMedia\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mPoppableMedia:Landroid/view/View;

    .line 38
    sget v0, Lcom/evie/sidescreen/R$id;->image:I

    const-string v1, "field \'mImage\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    sget v0, Lcom/evie/sidescreen/R$id;->snapshot:I

    const-string v1, "field \'mSnapshot\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mSnapshot:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 40
    sget v0, Lcom/evie/sidescreen/R$id;->video:I

    const-string v1, "field \'mVideo\'"

    const-class v2, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideo:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    .line 41
    sget v0, Lcom/evie/sidescreen/R$id;->video_progress:I

    const-string v1, "field \'mVideoProgress\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoProgress:Landroid/view/View;

    .line 42
    sget v0, Lcom/evie/sidescreen/R$id;->loading:I

    const-string v1, "field \'mLoading\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mLoading:Landroid/view/View;

    .line 43
    sget v0, Lcom/evie/sidescreen/R$id;->error:I

    const-string v1, "field \'mError\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mError:Landroid/view/View;

    .line 44
    sget v0, Lcom/evie/sidescreen/R$id;->play_button:I

    const-string v1, "field \'mPlayButton\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mPlayButton:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    .line 53
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoContainer:Landroid/view/View;

    .line 54
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoFrame:Landroid/view/View;

    .line 55
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mPoppableMedia:Landroid/view/View;

    .line 56
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 57
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mSnapshot:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 58
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideo:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    .line 59
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoProgress:Landroid/view/View;

    .line 60
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mLoading:Landroid/view/View;

    .line 61
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mError:Landroid/view/View;

    .line 62
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mPlayButton:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder_ViewBinding;->view7f0b0200:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder_ViewBinding;->view7f0b0200:Landroid/view/View;

    .line 67
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;->unbind()V

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
