.class Lcom/aol/mobile/sdk/renderer/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/renderer/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/renderer/a;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/renderer/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/a$1;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
    .locals 0

    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 0

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 5

    move-object v0, p0

    move-object v1, p4

    iget-object v2, v0, Lcom/aol/mobile/sdk/renderer/a$1;->a:Lcom/aol/mobile/sdk/renderer/a;

    iget-object v2, v2, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/aol/mobile/sdk/renderer/a$1;->a:Lcom/aol/mobile/sdk/renderer/a;

    iget-object v2, v2, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v3, v1

    invoke-interface {v2, v3, v4}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onHlsBitrateUpdated(J)V

    :cond_0
    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 5

    move-object v0, p0

    iget-object v1, v0, Lcom/aol/mobile/sdk/renderer/a$1;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v1}, Lcom/aol/mobile/sdk/renderer/a;->a(Lcom/aol/mobile/sdk/renderer/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/aol/mobile/sdk/renderer/a$1;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v1}, Lcom/aol/mobile/sdk/renderer/a;->b(Lcom/aol/mobile/sdk/renderer/a;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/aol/mobile/sdk/renderer/a$1;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v1}, Lcom/aol/mobile/sdk/renderer/a;->b(Lcom/aol/mobile/sdk/renderer/a;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/aol/mobile/sdk/renderer/a$1;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v1}, Lcom/aol/mobile/sdk/renderer/a;->c(Lcom/aol/mobile/sdk/renderer/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/aol/mobile/sdk/renderer/a$1;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v3}, Lcom/aol/mobile/sdk/renderer/a;->d(Lcom/aol/mobile/sdk/renderer/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/aol/mobile/sdk/renderer/a$1;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v4}, Lcom/aol/mobile/sdk/renderer/a;->e(Lcom/aol/mobile/sdk/renderer/a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/aol/mobile/sdk/renderer/a;->a(Lcom/aol/mobile/sdk/renderer/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLoadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
    .locals 0

    return-void
.end method

.method public onUpstreamDiscarded(IJJ)V
    .locals 0

    return-void
.end method
