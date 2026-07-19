.class public Lcom/aol/mobile/sdk/player/model/properties/Transformer;
.super Ljava/lang/Object;
.source "Transformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getThumbnailUrlFrom(Ljava/util/HashMap;Landroidx/core/util/Pair;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v0, v1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 267
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Pair;

    .line 268
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 269
    invoke-static {v3, p1}, Lcom/aol/mobile/sdk/player/model/properties/Transformer;->minDimensionRatio(Landroidx/core/util/Pair;Landroidx/core/util/Pair;)F

    move-result v3

    if-eqz v0, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_2

    .line 271
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v5, v5, v3

    if-ltz v5, :cond_3

    .line 272
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v4, v5, v4

    if-gez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_1

    .line 273
    :cond_3
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v1, v2

    goto :goto_0

    :cond_4
    return-object v1

    :cond_5
    :goto_1
    return-object v1
.end method

.method private static getVideoType(Lcom/aol/mobile/sdk/player/model/TimePosition;)Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;
    .locals 4

    if-eqz p0, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/model/TimePosition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    .line 285
    sget-object p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;->LIVE:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    return-object p0

    .line 287
    :cond_0
    sget-object p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;->STATIC:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    return-object p0

    .line 290
    :cond_1
    sget-object p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;->UNKNOWN:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    return-object p0
.end method

.method private static minDimensionRatio(Landroidx/core/util/Pair;Landroidx/core/util/Pair;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)F"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object p0, p0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static updateAdProps(Lcom/aol/mobile/sdk/player/model/properties/AdProperties;Lcom/aol/mobile/sdk/player/model/PlayerState;)V
    .locals 9

    .line 89
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    .line 90
    iget-object v1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    .line 91
    iget-boolean v2, v0, Lcom/aol/mobile/sdk/player/model/AdState;->isStreamPlaying:Z

    iput-boolean v2, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isVideoStreamPlaying:Z

    .line 92
    iget-boolean v2, v0, Lcom/aol/mobile/sdk/player/model/AdState;->isAdClicked:Z

    iput-boolean v2, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isAdClicked:Z

    .line 93
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerModel:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iget-boolean v2, v2, Lcom/aol/mobile/sdk/player/model/PlayerModel;->embedClickThroughUrl:Z

    iput-boolean v2, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->embedClickThroughUrl:Z

    .line 94
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerModel:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iget-boolean v2, v2, Lcom/aol/mobile/sdk/player/model/PlayerModel;->showClickThroughClose:Z

    iput-boolean v2, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->showClickThroughClose:Z

    .line 95
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/AdState;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    iput-object v2, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    .line 96
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/AdState;->url:Ljava/lang/String;

    iput-object v2, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    .line 97
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/AdState;->targetUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->targetUrl:Ljava/lang/String;

    .line 98
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    iget-boolean v2, v2, Lcom/aol/mobile/sdk/player/model/AdState;->shouldPlay:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->isOnForeground:Z

    if-nez v2, :cond_0

    iget-boolean p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->isCasting:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->shouldPlay:Z

    .line 99
    iget-object p1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->adType:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->type:Ljava/lang/String;

    .line 100
    iget p1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->adNum:I

    iput p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->adNum:I

    if-nez v1, :cond_2

    .line 102
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isLoading:Z

    .line 103
    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->shouldPlay:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isVideoStreamPlaying:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isBuffering:Z

    .line 104
    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->shouldPlay:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isVideoStreamPlaying:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isPlaying:Z

    if-eqz v1, :cond_5

    .line 105
    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/model/TimePosition;->getProgress()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v5, v7

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isFinished:Z

    .line 107
    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->shouldPlay:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isFinished:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isLoading:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    sget-object v2, Lcom/aol/mobile/sdk/player/model/ErrorState;->CONTENT_ERROR:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-eq p1, v2, :cond_6

    const/4 p1, 0x1

    goto :goto_5

    :cond_6
    const/4 p1, 0x0

    :goto_5
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->canBePlayed:Z

    .line 109
    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->shouldPlay:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isFinished:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isLoading:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isBuffering:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-nez p1, :cond_7

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    iput-boolean v3, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->canBePaused:Z

    .line 111
    iget-boolean p1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->isScalable:Z

    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isScalable:Z

    .line 112
    iget-boolean p1, v0, Lcom/aol/mobile/sdk/player/model/AdState;->isMaintainAspectRatio:Z

    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isMaintainAspectRatio:Z

    const/4 p1, 0x0

    if-eqz v1, :cond_9

    .line 115
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-nez v0, :cond_8

    .line 116
    new-instance v0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    .line 119
    :cond_8
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    invoke-static {p0, v1, p1}, Lcom/aol/mobile/sdk/player/model/properties/Transformer;->updateTimeProps(Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;Lcom/aol/mobile/sdk/player/model/TimePosition;Ljava/lang/Double;)V

    goto :goto_7

    .line 121
    :cond_9
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    :goto_7
    return-void
