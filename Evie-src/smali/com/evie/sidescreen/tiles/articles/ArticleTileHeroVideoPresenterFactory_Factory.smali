.class public final Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;
.super Ljava/lang/Object;
.source "ArticleTileHeroVideoPresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;",
        ">;"
    }
.end annotation


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
    .locals 0
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

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->playerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->popupVideoViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p7, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->autoPlayObservableProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;
    .locals 9
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
            ">;>;)",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;"
        }
    .end annotation

    .line 71
    new-instance v8, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;
    .locals 9

    .line 53
    new-instance v8, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->playerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->popupVideoViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->autoPlayObservableProvider:Ljavax/inject/Provider;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->get()Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;

    move-result-object v0

    return-object v0
.end method
