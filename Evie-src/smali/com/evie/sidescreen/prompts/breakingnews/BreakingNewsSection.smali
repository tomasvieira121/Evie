.class public Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;
.super Ljava/lang/Object;
.source "BreakingNewsSection.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# instance fields
.field private ANNOUNCEMENT_CAPACITY:I

.field private mActivationModel:Lcom/evie/sidescreen/ActivationModel;

.field private mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field private mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private mDisposed:Z

.field private mHeader:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsPresenter;

.field private mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

.field private mNews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/models/breakingnews/data/BreakingNews;",
            ">;"
        }
    .end annotation
.end field

.field private mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

.field private mSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/models/PromptStoreModel;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/ActivityStarter;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->ANNOUNCEMENT_CAPACITY:I

    .line 32
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 33
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mDisposed:Z

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mNews:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    .line 48
    iput-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 49
    iput-object p3, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    .line 50
    iput-object p4, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    .line 51
    iput-object p5, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 52
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-direct {p0}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->createPresenters()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p2, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 55
    invoke-virtual {p2}, Lcom/evie/sidescreen/ActivationModel;->getActivationObservable()Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/evie/sidescreen/prompts/breakingnews/-$$Lambda$BreakingNewsSection$LNKAAODU5uVh5JQNL-8csdzMoLg;

    invoke-direct {p3, p0}, Lcom/evie/sidescreen/prompts/breakingnews/-$$Lambda$BreakingNewsSection$LNKAAODU5uVh5JQNL-8csdzMoLg;-><init>(Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;)V

    .line 56
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 66
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p2, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    .line 67
    invoke-virtual {p2}, Lcom/evie/models/PromptStoreModel;->observePromptStoreChanges()Lio/reactivex/Observable;

    move-result-object p2

    sget-object p3, Lcom/evie/sidescreen/prompts/breakingnews/-$$Lambda$BreakingNewsSection$hhd1M6SgcbFHX_Z77XOjXmSd98Y;->INSTANCE:Lcom/evie/sidescreen/prompts/breakingnews/-$$Lambda$BreakingNewsSection$hhd1M6SgcbFHX_Z77XOjXmSd98Y;

    .line 68
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/evie/sidescreen/prompts/breakingnews/-$$Lambda$BreakingNewsSection$L9XzOBvmr_U_31vib2lKSuRPOGY;

    invoke-direct {p3, p0}, Lcom/evie/sidescreen/prompts/breakingnews/-$$Lambda$BreakingNewsSection$L9XzOBvmr_U_31vib2lKSuRPOGY;-><init>(Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;)V

    .line 69
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private createPresenters()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mNews:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v1, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsPresenter;

    iget-object v2, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    iget-object v3, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    invoke-direct {v1, v2, v3}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsPresenter;-><init>(Lcom/evie/models/PromptStoreModel;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    iput-object v1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mHeader:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsPresenter;

    .line 101
    iget-object v1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mHeader:Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsPresenter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 102
    :goto_0
    iget-object v2, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mNews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 103
    new-instance v8, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;

    iget-object v3, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    iget-object v4, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    iget-object v5, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    iget-object v2, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mNews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/evie/models/breakingnews/data/BreakingNews;

    move-object v2, v8

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsTilePresenter;-><init>(Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/models/PromptStoreModel;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/models/breakingnews/data/BreakingNews;I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_1
    new-instance v1, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterPresenter;

    invoke-direct {v1}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterPresenter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 96
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    invoke-virtual {p1}, Lcom/evie/models/PromptStoreModel;->getBreakingNewsList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mNews:Ljava/util/List;

    .line 59
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-direct {p0}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->createPresenters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$1(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "prompt_breaking_news"

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$new$2(Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    invoke-virtual {p1}, Lcom/evie/models/PromptStoreModel;->getBreakingNewsList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mNews:Ljava/util/List;

    .line 71
    iget-object p1, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-direct {p0}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->createPresenters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mDisposed:Z

    return-void
.end method

.method public getPresenters()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;->mDisposed:Z

    return v0
.end method
