.class public Lcom/aol/mobile/sdk/player/js/PropertiesSerializer;
.super Ljava/lang/Object;
.source "PropertiesSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJson(Lcom/aol/mobile/sdk/player/model/properties/Properties;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 30
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 31
    iget-object v3, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    const-string v4, "kind"

    const-string v5, "Static"

    .line 32
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "isPlaybackReady"

    .line 33
    iget-boolean v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isLoading:Z

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "isLoading"

    .line 34
    iget-boolean v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isLoading:Z

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "isPlaying"

    .line 35
    iget-boolean v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isPlaying:Z

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "isPaused"

    .line 36
    iget-boolean v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->canBePlayed:Z

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "isFinished"

    .line 37
    iget-boolean v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isFinished:Z

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "error"

    .line 38
    iget-object v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move-object v5, v7

    goto :goto_0

    :cond_0
    iget-object v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    invoke-virtual {v5}, Lcom/aol/mobile/sdk/player/model/ErrorState;->name()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "hasTime"

    .line 39
    iget-object v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "isSeeking"

    .line 40
    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "isBuffering"

    .line 41
    iget-boolean v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isBuffering:Z

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "isSeekable"

    .line 42
    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "isStreamPlaying"

    .line 43
    iget-boolean v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isVideoStreamPlaying:Z

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 45
    iget-object v4, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-eqz v4, :cond_2

    .line 46
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "current"

    .line 47
    iget-object v9, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v9, v9, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->current:J

    invoke-virtual {v4, v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "lastPlayedDecile"

    .line 48
    iget-object v9, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget v9, v9, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->decile:I

    invoke-virtual {v4, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "bufferedProgress"

    .line 49
    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "progress"

    .line 50
    iget-object v9, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v9, v9, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->progress:D

    invoke-virtual {v4, v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "lastPlayedQuartile"

    .line 51
    iget-object v9, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget v9, v9, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->quartile:I

    invoke-virtual {v4, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "duration"

    .line 52
    iget-object v9, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v9, v9, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->duration:J

    invoke-virtual {v4, v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "remaining"

    .line 53
    iget-object v9, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v9, v9, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->remaining:J

    invoke-virtual {v4, v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "time"

    .line 54
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    const-string v4, "time"

    .line 56
    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    const-string v4, "ad"

    .line 59
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "hasSubtitles"

    .line 60
    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->subtitles:Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 62
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->camera:Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;

    iget-wide v4, v2, Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;->latitude:D

    const-wide/16 v9, 0x0

    cmpl-double v2, v4, v9

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->camera:Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;

    iget-wide v4, v2, Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;->longitude:D

    cmpl-double v2, v4, v9

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const-string v2, "videoAngles"

    .line 69
    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 63
    :cond_5
    :goto_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "horizontal"

    .line 64
    iget-object v5, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->camera:Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;

    iget-wide v9, v5, Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;->longitude:D

    invoke-virtual {v2, v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "vertical"

    .line 65
    iget-object v5, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->camera:Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;

    iget-wide v9, v5, Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;->latitude:D

    invoke-virtual {v2, v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "videoAngles"

    .line 66
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_5
    const-string v2, "isClickThroughToggled"

    .line 72
    iget-boolean v4, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isAdClicked:Z

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 74
    iget-object v2, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 75
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "scalable"

    .line 76
    iget-boolean v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isScalable:Z

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "maintainAspectRatio"

    .line 77
    iget-boolean v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isMaintainAspectRatio:Z

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "clickthrough"

    .line 78
    iget-object v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->targetUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "mediaFile"

    .line 79
    iget-object v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "adModel"

    .line 80
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_6
    const-string v2, "adModel"

    .line 82
    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_6
    const-string v2, "hasAdModel"

    .line 85
    iget-object v4, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isLastVideo"

    .line 86
    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget-boolean v4, v4, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->isLastVideo:Z

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "hasActiveAds"

    .line 88
    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 90
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-eqz v2, :cond_8

    const-string v2, "isReplayable"

    .line 91
    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-boolean v4, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->canBeReplayed:Z

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "title"

    .line 92
    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "url"

    .line 93
    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    :cond_8
    const-string v2, "isReplayable"

    .line 95
    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "title"

    .line 96
    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "url"

    .line 97
    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_8
    const-string v2, "isScalable"

    .line 99
    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isMaintainsAspectRatio"

    .line 100
    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "playedPrerollsCount"

    .line 101
    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-eqz v2, :cond_13

    .line 105
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 106
    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    const-string v5, "kind"

    .line 107
    iget-boolean v9, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isStatic:Z

    if-eqz v9, :cond_9

    const-string v9, "Static"

    goto :goto_9

    :cond_9
    const-string v9, "Live"

    :goto_9
    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "isPlaybackReady"

    .line 108
    iget-boolean v9, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isLoading:Z

    xor-int/2addr v9, v6

    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "isLoading"

    .line 109
    iget-boolean v9, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isLoading:Z

    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "isPlaying"

    .line 110
    iget-boolean v9, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isPlaying:Z

    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "isPaused"

    .line 111
    iget-boolean v9, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->canBePlayed:Z

    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "isFinished"

    .line 112
    iget-boolean v9, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isFinished:Z

    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "error"

    .line 113
    iget-object v9, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-nez v9, :cond_a

    move-object v9, v7

    goto :goto_a

    :cond_a
    iget-object v9, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    invoke-virtual {v9}, Lcom/aol/mobile/sdk/player/model/ErrorState;->name()Ljava/lang/String;

    move-result-object v9

    :goto_a
    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "hasTime"

    .line 114
    iget-object v9, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    goto :goto_b

    :cond_b
    const/4 v9, 0x0

    :goto_b
    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "isSeeking"

    .line 115
    iget-boolean v9, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isSeeking:Z

    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "isBuffering"

    .line 116
    iget-boolean v9, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isBuffering:Z

    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "isSeekable"

    .line 117
    iget-boolean v9, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->canBeSeek:Z

    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "isStreamPlaying"

    .line 118
    iget-boolean v9, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isVideoStreamPlaying:Z

    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 119
    iget-object v5, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v5, v5, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-object v5, v5, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-eqz v5, :cond_c

    .line 120
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "current"

    .line 121
    iget-object v10, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v10, v10, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->current:J

    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v9, "lastPlayedDecile"

    .line 122
    iget-object v10, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget v10, v10, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->decile:I

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "progress"

    .line 123
    iget-object v10, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v10, v10, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->progress:D

    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v9, "lastPlayedQuartile"

    .line 124
    iget-object v10, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget v10, v10, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->quartile:I

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "duration"

    .line 125
    iget-object v10, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v10, v10, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->duration:J

    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v9, "remaining"

    .line 126
    iget-object v10, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v10, v10, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->remaining:J

    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v9, "bufferedProgress"

    .line 127
    iget v10, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->bufferedPercentage:I

    int-to-float v10, v10

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v9, "time"

    .line 128
    invoke-virtual {v2, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_c

    :cond_c
    const-string v5, "time"

    .line 130
    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_c
    const-string v5, "content"

    .line 132
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->subtitles:Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;->url:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 134
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "isActive"

    .line 135
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "isLoading"

    .line 136
    invoke-virtual {v2, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "isLoaded"

    .line 137
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "subtitles"

    .line 138
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_d
    const-string v2, "subtitles"

    .line 140
    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    :goto_d
    iget-object v2, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->url:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 144
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "title"

    .line 145
    iget-object v9, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->title:Ljava/lang/String;

    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    iget-object v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 147
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "prerollCount"

    .line 148
    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "url"

    .line 149
    iget-object v3, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    invoke-virtual {v5, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "adsInfo"

    .line 150
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_e

    :cond_e
    const-string v3, "adsInfo"

    .line 152
    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    :goto_e
    iget-object v3, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->renderer:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 156
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 157
    iget-object v5, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->renderer:Ljava/lang/String;

    const-string v9, "@"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v9, "id"

    .line 158
    aget-object v8, v5, v8

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "version"

    .line 159
    aget-object v5, v5, v6

    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "renderer"

    .line 160
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    :cond_f
    const-string v3, "renderer"

    .line 162
    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    :goto_f
    iget-object v3, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->model:Lcom/aol/mobile/sdk/player/model/VideoModel;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/model/VideoModel;->thumbnails:Ljava/util/HashMap;

    if-eqz v3, :cond_11

    .line 166
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 167
    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->model:Lcom/aol/mobile/sdk/player/model/VideoModel;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/VideoModel;->thumbnails:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 168
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 169
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "width"

    .line 170
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/util/Pair;

    iget-object v9, v9, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "height"

    .line 171
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/util/Pair;

    iget-object v9, v9, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "size"

    .line 172
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "url"

    .line 173
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_10

    :cond_10
    const-string v4, "thumbnails"

    .line 176
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_11

    :cond_11
    const-string v3, "thumbnails"

    .line 178
    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_11
    const-string v3, "subtitles"

    .line 180
    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->subtitles:Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "model"

    .line 181
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_12

    :cond_12
    const-string v2, "model"

    .line 183
    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_12

    .line 186
    :cond_13
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "kind"

    const-string v4, "Unknown"

    .line 187
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "isPlaybackReady"

    .line 188
    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "isLoading"

    .line 189
    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "isPlaying"

    .line 190
    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "isPaused"

    .line 191
    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "isFinished"

    .line 192
    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "error"

    .line 193
    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "hasTime"

    .line 194
    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "isSeeking"

    .line 195
    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "isBuffering"

    .line 196
    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "isSeekable"

    .line 197
    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "isStreamPlaying"

    .line 198
    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "time"

    .line 199
    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "content"

    .line 200
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "model"

    .line 201
    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "subtitles"

    .line 202
    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :goto_12
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "available"

    .line 206
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "item"

    .line 207
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "currentIndex"

    .line 210
    iget-object v3, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v3, v3, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "hasPrevVideo"

    .line 211
    iget-object v3, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget-boolean v3, v3, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->hasPreviousVideo:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "hasNextVideo"

    .line 212
    iget-object v3, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget-boolean v3, v3, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->hasNextVideo:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "count"

    .line 213
    iget-object v3, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v3, v3, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->count:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "playlist"

    .line 214
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    .line 217
    iget-object v3, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "playbackDuration"

    .line 218
    iget-object v3, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-wide v3, v3, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->playbackDuration:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "session"

    .line 219
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "width"

    .line 222
    iget-object v3, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v3, v3, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->width:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "height"

    .line 223
    iget-object v3, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v3, v3, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "dimensions"

    .line 224
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isAutoplayEnabled"

    .line 226
    iget-boolean v2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isAutoplay:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isMuted"

    .line 227
    iget-boolean v2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isMuted:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isSessionCompleted"

    .line 228
    iget-boolean v2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isSessionCompleted:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isPlaybackInitiated"

    .line 229
    iget-boolean p0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isPlaybackStarted:Z

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 232
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
