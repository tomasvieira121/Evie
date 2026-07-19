.class Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$1;
.super Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.source "RetryOkHttpNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->fetchWithRequest(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;Lokhttp3/Request;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;

.field final synthetic val$call:Lokhttp3/Call;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;Lokhttp3/Call;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$1;->this$0:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;

    iput-object p2, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$1;->val$call:Lokhttp3/Call;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCancellationRequested$0(Lokhttp3/Call;)V
    .locals 0

    .line 138
    invoke-interface {p0}, Lokhttp3/Call;->cancel()V

    return-void
.end method


# virtual methods
.method public onCancellationRequested()V
    .locals 3

    .line 135
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$1;->val$call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$1;->this$0:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;

    invoke-static {v0}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->access$000(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$1;->val$call:Lokhttp3/Call;

    new-instance v2, Lcom/voxel/launcher3/fresco/-$$Lambda$RetryOkHttpNetworkFetcher$1$7t5SjLTubmKVHe9dUFjcpfkWXkw;

    invoke-direct {v2, v1}, Lcom/voxel/launcher3/fresco/-$$Lambda$RetryOkHttpNetworkFetcher$1$7t5SjLTubmKVHe9dUFjcpfkWXkw;-><init>(Lokhttp3/Call;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
