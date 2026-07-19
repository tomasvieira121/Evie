.class public Lcom/evie/sidescreen/weather/WeatherPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "WeatherPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/weather/WeatherViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivationModel:Lcom/evie/sidescreen/ActivationModel;

.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private final mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private final mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field private final mConnectivityModel:Lcom/evie/sidescreen/ConnectivityModel;

.field private final mConvertToCelsiusSetting:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRefreshDisposable:Lio/reactivex/disposables/Disposable;

.field private final mCurrentWeatherData:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lcom/evie/common/data/Lce<",
            "Lcom/evie/models/weather/WeatherData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

.field private final mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

.field private final mWeatherModel:Lcom/evie/models/weather/WeatherModel;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/api/LocationHandler;Lcom/evie/models/weather/WeatherModel;Lio/reactivex/Observable;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/ConnectivityModel;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/ActivityStarter;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            "Lcom/evie/models/weather/WeatherModel;",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            "Lcom/evie/sidescreen/ConnectivityModel;",
            "Lcom/evie/sidescreen/ActivationModel;",
            "Lcom/evie/sidescreen/ActivityStarter;",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    .line 55
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mCurrentWeatherData:Lio/reactivex/subjects/BehaviorSubject;

    .line 71
    iput-object p1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    .line 72
    iput-object p2, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mWeatherModel:Lcom/evie/models/weather/WeatherModel;

    .line 73
    iput-object p3, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mConvertToCelsiusSetting:Lio/reactivex/Observable;

    .line 74
    iput-object p4, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    .line 75
    iput-object p5, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mConnectivityModel:Lcom/evie/sidescreen/ConnectivityModel;

    .line 76
    iput-object p6, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 77
    iput-object p7, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 78
    iput-object p8, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    .line 79
    iput-object p9, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    return-void
.end method

