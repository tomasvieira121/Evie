.class public Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;
.super Lcom/facebook/imagepipeline/producers/BaseNetworkFetcher;
.source "RetryOkHttpNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/BaseNetworkFetcher<",
        "Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallFactory:Lokhttp3/Call$Factory;

.field private mCancellationExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseNetworkFetcher;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->mCallFactory:Lokhttp3/Call$Factory;

    .line 72
    iput-object p2, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->mCancellationExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 1

    .line 62
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;-><init>(Lokhttp3/Call$Factory;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->mCancellationExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;I)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->handleException(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;I)V

    return-void
.end method

.method private fetchWithRequest(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;Lokhttp3/Request;I)V
    .locals 4

    const-string v0, "fetchWithRequest: %d, %s"

    const/4 v1, 0x2

    .line 127
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->mCallFactory:Lokhttp3/Call$Factory;

    invoke-interface {v0, p3}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p3

    .line 131
    invoke-virtual {p1}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v0

    new-instance v1, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$1;

    invoke-direct {v1, p0, p3}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$1;-><init>(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;Lokhttp3/Call;)V

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 143
    new-instance v0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;-><init>(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;I)V

    invoke-interface {p3, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private handleException(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;I)V
    .locals 5

    const-string v0, "handleException: %d, %s"

    const/4 v1, 0x2

    .line 197
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {p2}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3, v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-interface {p2}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {p4}, Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;->onCancellation()V

    goto :goto_0

    :cond_0
    if-le p5, v1, :cond_1

    .line 203
    invoke-interface {p4, p3}, Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-interface {p2}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p2

    add-int/2addr p5, v4

    invoke-direct {p0, p1, p4, p2, p5}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->fetchWithRequest(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;Lokhttp3/Request;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic createFetchState(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Lcom/facebook/imagepipeline/producers/FetchState;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->createFetchState(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;

    move-result-object p1

    return-object p1
.end method

.method public createFetchState(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")",
            "Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;"
        }
    .end annotation

    const-string v0, "createFetchState"

    const/4 v1, 0x0

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    new-instance v0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;

    invoke-direct {v0, p1, p2}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-object v0
.end method

.method public bridge synthetic fetch(Lcom/facebook/imagepipeline/producers/FetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->fetch(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    return-void
.end method

.method public fetch(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V
    .locals 4

    const-string v0, "fetch"

    const/4 v1, 0x0

    .line 86
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;->submitTime:J

    .line 89
    invoke-virtual {p1}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 92
    :try_start_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v3, Lokhttp3/CacheControl$Builder;

    invoke-direct {v3}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 93
    invoke-virtual {v3}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 94
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 98
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->fetchWithRequest(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;Lokhttp3/Request;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "fetch"

    .line 100
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic getExtraMap(Lcom/facebook/imagepipeline/producers/FetchState;I)Ljava/util/Map;
    .locals 0

    .line 32
    check-cast p1, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->getExtraMap(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getExtraMap(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;I)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "queue_time"

    .line 115
    iget-wide v2, p1, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;->responseTime:J

    iget-wide v4, p1, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;->submitTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fetch_time"

    .line 116
    iget-wide v2, p1, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;->fetchCompleteTime:J

    iget-wide v4, p1, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;->responseTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "total_time"

    .line 117
    iget-wide v2, p1, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;->fetchCompleteTime:J

    iget-wide v4, p1, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;->submitTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "image_size"

    .line 118
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic onFetchCompletion(Lcom/facebook/imagepipeline/producers/FetchState;I)V
    .locals 0

    .line 32
    check-cast p1, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->onFetchCompletion(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;I)V

    return-void
.end method

.method public onFetchCompletion(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;I)V
    .locals 2

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;->fetchCompleteTime:J

    return-void
.end method
