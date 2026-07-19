.class public final Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;
.super Ljava/lang/Object;
.source "YelpSingleBusinessPresenterFactory.java"


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

.field private final locationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->activityStarterProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 31
    invoke-static {p2, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->analyticsModelProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    .line 32
    invoke-static {p3, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->locationHandlerProvider:Ljavax/inject/Provider;

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

    .line 60
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
.method public create(Lorg/schema/evie/yelp/YelpAd;Lorg/schema/evie/yelp/LocalBusiness;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;
    .locals 9

    .line 48
    new-instance v8, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;

    const/4 v0, 0x1

    .line 49
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/schema/evie/yelp/YelpAd;

    const/4 p1, 0x2

    .line 50
    invoke-static {p2, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/schema/evie/yelp/LocalBusiness;

    const/4 p1, 0x3

    .line 51
    invoke-static {p3, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    const/4 p1, 0x4

    .line 52
    invoke-static {p4, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 53
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/evie/sidescreen/ActivityStarter;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/evie/sidescreen/analytics/AnalyticsModel;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->locationHandlerProvider:Ljavax/inject/Provider;

    .line 55
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;-><init>(Lorg/schema/evie/yelp/YelpAd;Lorg/schema/evie/yelp/LocalBusiness;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)V

    return-object v8
.end method
