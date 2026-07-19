.class public final Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector;
.super Ljava/lang/Object;
.source "BufferStartDetector.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector$Callback;

.field private intentTime:J

.field private isPrevBuffering:Z

.field private prevSessionId:Ljava/lang/String;

.field private prevViewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector$Callback;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector;->isPrevBuffering:Z

    .line 26
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector$Callback;

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 10

    .line 31
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    .line 35
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    .line 36
    iget-object v3, p0, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector;->prevSessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_1

    .line 37
    iput-wide v4, p0, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector;->intentTime:J

    .line 39
    :cond_1
    iget-wide v6, p0, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector;->intentTime:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_2

    iget-boolean v3, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->shouldPlay:Z

    if-eqz v3, :cond_2

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector;->intentTime:J

    .line 43
    :cond_2
    sget-object v3, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector$1;->$SwitchMap$com$aol$mobile$sdk$player$model$properties$Properties$ViewState:[I

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    goto :goto_0

    .line 48
    :pswitch_0
    iget-boolean v3, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isBuffering:Z

    goto :goto_0

    .line 45
    :pswitch_1
    iget-object v3, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean v3, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isBuffering:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 51
    :goto_0
    iget-object v5, p0, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector;->prevViewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne v5, v1, :cond_4

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector;->prevSessionId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 52
    :cond_4
    iput-boolean v4, p0, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector;->isPrevBuffering:Z

    :cond_5
    if-eqz v3, :cond_6

    .line 55
    iget-boolean v4, p0, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector;->isPrevBuffering:Z

    if-nez v4, :cond_6

    .line 56
    iget-object v4, p0, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector$Callback;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget p1, p1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    const/4 v5, 0x0

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector;->intentTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    .line 56
    invoke-interface {v4, p1, v5, v0, v6}, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector$Callback;->onBufferStartDetected(ILjava/lang/String;Ljava/lang/String;F)V

    .line 60
    :cond_6
    iput-boolean v3, p0, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector;->isPrevBuffering:Z

    .line 61
    iput-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector;->prevViewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    .line 62
    iput-object v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector;->prevSessionId:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
