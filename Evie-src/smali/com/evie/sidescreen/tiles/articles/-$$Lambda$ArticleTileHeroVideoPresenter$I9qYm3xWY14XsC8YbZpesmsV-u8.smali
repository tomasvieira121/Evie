.class public final synthetic Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$I9qYm3xWY14XsC8YbZpesmsV-u8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$I9qYm3xWY14XsC8YbZpesmsV-u8;->f$0:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$I9qYm3xWY14XsC8YbZpesmsV-u8;->f$0:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;

    check-cast p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->lambda$bindMediaWithState$8(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;)V

    return-void
.end method
