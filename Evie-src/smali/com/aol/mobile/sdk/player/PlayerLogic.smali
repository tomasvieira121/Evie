.class Lcom/aol/mobile/sdk/player/PlayerLogic;
.super Ljava/lang/Object;
.source "PlayerLogic.java"


# instance fields
.field final playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

.field private final vvuidGenerator:Lcom/aol/mobile/sdk/player/VvuidGenerator;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/model/PlayerModel;Lcom/aol/mobile/sdk/player/VvuidGenerator;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerModel;->videoModels:Ljava/util/List;

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "PlayerModel must have at least 1 video"

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 54
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->vvuidGenerator:Lcom/aol/mobile/sdk/player/VvuidGenerator;

    .line 55
    new-instance v0, Lcom/aol/mobile/sdk/player/model/PlayerState;

    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/VvuidGenerator;->generate()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/aol/mobile/sdk/player/model/PlayerState;-><init>(Lcom/aol/mobile/sdk/player/model/PlayerModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    return-void
.end method

.method static checkAdCues(Ljava/util/Set;Lcom/aol/mobile/sdk/player/model/TimePosition;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/aol/mobile/sdk/player/model/TimePosition;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 60
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 62
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/model/TimePosition;->getPosition()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/model/TimePosition;->getDuration()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 63
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkCasting()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerModel:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerModel;->videoModels:Ljava/util/List;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget v1, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->videoIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aol/mobile/sdk/player/model/PlaylistItem;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlaylistItem;->videoModel:Lcom/aol/mobile/sdk/player/model/VideoModel;

    if-eqz v0, :cond_0

    .line 136
    iget-boolean v0, v0, Lcom/aol/mobile/sdk/player/model/VideoModel;->isScreenCastingEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->setCast(Z)V

    :cond_1
    return-void
.end method

.method private resetToStartState()V
    .locals 6

    .line 69
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->clearAd()V

    .line 70
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->switchStateToContent()V

    .line 71
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->textTrackList:Ljava/util/List;

    .line 72
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->audioTrackList:Ljava/util/List;

    .line 73
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->session:Lcom/aol/mobile/sdk/player/model/Session;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/model/Session;->reset()V

    .line 74
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->isPlaybackStarted:Z

    const/4 v2, 0x0

    .line 75
    iput-object v2, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    const/4 v3, 0x0

    .line 76
    iput v3, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->bufferedPercentage:I

    .line 77
    iput-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->shouldPlay:Z

    .line 78
    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->cameraDirection:Lcom/aol/mobile/sdk/player/model/CameraDirection;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v4, v5}, Lcom/aol/mobile/sdk/player/model/CameraDirection;->change(DD)V

    .line 79
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iput-boolean v3, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->isVideoStreamPlaying:Z

    .line 80
    iput-object v2, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    .line 81
    sget-object v1, Lcom/aol/mobile/sdk/player/model/SeekState;->NONE:Lcom/aol/mobile/sdk/player/model/SeekState;

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->seekState:Lcom/aol/mobile/sdk/player/model/SeekState;

    .line 82
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->hlsBitrate:J

    .line 83
    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adCues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private updateAdCues(Lcom/aol/mobile/sdk/player/model/VideoModel;J)V
    .locals 5

    if-eqz p1, :cond_0

    .line 267
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/VideoModel;->adTimings:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 268
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/VideoModel;->adTimings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 269
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/PlayerState;->adCues:Ljava/util/Set;

    long-to-double v0, v0

    const-wide v3, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    long-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method clearAd()V
    .locals 4

    .line 463
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    const/4 v1, 0x0

    .line 464
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    .line 465
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->url:Ljava/lang/String;

    .line 466
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->targetUrl:Ljava/lang/String;

    .line 467
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    const/4 v2, 0x0

    .line 468
    iput-boolean v2, v0, Lcom/aol/mobile/sdk/player/model/AdState;->isStreamPlaying:Z

    .line 469
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->adType:Ljava/lang/String;

    .line 470
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->uniqueAdId:Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    .line 473
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->vrmUrl:Ljava/lang/String;

    .line 474
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->adUrl:Ljava/lang/String;

    .line 475
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->targetUrl:Ljava/lang/String;

    .line 476
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->adId:Ljava/lang/String;

    .line 477
    new-instance v2, Lcom/aol/mobile/sdk/player/model/Pixels;

    invoke-direct {v2}, Lcom/aol/mobile/sdk/player/model/Pixels;-><init>()V

    iput-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    .line 478
    new-instance v2, Lcom/aol/mobile/sdk/player/model/VrmSource;

    invoke-direct {v2}, Lcom/aol/mobile/sdk/player/model/VrmSource;-><init>()V

    iput-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    .line 479
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->txid:Ljava/lang/String;

    .line 480
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->slot:Ljava/lang/String;

    .line 482
    sget-object v2, Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;->NO_TASK:Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;

    iput-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->taskState:Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;

    .line 483
    sget-object v2, Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;->NO_TIMEOUT_REACHED:Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;

    iput-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->groupProcessingState:Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;

    const-wide/16 v2, 0x0

    .line 484
    iput-wide v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->taskTime:J

    .line 485
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->taskError:Ljava/lang/Exception;

    return-void
.end method

.method completePlaybackSession()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-boolean v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->isSessionCompleted:Z

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->isSessionCompleted:Z

    :cond_0
    return-void
.end method

.method endVideoPlayback()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Video duration is not set, but end of playback reached"

    invoke-static {v0, v3}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerModel:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerModel;->videoModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget v1, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->videoIndex:I

    if-ne v0, v1, :cond_1

    .line 302
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/model/TimePosition;->setToEndPosition()V

    .line 303
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iput-boolean v2, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->shouldPlay:Z

    goto :goto_1

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->playNext()V

    :goto_1
    return-void
.end method

.method moveCameraBy(DD)V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->cameraDirection:Lcom/aol/mobile/sdk/player/model/CameraDirection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/player/model/CameraDirection;->moveBy(DD)V

    return-void
.end method

.method notifyAdClicked()V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->isAdClicked:Z

    return-void
.end method

.method notifyAdPresented()V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->isAdClicked:Z

    return-void
.end method

.method pause()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->seekState:Lcom/aol/mobile/sdk/player/model/SeekState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/SeekState;->NONE:Lcom/aol/mobile/sdk/player/model/SeekState;

    if-eq v0, v1, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->shouldPlay:Z

    .line 172
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->pauseAd()V

    return-void
.end method

.method pauseAd()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->shouldPlay:Z

    return-void
.end method

.method play()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->seekState:Lcom/aol/mobile/sdk/player/model/SeekState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/SeekState;->NONE:Lcom/aol/mobile/sdk/player/model/SeekState;

    if-eq v0, v1, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->viewState:Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;->Content:Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 150
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iput-boolean v2, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->isPlaybackStarted:Z

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iput-boolean v2, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->shouldPlay:Z

    .line 156
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->playAd()V

    return-void
.end method

.method playAd()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->shouldPlay:Z

    return-void
.end method

.method playAtIndex(I)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerModel:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerModel;->videoModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->videoIndex:I

    if-eq v0, p1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->resetToStartState()V

    .line 128
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iput p1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->videoIndex:I

    .line 129
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->vvuidGenerator:Lcom/aol/mobile/sdk/player/VvuidGenerator;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/VvuidGenerator;->generate()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->uniqueVideoId:Ljava/lang/String;

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->checkCasting()V

    return-void
.end method

.method playNext()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerModel:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerModel;->videoModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget v1, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->videoIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->resetToStartState()V

    .line 95
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->videoIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->videoIndex:I

    .line 96
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->vvuidGenerator:Lcom/aol/mobile/sdk/player/VvuidGenerator;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/VvuidGenerator;->generate()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->uniqueVideoId:Ljava/lang/String;

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->checkCasting()V

    return-void
.end method

.method playPrevious()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->videoIndex:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->resetToStartState()V

    .line 109
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->videoIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->videoIndex:I

    .line 110
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->vvuidGenerator:Lcom/aol/mobile/sdk/player/VvuidGenerator;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/VvuidGenerator;->generate()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->uniqueVideoId:Ljava/lang/String;

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->checkCasting()V

    return-void
.end method

.method replay()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->seekState:Lcom/aol/mobile/sdk/player/model/SeekState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/SeekState;->NONE:Lcom/aol/mobile/sdk/player/model/SeekState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Player can not replay while is seeking"

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 185
    invoke-virtual {p0, v0, v1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->seekTo(D)V

    .line 186
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->session:Lcom/aol/mobile/sdk/player/model/Session;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/model/Session;->reset()V

    .line 187
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iput-boolean v2, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->shouldPlay:Z

    const/4 v1, 0x0

    .line 188
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    .line 189
    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerModel:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerModel;->videoModels:Ljava/util/List;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget v1, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->videoIndex:I

    .line 190
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aol/mobile/sdk/player/model/PlaylistItem;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlaylistItem;->videoModel:Lcom/aol/mobile/sdk/player/model/VideoModel;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    .line 191
    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/model/TimePosition;->getDuration()J

    move-result-wide v1

    .line 189
    :goto_1
    invoke-direct {p0, v0, v1, v2}, Lcom/aol/mobile/sdk/player/PlayerLogic;->updateAdCues(Lcom/aol/mobile/sdk/player/model/VideoModel;J)V

    return-void
.end method

.method requestVrm(Ljava/lang/String;)V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iput-object p1, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->vrmUrl:Ljava/lang/String;

    return-void
.end method

.method resetSeekPosition()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->seekPosition:Ljava/lang/Double;

    return-void
.end method

.method seekTo(D)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    invoke-virtual {v0, p1, p2}, Lcom/aol/mobile/sdk/player/model/TimePosition;->setProgress(D)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->seekPosition:Ljava/lang/Double;

    return-void
.end method

.method selectAudioTrack(Lcom/aol/mobile/sdk/renderer/AudioTrack;)V
    .locals 4

    .line 534
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->audioTrackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 538
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->audioTrackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aol/mobile/sdk/renderer/AudioTrack;

    if-ne v2, p1, :cond_0

    const/4 v3, 0x1

    .line 540
    invoke-virtual {v2, v3}, Lcom/aol/mobile/sdk/renderer/AudioTrack;->withSelected(Z)Lcom/aol/mobile/sdk/renderer/AudioTrack;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 542
    invoke-virtual {v2, v3}, Lcom/aol/mobile/sdk/renderer/AudioTrack;->withSelected(Z)Lcom/aol/mobile/sdk/renderer/AudioTrack;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 546
    :cond_1
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->audioTrackList:Ljava/util/List;

    return-void

    .line 535
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Audio track is not in list"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method selectTextTrack(Lcom/aol/mobile/sdk/renderer/TextTrack;)V
    .locals 4

    .line 550
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->textTrackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 554
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->textTrackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aol/mobile/sdk/renderer/TextTrack;

    if-ne v2, p1, :cond_0

    const/4 v3, 0x1

    .line 556
    invoke-virtual {v2, v3}, Lcom/aol/mobile/sdk/renderer/TextTrack;->withSelected(Z)Lcom/aol/mobile/sdk/renderer/TextTrack;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 558
    invoke-virtual {v2, v3}, Lcom/aol/mobile/sdk/renderer/TextTrack;->withSelected(Z)Lcom/aol/mobile/sdk/renderer/TextTrack;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 562
    :cond_1
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->textTrackList:Ljava/util/List;

    return-void

    .line 551
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cc track is not in list"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method setAd(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;)V
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    const/4 v1, 0x0

    .line 384
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    .line 385
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->adVideoUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/aol/mobile/sdk/player/model/AdState;->url:Ljava/lang/String;

    .line 386
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->targetUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/aol/mobile/sdk/player/model/AdState;->targetUrl:Ljava/lang/String;

    const/4 v2, 0x0

    .line 387
    iput-boolean v2, v0, Lcom/aol/mobile/sdk/player/model/AdState;->isStreamPlaying:Z

    .line 388
    iget-boolean v2, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->scalable:Z

    iput-boolean v2, v0, Lcom/aol/mobile/sdk/player/model/AdState;->isScalable:Z

    .line 389
    iget-boolean v2, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->maintainAspectRatio:Z

    iput-boolean v2, v0, Lcom/aol/mobile/sdk/player/model/AdState;->isMaintainAspectRatio:Z

    .line 390
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/aol/mobile/sdk/player/model/AdState;->uniqueAdId:Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    .line 393
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->adVideoUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->adUrl:Ljava/lang/String;

    .line 394
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->targetUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->targetUrl:Ljava/lang/String;

    .line 395
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->adId:Ljava/lang/String;

    iput-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->adId:Ljava/lang/String;

    .line 396
    iget-boolean v2, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->scalable:Z

    iput-boolean v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->isScalable:Z

    .line 397
    iget-boolean v2, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->maintainAspectRatio:Z

    iput-boolean v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->isMaintainAspectRatio:Z

    .line 399
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->pixels:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->impression:[Ljava/lang/String;

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/Pixels;->impression:[Ljava/lang/String;

    .line 400
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->pixels:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->error:[Ljava/lang/String;

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/Pixels;->error:[Ljava/lang/String;

    .line 401
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->pixels:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->clickTracking:[Ljava/lang/String;

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/Pixels;->clickTracking:[Ljava/lang/String;

    .line 402
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->pixels:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->creativeView:[Ljava/lang/String;

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/Pixels;->creativeView:[Ljava/lang/String;

    .line 403
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->pixels:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->start:[Ljava/lang/String;

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/Pixels;->start:[Ljava/lang/String;

    .line 404
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->pixels:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->firstQuartile:[Ljava/lang/String;

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/Pixels;->firstQuartile:[Ljava/lang/String;

    .line 405
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->pixels:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->midpoint:[Ljava/lang/String;

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/Pixels;->midpoint:[Ljava/lang/String;

    .line 406
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->pixels:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->thirdQuartile:[Ljava/lang/String;

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/Pixels;->thirdQuartile:[Ljava/lang/String;

    .line 407
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->pixels:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->complete:[Ljava/lang/String;

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/Pixels;->complete:[Ljava/lang/String;

    .line 408
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->pixels:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->pause:[Ljava/lang/String;

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/Pixels;->pause:[Ljava/lang/String;

    .line 409
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->pixels:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->resume:[Ljava/lang/String;

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/Pixels;->resume:[Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;->getVrmSource()Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    move-result-object p1

    .line 412
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/VrmSource;->url:Ljava/lang/String;

    .line 413
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getXml()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/VrmSource;->xml:Ljava/lang/String;

    .line 414
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getAdEngineType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/VrmSource;->adEngineType:Ljava/lang/String;

    .line 415
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getRuleId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleId:Ljava/lang/String;

    .line 416
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getRuleCompanyId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleCompanyId:Ljava/lang/String;

    .line 417
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getVendor()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/aol/mobile/sdk/player/model/VrmSource;->vendor:Ljava/lang/String;

    .line 418
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/aol/mobile/sdk/player/model/VrmSource;->name:Ljava/lang/String;

    .line 420
    sget-object p1, Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;->NO_TASK:Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;

    iput-object p1, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->taskState:Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;

    .line 421
    sget-object p1, Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;->NO_TIMEOUT_REACHED:Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;

    iput-object p1, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->groupProcessingState:Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;

    const-wide/16 v2, 0x0

    .line 422
    iput-wide v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->taskTime:J

    .line 423
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->taskError:Ljava/lang/Exception;

    return-void
.end method

.method setAdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    .line 436
    iput-object p3, v0, Lcom/aol/mobile/sdk/player/model/AdState;->adType:Ljava/lang/String;

    .line 437
    iget p3, v0, Lcom/aol/mobile/sdk/player/model/AdState;->adNum:I

    add-int/lit8 p3, p3, 0x1

    iput p3, v0, Lcom/aol/mobile/sdk/player/model/AdState;->adNum:I

    .line 439
    iget-object p3, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object p3, p3, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    .line 440
    iput-object p1, p3, Lcom/aol/mobile/sdk/player/model/VrmState;->txid:Ljava/lang/String;

    .line 441
    iput-object p2, p3, Lcom/aol/mobile/sdk/player/model/VrmState;->slot:Ljava/lang/String;

    return-void
.end method

.method setCameraDirection(DD)V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->cameraDirection:Lcom/aol/mobile/sdk/player/model/CameraDirection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/player/model/CameraDirection;->change(DD)V

    return-void
.end method

.method setCast(Z)V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iput-boolean p1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->isCasting:Z

    return-void
.end method

.method setGroupProcessingState(Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iput-object p1, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->groupProcessingState:Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;

    return-void
.end method

.method setMute(Z)V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-boolean v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->isMuted:Z

    if-eq v0, p1, :cond_0

    .line 498
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iput-boolean p1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->isMuted:Z

    :cond_0
    return-void
.end method

.method setOnForeground(Z)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-boolean v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->isOnForeground:Z

    if-eq v0, p1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iput-boolean p1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->isOnForeground:Z

    :cond_0
    return-void
.end method

.method setTask(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
            ">;",
            "Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;",
            ")V"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/VrmSource;->url:Ljava/lang/String;

    .line 446
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getXml()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/VrmSource;->xml:Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getAdEngineType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/VrmSource;->adEngineType:Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getRuleId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleId:Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getRuleCompanyId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleCompanyId:Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getVendor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/VrmSource;->vendor:Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/VrmSource;->name:Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->taskTime:J

    .line 453
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    iput-object p1, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->taskError:Ljava/lang/Exception;

    .line 455
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iput-object p2, p1, Lcom/aol/mobile/sdk/player/model/VrmState;->taskState:Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;

    return-void
.end method

.method startSeek()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->seekState:Lcom/aol/mobile/sdk/player/model/SeekState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/SeekState;->NONE:Lcom/aol/mobile/sdk/player/model/SeekState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Already seeking"

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->shouldPlay:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/aol/mobile/sdk/player/model/SeekState;->SEEKING_WITH_RESUME:Lcom/aol/mobile/sdk/player/model/SeekState;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/aol/mobile/sdk/player/model/SeekState;->SEEKING:Lcom/aol/mobile/sdk/player/model/SeekState;

    :goto_1
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->seekState:Lcom/aol/mobile/sdk/player/model/SeekState;

    .line 216
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iput-boolean v2, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->shouldPlay:Z

    return-void
.end method

.method stopAdWithError(Lcom/aol/mobile/sdk/player/model/ErrorState;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    iput-object p1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    return-void
.end method

.method stopSeek()V
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->seekState:Lcom/aol/mobile/sdk/player/model/SeekState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/SeekState;->NONE:Lcom/aol/mobile/sdk/player/model/SeekState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "StartSeek is not called"

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->seekState:Lcom/aol/mobile/sdk/player/model/SeekState;

    sget-object v4, Lcom/aol/mobile/sdk/player/model/SeekState;->SEEKING_WITH_RESUME:Lcom/aol/mobile/sdk/player/model/SeekState;

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->shouldPlay:Z

    .line 228
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/SeekState;->NONE:Lcom/aol/mobile/sdk/player/model/SeekState;

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->seekState:Lcom/aol/mobile/sdk/player/model/SeekState;

    return-void
.end method

.method stopWithError(Lcom/aol/mobile/sdk/player/model/ErrorState;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iput-object p1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    return-void
.end method

.method switchStateToAd()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;->Ad:Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->viewState:Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;

    return-void
.end method

.method switchStateToContent()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;->Content:Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->viewState:Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;

    return-void
.end method

.method updateAdDimensions(II)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    iput p1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->width:I

    .line 368
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    iput p2, p1, Lcom/aol/mobile/sdk/player/model/AdState;->height:I

    return-void
.end method

.method updateAdDuration(J)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    new-instance v1, Lcom/aol/mobile/sdk/player/model/TimePosition;

    invoke-direct {v1, p1, p2}, Lcom/aol/mobile/sdk/player/model/TimePosition;-><init>(J)V

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    return-void
.end method

.method updateAdPlayback(Z)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    iput-boolean p1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->isStreamPlaying:Z

    return-void
.end method

.method updateAdPosition(J)V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/AdState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/AdState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    .line 328
    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/model/TimePosition;->getDuration()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 329
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/AdState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    invoke-virtual {v0, p1, p2}, Lcom/aol/mobile/sdk/player/model/TimePosition;->setPosition(J)V

    :cond_0
    return-void
.end method

.method updateHlsBitrate(J)V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iput-wide p1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->hlsBitrate:J

    return-void
.end method

.method updateTrackInfo(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/renderer/AudioTrack;",
            ">;",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/renderer/TextTrack;",
            ">;)V"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->audioTrackList:Ljava/util/List;

    .line 530
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->textTrackList:Ljava/util/List;

    return-void
.end method

.method updateVideoBufferedPercentage(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "bufferedPercentage should be in range 0..100"

    .line 340
    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->bufferedPercentage:I

    if-eq v0, p1, :cond_1

    .line 343
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iput p1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->bufferedPercentage:I

    :cond_1
    return-void
.end method

.method updateVideoDimensions(II)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iput p1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerWidth:I

    .line 356
    iput p2, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerHeight:I

    return-void
.end method

.method updateVideoDuration(J)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    new-instance v1, Lcom/aol/mobile/sdk/player/model/TimePosition;

    invoke-direct {v1, p1, p2}, Lcom/aol/mobile/sdk/player/model/TimePosition;-><init>(J)V

    iput-object v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    .line 261
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerModel:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerModel;->videoModels:Ljava/util/List;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget v1, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->videoIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aol/mobile/sdk/player/model/PlaylistItem;

    .line 262
    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlaylistItem;->videoModel:Lcom/aol/mobile/sdk/player/model/VideoModel;

    invoke-direct {p0, v0, p1, p2}, Lcom/aol/mobile/sdk/player/PlayerLogic;->updateAdCues(Lcom/aol/mobile/sdk/player/model/VideoModel;J)V

    :cond_0
    return-void
.end method

.method updateVideoPlayback(Z)V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iput-boolean p1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->isVideoStreamPlaying:Z

    .line 286
    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->session:Lcom/aol/mobile/sdk/player/model/Session;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/aol/mobile/sdk/player/model/Session;->updatePlaybackTime(ZJ)V

    return-void
.end method

.method updateVideoPosition(J)V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-boolean v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->isVideoStreamPlaying:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-boolean v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->shouldPlay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/model/TimePosition;->getDuration()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 319
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    invoke-virtual {v0, p1, p2}, Lcom/aol/mobile/sdk/player/model/TimePosition;->setPosition(J)V

    .line 320
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->adCues:Ljava/util/Set;

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/PlayerState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    invoke-static {p1, p2}, Lcom/aol/mobile/sdk/player/PlayerLogic;->checkAdCues(Ljava/util/Set;Lcom/aol/mobile/sdk/player/model/TimePosition;)V

    .line 322
    :cond_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->session:Lcom/aol/mobile/sdk/player/model/Session;

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    iget-boolean p2, p2, Lcom/aol/mobile/sdk/player/model/PlayerState;->isVideoStreamPlaying:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/aol/mobile/sdk/player/model/Session;->updatePlaybackTime(ZJ)V

    :cond_1
    return-void
.end method
