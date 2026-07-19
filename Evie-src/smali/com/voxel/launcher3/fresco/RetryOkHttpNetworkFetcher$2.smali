.class Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;
.super Ljava/lang/Object;
.source "RetryOkHttpNetworkFetcher.java"

# interfaces
.implements Lokhttp3/Callback;


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

.field final synthetic val$attempt:I

.field final synthetic val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

.field final synthetic val$fetchState:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;I)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->this$0:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;

    iput-object p2, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->val$fetchState:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;

    iput-object p3, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    iput p4, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->val$attempt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 6

    .line 180
    iget-object v0, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->this$0:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;

    iget-object v1, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->val$fetchState:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;

    iget-object v4, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    iget v5, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->val$attempt:I

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->access$100(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;I)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 8

    const-string v0, "onResponse: %s"

    const/4 v1, 0x1

    .line 147
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->val$fetchState:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;->responseTime:J

    .line 150
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 152
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v2, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->this$0:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;

    iget-object v3, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->val$fetchState:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;

    new-instance v5, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected HTTP code "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v5, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    iget v7, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->val$attempt:I

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->access$100(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "OkHttpNetworkFetchProducer"

    const-string v0, "Exception when closing response body"

    .line 173
    invoke-static {p2, v0, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 162
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gez p2, :cond_1

    move-wide v1, v3

    .line 166
    :cond_1
    iget-object p2, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    long-to-int v1, v1

    invoke-interface {p2, v3, v1}, Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;->onResponse(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    :try_start_3
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v4, p2

    .line 168
    :try_start_4
    iget-object v1, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->this$0:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;

    iget-object v2, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->val$fetchState:Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;

    iget-object v5, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    iget v6, p0, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$2;->val$attempt:I

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;->access$100(Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher;Lcom/voxel/launcher3/fresco/RetryOkHttpNetworkFetcher$RetryOkHttpNetworkFetchState;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    :try_start_5
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    const-string p2, "OkHttpNetworkFetchProducer"

    const-string v0, "Exception when closing response body"

    .line 173
    invoke-static {p2, v0, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 171
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    const-string v0, "OkHttpNetworkFetchProducer"

    const-string v1, "Exception when closing response body"

    .line 173
    invoke-static {v0, v1, p2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    :goto_3
    throw p1
.end method
