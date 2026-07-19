.class public Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;
.super Lcom/facebook/imagepipeline/producers/BaseNetworkFetcher;
.source "HybridNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/BaseNetworkFetcher<",
        "Lcom/facebook/imagepipeline/producers/FetchState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mIconCache:Lcom/voxel/launcher3/IconCache;

.field private final mOkHttpClient:Lokhttp3/OkHttpClient;

.field private final mOkHttpNetworkFetcher:Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;

.field private final mQ:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetryOkHttpNetworkFetcher:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;

.field private final mUserHandleCompat:Lcom/voxel/launcher3/compat/UserHandleCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lokhttp3/OkHttpClient;)V
    .locals 11

    .line 54
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseNetworkFetcher;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Lcom/voxel/launcher3/fresco/RunnableComparator;

    invoke-direct {v1}, Lcom/voxel/launcher3/fresco/RunnableComparator;-><init>()V

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mQ:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 56
    new-instance v0, Lcom/voxel/launcher3/fresco/PriorityThreadpoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v9, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mQ:Ljava/util/concurrent/PriorityBlockingQueue;

    const-class v1, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/voxel/launcher3/fresco/PriorityThreadpoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050015

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p2}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const-wide/16 v1, 0x2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 60
    invoke-virtual {p1, v1, v2, p2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 63
    iput-object v0, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mOkHttpNetworkFetcher:Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;

    .line 64
    new-instance p1, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;

    iget-object p2, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {p1, p2}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;-><init>(Lokhttp3/OkHttpClient;)V

    iput-object p1, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mRetryOkHttpNetworkFetcher:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;

    goto :goto_0

    .line 66
    :cond_0
    iput-object p2, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 67
    new-instance p1, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;

    iget-object p2, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {p1, p2}, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;-><init>(Lokhttp3/OkHttpClient;)V

    iput-object p1, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mOkHttpNetworkFetcher:Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;

    .line 68
    iput-object v0, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mRetryOkHttpNetworkFetcher:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;

    .line 71
    :goto_0
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mIconCache:Lcom/voxel/launcher3/IconCache;

    .line 72
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mUserHandleCompat:Lcom/voxel/launcher3/compat/UserHandleCompat;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->getIconBitmapNoCache(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private fetchForType(Lcom/facebook/imagepipeline/producers/FetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mOkHttpNetworkFetcher:Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mRetryOkHttpNetworkFetcher:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;

    check-cast p1, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->fetch(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    goto :goto_0

    .line 142
    :cond_0
    check-cast p1, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$OkHttpNetworkFetchState;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;->fetch(Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$OkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    :goto_0
    return-void
.end method

.method private getActivityIconRunnable(Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/launcher3/fresco/PriorityRunnable;
    .locals 8

    .line 151
    new-instance v7, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$2;-><init>(Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;Lcom/facebook/imagepipeline/common/Priority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    return-object v7
.end method

.method private getIconBitmapNoCache(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getAppActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getActivityName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mIconCache:Lcom/voxel/launcher3/IconCache;

    monitor-enter p1

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {v1}, Lcom/voxel/launcher3/IconCache;->getIconPackFilter()Lcom/evie/common/iconpack/IconPackFilter;

    move-result-object v1

    .line 189
    invoke-direct {p0, v1, p2}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->isValid(Lcom/evie/common/iconpack/IconPackFilter;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    monitor-exit p1

    return-object v2

    .line 192
    :cond_1
    iget-object p2, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mIconCache:Lcom/voxel/launcher3/IconCache;

    iget-object v1, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mUserHandleCompat:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p2, v0, v1}, Lcom/voxel/launcher3/IconCache;->getIconNoCache(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 193
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public static getMagicResourceUri(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)Landroid/net/Uri;
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getActivityName()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getVersionCode()I

    move-result p0

    .line 209
    invoke-static {v0, v1, p0}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 0

    .line 205
    invoke-static {p0, p1, p2}, Lcom/evie/common/HybridNetworkFetcherCommon;->getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private isValid(Lcom/evie/common/iconpack/IconPackFilter;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/evie/common/iconpack/IconPackFilter;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 201
    :goto_0
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public createFetchState(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Lcom/facebook/imagepipeline/producers/FetchState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")",
            "Lcom/facebook/imagepipeline/producers/FetchState;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mOkHttpNetworkFetcher:Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mRetryOkHttpNetworkFetcher:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->createFetchState(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;

    move-result-object p1

    return-object p1

    .line 80
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher;->createFetchState(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcher$OkHttpNetworkFetchState;

    move-result-object p1

    return-object p1
.end method

.method public fetch(Lcom/facebook/imagepipeline/producers/FetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V
    .locals 8

    .line 86
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "example.com"

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "fetch"

    const/4 v1, 0x0

    .line 90
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->fetchForType(Lcom/facebook/imagepipeline/producers/FetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    return-void

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "476287f4b140f81a723002230fa368847065c97a"

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->fetchForType(Lcom/facebook/imagepipeline/producers/FetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    return-void

    :cond_1
    const-string v1, "pn"

    .line 101
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "an"

    .line 102
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "ri"

    .line 104
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    const-string v3, "ip"

    .line 106
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    if-ne v1, v2, :cond_3

    .line 111
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->getActivityIconRunnable(Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/launcher3/fresco/PriorityRunnable;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->fetchForType(Lcom/facebook/imagepipeline/producers/FetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    return-void

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$1;-><init>(Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;Ljava/util/concurrent/Future;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    .line 133
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    return-void
.end method
