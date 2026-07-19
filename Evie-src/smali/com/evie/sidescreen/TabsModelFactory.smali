.class public final Lcom/evie/sidescreen/TabsModelFactory;
.super Ljava/lang/Object;
.source "TabsModelFactory.java"


# instance fields
.field private final analyticsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;"
        }
    .end annotation
.end field

.field private final genericTabModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mainTabModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final sideScreenConfigurationModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfigurationModel;",
            ">;"
        }
    .end annotation
.end field

.field private final tabContentModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;",
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
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfigurationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    invoke-static {p1, v0}, Lcom/evie/sidescreen/TabsModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/TabsModelFactory;->analyticsModelProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 34
    invoke-static {p2, p1}, Lcom/evie/sidescreen/TabsModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/TabsModelFactory;->sideScreenConfigurationModelProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    .line 35
    invoke-static {p3, p1}, Lcom/evie/sidescreen/TabsModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/TabsModelFactory;->mainTabModelFactoryProvider:Ljavax/inject/Provider;

    const/4 p1, 0x4

    .line 36
    invoke-static {p4, p1}, Lcom/evie/sidescreen/TabsModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/TabsModelFactory;->genericTabModelFactoryProvider:Ljavax/inject/Provider;

    const/4 p1, 0x5

    .line 37
    invoke-static {p5, p1}, Lcom/evie/sidescreen/TabsModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/TabsModelFactory;->tabContentModelFactoryProvider:Ljavax/inject/Provider;

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

    .line 52
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
.method public create(Lio/reactivex/disposables/CompositeDisposable;)Lcom/evie/sidescreen/TabsModel;
    .locals 8

    .line 41
    new-instance v7, Lcom/evie/sidescreen/TabsModel;

    iget-object v0, p0, Lcom/evie/sidescreen/TabsModelFactory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 42
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/evie/sidescreen/TabsModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const/4 v0, 0x2

    .line 43
    invoke-static {p1, v0}, Lcom/evie/sidescreen/TabsModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/reactivex/disposables/CompositeDisposable;

    iget-object p1, p0, Lcom/evie/sidescreen/TabsModelFactory;->sideScreenConfigurationModelProvider:Ljavax/inject/Provider;

    .line 44
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/evie/sidescreen/TabsModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/evie/sidescreen/SideScreenConfigurationModel;

    iget-object p1, p0, Lcom/evie/sidescreen/TabsModelFactory;->mainTabModelFactoryProvider:Ljavax/inject/Provider;

    .line 45
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/evie/sidescreen/TabsModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;

    iget-object p1, p0, Lcom/evie/sidescreen/TabsModelFactory;->genericTabModelFactoryProvider:Ljavax/inject/Provider;

    .line 46
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/evie/sidescreen/TabsModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;

    iget-object p1, p0, Lcom/evie/sidescreen/TabsModelFactory;->tabContentModelFactoryProvider:Ljavax/inject/Provider;

    .line 47
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/evie/sidescreen/TabsModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/evie/sidescreen/TabsModel;-><init>(Lcom/evie/sidescreen/analytics/AnalyticsModel;Lio/reactivex/disposables/CompositeDisposable;Lcom/evie/sidescreen/SideScreenConfigurationModel;Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;)V

    return-object v7
.end method
