.class public final Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;
.super Ljava/lang/Object;
.source "SearchBarPresenterFactory.java"


# instance fields
.field private final activityOverridesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;",
            ">;"
        }
    .end annotation
.end field

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

.field private final launcherInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/LauncherInfo;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/LauncherInfo;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 34
    invoke-static {p1, v0}, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->contextProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 35
    invoke-static {p2, p1}, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->activityStarterProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    .line 36
    invoke-static {p3, p1}, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->launcherInfoProvider:Ljavax/inject/Provider;

    const/4 p1, 0x4

    .line 37
    invoke-static {p4, p1}, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->activityOverridesProvider:Ljavax/inject/Provider;

    const/4 p1, 0x5

    .line 38
    invoke-static {p5, p1}, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->analyticsModelProvider:Ljavax/inject/Provider;

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

    .line 53
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
.method public create(Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel;)Lcom/evie/sidescreen/searchbar/SearchBarPresenter;
    .locals 8

    .line 42
    new-instance v7, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;

    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->contextProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 44
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/evie/sidescreen/ActivityStarter;

    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->launcherInfoProvider:Ljavax/inject/Provider;

    .line 45
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/evie/sidescreen/LauncherInfo;

    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->activityOverridesProvider:Ljavax/inject/Provider;

    .line 46
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x4

    invoke-static {v0, v4}, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 47
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v5, 0x5

    invoke-static {v0, v5}, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const/4 v0, 0x6

    .line 48
    invoke-static {p1, v0}, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;-><init>(Landroid/content/Context;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/LauncherInfo;Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel;)V

    return-object v7
.end method
