.class public Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;
.super Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;
.source "ArticleTileHeroOathViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder<",
        "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field private final mBinder:Lcom/aol/mobile/sdk/player/Binder;

.field private final mContext:Landroid/content/Context;

.field private final mCustomControls:Lcom/aol/mobile/sdk/controls/ContentControls;

.field mImage:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mOathPlayerView:Lcom/aol/mobile/sdk/player/view/PlayerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPlayButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final mVideoProgressHolder:Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget v0, Lcom/evie/sidescreen/R$layout;->tile_article_hero_oath_video:I

    sput v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-direct {p0, p2}, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    new-instance p2, Lcom/aol/mobile/sdk/player/Binder;

    invoke-direct {p2}, Lcom/aol/mobile/sdk/player/Binder;-><init>()V

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mBinder:Lcom/aol/mobile/sdk/player/Binder;

    .line 47
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mContext:Landroid/content/Context;

    .line 48
    new-instance p1, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;

    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mVideoProgress:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mVideoProgressHolder:Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;

    .line 49
    new-instance p1, Lcom/evie/sidescreen/tiles/articles/BlankOathContentControlsView;

    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/evie/sidescreen/tiles/articles/BlankOathContentControlsView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mCustomControls:Lcom/aol/mobile/sdk/controls/ContentControls;

    return-void
.end method


# virtual methods
.method public hideImage()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public hidePlayButton()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mPlayButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideVideo()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mOathPlayerView:Lcom/aol/mobile/sdk/player/view/PlayerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/view/PlayerView;->setVisibility(I)V

    return-void
.end method

.method public hideVideoProgressText()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mVideoProgressHolder:Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;->hideVideoProgressText()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->onMediaClick(Landroid/view/View;)V

    return-void
.end method

.method public showImage(Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public showPlayButton()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mPlayButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showVideo(Lcom/aol/mobile/sdk/player/Player;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mOathPlayerView:Lcom/aol/mobile/sdk/player/view/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/view/PlayerView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mOathPlayerView:Lcom/aol/mobile/sdk/player/view/PlayerView;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mCustomControls:Lcom/aol/mobile/sdk/controls/ContentControls;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/view/PlayerView;->setContentControls(Lcom/aol/mobile/sdk/controls/ContentControls;)V

    .line 56
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mBinder:Lcom/aol/mobile/sdk/player/Binder;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/Binder;->setPlayer(Lcom/aol/mobile/sdk/player/Player;)V

    .line 57
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mBinder:Lcom/aol/mobile/sdk/player/Binder;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mOathPlayerView:Lcom/aol/mobile/sdk/player/view/PlayerView;

    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/Binder;->setPlayerView(Lcom/aol/mobile/sdk/player/view/PlayerViewport;)V

    return-void
.end method

.method public showVideoProgressText(J)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->mVideoProgressHolder:Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;

    invoke-virtual {v0, p1, p2}, Lcom/evie/sidescreen/tiles/articles/VideoTileViewHolder$VideoProgressViewHolder;->showVideoProgressText(J)V

    return-void
.end method
