.class public final Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector;
.super Ljava/lang/Object;
.source "DecileDetector.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector$Callback;

.field private sessionId:Ljava/lang/String;

.field private topReachedDecile:I


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector$Callback;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector;->topReachedDecile:I

    .line 26
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector$Callback;

    return-void
.end method

.method private reportNewDecile(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;)V
    .locals 5

    .line 30
    iget-boolean v0, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isStatic:Z

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v0, v0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->progress:D

    invoke-virtual {p0, v0, v1}, Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector;->decile(D)I

    move-result v0

    .line 32
    iget v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector;->topReachedDecile:I

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v0, :cond_1

    .line 36
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector$Callback;

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v3, v3, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    iget-object v4, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v4}, Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector$Callback;->onDecileDetected(IILjava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_1
    iput v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector;->topReachedDecile:I

    :cond_2
    return-void
.end method


# virtual methods
.method decile(D)I
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    const/16 p2, 0xa

    .line 44
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 3

    .line 49
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    .line 50
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v1, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector;->sessionId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector;->topReachedDecile:I

    .line 57
    :cond_1
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-boolean v1, v1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isVideoStreamPlaying:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector;->sessionId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 58
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector;->sessionId:Ljava/lang/String;

    .line 61
    :cond_2
    iget-object v1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector;->sessionId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector;->reportNewDecile(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;)V

    :cond_3
    return-void
.end method
