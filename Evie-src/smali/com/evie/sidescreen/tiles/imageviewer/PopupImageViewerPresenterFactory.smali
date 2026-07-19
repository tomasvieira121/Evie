.class public final Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;
.super Ljava/lang/Object;
.source "PopupImageViewerPresenterFactory.java"


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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->layerStackProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 38
    invoke-static {p2, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->popupViewProviderProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    .line 40
    invoke-static {p3, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    const/4 p1, 0x4

    .line 41
    invoke-static {p4, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->activityStarterProvider:Ljavax/inject/Provider;

    const/4 p1, 0x5

    .line 42
    invoke-static {p5, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->popupListenerProvider:Ljavax/inject/Provider;

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

    .line 64
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
.method public create(Ljava/lang/String;Ljava/lang/String;Lorg/schema/NewsArticle;Landroid/widget/ImageView;)Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenter;
    .locals 11

    .line 50
    new-instance v10, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenter;

    const/4 v0, 0x1

    .line 51
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/4 p1, 0x3

    .line 53
    invoke-static {p3, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/schema/NewsArticle;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->layerStackProvider:Ljavax/inject/Provider;

    .line 55
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x5

    invoke-static {p1, p3}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/evie/sidescreen/LayerStack;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->popupViewProviderProvider:Ljavax/inject/Provider;

    .line 56
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x6

    invoke-static {p1, p3}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 57
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x7

    invoke-static {p1, p3}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 58
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/16 p3, 0x8

    invoke-static {p1, p3}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/evie/sidescreen/ActivityStarter;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->popupListenerProvider:Ljavax/inject/Provider;

    .line 59
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/16 p3, 0x9

    invoke-static {p1, p3}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    move-object v0, v10

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenter;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/schema/NewsArticle;Landroid/widget/ImageView;Lcom/evie/sidescreen/LayerStack;Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;)V

    return-object v10
.end method
