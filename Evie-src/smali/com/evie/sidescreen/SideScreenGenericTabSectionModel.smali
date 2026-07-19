.class public Lcom/evie/sidescreen/SideScreenGenericTabSectionModel;
.super Ljava/lang/Object;
.source "SideScreenGenericTabSectionModel.java"

# interfaces
.implements Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
    allowSubclasses = true
.end annotation


# instance fields
.field private final mDataWarningCardPresenter:Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;

.field private final mFooterPresenter:Lcom/evie/sidescreen/footer/FooterPresenter;

.field private final mTabPath:Ljava/lang/String;

.field private final mTilesSection:Lcom/evie/sidescreen/tiles/TilesSection;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/evie/sidescreen/tiles/TilesSectionFactory;Lio/reactivex/Observable;Ljavax/inject/Provider;Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenterFactory;Lcom/evie/models/sidescreen/SideScreenContentModelInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljavax/inject/Provider;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p2    # Lcom/evie/sidescreen/tiles/TilesSectionFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/Observable;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p4    # Ljavax/inject/Provider;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenterFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;",
            ">;",
            "Lcom/evie/sidescreen/tiles/TilesSectionFactory;",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/footer/FooterPresenter;",
            ">;",
            "Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenterFactory;",
            "Lcom/evie/models/sidescreen/SideScreenContentModelInterface;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModel;->mDataWarningCardPresenter:Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;

    .line 47
    new-instance p1, Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;

    invoke-direct {p1, p6}, Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;-><init>(Lcom/evie/models/sidescreen/SideScreenContentModelInterface;)V

    new-instance v0, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p8, v1, v1}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p5, p3, p7}, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenterFactory;->create(Lio/reactivex/Observable;Ljava/lang/String;)Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;

    move-result-object p3

    .line 47
    invoke-virtual {p2, p6, p1, v0, p3}, Lcom/evie/sidescreen/tiles/TilesSectionFactory;->create(Lcom/evie/models/sidescreen/SideScreenContentModelInterface;Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/mvp/ItemPresenter;)Lcom/evie/sidescreen/tiles/TilesSection;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModel;->mTilesSection:Lcom/evie/sidescreen/tiles/TilesSection;

    .line 53
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/footer/FooterPresenter;

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModel;->mFooterPresenter:Lcom/evie/sidescreen/footer/FooterPresenter;

    .line 54
    iput-object p8, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModel;->mTabPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$getSideScreenSections$0([Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 84
    instance-of v5, v4, Lcom/evie/sidescreen/mvp/ItemPresenter;

    if-eqz v5, :cond_0

    .line 85
    check-cast v4, Lcom/evie/sidescreen/mvp/ItemPresenter;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 86
    :cond_0
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_1

    .line 87
    check-cast v4, Ljava/util/Collection;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "items: %d"

    const/4 v1, 0x1

    .line 90
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

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

    .line 65
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModel;->mTilesSection:Lcom/evie/sidescreen/tiles/TilesSection;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/TilesSection;->isRefreshedAfterInterval()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getScreenInfo()Lcom/evie/sidescreen/analytics/data/ScreenInfo;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModel;->mTilesSection:Lcom/evie/sidescreen/tiles/TilesSection;

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

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v1, Lcom/evie/sidescreen/TopEmptyShortItemPresenter;

    invoke-direct {v1}, Lcom/evie/sidescreen/TopEmptyShortItemPresenter;-><init>()V

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModel;->mDataWarningCardPresenter:Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModel;->mTilesSection:Lcom/evie/sidescreen/tiles/TilesSection;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/TilesSection;->getPresenters()Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModel;->mFooterPresenter:Lcom/evie/sidescreen/footer/FooterPresenter;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object p1, Lcom/evie/sidescreen/-$$Lambda$SideScreenGenericTabSectionModel$4z57uQo_eWACdLuDHWGl6wc73Kg;->INSTANCE:Lcom/evie/sidescreen/-$$Lambda$SideScreenGenericTabSectionModel$4z57uQo_eWACdLuDHWGl6wc73Kg;

    invoke-static {v0, p1}, Lio/reactivex/Observable;->combineLatest(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getTabPath()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenGenericTabSectionModel;->mTabPath:Ljava/lang/String;

    return-object v0
.end method
