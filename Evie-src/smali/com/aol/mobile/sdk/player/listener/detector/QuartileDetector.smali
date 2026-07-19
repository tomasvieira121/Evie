.class public final Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector;
.super Ljava/lang/Object;
.source "QuartileDetector.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector$Callback;

.field private sessionId:Ljava/lang/String;

.field private topReachedQuartile:I


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector$Callback;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector;->topReachedQuartile:I

    .line 27
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector$Callback;

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 6

    .line 32
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector;->sessionId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 37
    iput v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector;->topReachedQuartile:I

    .line 40
    :cond_1
    iget-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isVideoStreamPlaying:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector;->sessionId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 41
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector;->sessionId:Ljava/lang/String;

    .line 44
    :cond_2
    iget-object v1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector;->sessionId:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isStatic:Z

    if-eqz v1, :cond_5

    .line 45
    iget-object v1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    .line 46
    iget v2, v1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->quartile:I

    iget v3, p0, Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector;->topReachedQuartile:I

    if-gt v2, v3, :cond_3

    return-void

    :cond_3
    :goto_0
    add-int/lit8 v3, v3, 0x1

    .line 48
    iget v2, v1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->quartile:I

    if-gt v3, v2, :cond_4

    .line 49
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector$Callback;

    iget-object v4, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v4, v4, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    iget-object v5, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    invoke-interface {v2, v4, v3, v5}, Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector$Callback;->onQuartileDetected(IILjava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_4
    iget p1, v1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->quartile:I

    iput p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector;->topReachedQuartile:I

    :cond_5
    return-void
.end method
