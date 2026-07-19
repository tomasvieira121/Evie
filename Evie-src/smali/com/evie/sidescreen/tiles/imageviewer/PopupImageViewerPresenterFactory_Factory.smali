.class public final Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;
.super Ljava/lang/Object;
.source "PopupImageViewerPresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;->layerStackProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;->popupViewProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;->popupListenerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;",
            ">;)",
            "Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;"
        }
    .end annotation

    .line 57
    new-instance v6, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;
    .locals 7

    .line 43
    new-instance v6, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;->layerStackProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;->popupViewProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;->popupListenerProvider:Ljavax/inject/Provider;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;->get()Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;

    move-result-object v0

    return-object v0
.end method
