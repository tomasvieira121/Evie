.class public final Lcom/aol/mobile/sdk/player/listener/detector/StartDetector;
.super Ljava/lang/Object;
.source "StartDetector.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/listener/detector/StartDetector$Callback;
    }
.end annotation


# instance fields
.field private intentTime:J

.field private mCallback:Lcom/aol/mobile/sdk/player/listener/detector/StartDetector$Callback;

.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/listener/detector/StartDetector$Callback;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/StartDetector;->mCallback:Lcom/aol/mobile/sdk/player/listener/detector/StartDetector$Callback;

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 10

    .line 28
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_0
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->shouldPlay:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/StartDetector;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 30
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/StartDetector;->intentTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/StartDetector;->intentTime:J

    .line 33
    :cond_1
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Ad:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean v0, v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isVideoStreamPlaying:Z

    if-nez v0, :cond_2

    return-void

    .line 35
    :cond_2
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Content:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-boolean v0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isVideoStreamPlaying:Z

    if-nez v0, :cond_3

    return-void

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/StartDetector;->mCallback:Lcom/aol/mobile/sdk/player/listener/detector/StartDetector$Callback;

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v1, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v5, v5, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-object v5, v5, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/aol/mobile/sdk/player/listener/detector/StartDetector;->intentTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    .line 37
    invoke-interface {v0, v1, v4, v5, v6}, Lcom/aol/mobile/sdk/player/listener/detector/StartDetector$Callback;->onStartDetected(ILjava/lang/String;Ljava/lang/String;F)V

    .line 39
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/StartDetector;->sessionId:Ljava/lang/String;

    .line 40
    iput-wide v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/StartDetector;->intentTime:J

    :cond_4
    return-void
.end method
