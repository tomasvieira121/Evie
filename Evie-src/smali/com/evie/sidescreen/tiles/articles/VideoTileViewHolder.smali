.class public Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;
.super Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;
.source "VideoTileViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/evie/sidescreen/tiles/TilePresenter;",
        ">",
        "Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder<",
        "TP;>;"
    }
.end annotation


# instance fields
.field mCornerRadius:I
    .annotation runtime Lbutterknife/BindDimen;
    .end annotation
.end field

.field mError:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLoading:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSnapshot:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mVideoFrame:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mVideoProgress:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final mVideoProgressHolder:Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;-><init>(Landroid/view/View;)V

    .line 50
    new-instance p1, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoProgress:Landroid/view/View;

    invoke-direct {p1, v0}, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoProgressHolder:Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;

    return-void
.end method

.method public static synthetic lambda$hideVideoProgress$0(Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public hideError()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mError:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideLoading()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mLoading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideSnapshot()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mSnapshot:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public hideVideoProgress(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoProgress:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 91
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoProgress:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$VideoTileViewHolder$hq5c9xjZy2r6RaEwnn-seJRJKGw;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$VideoTileViewHolder$hq5c9xjZy2r6RaEwnn-seJRJKGw;-><init>(Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoProgress:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public hideVideoProgressText()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoProgressHolder:Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;->hideVideoProgressText()V

    return-void
.end method

.method public setTopHeroMode(Z)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;->setTopHeroMode(Z)V

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoFrame:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->setBottomLeftCornerRadius(F)V

    .line 139
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoFrame:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->setBottomRightCornerRadius(F)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoFrame:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    iget v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mCornerRadius:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->setBottomLeftCornerRadius(F)V

    .line 142
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoFrame:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    iget v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mCornerRadius:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->setBottomRightCornerRadius(F)V

    :goto_0
    return-void
.end method

.method public setVideoFrameAspectRatio(II)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoFrame:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 130
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

    .line 131
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoFrame:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public showError()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mError:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showSnapshot(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mSnapshot:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mSnapshot:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public showVideoProgress(Z)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoProgress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoProgress:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 84
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoProgress:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public showVideoProgressText(J)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->mVideoProgressHolder:Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;

    invoke-virtual {v0, p1, p2}, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;->showVideoProgressText(J)V

    return-void
.end method
