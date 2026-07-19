.class public final Lcom/evie/sidescreen/tiles/TilesSectionFactory;
.super Ljava/lang/Object;
.source "TilesSectionFactory.java"


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

.field private final tilesLoadingPresenterProviderProvider:Ljavax/inject/Provider;
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
    .locals 1
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

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 56
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->contextProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 57
    invoke-static {p2, p1}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->activationModelProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    .line 58
    invoke-static {p3, p1}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    const/4 p1, 0x4

    .line 59
    invoke-static {p4, p1}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->connectivityModelProvider:Ljavax/inject/Provider;

    const/4 p1, 0x5

    .line 61
    invoke-static {p5, p1}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    const/4 p1, 0x6

    .line 63
    invoke-static {p6, p1}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->tilesLoadingPresenterProviderProvider:Ljavax/inject/Provider;

    const/4 p1, 0x7

    .line 64
    invoke-static {p7, p1}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->refreshTimeLimitProvider:Ljavax/inject/Provider;

    const/16 p1, 0x8

    .line 66
    invoke-static {p8, p1}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->unactivatedOverridePresentersProvider:Ljavax/inject/Provider;

    const/16 p1, 0x9

    .line 67
    invoke-static {p9, p1}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->cleanupDisposableProvider:Ljavax/inject/Provider;

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

    .line 93
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
.method public create(Lcom/evie/models/sidescreen/SideScreenContentModelInterface;Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/mvp/ItemPresenter;)Lcom/evie/sidescreen/tiles/TilesSection;
    .locals 16

    move-object/from16 v0, p0

    .line 75
    new-instance v15, Lcom/evie/sidescreen/tiles/TilesSection;

    iget-object v1, v0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->contextProvider:Ljavax/inject/Provider;

    .line 76
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    iget-object v1, v0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->activationModelProvider:Ljavax/inject/Provider;

    .line 77
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/evie/sidescreen/ActivationModel;

    iget-object v1, v0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 78
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x3

    invoke-static {v1, v4}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    iget-object v1, v0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->connectivityModelProvider:Ljavax/inject/Provider;

    .line 79
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x4

    invoke-static {v1, v5}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/evie/sidescreen/ConnectivityModel;

    const/4 v1, 0x5

    move-object/from16 v6, p1

    .line 80
    invoke-static {v6, v1}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    iget-object v1, v0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 81
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v7, 0x6

    invoke-static {v1, v7}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    iget-object v8, v0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->tilesLoadingPresenterProviderProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->refreshTimeLimitProvider:Ljavax/inject/Provider;

    .line 83
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x8

    invoke-static {v1, v9}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lio/reactivex/Observable;

    iget-object v1, v0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->unactivatedOverridePresentersProvider:Ljavax/inject/Provider;

    .line 84
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/util/List;

    iget-object v1, v0, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->cleanupDisposableProvider:Ljavax/inject/Provider;

    .line 85
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/16 v11, 0xa

    invoke-static {v1, v11}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lio/reactivex/disposables/CompositeDisposable;

    const/16 v1, 0xb

    move-object/from16 v12, p2

    .line 86
    invoke-static {v12, v1}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;

    const/16 v1, 0xc

    move-object/from16 v13, p3

    .line 87
    invoke-static {v13, v1}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const/16 v1, 0xd

    move-object/from16 v14, p4

    .line 88
    invoke-static {v14, v1}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Lcom/evie/sidescreen/tiles/TilesSection;-><init>(Landroid/content/Context;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/ConnectivityModel;Lcom/evie/models/sidescreen/SideScreenContentModelInterface;Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;Ljavax/inject/Provider;Lio/reactivex/Observable;Ljava/util/List;Lio/reactivex/disposables/CompositeDisposable;Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/mvp/ItemPresenter;)V

    return-object v15
.end method
