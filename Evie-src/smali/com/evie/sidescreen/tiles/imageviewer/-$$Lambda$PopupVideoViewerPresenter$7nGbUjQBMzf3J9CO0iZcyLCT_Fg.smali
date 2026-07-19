.class public final synthetic Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$7nGbUjQBMzf3J9CO0iZcyLCT_Fg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$7nGbUjQBMzf3J9CO0iZcyLCT_Fg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$7nGbUjQBMzf3J9CO0iZcyLCT_Fg;

    invoke-direct {v0}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$7nGbUjQBMzf3J9CO0iZcyLCT_Fg;-><init>()V

    sput-object v0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$7nGbUjQBMzf3J9CO0iZcyLCT_Fg;->INSTANCE:Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$7nGbUjQBMzf3J9CO0iZcyLCT_Fg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->lambda$onBindViewHolder$3(Ljava/lang/Boolean;Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;)Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;

    move-result-object p1

    return-object p1
.end method
