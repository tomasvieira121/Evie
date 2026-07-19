.class public Lcom/evie/sidescreen/TabsModel;
.super Ljava/lang/Object;
.source "TabsModel.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation


# static fields
.field private static final MAIN_CONFIG_TAB:Lcom/evie/models/config/ConfigTab;


# instance fields
.field private final mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field private final mConfigTabsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/models/config/ConfigTab;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private mGenericTabModelFactory:Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;

.field private mMainTabModelFactory:Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;

.field private final mSideScreenConfigurationModel:Lcom/evie/sidescreen/SideScreenConfigurationModel;

.field private mTabContentInterface:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

.field private mTabContentModelFactory:Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;

.field private final mTabContentsMap:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/evie/models/sidescreen/SideScreenContentModelInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabEnabledSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabHideRefreshSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabIndexSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabIndicatorIndexSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabLabelsSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTabScrollPositions:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTabSectionInterface:Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;

.field private final mTabSectionsMap:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/evie/models/config/ConfigTab;

    const-string v1, "main"

    const-string v2, "main"

    invoke-direct {v0, v1, v2}, Lcom/evie/models/config/ConfigTab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/evie/sidescreen/TabsModel;->MAIN_CONFIG_TAB:Lcom/evie/models/config/ConfigTab;

    return-void
.end method

