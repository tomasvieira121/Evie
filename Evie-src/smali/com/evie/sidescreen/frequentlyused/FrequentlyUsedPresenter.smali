.class public Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "FrequentlyUsedPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

.field private final mActivationModel:Lcom/evie/sidescreen/ActivationModel;

.field private final mActivityOverrides:Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private final mAnalytics:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private final mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field private final mContext:Landroid/content/Context;

.field private final mFrequentlyUsedModel:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

.field private final mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/models/frequentlyused/FrequentlyUsedModel;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;Lcom/evie/common/AbTestConfiguration;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 64
    iput-object p3, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 65
    iput-object p4, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    .line 66
    iput-object p5, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mFrequentlyUsedModel:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    .line 67
    iput-object p6, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mAnalytics:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    .line 68
    iput-object p7, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    .line 69
    iput-object p8, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mActivityOverrides:Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

    .line 70
    iput-object p9, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    return-void
.end method

.method public static synthetic lambda$null$2(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;->get(Landroid/content/Context;Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;)Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static synthetic lambda$null$3(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    iget-object p1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 88
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 89
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    iget-object p1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mFrequentlyUsedModel:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    invoke-interface {p1}, Lcom/evie/models/frequentlyused/FrequentlyUsedModel;->refresh()V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$4(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;Ljava/util/List;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$4jyEc7g-F7Q8yB9lXRq5eeZ4qFQ;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$4jyEc7g-F7Q8yB9lXRq5eeZ4qFQ;-><init>(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;)V

    .line 96
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$v8oU-m0b8FupcHhMrJ0aCfPvbS4;->INSTANCE:Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$v8oU-m0b8FupcHhMrJ0aCfPvbS4;

    .line 100
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$onBindViewHolder$5(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->setIconTexts(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$6(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->handleUnanticipatedException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private startActivitySafely(Landroid/view/View;Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;)V
    .locals 4

    const-string v0, "ANY"

    .line 140
    iget-object v1, p2, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->className:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 149
    iget-object v1, p2, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2, v2}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;ZZ)Z

    .line 151
    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mAnalytics:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iget-object v1, p2, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->className:Ljava/lang/String;

    const-string v3, "frequently-used"

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->recordAppLaunch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 154
    :catch_0
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->startDefaultActivity(Landroid/view/View;Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;)V

    goto :goto_1

    .line 141
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->startDefaultActivity(Landroid/view/View;Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;)V

    :goto_1
    return-void
.end method

.method private startDefaultActivity(Landroid/view/View;Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    iget-object v1, p2, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/evie/sidescreen/ActivityStarter;->startPackageId(Landroid/view/View;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mAnalytics:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iget-object p2, p2, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->packageName:Ljava/lang/String;

    const-string v1, "frequently-used"

    invoke-virtual {v0, p2, p1, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->recordAppLaunch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;
    .locals 1

    .line 80
    new-instance v0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getType()I
    .locals 1

    .line 75
    sget v0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->ID:I

    return v0
.end method

.method public onBindViewHolder(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;)V
    .locals 3

    .line 85
    iget-object p1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 86
    invoke-virtual {v0}, Lcom/evie/sidescreen/ActivationModel;->getActivationObservable()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$FLuz-0ZwoTBpUD4QptgxX98xu6U;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$FLuz-0ZwoTBpUD4QptgxX98xu6U;-><init>(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;)V

    .line 87
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$6id9OlmgkfYEjb_b05RlDErF08U;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$6id9OlmgkfYEjb_b05RlDErF08U;-><init>(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;)V

    .line 90
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 92
    iget-object p1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mFrequentlyUsedModel:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    .line 93
    invoke-interface {v0}, Lcom/evie/models/frequentlyused/FrequentlyUsedModel;->getFrequentlyUsedApps()Lio/reactivex/Observable;

    move-result-object v0

    .line 94
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$HHF9d5nIxAIqdWZdSaufd4Z2-RQ;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$HHF9d5nIxAIqdWZdSaufd4Z2-RQ;-><init>(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;)V

    .line 95
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 103
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$_uq8_M3tQ6LspzBIfFOyTMZQlb8;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$_uq8_M3tQ6LspzBIfFOyTMZQlb8;-><init>(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;)V

    new-instance v2, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$wi589sW9niUz1IuKib-msPufhhY;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$wi589sW9niUz1IuKib-msPufhhY;-><init>(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;)V

    .line 104
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->onBindViewHolder(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;)V

    return-void
.end method

.method onIconTap(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 3

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "frequently_used_app"

    .line 112
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screen_type"

    const-string v2, "side_screen"

    .line 113
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_frequently_used_app"

    .line 114
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "item_position"

    .line 115
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object p3, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {p3, v1, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 118
    check-cast p2, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->startActivitySafely(Landroid/view/View;Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;)V

    return-void
.end method

.method onLinkTap()V
    .locals 4

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "all_apps"

    .line 125
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screen_type"

    const-string v2, "side_screen"

    .line 126
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v2, "ev_ss_tap"

    invoke-virtual {v1, v2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mActivityOverrides:Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;->onAllAppsClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mContext:Landroid/content/Context;

    const-string v2, "com.evie.screen.AllAppsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    return-void
.end method
