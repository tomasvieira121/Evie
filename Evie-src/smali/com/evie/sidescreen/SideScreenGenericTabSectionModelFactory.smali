.class public Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;
.super Ljava/lang/Object;
.source "SideScreenGenericTabSectionModelFactory.java"


# instance fields
.field private final dataWarningCardProviderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final enableDataDebugProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final footerProviderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/footer/FooterPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final plainHeaderPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final tilesSectionFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/TilesSectionFactory;",
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
            "Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/TilesSectionFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/footer/FooterPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenterFactory;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    invoke-static {p1, v0}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->dataWarningCardProviderProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 37
    invoke-static {p2, p1}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->tilesSectionFactoryProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    .line 38
    invoke-static {p3, p1}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->enableDataDebugProvider:Ljavax/inject/Provider;

    const/4 p1, 0x4

    .line 39
    invoke-static {p4, p1}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->footerProviderProvider:Ljavax/inject/Provider;

    const/4 p1, 0x5

    .line 40
    invoke-static {p5, p1}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->plainHeaderPresenterFactoryProvider:Ljavax/inject/Provider;

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

    .line 58
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
.method public create(Lcom/evie/models/sidescreen/SideScreenContentModelInterface;Ljava/lang/String;Ljava/lang/String;)Lcom/evie/sidescreen/SideScreenGenericTabSectionModel;
    .locals 10

    .line 45
    new-instance v9, Lcom/evie/sidescreen/SideScreenGenericTabSectionModel;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->dataWarningCardProviderProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->tilesSectionFactoryProvider:Ljavax/inject/Provider;

    .line 47
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/evie/sidescreen/tiles/TilesSectionFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->enableDataDebugProvider:Ljavax/inject/Provider;

    .line 48
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/reactivex/Observable;

    iget-object v4, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->footerProviderProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->plainHeaderPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 50
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v5, 0x5

    invoke-static {v0, v5}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenterFactory;

    const/4 v0, 0x6

    .line 51
    invoke-static {p1, v0}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    const/4 p1, 0x7

    .line 52
    invoke-static {p2, p1}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    const/16 p1, 0x8

    .line 53
    invoke-static {p3, p1}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModel;-><init>(Ljavax/inject/Provider;Lcom/evie/sidescreen/tiles/TilesSectionFactory;Lio/reactivex/Observable;Ljavax/inject/Provider;Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenterFactory;Lcom/evie/models/sidescreen/SideScreenContentModelInterface;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method