.method public static synthetic lambda$I66o6rKond-cNp5YdPGE5p6OGDo(Lcom/evie/sidescreen/weather/WeatherPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->handleUnanticipatedException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/evie/sidescreen/weather/WeatherPresenter;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/weather/WeatherViewHolder;

    invoke-direct {p0, p1}, Lcom/evie/sidescreen/weather/WeatherPresenter;->showDate(Lcom/evie/sidescreen/weather/WeatherViewHolder;)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/evie/sidescreen/weather/WeatherPresenter;Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/evie/common/data/Lce;

    .line 152
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 153
    invoke-virtual {v0}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/weather/WeatherViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->showLoading()V

    goto :goto_1

    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v0}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/models/weather/WeatherData;

    .line 161
    iget-object v1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v1, Lcom/evie/sidescreen/weather/WeatherViewHolder;

    invoke-virtual {v0}, Lcom/evie/models/weather/WeatherData;->getCondition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->getConditionForKey(Ljava/lang/String;)Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;

    move-result-object v2

    iget v2, v2, Lcom/evie/sidescreen/weather/WeatherPresenter$Condition;->resourceId:I

    invoke-virtual {v1, v2}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->setWeatherCondition(I)V

    .line 162
    iget-object v1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v1, Lcom/evie/sidescreen/weather/WeatherViewHolder;

    invoke-virtual {v0}, Lcom/evie/models/weather/WeatherData;->getTemperature()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->setTemperature(IZ)V

    .line 163
    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/weather/WeatherViewHolder;

    invoke-virtual {v0}, Lcom/evie/models/weather/WeatherData;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->setLocation(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/weather/WeatherViewHolder;

    sget-object v1, Lcom/evie/sidescreen/weather/WeatherViewHolder$State;->WEATHER:Lcom/evie/sidescreen/weather/WeatherViewHolder$State;

    invoke-virtual {p1, v1}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->showState(Lcom/evie/sidescreen/weather/WeatherViewHolder$State;)V

    .line 165
    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/weather/WeatherViewHolder;

    iget-object p1, p1, Lcom/evie/sidescreen/weather/WeatherViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 156
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/weather/WeatherViewHolder;

    sget-object v0, Lcom/evie/sidescreen/weather/WeatherViewHolder$State;->ERROR:Lcom/evie/sidescreen/weather/WeatherViewHolder$State;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->showState(Lcom/evie/sidescreen/weather/WeatherViewHolder$State;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$refreshWeather$2(Lio/reactivex/Observable;Lio/reactivex/Observable;Lio/reactivex/Observable;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    invoke-static {p0, p1, p2}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$refreshWeather$3(Lcom/evie/sidescreen/weather/WeatherPresenter;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    invoke-virtual {p1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    invoke-virtual {p1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mConnectivityModel:Lcom/evie/sidescreen/ConnectivityModel;

    invoke-virtual {p1}, Lcom/evie/sidescreen/ConnectivityModel;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$refreshWeather$4(Lcom/evie/sidescreen/weather/WeatherPresenter;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->observeLocation()Lio/reactivex/Observable;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$refreshWeather$5(Lcom/evie/sidescreen/weather/WeatherPresenter;Landroid/location/Location;)Lio/reactivex/ObservableSource;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mWeatherModel:Lcom/evie/models/weather/WeatherModel;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/evie/models/weather/WeatherModel;->getWeather(DD)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private refreshWeather()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mCurrentRefreshDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object v1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->cast(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object v2, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->RESUME:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {v1, v2}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->cast(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mConnectivityModel:Lcom/evie/sidescreen/ConnectivityModel;

    invoke-virtual {v2}, Lcom/evie/sidescreen/ConnectivityModel;->getObservable()Lio/reactivex/Observable;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->cast(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v2

    .line 186
    iget-object v3, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    invoke-virtual {v3}, Lcom/evie/sidescreen/ActivationModel;->getActivationObservable()Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$fLGWy8xiVFSRHXqSvmdnj-RUQOY;

    invoke-direct {v4, v0, v1, v2}, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$fLGWy8xiVFSRHXqSvmdnj-RUQOY;-><init>(Lio/reactivex/Observable;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 187
    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$axZITgd2mHi-kiz5Y2vu9RceQiQ;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$axZITgd2mHi-kiz5Y2vu9RceQiQ;-><init>(Lcom/evie/sidescreen/weather/WeatherPresenter;)V

    .line 192
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 193
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 196
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$aAanWZcODkxs5gKw4P3z0c6jaSw;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$aAanWZcODkxs5gKw4P3z0c6jaSw;-><init>(Lcom/evie/sidescreen/weather/WeatherPresenter;)V

    .line 197
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 201
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$WL0jdNjCTnjeZAo2jbICAmF1NtM;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$WL0jdNjCTnjeZAo2jbICAmF1NtM;-><init>(Lcom/evie/sidescreen/weather/WeatherPresenter;)V

    .line 202
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 203
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mCurrentWeatherData:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/evie/sidescreen/weather/-$$Lambda$NToEPWYhQEd3LPjOjpnoVtfzdtM;

    invoke-direct {v2, v1}, Lcom/evie/sidescreen/weather/-$$Lambda$NToEPWYhQEd3LPjOjpnoVtfzdtM;-><init>(Lio/reactivex/subjects/BehaviorSubject;)V

    new-instance v1, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$I66o6rKond-cNp5YdPGE5p6OGDo;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$I66o6rKond-cNp5YdPGE5p6OGDo;-><init>(Lcom/evie/sidescreen/weather/WeatherPresenter;)V

    .line 206
    invoke-virtual {v0, v2, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mCurrentRefreshDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showDate(Lcom/evie/sidescreen/weather/WeatherViewHolder;)V
    .locals 2

    .line 172
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->setDate(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/weather/WeatherPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/weather/WeatherViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/weather/WeatherViewHolder;
    .locals 1

    .line 127
    new-instance v0, Lcom/evie/sidescreen/weather/WeatherViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/weather/WeatherViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 122
    sget v0, Lcom/evie/sidescreen/weather/WeatherViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/evie/sidescreen/weather/WeatherViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/weather/WeatherPresenter;->onBindViewHolder(Lcom/evie/sidescreen/weather/WeatherViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/weather/WeatherViewHolder;)V
    .locals 3

    .line 133
    invoke-virtual {p1}, Lcom/evie/sidescreen/weather/WeatherViewHolder;->showLoading()V

    .line 135
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/weather/WeatherPresenter;->showDate(Lcom/evie/sidescreen/weather/WeatherViewHolder;)V

    .line 136
    invoke-direct {p0}, Lcom/evie/sidescreen/weather/WeatherPresenter;->refreshWeather()V

    .line 138
    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object v1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->RESUME:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 140
    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$pWGrSIIlLAl3l55gBfh1NgaqYc8;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$pWGrSIIlLAl3l55gBfh1NgaqYc8;-><init>(Lcom/evie/sidescreen/weather/WeatherPresenter;)V

    new-instance v2, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$I66o6rKond-cNp5YdPGE5p6OGDo;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$I66o6rKond-cNp5YdPGE5p6OGDo;-><init>(Lcom/evie/sidescreen/weather/WeatherPresenter;)V

    .line 141
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 138
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 146
    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mCurrentWeatherData:Lio/reactivex/subjects/BehaviorSubject;

    iget-object v1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mConvertToCelsiusSetting:Lio/reactivex/Observable;

    sget-object v2, Lcom/evie/sidescreen/weather/-$$Lambda$FEsMgw8lubj3ieCqnEPudolVVxs;->INSTANCE:Lcom/evie/sidescreen/weather/-$$Lambda$FEsMgw8lubj3ieCqnEPudolVVxs;

    .line 148
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    .line 149
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$BN0xNXhy8iok2j1aAejfUANwe8w;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$BN0xNXhy8iok2j1aAejfUANwe8w;-><init>(Lcom/evie/sidescreen/weather/WeatherPresenter;)V

    .line 150
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onClickDate(Landroid/view/View;)V
    .locals 2

    .line 114
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "item_type"

    const-string v1, "date"

    .line 115
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_type"

    const-string v1, "side_screen"

    .line 116
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {v0, v1, p1}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onClickRetryWeather()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/evie/sidescreen/weather/WeatherPresenter;->refreshWeather()V

    return-void
.end method

.method public onClickWeather(Landroid/view/View;Ljava/lang/Object;)V
    .locals 7

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "weather"

    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screen_type"

    const-string v2, "side_screen"

    .line 85
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v2, "ev_ss_tap"

    invoke-virtual {v1, v2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 88
    check-cast p2, Lcom/evie/models/weather/WeatherData;

    .line 90
    invoke-virtual {p2}, Lcom/evie/models/weather/WeatherData;->getPackageId()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p2}, Lcom/evie/models/weather/WeatherData;->getForecastUrl()Ljava/lang/String;

    move-result-object v5

    const/4 p2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 95
    iget-object v2, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    invoke-virtual {v2, v1, v0, p2}, Lcom/evie/sidescreen/ActivityStarter;->startPackageId(Landroid/view/View;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v2, "weather"

    invoke-static {p1, v0, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->generateAppLaunchProperties(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v2, "ev_app_launch"

    invoke-virtual {v0, v2, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    :cond_1
    if-nez p2, :cond_2

    if-eqz v5, :cond_2

    .line 106
    iget-object p1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    invoke-virtual {p1, v1, v5, v1, v1}, Lcom/evie/sidescreen/ActivityStarter;->startUrl(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v2, "web"

    const-string v3, "weather"

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->startScreenView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