.end method

.method static updateCameraProps(Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;Lcom/aol/mobile/sdk/player/model/PlayerState;)V
    .locals 2

    .line 126
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->cameraDirection:Lcom/aol/mobile/sdk/player/model/CameraDirection;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/model/CameraDirection;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;->longitude:D

    .line 127
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->cameraDirection:Lcom/aol/mobile/sdk/player/model/CameraDirection;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/model/CameraDirection;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;->latitude:D

    return-void
.end method

.method private static updatePlaylistItemProps(Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;Lcom/aol/mobile/sdk/player/model/PlayerState;Z)V
    .locals 3

    .line 68
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerModel:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerModel;->videoModels:Ljava/util/List;

    iget v1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->videoIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aol/mobile/sdk/player/model/PlaylistItem;

    .line 69
    iget-object v1, v0, Lcom/aol/mobile/sdk/player/model/PlaylistItem;->videoModel:Lcom/aol/mobile/sdk/player/model/VideoModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 70
    iput-object v2, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->voidVideo:Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;

    .line 71
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    invoke-direct {v1}, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;-><init>()V

    iput-object v1, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlaylistItem;->videoModel:Lcom/aol/mobile/sdk/player/model/VideoModel;

    invoke-static {p0, p1, v0, p2}, Lcom/aol/mobile/sdk/player/model/properties/Transformer;->updateVideoProps(Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/VideoModel;Z)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p2, v0, Lcom/aol/mobile/sdk/player/model/PlaylistItem;->voidVideoModel:Lcom/aol/mobile/sdk/player/model/VoidVideoModel;

    if-eqz p2, :cond_3

    .line 77
    iput-object v2, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    .line 78
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->voidVideo:Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;

    if-nez p2, :cond_2

    .line 79
    new-instance p2, Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;

    invoke-direct {p2}, Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;-><init>()V

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->voidVideo:Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;

    .line 81
    :cond_2
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->voidVideo:Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->uniqueVideoId:Ljava/lang/String;

    iput-object p1, p2, Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;->uniqueVideoId:Ljava/lang/String;

    .line 82
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->voidVideo:Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;

    iget-object p1, v0, Lcom/aol/mobile/sdk/player/model/PlaylistItem;->voidVideoModel:Lcom/aol/mobile/sdk/player/model/VoidVideoModel;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/VoidVideoModel;->reason:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;->reason:Ljava/lang/String;

    :goto_0
    return-void

    .line 84
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can not update PlaylistItemProperties"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static updatePlaylistProps(Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;Lcom/aol/mobile/sdk/player/model/PlayerState;)V
    .locals 3

    .line 131
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerModel:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->model:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    .line 132
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->model:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerModel;->videoModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->count:I

    .line 133
    iget p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->videoIndex:I

    iput p1, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    .line 134
    iget p1, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->isFirstVideo:Z

    .line 135
    iget p1, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    iget v2, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->count:I

    sub-int/2addr v2, v1

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->isLastVideo:Z

    .line 136
    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->isLastVideo:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->hasNextVideo:Z

    .line 137
    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->isFirstVideo:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->hasPreviousVideo:Z

    return-void
.end method

