.class public Lcom/evie/sidescreen/SideScreenMainTabSectionModel;
.super Ljava/lang/Object;
.source "SideScreenMainTabSectionModel.java"

# interfaces
.implements Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
    allowSubclasses = true
.end annotation


# instance fields
.field private final mAnnouncementSection:Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;

.field private final mBreakingNewsSection:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;

.field private final mCustomMainTabPresenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataWarningCardPresenter:Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;

.field private final mFooterPresenter:Lcom/evie/sidescreen/footer/FooterPresenter;

.field private final mFrequentlyUsedPresenter:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;

.field private final mTabPath:Ljava/lang/String;

.field private final mTilesSection:Lcom/evie/sidescreen/tiles/TilesSection;

.field private final mTopHeaderEnabled:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/evie/sidescreen/tiles/TilesSectionFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;ZLio/reactivex/Observable;ZLcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;Lcom/evie/models/sidescreen/SideScreenContentModelInterface;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p2    # Ljavax/inject/Provider;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p3    # Ljavax/inject/Provider;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p4    # Lcom/evie/sidescreen/tiles/TilesSectionFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Ljavax/inject/Provider;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Ljavax/inject/Provider;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p7    # Ljavax/inject/Provider;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p8    # Z
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p9    # Lio/reactivex/Observable;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p10    # Z
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p11    # Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;",
            ">;",
            "Lcom/evie/sidescreen/tiles/TilesSectionFactory;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/footer/FooterPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;",
            ">;Z",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;",
            "Lcom/evie/models/sidescreen/SideScreenContentModelInterface;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mCustomMainTabPresenters:Ljava/util/List;

    const/4 p1, 0x0

    if-eqz p10, :cond_0

    .line 61
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mFrequentlyUsedPresenter:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;

    .line 62
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;

    iput-object p2, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mDataWarningCardPresenter:Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;

    .line 63
    new-instance p2, Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;

    invoke-direct {p2, p12}, Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;-><init>(Lcom/evie/models/sidescreen/SideScreenContentModelInterface;)V

    new-instance p3, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const-string p10, "side_screen"

    invoke-direct {p3, p10, p1, p1}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p11, p9}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;->create(Lio/reactivex/Observable;)Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;

    move-result-object p1

    .line 63
    invoke-virtual {p4, p12, p2, p3, p1}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->create(Lcom/evie/models/sidescreen/SideScreenContentModelInterface;Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/mvp/ItemPresenter;)Lcom/evie/sidescreen/tiles/TilesSection;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mTilesSection:Lcom/evie/sidescreen/tiles/TilesSection;

    .line 69
    iput-boolean p8, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mTopHeaderEnabled:Z

    .line 70
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/footer/FooterPresenter;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mFooterPresenter:Lcom/evie/sidescreen/footer/FooterPresenter;

    .line 71
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mAnnouncementSection:Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;

    .line 72
    invoke-interface {p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mBreakingNewsSection:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;

    .line 73
    iput-object p13, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mTabPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$getSideScreenSections$0([Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 120
    instance-of v4, v3, Lcom/evie/sidescreen/mvp/ItemPresenter;

    if-eqz v4, :cond_0

    .line 121
    check-cast v3, Lcom/evie/sidescreen/mvp/ItemPresenter;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_0
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_1

    .line 123
    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getIntervalRefreshSubject()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mTilesSection:Lcom/evie/sidescreen/tiles/TilesSection;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/TilesSection;->isRefreshedAfterInterval()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getScreenInfo()Lcom/evie/sidescreen/analytics/data/ScreenInfo;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mTilesSection:Lcom/evie/sidescreen/tiles/TilesSection;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/TilesSection;->getScreenInfo()Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSideScreenSections(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-boolean v1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mTopHeaderEnabled:Z

    if-eqz v1, :cond_0

    .line 95
    new-instance v1, Lcom/evie/sidescreen/TopEmptyItemPresenter;

    invoke-direct {v1}, Lcom/evie/sidescreen/TopEmptyItemPresenter;-><init>()V

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mCustomMainTabPresenters:Ljava/util/List;

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mFrequentlyUsedPresenter:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;

    if-eqz v1, :cond_1

    .line 101
    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mDataWarningCardPresenter:Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_2
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mAnnouncementSection:Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;

    invoke-virtual {p1}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;->getPresenters()Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mBreakingNewsSection:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;

    invoke-virtual {p1}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->getPresenters()Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mTilesSection:Lcom/evie/sidescreen/tiles/TilesSection;

    .line 112
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/TilesSection;->getPresenters()Lio/reactivex/Observable;

    move-result-object p1

    .line 111
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mFooterPresenter:Lcom/evie/sidescreen/footer/FooterPresenter;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object p1, Lcom/evie/sidescreen/-$$Lambda$SideScreenMainTabSectionModel$adETLi6_H8T8z1k8pIxfMLrcgPE;->INSTANCE:Lcom/evie/sidescreen/-$$Lambda$SideScreenMainTabSectionModel$adETLi6_H8T8z1k8pIxfMLrcgPE;

    invoke-static {v0, p1}, Lio/reactivex/Observable;->combineLatest(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getTabPath()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenMainTabSectionModel;->mTabPath:Ljava/lang/String;

    return-object v0
.end method
