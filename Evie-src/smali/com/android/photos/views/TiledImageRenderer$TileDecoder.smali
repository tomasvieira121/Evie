.class Lcom/android/photos/views/TiledImageRenderer$TileDecoder;
.super Ljava/lang/Thread;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/views/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TileDecoder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/views/TiledImageRenderer;


# direct methods
.method constructor <init>(Lcom/android/photos/views/TiledImageRenderer;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private waitForTile()Lcom/android/photos/views/TiledImageRenderer$Tile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget-object v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget-object v1, v1, Lcom/android/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v1}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->pop()Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 810
    monitor-exit v0

    return-object v1

    .line 812
    :cond_0
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget-object v1, v1, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 814
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method


# virtual methods
.method public finishAndWait()V
    .locals 2

    .line 797
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->interrupt()V

    .line 799
    :try_start_0
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "TiledImageRenderer"

    const-string v1, "Interrupted while waiting for TileDecoder thread to finish!"

    .line 801
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 820
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->waitForTile()Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    .line 822
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-virtual {v1, v0}, Lcom/android/photos/views/TiledImageRenderer;->decodeTile(Lcom/android/photos/views/TiledImageRenderer$Tile;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
