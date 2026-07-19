.class public Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "DataWarningCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivationModel:Lcom/evie/sidescreen/ActivationModel;

.field private mAlreadyDismissed:Z

.field private mAlreadyDisplayed:Z

.field private mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field private mFirstVisibleTime:J

.field private mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

.field private mNetworkStatusModel:Lcom/evie/sidescreen/network/NetworkStatusModel;

.field private mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

.field private mSideScreenVisible:Z

.field private mWasOnWiFiWhenSideScreenShown:Z


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/network/NetworkStatusModel;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mAlreadyDisplayed:Z

    .line 31
    iput-boolean v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mAlreadyDismissed:Z

    .line 32
    iput-boolean v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mSideScreenVisible:Z

    const-wide/16 v1, -0x1

    .line 35
    iput-wide v1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mFirstVisibleTime:J

    .line 36
    iput-boolean v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mWasOnWiFiWhenSideScreenShown:Z

    .line 45
    iput-object p1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    .line 46
    iput-object p2, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    .line 47
    iput-object p3, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    .line 48
    iput-object p4, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 49
    iput-object p5, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mNetworkStatusModel:Lcom/evie/sidescreen/network/NetworkStatusModel;

    .line 51
    iget-object p1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p2, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 52
    invoke-virtual {p2}, Lcom/evie/sidescreen/ActivationModel;->getActivationObservable()Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/evie/sidescreen/datanotification/-$$Lambda$DataWarningCardPresenter$efGZ1lFc-bd6ukTn0ysphIr-Wnk;

    invoke-direct {p3, p0}, Lcom/evie/sidescreen/datanotification/-$$Lambda$DataWarningCardPresenter$efGZ1lFc-bd6ukTn0ysphIr-Wnk;-><init>(Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;)V

    .line 53
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    .line 55
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/evie/sidescreen/datanotification/-$$Lambda$DataWarningCardPresenter$2AeH55hDd2OGVofbzGLEjfS0i4A;

    invoke-direct {p3, p0}, Lcom/evie/sidescreen/datanotification/-$$Lambda$DataWarningCardPresenter$2AeH55hDd2OGVofbzGLEjfS0i4A;-><init>(Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;)V

    .line 56
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 59
    iget-object p1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p2, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 60
    invoke-virtual {p2}, Lcom/evie/sidescreen/ActivationModel;->getActivationObservable()Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/evie/sidescreen/datanotification/-$$Lambda$DataWarningCardPresenter$F9DriSuvnQp7j_TBXvBtieVHmhs;

    invoke-direct {p3, p0}, Lcom/evie/sidescreen/datanotification/-$$Lambda$DataWarningCardPresenter$F9DriSuvnQp7j_TBXvBtieVHmhs;-><init>(Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;)V

    .line 61
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    .line 63
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/evie/sidescreen/datanotification/-$$Lambda$DataWarningCardPresenter$n_uj5HhvtGXq5Zkeu2sHvCRo1gY;

    invoke-direct {p3, p0}, Lcom/evie/sidescreen/datanotification/-$$Lambda$DataWarningCardPresenter$n_uj5HhvtGXq5Zkeu2sHvCRo1gY;-><init>(Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;)V

    .line 64
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private beginImpressionEvent()V
    .locals 2

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mFirstVisibleTime:J

    return-void
.end method

.method private endImpressionEvent()V
    .locals 9

    .line 138
    iget-wide v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mFirstVisibleTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mFirstVisibleTime:J

    sub-long/2addr v0, v4

    .line 144
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "item_type"

    const-string v6, "freebee_data_warning"

    .line 145
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "attribute_screen_info"

    .line 146
    new-instance v6, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const-string v7, "side_screen"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v8}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "duration"

    .line 149
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_article_impression"

    invoke-virtual {v0, v1, v4}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    iput-wide v2, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mFirstVisibleTime:J

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    iget-object p1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 54
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$new$1(Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->showSideScreen()V

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    iget-object p1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->HIDE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 62
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$new$3(Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->hideSideScreen()V

    return-void
.end method

.method private updateViewHolder()V
    .locals 2

    .line 87
    iget-boolean v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mWasOnWiFiWhenSideScreenShown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mAlreadyDismissed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->show()V

    .line 91
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->setDataWarningCardDismissed(Z)V

    .line 92
    iput-boolean v1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mAlreadyDisplayed:Z

    .line 93
    invoke-direct {p0}, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->beginImpressionEvent()V

    goto :goto_1

    .line 88
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->hide()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;
    .locals 1

    .line 76
    new-instance v0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getType()I
    .locals 1

    .line 71
    sget v0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->ID:I

    return v0
.end method

.method hideSideScreen()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mSideScreenVisible:Z

    .line 124
    iget-boolean v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mAlreadyDisplayed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mAlreadyDismissed:Z

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;->hide()V

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->endImpressionEvent()V

    return-void
.end method

.method public onBindViewHolder(Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;)V
    .locals 0

    .line 81
    iget-boolean p1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mSideScreenVisible:Z

    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->updateViewHolder()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->onBindViewHolder(Lcom/evie/sidescreen/datanotification/DataWarningCardViewHolder;)V

    return-void
.end method

.method public onManualDismiss()V
    .locals 3

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "freebee_data_warning"

    .line 103
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screen_type"

    const-string v2, "side_screen"

    .line 104
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v2, "ev_ss_tap"

    invoke-virtual {v1, v2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mAlreadyDismissed:Z

    .line 108
    invoke-direct {p0}, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->endImpressionEvent()V

    return-void
.end method

.method public onUnbindViewHolder()V
    .locals 0

    return-void
.end method

.method showSideScreen()V
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mSideScreenVisible:Z

    .line 113
    iget-boolean v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mAlreadyDisplayed:Z

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mNetworkStatusModel:Lcom/evie/sidescreen/network/NetworkStatusModel;

    invoke-virtual {v0}, Lcom/evie/sidescreen/network/NetworkStatusModel;->isOnWiFi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mWasOnWiFiWhenSideScreenShown:Z

    .line 117
    iget-object v0, p0, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-eqz v0, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;->updateViewHolder()V

    :cond_1
    return-void
.end method
