.class public Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;
.super Ljava/lang/Object;
.source "SideScreenMainTabSectionModelFactory.java"


# instance fields
.field private final announcementProviderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;",
            ">;"
        }
    .end annotation
.end field

.field private final breakingNewsSectionProviderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;",
            ">;"
        }
    .end annotation
.end field

.field private final customMainTabPresentersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;"
        }
    .end annotation
.end field

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

.field private final frequentlyUsedEnabledProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final frequentlyUsedProviderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final personalizeHeaderPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;",
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

.field private final topHeaderEnabledProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/TilesSectionFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/footer/FooterPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 61
    invoke-static {p1, v0}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->customMainTabPresentersProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 62
    invoke-static {p2, p1}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->frequentlyUsedProviderProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    .line 63
    invoke-static {p3, p1}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->dataWarningCardProviderProvider:Ljavax/inject/Provider;

    const/4 p1, 0x4

    .line 64
    invoke-static {p4, p1}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->tilesSectionFactoryProvider:Ljavax/inject/Provider;

    const/4 p1, 0x5

    .line 65
    invoke-static {p5, p1}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->footerProviderProvider:Ljavax/inject/Provider;

    const/4 p1, 0x6

    .line 66
    invoke-static {p6, p1}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->announcementProviderProvider:Ljavax/inject/Provider;

    const/4 p1, 0x7

    .line 67
    invoke-static {p7, p1}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->breakingNewsSectionProviderProvider:Ljavax/inject/Provider;

    const/16 p1, 0x8

    .line 68
    invoke-static {p8, p1}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->topHeaderEnabledProvider:Ljavax/inject/Provider;

    const/16 p1, 0x9

    .line 69
    invoke-static {p9, p1}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->enableDataDebugProvider:Ljavax/inject/Provider;

    const/16 p1, 0xa

    .line 70
    invoke-static {p10, p1}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->frequentlyUsedEnabledProvider:Ljavax/inject/Provider;

    const/16 p1, 0xb

    .line 72
    invoke-static {p11, p1}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->personalizeHeaderPresenterFactoryProvider:Ljavax/inject/Provider;

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

    .line 95
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
.method public create(Lcom/evie/models/sidescreen/SideScreenContentModelInterface;Ljava/lang/String;)Lcom/evie/sidescreen/SideScreenMainTabSectionModel;
    .locals 16

    move-object/from16 v0, p0

    .line 77
    new-instance v15, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;

    iget-object v1, v0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->customMainTabPresentersProvider:Ljavax/inject/Provider;

    .line 78
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    iget-object v3, v0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->frequentlyUsedProviderProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->dataWarningCardProviderProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->tilesSectionFactoryProvider:Ljavax/inject/Provider;

    .line 81
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x4

    invoke-static {v1, v5}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/evie/sidescreen/tiles/TilesSectionFactory;

    iget-object v6, v0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->footerProviderProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->announcementProviderProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->breakingNewsSectionProviderProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->topHeaderEnabledProvider:Ljavax/inject/Provider;

    .line 85
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/16 v9, 0x8

    invoke-static {v1, v9}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v1, v0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->enableDataDebugProvider:Ljavax/inject/Provider;

    .line 86
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0x9

    invoke-static {v1, v10}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lio/reactivex/Observable;

    iget-object v1, v0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->frequentlyUsedEnabledProvider:Ljavax/inject/Provider;

    .line 87
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/16 v11, 0xa

    invoke-static {v1, v11}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iget-object v1, v0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->personalizeHeaderPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 88
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/16 v12, 0xb

    invoke-static {v1, v12}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;

    const/16 v1, 0xc

    move-object/from16 v13, p1

    .line 89
    invoke-static {v13, v1}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    const/16 v1, 0xd

    move-object/from16 v14, p2

    .line 90
    invoke-static {v14, v1}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;-><init>(Ljava/util/List;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/evie/sidescreen/tiles/TilesSectionFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;ZLio/reactivex/Observable;ZLcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;Lcom/evie/models/sidescreen/SideScreenContentModelInterface;Ljava/lang/String;)V

    return-object v15
.end method
