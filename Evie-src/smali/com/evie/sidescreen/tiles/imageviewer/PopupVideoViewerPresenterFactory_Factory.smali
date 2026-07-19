.class public final Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;
.super Ljava/lang/Object;
.source "PopupVideoViewerPresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;",
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

.field private final popupViewProvider:Ljavax/inject/Provider;
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
    .locals 0
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->playerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->layerStackProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->popupViewProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p6, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p7, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p8, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->popupListenerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;
    .locals 10
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
            ">;)",
            "Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;"
        }
    .end annotation

    .line 78
    new-instance v9, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;
    .locals 10

    .line 58
    new-instance v9, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->playerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->layerStackProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->popupViewProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->popupListenerProvider:Ljavax/inject/Provider;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->get()Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;

    move-result-object v0

    return-object v0
.end method
