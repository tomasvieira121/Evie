.class public final synthetic Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$qD-k4qr_P2jN8xKB20uu5Gv2y6o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$qD-k4qr_P2jN8xKB20uu5Gv2y6o;->f$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$qD-k4qr_P2jN8xKB20uu5Gv2y6o;->f$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;

    check-cast p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->lambda$bindMediaWithState$6(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;)V

    return-void
.end method
