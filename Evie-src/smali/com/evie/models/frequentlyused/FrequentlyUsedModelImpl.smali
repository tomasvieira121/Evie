.class public Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;
.super Ljava/lang/Object;
.source "FrequentlyUsedModelImpl.java"

# interfaces
.implements Lcom/evie/models/frequentlyused/FrequentlyUsedModel;


# instance fields
.field private mCachedResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultsModel:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;

.field private mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private final mFrequentlyUsedLocalModel:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

.field private final mRemotePredictionsModel:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;

.field private final mSubject:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Ljava/util/List<",
            "Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lokhttp3/OkHttpClient;Ljava/lang/String;Lretrofit2/Retrofit;Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mSubject:Lio/reactivex/subjects/Subject;

    .line 45
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 57
    invoke-virtual {p4}, Lretrofit2/Retrofit;->newBuilder()Lretrofit2/Retrofit$Builder;

    move-result-object p4

    .line 58
    invoke-virtual {p4, p2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    new-instance p4, Lcom/google/gson/Gson;

    invoke-direct {p4}, Lcom/google/gson/Gson;-><init>()V

    .line 59
    invoke-static {p4}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p4

    invoke-virtual {p2, p4}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 60
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object p4

    invoke-virtual {p2, p4}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 61
    invoke-virtual {p2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p2

    const-class p4, Lcom/evie/models/frequentlyused/FrequentlyUsedAPI;

    .line 62
    invoke-virtual {p2, p4}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/models/frequentlyused/FrequentlyUsedAPI;

    .line 63
    new-instance p4, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;

    invoke-direct {p4, p1}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mDefaultsModel:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;

    .line 64
    new-instance p1, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;

    invoke-direct {p1, p2, p3}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;-><init>(Lcom/evie/models/frequentlyused/FrequentlyUsedAPI;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mRemotePredictionsModel:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;

    .line 65
    iput-object p5, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mFrequentlyUsedLocalModel:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mCachedResults:Ljava/util/List;

    .line 68
    iget-object p1, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p2, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mRemotePredictionsModel:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;

    .line 70
    invoke-virtual {p2}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;->observeFrequentlyUsedApps()Lio/reactivex/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mFrequentlyUsedLocalModel:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    .line 71
    invoke-virtual {p3}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->observeFrequentlyUsedApps()Lio/reactivex/Observable;

    move-result-object p3

    iget-object p4, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mDefaultsModel:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;

    .line 72
    invoke-virtual {p4}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getDefaultFrequentlyUsedApps()Lio/reactivex/Observable;

    move-result-object p4

    new-instance p5, Lcom/evie/models/frequentlyused/-$$Lambda$FrequentlyUsedModelImpl$ma3SG6_L7-EqGfM3QS5fwKqM1lo;

    invoke-direct {p5, p0}, Lcom/evie/models/frequentlyused/-$$Lambda$FrequentlyUsedModelImpl$ma3SG6_L7-EqGfM3QS5fwKqM1lo;-><init>(Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;)V

    .line 69
    invoke-static {p2, p3, p4, p5}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function3;)Lio/reactivex/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mSubject:Lio/reactivex/subjects/Subject;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/evie/models/frequentlyused/-$$Lambda$PNvbEWVB-1y8Aj6vOgtqg4Sa4oI;

    invoke-direct {p4, p3}, Lcom/evie/models/frequentlyused/-$$Lambda$PNvbEWVB-1y8Aj6vOgtqg4Sa4oI;-><init>(Lio/reactivex/subjects/Subject;)V

    .line 106
    invoke-virtual {p2, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mFrequentlyUsedLocalModel:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    invoke-virtual {v0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->getTotalAppLaunches()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object p1, p2

    .line 78
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mCachedResults:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 79
    iget-object p1, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mCachedResults:Ljava/util/List;

    .line 83
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    .line 89
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_3
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 96
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 103
    :cond_5
    iput-object p3, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mCachedResults:Ljava/util/List;

    return-object p3
.end method


# virtual methods
.method public addAppLaunchEntry(Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mFrequentlyUsedLocalModel:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    invoke-virtual {v0, p1}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->addAppLaunchEntry(Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 125
    iget-object v0, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mSubject:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->onComplete()V

    return-void
.end method

.method public getFrequentlyUsedApps()Lio/reactivex/Observable;
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

    .line 110
    iget-object v0, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mSubject:Lio/reactivex/subjects/Subject;

    return-object v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mFrequentlyUsedLocalModel:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    invoke-virtual {v0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;->getTotalAppLaunches()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;->mRemotePredictionsModel:Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;

    invoke-virtual {v1}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;->refresh()Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_0
    return-void
.end method
