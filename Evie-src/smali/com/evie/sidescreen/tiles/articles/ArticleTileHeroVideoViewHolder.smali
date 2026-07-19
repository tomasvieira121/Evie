.class public Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;
.super Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;
.source "ArticleTileHeroVideoViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder<",
        "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mImage:Lcom/facebook/drawee/view/SimpleDraweeView;
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

.field mVideo:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    sget v0, Lcom/evie/sidescreen/R$layout;->tile_article_hero_video:I

    sput v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hideImage()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public hidePlayButton()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mPlayButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideVideo()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mVideo:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;

    invoke-virtual {v0, p1, p0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->onMediaClick(Landroid/view/View;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;)V

    return-void
.end method

.method public showImage(Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public showPlayButton()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mPlayButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showVideo(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mVideo:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 72
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mVideo:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setVisibility(I)V

    return-void
.end method

.method public unbindPresenter()V
    .locals 2

    .line 90
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;->unbindPresenter()V

    .line 91
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mVideo:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method
