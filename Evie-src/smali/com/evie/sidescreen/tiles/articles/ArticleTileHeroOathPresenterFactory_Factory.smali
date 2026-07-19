.class public final Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;
.super Ljava/lang/Object;
.source "ArticleTileHeroOathPresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;",
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

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final localAutoPlaySettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final oathPlayerObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;->oathPlayerObservableProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;->localAutoPlaySettingProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;"
        }
    .end annotation

    .line 64
    new-instance v7, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;
    .locals 8

    .line 48
    new-instance v7, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;->oathPlayerObservableProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;->localAutoPlaySettingProvider:Ljavax/inject/Provider;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;->get()Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;

    move-result-object v0

    return-object v0
.end method
