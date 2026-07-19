.class public final synthetic Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$OnVROc6N6Cl1Yp88-a6RgpcO3uc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$OnVROc6N6Cl1Yp88-a6RgpcO3uc;->f$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$OnVROc6N6Cl1Yp88-a6RgpcO3uc;->f$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;

    check-cast p1, Landroidx/core/util/Pair;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->lambda$onBindViewHolder$0(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;Landroidx/core/util/Pair;)Z

    move-result p1

    return p1
.end method
