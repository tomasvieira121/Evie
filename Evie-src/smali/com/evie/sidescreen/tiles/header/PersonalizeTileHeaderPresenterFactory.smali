.class public final Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;
.super Ljava/lang/Object;
.source "PersonalizeTileHeaderPresenterFactory.java"


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

.field private final sharedPreferencesModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;"
        }
    .end annotation
.end field

.field private final sideScreenConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->analyticsModelProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 32
    invoke-static {p2, p1}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->activityStarterProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    .line 33
    invoke-static {p3, p1}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->sharedPreferencesModelProvider:Ljavax/inject/Provider;

    const/4 p1, 0x4

    .line 34
    invoke-static {p4, p1}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->sideScreenConfigurationProvider:Ljavax/inject/Provider;

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

    .line 48
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
.method public create(Lio/reactivex/Observable;)Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;"
        }
    .end annotation

    .line 38
    new-instance v6, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;

    const/4 v0, 0x1

    .line 39
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lio/reactivex/Observable;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 40
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/evie/sidescreen/analytics/AnalyticsModel;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 41
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/evie/sidescreen/ActivityStarter;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->sharedPreferencesModelProvider:Ljavax/inject/Provider;

    .line 42
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->sideScreenConfigurationProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/evie/sidescreen/SideScreenConfiguration;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;-><init>(Lio/reactivex/Observable;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;Lcom/evie/sidescreen/SideScreenConfiguration;)V

    return-object v6
.end method
