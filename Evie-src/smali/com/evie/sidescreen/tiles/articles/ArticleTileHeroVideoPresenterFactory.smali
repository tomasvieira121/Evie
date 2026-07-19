.class public final Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;
.super Ljava/lang/Object;
.source "ArticleTileHeroVideoPresenterFactory.java"


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;"
        }
    .end annotation
.end field

.field private final autoPlayObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lifecycleCallbacksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final playerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;",
            ">;"
        }
    .end annotation
.end field

.field private final popupVideoViewerPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final videoFocusHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 46
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->activityStarterProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 47
    invoke-static {p2, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->playerProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    .line 48
    invoke-static {p3, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    const/4 p1, 0x4

    .line 49
    invoke-static {p4, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->analyticsModelProvider:Ljavax/inject/Provider;

    const/4 p1, 0x5

    .line 50
    invoke-static {p5, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    const/4 p1, 0x6

    .line 52
    invoke-static {p6, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->popupVideoViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    const/4 p1, 0x7

    .line 53
    invoke-static {p7, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->autoPlayObservableProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 73
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@AutoFactory method argument is null but is not marked @Nullable. Argument index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;
    .locals 12

    .line 58
    new-instance v11, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;

    const/4 v0, 0x1

    .line 59
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    const/4 p1, 0x2

    .line 60
    invoke-static {p2, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/schema/NewsArticle;

    const/4 p1, 0x3

    .line 61
    invoke-static {p3, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 62
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/evie/sidescreen/ActivityStarter;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->playerProvider:Ljavax/inject/Provider;

    .line 63
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    .line 64
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 65
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/evie/sidescreen/analytics/AnalyticsModel;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 66
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->popupVideoViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 67
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x9

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->autoPlayObservableProvider:Ljavax/inject/Provider;

    .line 68
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Lio/reactivex/Observable;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;Lio/reactivex/Observable;)V

    return-object v11
.end method
