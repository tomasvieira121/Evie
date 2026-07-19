.class public Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;
.super Ljava/lang/Object;
.source "SideScreenContentTabModelFactory.java"


# instance fields
.field private final abTestConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final apiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenContentAPI;",
            ">;"
        }
    .end annotation
.end field

.field private final apiVersionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final appVersionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenContentAPI;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    invoke-static {p1, v0}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->contextProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 41
    invoke-static {p2, p1}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->apiProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    .line 42
    invoke-static {p3, p1}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->apiVersionProvider:Ljavax/inject/Provider;

    const/4 p1, 0x4

    .line 43
    invoke-static {p4, p1}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->abTestConfigurationProvider:Ljavax/inject/Provider;

    const/4 p1, 0x5

    .line 44
    invoke-static {p5, p1}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    const/4 p1, 0x6

    .line 45
    invoke-static {p6, p1}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->locationHandlerProvider:Ljavax/inject/Provider;

    const/4 p1, 0x7

    .line 46
    invoke-static {p7, p1}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->appVersionProvider:Ljavax/inject/Provider;

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

    .line 63
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
.method public create(Ljava/lang/String;)Lcom/evie/models/sidescreen/SideScreenContentTabModel;
    .locals 10

    .line 50
    new-instance v9, Lcom/evie/models/sidescreen/SideScreenContentTabModel;

    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 51
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->apiProvider:Ljavax/inject/Provider;

    .line 52
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/evie/models/sidescreen/SideScreenContentAPI;

    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->apiVersionProvider:Ljavax/inject/Provider;

    .line 53
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->abTestConfigurationProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x4

    invoke-static {v0, v4}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/evie/common/AbTestConfiguration;

    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 55
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v5, 0x5

    invoke-static {v0, v5}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->locationHandlerProvider:Ljavax/inject/Provider;

    .line 56
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v6, 0x6

    invoke-static {v0, v6}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    iget-object v0, p0, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->appVersionProvider:Ljavax/inject/Provider;

    .line 57
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v7, 0x7

    invoke-static {v0, v7}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v0, 0x8

    .line 58
    invoke-static {p1, v0}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/evie/models/sidescreen/SideScreenContentTabModel;-><init>(Landroid/content/Context;Lcom/evie/models/sidescreen/SideScreenContentAPI;ILcom/evie/common/AbTestConfiguration;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/voxel/simplesearchlauncher/api/LocationHandler;ILjava/lang/String;)V

    return-object v9
.end method
