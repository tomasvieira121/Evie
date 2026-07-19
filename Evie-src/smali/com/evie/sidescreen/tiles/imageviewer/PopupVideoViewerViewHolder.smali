.class public Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;
.super Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;
.source "PopupVideoViewerViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder$VideoProgressViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder<",
        "Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mError:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImage:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLoading:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPlayButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPoppableMedia:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSnapshot:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mVideo:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mVideoContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mVideoFrame:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mVideoProgress:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final mVideoProgressHolder:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder$VideoProgressViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_popup_video_viewer:I

    sput v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;-><init>(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 70
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoContainer:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->setContent(Landroid/view/View;)V

    .line 71
    new-instance p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder$VideoProgressViewHolder;

    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoProgress:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder$VideoProgressViewHolder;-><init>(Landroid/view/View;Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder$1;)V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoProgressHolder:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder$VideoProgressViewHolder;

    return-void
.end method

.method public static synthetic lambda$hideVideoProgress$0(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getWidthAndHeight(Landroid/view/View;)[I
    .locals 3

    .line 200
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->getMedia()Lorg/schema/MediaObject;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Lorg/schema/MediaObject;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/schema/MediaObject;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 202
    :goto_0
    invoke-virtual {p1}, Lorg/schema/MediaObject;->getHeight()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/schema/MediaObject;->getHeight()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    const/4 v2, 0x2

    .line 203
    new-array v2, v2, [I

    aput v0, v2, v1

    const/4 v0, 0x1

    aput p1, v2, v0

    return-object v2
.end method

.method public hideError()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mError:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideImage()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public hideLoading()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mLoading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hidePlayButton()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mPlayButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideSnapshot()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mSnapshot:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public hideVideo()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideo:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setVisibility(I)V

    return-void
.end method

.method public hideVideoProgress(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoProgress:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 124
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoProgress:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerViewHolder$SuvLJsTBcLzGsw0jGvlZ0zBRQzY;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerViewHolder$SuvLJsTBcLzGsw0jGvlZ0zBRQzY;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoProgress:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onVideoClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->onContentTapped()V

    return-void
.end method

.method public setVideoFrameAspectRatio(II)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "H,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 189
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoFrame:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public showContent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showError()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mError:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showImage(Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showPlayButton()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mPlayButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showSnapshot(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mSnapshot:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mSnapshot:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public showVideo(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideo:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 86
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideo:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setVisibility(I)V

    return-void
.end method

.method public showVideoProgress(Z)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoProgress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoProgress:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 117
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoProgress:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public showVideoProgressText(J)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideoProgressHolder:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder$VideoProgressViewHolder;

    invoke-virtual {v0, p1, p2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder$VideoProgressViewHolder;->showVideoProgressText(J)V

    return-void
.end method

.method public unbindPresenter()V
    .locals 2

    .line 194
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->unbindPresenter()V

    .line 195
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideo:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method
