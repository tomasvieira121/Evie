.class public final Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;
.super Ljava/lang/Object;
.source "PopupVideoViewerPresenterFactory.java"


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

.field private final layerStackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/LayerStack;",
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

.field private final playerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;",
            ">;"
        }
    .end annotation
.end field

.field private final popupListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;",
            ">;"
        }
    .end annotation
.end field

.field private final popupViewProviderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/LayerStack;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 51
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->playerProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 52
    invoke-static {p2, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->layerStackProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    .line 53
    invoke-static {p3, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->popupViewProviderProvider:Ljavax/inject/Provider;

    const/4 p1, 0x4

    .line 55
    invoke-static {p4, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    const/4 p1, 0x5

    .line 56
    invoke-static {p5, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->activityStarterProvider:Ljavax/inject/Provider;

    const/4 p1, 0x6

    .line 57
    invoke-static {p6, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    const/4 p1, 0x7

    .line 58
    invoke-static {p7, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    const/16 p1, 0x8

    .line 59
    invoke-static {p8, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->popupListenerProvider:Ljavax/inject/Provider;

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

    .line 92
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
.method public create(Ljava/lang/String;Ljava/lang/String;Lorg/schema/NewsArticle;Lorg/schema/MediaObject;Landroid/view/View;JLandroid/view/TextureView;Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$VideoPopupDismissListener;)Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    .line 71
    new-instance v19, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;

    move-object/from16 v1, v19

    const/4 v2, 0x1

    move-object/from16 v4, p1

    .line 72
    invoke-static {v4, v2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x3

    move-object/from16 v10, p3

    .line 74
    invoke-static {v10, v4}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schema/NewsArticle;

    const/16 v10, 0x8

    move-object/from16 v11, p9

    .line 79
    invoke-static {v11, v10}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$VideoPopupDismissListener;

    iget-object v11, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->playerProvider:Ljavax/inject/Provider;

    .line 80
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    const/16 v12, 0x9

    invoke-static {v11, v12}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    iget-object v12, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->layerStackProvider:Ljavax/inject/Provider;

    .line 81
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    const/16 v13, 0xa

    invoke-static {v12, v13}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/evie/sidescreen/LayerStack;

    iget-object v13, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->popupViewProviderProvider:Ljavax/inject/Provider;

    .line 82
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    const/16 v14, 0xb

    invoke-static {v13, v14}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    iget-object v14, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 83
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    const/16 v15, 0xc

    invoke-static {v14, v15}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    iget-object v15, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 84
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 p2, v1

    const/16 v1, 0xd

    invoke-static {v15, v1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/evie/sidescreen/ActivityStarter;

    iget-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 85
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 p1, v2

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    iget-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    .line 86
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

    iget-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->popupListenerProvider:Ljavax/inject/Provider;

    .line 87
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    invoke-direct/range {v1 .. v18}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/schema/NewsArticle;Lorg/schema/MediaObject;Landroid/view/View;JLandroid/view/TextureView;Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$VideoPopupDismissListener;Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;Lcom/evie/sidescreen/LayerStack;Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;)V

    return-object v19
.end method
