.class public final Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;
.super Ljava/lang/Object;
.source "SideScreenMainTabSectionModelFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final announcementProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;",
            ">;"
        }
    .end annotation
.end field

.field private final breakingNewsSectionProvider:Ljavax/inject/Provider;
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

.field private final dataWarningCardProvider:Ljavax/inject/Provider;
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

.field private final footerProvider:Ljavax/inject/Provider;
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

.field private final frequentlyUsedProvider:Ljavax/inject/Provider;
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
    .locals 0
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

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->customMainTabPresentersProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p2, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->frequentlyUsedProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p3, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->dataWarningCardProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p4, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->tilesSectionFactoryProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p5, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->footerProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p6, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->announcementProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p7, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->breakingNewsSectionProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p8, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->topHeaderEnabledProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p9, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->enableDataDebugProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p10, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->frequentlyUsedEnabledProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p11, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->personalizeHeaderPresenterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;
    .locals 13
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
            ">;)",
            "Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;"
        }
    .end annotation

    .line 99
    new-instance v12, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;
    .locals 13

    .line 73
    new-instance v12, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->customMainTabPresentersProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->frequentlyUsedProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->dataWarningCardProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->tilesSectionFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->footerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->announcementProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->breakingNewsSectionProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->topHeaderEnabledProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->enableDataDebugProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->frequentlyUsedEnabledProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->personalizeHeaderPresenterFactoryProvider:Ljavax/inject/Provider;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->get()Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;

    move-result-object v0

    return-object v0
.end method
