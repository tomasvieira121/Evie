.class public final Lcom/aol/mobile/sdk/player/listener/detector/ContextStartedDetector;
.super Ljava/lang/Object;
.source "ContextStartedDetector.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/listener/detector/ContextStartedDetector$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/aol/mobile/sdk/player/listener/detector/ContextStartedDetector$Callback;

.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/listener/detector/ContextStartedDetector$Callback;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/ContextStartedDetector;->sessionId:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/ContextStartedDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/ContextStartedDetector$Callback;

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 6

    .line 29
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/ContextStartedDetector;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 34
    :cond_1
    iget-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isPlaying:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v4, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Content:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 35
    :goto_0
    iget-object v4, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean v4, v4, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isPlaying:Z

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v5, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Ad:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 37
    :cond_4
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/ContextStartedDetector;->sessionId:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/ContextStartedDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/ContextStartedDetector$Callback;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget p1, p1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Lcom/aol/mobile/sdk/player/listener/detector/ContextStartedDetector$Callback;->onContextStartedDetected(ILjava/lang/String;)V

    :cond_5
    return-void
.end method
