.class public final Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;
.super Ljava/lang/Object;
.source "TilesSectionFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/TilesSectionFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final activationModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;"
        }
    .end annotation
.end field

.field private final cleanupDisposableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ">;"
        }
    .end annotation
.end field

.field private final connectivityModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ConnectivityModel;",
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

.field private final lifecycleCallbacksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final refreshTimeLimitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final tilesLoadingPresenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final unactivatedOverridePresentersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ConnectivityModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->activationModelProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->connectivityModelProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p6, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->tilesLoadingPresenterProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p7, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->refreshTimeLimitProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p8, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->unactivatedOverridePresentersProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p9, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->cleanupDisposableProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ConnectivityModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ">;)",
            "Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;"
        }
    .end annotation

    .line 84
    new-instance v10, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/TilesSectionFactory;
    .locals 11

    .line 62
    new-instance v10, Lcom/evie/sidescreen/tiles/TilesSectionFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->activationModelProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->connectivityModelProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->tilesLoadingPresenterProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->refreshTimeLimitProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->unactivatedOverridePresentersProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->cleanupDisposableProvider:Ljavax/inject/Provider;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->get()Lcom/evie/sidescreen/tiles/TilesSectionFactory;

    move-result-object v0

    return-object v0
.end method
