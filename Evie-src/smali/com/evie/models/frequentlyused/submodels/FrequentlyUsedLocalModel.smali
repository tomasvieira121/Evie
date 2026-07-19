.class public Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;
.super Ljava/lang/Object;
.source "FrequentlyUsedLocalModel.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# instance fields
.field private final mAppLaunchDAO:Lcom/evie/models/frequentlyused/room/AppLaunchDAO;

.field private mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field final mProbEWA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/evie/models/frequentlyused/room/AppLaunchEntry;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final mProbExpanding:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/evie/models/frequentlyused/room/AppLaunchEntry;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/util/List<",
            "Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTotalAppLaunches:I


# direct methods
.method public constructor <init>(Lcom/evie/models/frequentlyused/room/AppLaunchDAO;)V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbExpanding:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbEWA:Ljava/util/Map;

    .line 42
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 46
    iput-object p1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mAppLaunchDAO:Lcom/evie/models/frequentlyused/room/AppLaunchDAO;

    .line 48
    iget-object p1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mAppLaunchDAO:Lcom/evie/models/frequentlyused/room/AppLaunchDAO;

    .line 49
    invoke-interface {v0}, Lcom/evie/models/frequentlyused/room/AppLaunchDAO;->getMostRecentEntry()Lio/reactivex/Maybe;

    move-result-object v0

    .line 50
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$wpiGjjya7trryMk_Cogov8HTZhs;

    invoke-direct {v1, p0}, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$wpiGjjya7trryMk_Cogov8HTZhs;-><init>(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;)V

    .line 51
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$gr3_IfxV4lqmZ89hGSHnxlOOOpQ;

    invoke-direct {v1, p0}, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$gr3_IfxV4lqmZ89hGSHnxlOOOpQ;-><init>(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;)V

    .line 52
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$5HFU3TobpXAlSEuP3BovSG1VtfA;

    invoke-direct {v1, p0}, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$5HFU3TobpXAlSEuP3BovSG1VtfA;-><init>(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;)V

    sget-object v2, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$Z1InX9Lkd7h7bLA70Rf4Q7XpFgE;->INSTANCE:Lcom/evie/models/frequentlyused/submodels/-$$Lambda$Z1InX9Lkd7h7bLA70Rf4Q7XpFgE;

    new-instance v3, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$gr3_IfxV4lqmZ89hGSHnxlOOOpQ;

    invoke-direct {v3, p0}, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$gr3_IfxV4lqmZ89hGSHnxlOOOpQ;-><init>(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;)V

    .line 53
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private calculateRankings()V
    .locals 6

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbExpanding:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    iget-object v1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbExpanding:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;

    .line 100
    iget-object v3, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbExpanding:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    iget-object v5, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbEWA:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float v5, v5, v4

    add-float/2addr v3, v5

    .line 101
    new-instance v4, Landroidx/core/util/Pair;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_0
    sget-object v1, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$XestJD1GdaeZ6bfilAZ_DVZCDVQ;->INSTANCE:Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$XestJD1GdaeZ6bfilAZ_DVZCDVQ;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 111
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Pair;

    iget-object v3, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;

    .line 112
    new-instance v4, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    invoke-virtual {v3}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$addAppLaunchEntry$2(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mAppLaunchDAO:Lcom/evie/models/frequentlyused/room/AppLaunchDAO;

    invoke-interface {v0, p1}, Lcom/evie/models/frequentlyused/room/AppLaunchDAO;->insertAppLaunchEntry(Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V

    return-void
.end method

.method static synthetic lambda$calculateRankings$3(Landroidx/core/util/Pair;Landroidx/core/util/Pair;)I
    .locals 0

    .line 106
    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    iget-object p0, p0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p1, p0}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$new$0(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mAppLaunchDAO:Lcom/evie/models/frequentlyused/room/AppLaunchDAO;

    invoke-virtual {p1}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->getId()I

    move-result p1

    add-int/lit16 p1, p1, -0x7d0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/evie/models/frequentlyused/room/AppLaunchDAO;->deleteAllOlderThanLimit(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$new$1(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pruned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " rows"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->calculateProbabilitiesFromDB()V

    return-void
.end method

.method private updateEWA(Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbEWA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbEWA:Ljava/util/Map;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbEWA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const v3, 0x3f6f7bdf

    mul-float v2, v2, v3

    .line 144
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbEWA:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbEWA:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const v1, 0x3d842108

    add-float/2addr v0, v1

    .line 149
    iget-object v1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbEWA:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateExpanding(Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V
    .locals 6

    .line 121
    iget v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mTotalAppLaunches:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mTotalAppLaunches:I

    .line 122
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbExpanding:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 124
    iget v4, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mTotalAppLaunches:I

    int-to-float v5, v4

    sub-float/2addr v5, v2

    int-to-float v2, v4

    div-float/2addr v5, v2

    mul-float v3, v3, v5

    .line 125
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbExpanding:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbExpanding:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 129
    :goto_1
    iget v1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mTotalAppLaunches:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 130
    iget-object v1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbExpanding:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addAppLaunchEntry(Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    new-instance v1, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$5anxZoWE18A6QtbjhOf0L66_NY0;

    invoke-direct {v1, p0, p1}, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedLocalModel$5anxZoWE18A6QtbjhOf0L66_NY0;-><init>(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V

    .line 71
    invoke-static {v1}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v1

    .line 74
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 78
    invoke-direct {p0, p1}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->updateExpanding(Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->updateEWA(Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V

    .line 80
    invoke-direct {p0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->calculateRankings()V

    return-void
.end method

.method public calculateProbabilitiesFromDB()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mAppLaunchDAO:Lcom/evie/models/frequentlyused/room/AppLaunchDAO;

    invoke-interface {v0}, Lcom/evie/models/frequentlyused/room/AppLaunchDAO;->getAllEntries()Ljava/util/List;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbExpanding:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 86
    iget-object v1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mProbEWA:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    .line 87
    iput v1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mTotalAppLaunches:I

    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;

    .line 90
    invoke-direct {p0, v1}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->updateExpanding(Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V

    .line 91
    invoke-direct {p0, v1}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->updateEWA(Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->calculateRankings()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public getTotalAppLaunches()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mTotalAppLaunches:I

    return v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public observeFrequentlyUsedApps()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;",
            ">;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method
