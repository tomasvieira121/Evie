.class public final Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;
.super Ljava/lang/Object;
.source "YelpMultipleBusinessPresenterFactory.java"


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

.field private final presenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;",
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
            "Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;->presenterFactoryProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 29
    invoke-static {p2, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;->analyticsModelProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    .line 30
    invoke-static {p3, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;->activityStarterProvider:Ljavax/inject/Provider;

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

    .line 46
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
.method public create(Lorg/schema/evie/yelp/YelpAd;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;
    .locals 8

    .line 35
    new-instance v7, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;

    const/4 v0, 0x1

    .line 36
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/schema/evie/yelp/YelpAd;

    const/4 p1, 0x2

    .line 37
    invoke-static {p2, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    const/4 p1, 0x3

    .line 38
    invoke-static {p3, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;->presenterFactoryProvider:Ljavax/inject/Provider;

    .line 39
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 40
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/evie/sidescreen/analytics/AnalyticsModel;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 41
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/evie/sidescreen/ActivityStarter;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;-><init>(Lorg/schema/evie/yelp/YelpAd;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/ActivityStarter;)V

    return-object v7
.end method