.method public static updateProps(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/player/model/PlayerState;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    invoke-static {v0, p1}, Lcom/aol/mobile/sdk/player/model/properties/Transformer;->updatePlaylistProps(Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;Lcom/aol/mobile/sdk/player/model/PlayerState;)V

    .line 32
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget-boolean v1, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->isLastVideo:Z

    invoke-static {v0, p1, v1}, Lcom/aol/mobile/sdk/player/model/properties/Transformer;->updatePlaylistItemProps(Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;Lcom/aol/mobile/sdk/player/model/PlayerState;Z)V

    .line 33
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    invoke-static {v0, p1}, Lcom/aol/mobile/sdk/player/model/properties/Transformer;->updateAdProps(Lcom/aol/mobile/sdk/player/model/properties/AdProperties;Lcom/aol/mobile/sdk/player/model/PlayerState;)V

    .line 34
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->camera:Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;

    invoke-static {v0, p1}, Lcom/aol/mobile/sdk/player/model/properties/Transformer;->updateCameraProps(Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;Lcom/aol/mobile/sdk/player/model/PlayerState;)V

    .line 35
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    invoke-static {v0, p1}, Lcom/aol/mobile/sdk/player/model/properties/Transformer;->updateViewportProps(Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;Lcom/aol/mobile/sdk/player/model/PlayerState;)V

    .line 36
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    invoke-static {v0, p1}, Lcom/aol/mobile/sdk/player/model/properties/Transformer;->updateSessionProps(Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;Lcom/aol/mobile/sdk/player/model/PlayerState;)V

    .line 37
    invoke-static {p0, p1}, Lcom/aol/mobile/sdk/player/model/properties/Transformer;->updateRootProps(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/player/model/PlayerState;)V

    return-void
.end method

.method private static updateRootProps(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/player/model/PlayerState;)V
    .locals 1

    .line 41
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    .line 42
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerModel:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iget-boolean v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerModel;->isAutoplayOn:Z

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isAutoplay:Z

    .line 43
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->isMuted:Z

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isMuted:Z

    .line 44
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->isSessionCompleted:Z

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isSessionCompleted:Z

    .line 45
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->isPlaybackStarted:Z

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isPlaybackStarted:Z

    .line 46
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->shouldPlay:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->isOnForeground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->isCasting:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->shouldPlay:Z

    .line 47
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->isCasting:Z

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isCasting:Z

    .line 48
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->isOnForeground:Z

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isOnForeground:Z

    .line 50
    sget-object v0, Lcom/aol/mobile/sdk/player/model/properties/Transformer$1;->$SwitchMap$com$aol$mobile$sdk$player$model$PlayerState$ViewState:[I

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->viewState:Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 55
    :pswitch_0
    sget-object p1, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Content:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    goto :goto_1

    .line 52
    :pswitch_1
    sget-object p1, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Ad:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static updateSessionProps(Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;Lcom/aol/mobile/sdk/player/model/PlayerState;)V
    .locals 2

    .line 62
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->session:Lcom/aol/mobile/sdk/player/model/Session;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/Session;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    .line 63
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->session:Lcom/aol/mobile/sdk/player/model/Session;

    iget-wide v0, p1, Lcom/aol/mobile/sdk/player/model/Session;->playbackDuration:J

    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->playbackDuration:J

    return-void
.end method

.method static updateSubtitlesProps(Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;Lcom/aol/mobile/sdk/player/model/PlayerState;)V
    .locals 1

    .line 141
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerModel:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/PlayerModel;->videoModels:Ljava/util/List;

    iget p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->videoIndex:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aol/mobile/sdk/player/model/PlaylistItem;

    .line 142
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlaylistItem;->videoModel:Lcom/aol/mobile/sdk/player/model/VideoModel;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlaylistItem;->videoModel:Lcom/aol/mobile/sdk/player/model/VideoModel;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/VideoModel;->subtitlesUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;->url:Ljava/lang/String;

    .line 144
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlaylistItem;->videoModel:Lcom/aol/mobile/sdk/player/model/VideoModel;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/VideoModel;->subtitlesLang:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;->lang:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 146
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;->url:Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;->lang:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static updateTimeProps(Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;Lcom/aol/mobile/sdk/player/model/TimePosition;Ljava/lang/Double;)V
    .locals 4

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/model/TimePosition;->getDuration()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->seekPosition:Ljava/lang/Long;

    .line 153
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/model/TimePosition;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->duration:J

    .line 154
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/model/TimePosition;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->current:J

    .line 155
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/model/TimePosition;->getTimeLeft()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->remaining:J

    .line 156
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/model/TimePosition;->getProgress()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->progress:D

    .line 157
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/model/TimePosition;->getProgress()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    double-to-int p2, v0

    iput p2, p0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->decile:I

    .line 158
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/model/TimePosition;->getProgress()D

    move-result-wide p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    div-int/lit8 p1, p1, 0x19

    iput p1, p0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->quartile:I

    return-void
.end method

.method static updateVideoProps(Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/VideoModel;Z)V
    .locals 10

    .line 164
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->model:Lcom/aol/mobile/sdk/player/model/VideoModel;

    .line 165
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->isVideoStreamPlaying:Z

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isVideoStreamPlaying:Z

    .line 166
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->shouldPlay:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->isOnForeground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->isCasting:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 167
    :goto_0
    iget-object v3, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->uniqueVideoId:Ljava/lang/String;

    iput-object v3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    .line 168
    iget-object v3, p2, Lcom/aol/mobile/sdk/player/model/VideoModel;->url:Ljava/lang/String;

    iput-object v3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->url:Ljava/lang/String;

    .line 170
    iget v3, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v3

    .line 171
    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->model:Lcom/aol/mobile/sdk/player/model/VideoModel;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/VideoModel;->thumbnails:Ljava/util/HashMap;

    invoke-static {v4, v3}, Lcom/aol/mobile/sdk/player/model/properties/Transformer;->getThumbnailUrlFrom(Ljava/util/HashMap;Landroidx/core/util/Pair;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->thumbnailUrl:Ljava/lang/String;

    .line 173
    iget-object v3, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

    .line 174
    invoke-static {v3}, Lcom/aol/mobile/sdk/player/model/properties/Transformer;->getVideoType(Lcom/aol/mobile/sdk/player/model/TimePosition;)Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    move-result-object v4

    iput-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->type:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 176
    invoke-virtual {v3}, Lcom/aol/mobile/sdk/player/model/TimePosition;->getDuration()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_3

    .line 177
    iget-object v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-nez v5, :cond_2

    .line 178
    new-instance v5, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    invoke-direct {v5}, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;-><init>()V

    iput-object v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    .line 181
    :cond_2
    iget-object v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-object v6, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->seekPosition:Ljava/lang/Double;

    invoke-static {v5, v3, v6}, Lcom/aol/mobile/sdk/player/model/properties/Transformer;->updateTimeProps(Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;Lcom/aol/mobile/sdk/player/model/TimePosition;Ljava/lang/Double;)V

    goto :goto_1

    .line 183
    :cond_3
    iput-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    .line 186
    :goto_1
    iget-object v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->type:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    sget-object v6, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;->LIVE:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isLive:Z

    .line 187
    iget-object v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->type:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    sget-object v6, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;->STATIC:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isStatic:Z

    if-eqz v3, :cond_6

    .line 188
    iget-boolean v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isLive:Z

    if-nez v5, :cond_6

    invoke-virtual {v3}, Lcom/aol/mobile/sdk/player/model/TimePosition;->getProgress()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    iput-boolean v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isFinished:Z

    if-eqz v0, :cond_7

    .line 189
    iget-boolean v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isVideoStreamPlaying:Z

    if-nez v5, :cond_7

    iget-object v5, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isFinished:Z

    if-nez v5, :cond_7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    iput-boolean v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isBuffering:Z

    if-eqz v0, :cond_8

    .line 190
    iget-boolean v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isVideoStreamPlaying:Z

    if-eqz v5, :cond_8

    iget-object v5, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-nez v5, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    iput-boolean v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isPlaying:Z

    if-nez v0, :cond_9

    .line 191
    iget-boolean v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isVideoStreamPlaying:Z

    if-nez v5, :cond_9

    const/4 v5, 0x1

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    :goto_7
    iput-boolean v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isPaused:Z

    .line 192
    iget-object v5, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->seekState:Lcom/aol/mobile/sdk/player/model/SeekState;

    sget-object v6, Lcom/aol/mobile/sdk/player/model/SeekState;->NONE:Lcom/aol/mobile/sdk/player/model/SeekState;

    if-eq v5, v6, :cond_a

    const/4 v5, 0x1

    goto :goto_8

    :cond_a
    const/4 v5, 0x0

    :goto_8
    iput-boolean v5, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isSeeking:Z

    if-nez v3, :cond_b

    .line 193
    iget-object v3, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-nez v3, :cond_b

    const/4 v3, 0x1

    goto :goto_9

    :cond_b
    const/4 v3, 0x0

    :goto_9
    iput-boolean v3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isLoading:Z

    if-eqz v0, :cond_c

    .line 195
    iget-object v3, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-eqz v3, :cond_d

    :cond_c
    iget-boolean v3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isFinished:Z

    if-nez v3, :cond_d

    iget-boolean v3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isSeeking:Z

    if-nez v3, :cond_d

    iget-boolean v3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isLoading:Z

    if-nez v3, :cond_d

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    sget-object v5, Lcom/aol/mobile/sdk/player/model/ErrorState;->CONTENT_ERROR:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-eq v3, v5, :cond_d

    const/4 v3, 0x1

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    :goto_a
    iput-boolean v3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->canBePlayed:Z

    if-eqz v0, :cond_e

    .line 196
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isFinished:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isSeeking:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isLoading:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isBuffering:Z

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_b

    :cond_e
    const/4 v0, 0x0

    :goto_b
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->canBePaused:Z

    if-eqz p3, :cond_10

    .line 197
    iget-boolean p3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isFinished:Z

    if-nez p3, :cond_f

    iget-object p3, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-eqz p3, :cond_10

    :cond_f
    iget-boolean p3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isSeeking:Z

    if-nez p3, :cond_10

    const/4 p3, 0x1

    goto :goto_c

    :cond_10
    const/4 p3, 0x0

    :goto_c
    iput-boolean p3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->canBeReplayed:Z

    .line 198
    iget-boolean p3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isStatic:Z

    if-eqz p3, :cond_12

    iget-object p3, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerModel:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iget-boolean p3, p3, Lcom/aol/mobile/sdk/player/model/PlayerModel;->isAutoplayOn:Z

    if-nez p3, :cond_11

    iget-boolean p3, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->isPlaybackStarted:Z

    if-eqz p3, :cond_12

    :cond_11
    iget-boolean p3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isSeeking:Z

    if-nez p3, :cond_12

    const/4 v1, 0x1

    :cond_12
    iput-boolean v1, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->canBeSeek:Z

    .line 200
    iget p3, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->bufferedPercentage:I

    iput p3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->bufferedPercentage:I

    .line 202
    iget-object p3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->model:Lcom/aol/mobile/sdk/player/model/VideoModel;

    iget-object p3, p3, Lcom/aol/mobile/sdk/player/model/VideoModel;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->title:Ljava/lang/String;

    .line 203
    iget-object p3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->model:Lcom/aol/mobile/sdk/player/model/VideoModel;

    iget-object p3, p3, Lcom/aol/mobile/sdk/player/model/VideoModel;->renderer:Ljava/lang/String;

    iput-object p3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->renderer:Ljava/lang/String;

    .line 205
    iget-wide v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->hlsBitrate:J

    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->hlsBitrate:J

    .line 207
    iget-object p3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->audioTrackList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 208
    iget-object p3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->textTrackList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 210
    iget-object p3, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->audioTrackList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v2, :cond_14

    .line 211
    iget-object p3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->audioTrackList:Ljava/util/List;

    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->audioTrackList:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    iput-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->selectedAudioTrack:Lcom/aol/mobile/sdk/renderer/AudioTrack;

    .line 214
    iget-object p3, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->audioTrackList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_13
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aol/mobile/sdk/renderer/AudioTrack;

    .line 215
    iget-boolean v1, v0, Lcom/aol/mobile/sdk/renderer/AudioTrack;->isSelected:Z

    if-eqz v1, :cond_13

    .line 216
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->selectedAudioTrack:Lcom/aol/mobile/sdk/renderer/AudioTrack;

    goto :goto_d

    .line 221
    :cond_14
    iput-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->selectedAudioTrack:Lcom/aol/mobile/sdk/renderer/AudioTrack;

    .line 224
    :cond_15
    :goto_d
    iget-object p3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->textTrackList:Ljava/util/List;

    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->textTrackList:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    iput-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->selectedTextTrack:Lcom/aol/mobile/sdk/renderer/TextTrack;

    .line 227
    iget-object p3, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->textTrackList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_16
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aol/mobile/sdk/renderer/TextTrack;

    .line 228
    iget-boolean v1, v0, Lcom/aol/mobile/sdk/renderer/TextTrack;->isSelected:Z

    if-eqz v1, :cond_16

    .line 229
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->selectedTextTrack:Lcom/aol/mobile/sdk/renderer/TextTrack;

    .line 233
    :cond_17
    iget-object p3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->adCues:Ljava/util/Set;

    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->adCues:Ljava/util/Set;

    invoke-interface {p3, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_18

    .line 234
    iget-object p3, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->adCues:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 235
    iget-object p3, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->adCues:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 236
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->adCues:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 239
    :cond_18
    iget-boolean p2, p2, Lcom/aol/mobile/sdk/player/model/VideoModel;->isScreenCastingEnabled:Z

    iput-boolean p2, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isScreenCastingEnabled:Z

    .line 241
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->subtitles:Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;

    invoke-static {p0, p1}, Lcom/aol/mobile/sdk/player/model/properties/Transformer;->updateSubtitlesProps(Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;Lcom/aol/mobile/sdk/player/model/PlayerState;)V

    return-void
.end method

.method static updateViewportProps(Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;Lcom/aol/mobile/sdk/player/model/PlayerState;)V
    .locals 2

    .line 245
    sget-object v0, Lcom/aol/mobile/sdk/player/model/properties/Transformer$1;->$SwitchMap$com$aol$mobile$sdk$player$model$PlayerState$ViewState:[I

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->viewState:Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 251
    :pswitch_0
    iget v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerWidth:I

    iput v0, p0, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->width:I

    .line 252
    iget p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerHeight:I

    iput p1, p0, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    iget v0, v0, Lcom/aol/mobile/sdk/player/model/AdState;->width:I

    iput v0, p0, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->width:I

    .line 248
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    iget p1, p1, Lcom/aol/mobile/sdk/player/model/AdState;->height:I

    iput p1, p0, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
