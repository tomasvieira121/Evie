.class Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;
.super Ljava/lang/Object;
.source "ExoVideoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExoPlayerActionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$1;)V
    .locals 0

    .line 255
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;-><init>(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)V

    return-void
.end method


# virtual methods
.method dispatchEvent(Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;)V
    .locals 1

    .line 257
    instance-of v0, p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Ready;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->onReady()V

    goto :goto_0

    .line 259
    :cond_0
    instance-of v0, p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Error;

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->onError()V

    goto :goto_0

    .line 261
    :cond_1
    instance-of v0, p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;

    if-eqz v0, :cond_2

    .line 262
    check-cast p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->onProgress(Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;)V

    goto :goto_0

    .line 263
    :cond_2
    instance-of v0, p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$SizeChanged;

    if-eqz v0, :cond_3

    .line 264
    check-cast p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$SizeChanged;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->onSizeChanged(Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$SizeChanged;)V

    goto :goto_0

    .line 265
    :cond_3
    instance-of p1, p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Finished;

    if-eqz p1, :cond_4

    .line 266
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->onVideoEnded()V

    :cond_4
    :goto_0
    return-void
.end method

.method onError()V
    .locals 0

    return-void
.end method

.method onProgress(Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;)V
    .locals 2

    .line 287
    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;->getPosition()J

    move-result-wide v0

    .line 288
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->access$300(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPosition(J)V

    return-void
.end method

.method onReady()V
    .locals 5

    .line 271
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->access$300(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    invoke-static {v1}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->access$200(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setDuration(J)V

    .line 272
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->access$000(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getStartPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 274
    iget-object v4, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    invoke-static {v4}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->access$200(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->seek(J)V

    .line 275
    iget-object v4, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    invoke-static {v4}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->access$300(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPosition(J)V

    .line 276
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->access$000(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->setStartPosition(J)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->access$300(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(Z)V

    .line 279
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->access$200(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->play()V

    return-void
.end method

.method onSizeChanged(Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$SizeChanged;)V
    .locals 0

    return-void
.end method

.method onVideoEnded()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->access$000(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->onVideoEnded()V

    return-void
.end method
