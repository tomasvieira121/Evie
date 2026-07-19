.class public Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;
.super Ljava/lang/Object;
.source "FrequentlyUsedRemoteModel.java"


# instance fields
.field private final mAPI:Lcom/evie/models/frequentlyused/FrequentlyUsedAPI;

.field private final mID:Ljava/lang/String;

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
.method public constructor <init>(Lcom/evie/models/frequentlyused/FrequentlyUsedAPI;Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;->mSubject:Lio/reactivex/subjects/Subject;

    .line 16
    iput-object p1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;->mAPI:Lcom/evie/models/frequentlyused/FrequentlyUsedAPI;

    iput-object p2, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;->mID:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$refresh$0(Ljava/lang/Throwable;)Lcom/evie/models/frequentlyused/data/FrequentlyUsedResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    new-instance p0, Lcom/evie/models/frequentlyused/data/FrequentlyUsedResponse;

    invoke-direct {p0}, Lcom/evie/models/frequentlyused/data/FrequentlyUsedResponse;-><init>()V

    return-object p0
.end method


# virtual methods
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

    .line 26
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;->mSubject:Lio/reactivex/subjects/Subject;

    return-object v0
.end method

.method public refresh()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;->mAPI:Lcom/evie/models/frequentlyused/FrequentlyUsedAPI;

    iget-object v1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;->mID:Ljava/lang/String;

    .line 31
    invoke-interface {v0, v1}, Lcom/evie/models/frequentlyused/FrequentlyUsedAPI;->predict(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedRemoteModel$esu7BvnFmHNyabHjWidYkgF52-M;->INSTANCE:Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedRemoteModel$esu7BvnFmHNyabHjWidYkgF52-M;

    .line 32
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FKFVlGUhZ3z3yggCiKgyO-dtC94;->INSTANCE:Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FKFVlGUhZ3z3yggCiKgyO-dtC94;

    .line 33
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedRemoteModel;->mSubject:Lio/reactivex/subjects/Subject;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$PNvbEWVB-1y8Aj6vOgtqg4Sa4oI;

    invoke-direct {v2, v1}, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$PNvbEWVB-1y8Aj6vOgtqg4Sa4oI;-><init>(Lio/reactivex/subjects/Subject;)V

    .line 34
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method
