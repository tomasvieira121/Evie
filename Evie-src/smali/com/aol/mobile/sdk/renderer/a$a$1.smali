.class Lcom/aol/mobile/sdk/renderer/a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/renderer/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/renderer/a$a;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/renderer/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v0, v0, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    iget-object v0, v0, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v0, v0, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/a;->b(Lcom/aol/mobile/sdk/renderer/a;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v0, v0, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/a;->b(Lcom/aol/mobile/sdk/renderer/a;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    iget-object v4, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v4, v4, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v4}, Lcom/aol/mobile/sdk/renderer/a;->b(Lcom/aol/mobile/sdk/renderer/a;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_1

    const/16 v4, 0x64

    :cond_1
    if-gez v4, :cond_2

    const/4 v4, 0x0

    :cond_2
    iget-object v5, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v5, v5, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    iget-object v5, v5, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    invoke-interface {v5, v4}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onVideoBufferUpdated(I)V

    iget-object v4, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v4, v4, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v4}, Lcom/aol/mobile/sdk/renderer/a;->f(Lcom/aol/mobile/sdk/renderer/a;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v4, v4, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v4}, Lcom/aol/mobile/sdk/renderer/a;->g(Lcom/aol/mobile/sdk/renderer/a;)V

    :cond_3
    iget-object v4, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v4, v4, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v4}, Lcom/aol/mobile/sdk/renderer/a;->f(Lcom/aol/mobile/sdk/renderer/a;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v4, v4, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v4}, Lcom/aol/mobile/sdk/renderer/a;->b(Lcom/aol/mobile/sdk/renderer/a;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v4, v4, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v4}, Lcom/aol/mobile/sdk/renderer/a;->a(Lcom/aol/mobile/sdk/renderer/a;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v4, v4, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v4}, Lcom/aol/mobile/sdk/renderer/a;->f(Lcom/aol/mobile/sdk/renderer/a;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-lez v6, :cond_4

    iget-object v4, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v4, v4, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v4}, Lcom/aol/mobile/sdk/renderer/a;->f(Lcom/aol/mobile/sdk/renderer/a;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v2, v2, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    iget-object v2, v2, Lcom/aol/mobile/sdk/renderer/a;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    invoke-interface {v2, v0, v1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onVideoPositionUpdated(J)V

    :cond_5
    iget-object v2, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v2, v2, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v2}, Lcom/aol/mobile/sdk/renderer/a;->f(Lcom/aol/mobile/sdk/renderer/a;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v2, v2, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v2}, Lcom/aol/mobile/sdk/renderer/a;->f(Lcom/aol/mobile/sdk/renderer/a;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_6

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v0, v0, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/a;->h(Lcom/aol/mobile/sdk/renderer/a;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v0, v0, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/a;->b(Lcom/aol/mobile/sdk/renderer/a;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v0, v0, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    iget-object v2, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v2, v2, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v2}, Lcom/aol/mobile/sdk/renderer/a;->a(Lcom/aol/mobile/sdk/renderer/a;)Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/aol/mobile/sdk/renderer/a;->onPlayerStateChanged(ZI)V

    :cond_6
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    iget-object v0, v0, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/a;->i(Lcom/aol/mobile/sdk/renderer/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a$a$1;->a:Lcom/aol/mobile/sdk/renderer/a$a;

    invoke-static {v1}, Lcom/aol/mobile/sdk/renderer/a$a;->a(Lcom/aol/mobile/sdk/renderer/a$a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
