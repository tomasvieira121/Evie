.class public Lcom/evie/search/remote/RemoteSearchManager;
.super Ljava/lang/Object;
.source "RemoteSearchManager.java"


# instance fields
.field private locationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

.field private searchService:Lcom/evie/search/remote/RemoteSearchInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 27
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 28
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 29
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-static {v0}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->createWithScheduler(Lio/reactivex/Scheduler;)Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 31
    const-class v0, Lcom/evie/search/remote/RemoteSearchInterface;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/search/remote/RemoteSearchInterface;

    iput-object p1, p0, Lcom/evie/search/remote/RemoteSearchManager;->searchService:Lcom/evie/search/remote/RemoteSearchInterface;

    .line 32
    invoke-static {}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->getInstance()Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/search/remote/RemoteSearchManager;->locationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    return-void
.end method


# virtual methods
.method public search(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/evie/search/model/RemoteSearchItem;",
            ">;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/evie/search/remote/RemoteSearchManager;->locationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 41
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 44
    :goto_0
    iget-object v2, p0, Lcom/evie/search/remote/RemoteSearchManager;->searchService:Lcom/evie/search/remote/RemoteSearchInterface;

    invoke-interface {v2, p1, v1, v0}, Lcom/evie/search/remote/RemoteSearchInterface;->search(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