.method public constructor <init>(Lcom/evie/sidescreen/analytics/AnalyticsModel;Lio/reactivex/disposables/CompositeDisposable;Lcom/evie/sidescreen/SideScreenConfigurationModel;Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;)V
    .locals 2
    .param p1    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p3    # Lcom/evie/sidescreen/SideScreenConfigurationModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p4    # Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabScrollPositions:Landroidx/collection/SparseArrayCompat;

    .line 44
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentsMap:Landroidx/collection/SparseArrayCompat;

    .line 45
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionsMap:Landroidx/collection/SparseArrayCompat;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mTabIndexSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mTabLabelsSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 50
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mTabHideRefreshSubject:Lio/reactivex/subjects/PublishSubject;

    .line 51
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mTabEnabledSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 52
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mTabIndicatorIndexSubject:Lio/reactivex/subjects/PublishSubject;

    .line 66
    iput-object p1, p0, Lcom/evie/sidescreen/TabsModel;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    .line 67
    iput-object p2, p0, Lcom/evie/sidescreen/TabsModel;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 68
    iput-object p4, p0, Lcom/evie/sidescreen/TabsModel;->mMainTabModelFactory:Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;

    .line 69
    iput-object p5, p0, Lcom/evie/sidescreen/TabsModel;->mGenericTabModelFactory:Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;

    .line 70
    iput-object p3, p0, Lcom/evie/sidescreen/TabsModel;->mSideScreenConfigurationModel:Lcom/evie/sidescreen/SideScreenConfigurationModel;

    .line 71
    iput-object p6, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentModelFactory:Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;

    .line 74
    iget-object p1, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentModelFactory:Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;

    const-string p2, "main"

    invoke-virtual {p1, p2}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->create(Ljava/lang/String;)Lcom/evie/models/sidescreen/SideScreenContentTabModel;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentInterface:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    .line 77
    iget-object p1, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    iget-object p2, p0, Lcom/evie/sidescreen/TabsModel;->mSideScreenConfigurationModel:Lcom/evie/sidescreen/SideScreenConfigurationModel;

    invoke-virtual {p2}, Lcom/evie/sidescreen/SideScreenConfigurationModel;->getSideScreenConfiguration()Lcom/evie/sidescreen/SideScreenConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/evie/sidescreen/SideScreenConfiguration;->getConfigTabs()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    iget-object p1, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    sget-object p2, Lcom/evie/sidescreen/TabsModel;->MAIN_CONFIG_TAB:Lcom/evie/models/config/ConfigTab;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/TabsModel;->mMainTabModelFactory:Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;

    iget-object p2, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentInterface:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    iget-object p3, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/evie/models/config/ConfigTab;

    invoke-virtual {p3}, Lcom/evie/models/config/ConfigTab;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->create(Lcom/evie/models/sidescreen/SideScreenContentModelInterface;Ljava/lang/String;)Lcom/evie/sidescreen/SideScreenMainTabSectionModel;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionInterface:Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;

    .line 83
    iget-object p1, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionsMap:Landroidx/collection/SparseArrayCompat;

    iget-object p2, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionInterface:Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;

    invoke-virtual {p1, v0, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentsMap:Landroidx/collection/SparseArrayCompat;

    iget-object p2, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentInterface:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    invoke-virtual {p1, v0, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private handleMovingTabIndicator(Lcom/evie/models/config/ConfigTab;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 240
    invoke-virtual {p0, v0, v0, v0}, Lcom/evie/sidescreen/TabsModel;->switchSideScreenTabs(III)V

    const/4 p1, 0x0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabIndicatorIndexSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private handleNewList(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/models/config/ConfigTab;",
            ">;",
            "Ljava/util/List<",
            "Lcom/evie/models/config/ConfigTab;",
            ">;)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabScrollPositions:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentsMap:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionsMap:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object v2

    .line 219
    iget-object v3, p0, Lcom/evie/sidescreen/TabsModel;->mTabScrollPositions:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 220
    iget-object v3, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentsMap:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 221
    iget-object v3, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionsMap:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3}, Landroidx/collection/SparseArrayCompat;->clear()V

    const/4 v3, 0x0

    .line 223
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 224
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evie/models/config/ConfigTab;

    .line 225
    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 228
    iget-object v5, p0, Lcom/evie/sidescreen/TabsModel;->mTabScrollPositions:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v4}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 229
    iget-object v5, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentsMap:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v4}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 230
    iget-object v5, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionsMap:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v4}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$bindTabObservables$0(Lcom/evie/sidescreen/TabsModel;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 146
    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 147
    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    sget-object v2, Lcom/evie/sidescreen/TabsModel;->MAIN_CONFIG_TAB:Lcom/evie/models/config/ConfigTab;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/evie/sidescreen/TabsModel;->handleNewList(Ljava/util/List;Ljava/util/List;)V

    .line 155
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mTabIndexSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v1}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/models/config/ConfigTab;

    .line 156
    invoke-direct {p0, v0}, Lcom/evie/sidescreen/TabsModel;->handleMovingTabIndicator(Lcom/evie/models/config/ConfigTab;)V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/models/config/ConfigTab;

    .line 161
    invoke-virtual {v1}, Lcom/evie/models/config/ConfigTab;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/evie/sidescreen/TabsModel;->mTabLabelsSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$bindTabObservables$1(Lcom/evie/sidescreen/TabsModel;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabEnabledSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 176
    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mTabEnabledSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v1, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 180
    invoke-virtual {p0, p1, p1, p1}, Lcom/evie/sidescreen/TabsModel;->switchSideScreenTabs(III)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$bindTabObservables$2(Lcom/evie/sidescreen/TabsModel;Ljava/lang/Integer;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    iget-object p1, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionInterface:Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;

    invoke-interface {p1}, Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;->getIntervalRefreshSubject()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$bindTabObservables$3(Lcom/evie/sidescreen/TabsModel;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lcom/evie/sidescreen/TabsModel;->onIntervalRefresh()V

    return-void
.end method

.method public static synthetic lambda$bindTabObservables$4(Lcom/evie/sidescreen/TabsModel;Ljava/lang/Integer;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 196
    iget-object p1, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentInterface:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    invoke-interface {p1}, Lcom/evie/models/sidescreen/SideScreenContentModelInterface;->getObservable()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$bindTabObservables$5(Lcom/evie/sidescreen/TabsModel;Lcom/evie/common/data/Lce;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result p1

    if-nez p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/evie/sidescreen/TabsModel;->mTabHideRefreshSubject:Lio/reactivex/subjects/PublishSubject;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private onIntervalRefresh()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabScrollPositions:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 208
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentsMap:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 209
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionsMap:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    return-void
.end method


# virtual methods
.method public bindTabObservables()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mSideScreenConfigurationModel:Lcom/evie/sidescreen/SideScreenConfigurationModel;

    .line 139
    invoke-virtual {v1}, Lcom/evie/sidescreen/SideScreenConfigurationModel;->observeSideScreenConfiguration()Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/evie/sidescreen/-$$Lambda$M8z4FiSO6U7Mnlc-2sQmZf3kKZ4;->INSTANCE:Lcom/evie/sidescreen/-$$Lambda$M8z4FiSO6U7Mnlc-2sQmZf3kKZ4;

    .line 140
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v1

    .line 142
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/-$$Lambda$TabsModel$rR3SpeCzOwKrvX2JeoWtsdAcGMY;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/-$$Lambda$TabsModel$rR3SpeCzOwKrvX2JeoWtsdAcGMY;-><init>(Lcom/evie/sidescreen/TabsModel;)V

    .line 143
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 168
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mSideScreenConfigurationModel:Lcom/evie/sidescreen/SideScreenConfigurationModel;

    .line 169
    invoke-virtual {v1}, Lcom/evie/sidescreen/SideScreenConfigurationModel;->observeSideScreenConfiguration()Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/evie/sidescreen/-$$Lambda$vtSx3C7ZkSXA_Z51BNsaH-kFab8;->INSTANCE:Lcom/evie/sidescreen/-$$Lambda$vtSx3C7ZkSXA_Z51BNsaH-kFab8;

    .line 170
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v1

    .line 172
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/-$$Lambda$TabsModel$f1VVZozBAEpLPms16HeWSw0pCr0;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/-$$Lambda$TabsModel$f1VVZozBAEpLPms16HeWSw0pCr0;-><init>(Lcom/evie/sidescreen/TabsModel;)V

    .line 173
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 187
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mTabIndexSubject:Lio/reactivex/subjects/BehaviorSubject;

    new-instance v2, Lcom/evie/sidescreen/-$$Lambda$TabsModel$u4830Fqx7S0d8W3V6xoFw4wZ_cM;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/-$$Lambda$TabsModel$u4830Fqx7S0d8W3V6xoFw4wZ_cM;-><init>(Lcom/evie/sidescreen/TabsModel;)V

    .line 189
    invoke-virtual {v1, v2}, Lio/reactivex/subjects/BehaviorSubject;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/-$$Lambda$TabsModel$N_hOkLSQIspS6CvzrnYyQAXHSSQ;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/-$$Lambda$TabsModel$N_hOkLSQIspS6CvzrnYyQAXHSSQ;-><init>(Lcom/evie/sidescreen/TabsModel;)V

    .line 190
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 194
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mTabIndexSubject:Lio/reactivex/subjects/BehaviorSubject;

    new-instance v2, Lcom/evie/sidescreen/-$$Lambda$TabsModel$jPOee4TFJZXC8VeO01jIPHXZzPM;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/-$$Lambda$TabsModel$jPOee4TFJZXC8VeO01jIPHXZzPM;-><init>(Lcom/evie/sidescreen/TabsModel;)V

    .line 196
    invoke-virtual {v1, v2}, Lio/reactivex/subjects/BehaviorSubject;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 197
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/-$$Lambda$TabsModel$f1rbI5G-b3IGzqsw8tHzttK-sik;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/-$$Lambda$TabsModel$f1rbI5G-b3IGzqsw8tHzttK-sik;-><init>(Lcom/evie/sidescreen/TabsModel;)V

    .line 198
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public getCurrentModel()Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionInterface:Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;

    return-object v0
.end method

.method public getScrollPosition()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabIndexSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mTabScrollPositions:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-nez v1, :cond_0

    .line 282
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 283
    iget-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mTabScrollPositions:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public getTabEnabledSubject()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabEnabledSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method

.method public getTabHideRefreshSubject()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabHideRefreshSubject:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public getTabIndexSubject()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabIndexSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method

.method public getTabIndicatorIndexSubject()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabIndicatorIndexSubject:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public getTabLabelsSubject()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabLabelsSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method

.method public onRefresh(Ljava/lang/String;)Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentInterface:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    invoke-interface {v0, p1}, Lcom/evie/models/sidescreen/SideScreenContentModelInterface;->refreshContent(Ljava/lang/String;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public onTabClick(III)V
    .locals 3

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    .line 91
    iget-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/models/config/ConfigTab;

    invoke-virtual {v2}, Lcom/evie/models/config/ConfigTab;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_screen_info"

    .line 93
    iget-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionInterface:Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;

    invoke-interface {v2}, Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;->getScreenInfo()Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v2, "ev_ss_tap"

    invoke-virtual {v1, v2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lcom/evie/sidescreen/TabsModel;->switchSideScreenTabs(III)V

    return-void
.end method

.method public switchSideScreenTabs(III)V
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionInterface:Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;

    .line 103
    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/models/config/ConfigTab;

    invoke-virtual {v1}, Lcom/evie/models/config/ConfigTab;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentsMap:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    iput-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentInterface:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    .line 107
    iget-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentInterface:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/evie/models/sidescreen/SideScreenContentModelInterface;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentModelFactory:Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;

    iget-object v3, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/models/config/ConfigTab;

    invoke-virtual {v3}, Lcom/evie/models/config/ConfigTab;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;->create(Ljava/lang/String;)Lcom/evie/models/sidescreen/SideScreenContentTabModel;

    move-result-object v2

    iput-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentInterface:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionsMap:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;

    iput-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionInterface:Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;

    .line 113
    iget-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionsMap:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionInterface:Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;

    invoke-interface {v2}, Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;->getTabPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    if-nez p1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mMainTabModelFactory:Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;

    iget-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentInterface:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    iget-object v3, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/models/config/ConfigTab;

    invoke-virtual {v3}, Lcom/evie/models/config/ConfigTab;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;->create(Lcom/evie/models/sidescreen/SideScreenContentModelInterface;Ljava/lang/String;)Lcom/evie/sidescreen/SideScreenMainTabSectionModel;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionInterface:Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;

    goto :goto_0

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mGenericTabModelFactory:Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;

    iget-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentInterface:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    iget-object v3, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/models/config/ConfigTab;

    invoke-virtual {v3}, Lcom/evie/models/config/ConfigTab;->getLabel()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/evie/sidescreen/TabsModel;->mConfigTabsList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evie/models/config/ConfigTab;

    invoke-virtual {v4}, Lcom/evie/models/config/ConfigTab;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;->create(Lcom/evie/models/sidescreen/SideScreenContentModelInterface;Ljava/lang/String;Ljava/lang/String;)Lcom/evie/sidescreen/SideScreenGenericTabSectionModel;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionInterface:Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;

    .line 121
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionsMap:Landroidx/collection/SparseArrayCompat;

    iget-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionInterface:Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;

    invoke-virtual {v1, p1, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 122
    iget-object v1, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentsMap:Landroidx/collection/SparseArrayCompat;

    iget-object v2, p0, Lcom/evie/sidescreen/TabsModel;->mTabContentInterface:Lcom/evie/models/sidescreen/SideScreenContentModelInterface;

    invoke-virtual {v1, p1, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 125
    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    iget-object p2, p0, Lcom/evie/sidescreen/TabsModel;->mTabScrollPositions:Landroidx/collection/SparseArrayCompat;

    iget-object p3, p0, Lcom/evie/sidescreen/TabsModel;->mTabIndexSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {p3}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 128
    iget-object p2, p0, Lcom/evie/sidescreen/TabsModel;->mTabIndexSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 130
    iget-object p1, p0, Lcom/evie/sidescreen/TabsModel;->mTabSectionInterface:Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;

    if-eq p1, v0, :cond_5

    .line 131
    invoke-interface {p1}, Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;->getScreenInfo()Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/evie/sidescreen/TabsModel;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    invoke-virtual {p1}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;->getSubtype()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->startScreenView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
