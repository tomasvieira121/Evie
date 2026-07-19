.class public Lcom/aol/mobile/sdk/player/view/model/UiPropertiesTranslator;
.super Ljava/lang/Object;
.source "UiPropertiesTranslator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translatePropsTo(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;)V
    .locals 6

    .line 149
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Ad:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-eqz v0, :cond_2

    .line 152
    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean v4, v4, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isLoading:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean v4, v4, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isBuffering:Z

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->isProgressViewVisible:Z

    if-eqz v0, :cond_3

    .line 153
    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean v4, v4, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->canBePlayed:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->isPlayButtonVisible:Z

    if-eqz v0, :cond_4

    .line 154
    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean v4, v4, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->canBePaused:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->isPauseButtonVisible:Z

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    .line 155
    :goto_4
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->isAdTimeViewVisible:Z

    .line 156
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean v0, v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isAdClicked:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->targetUrl:Ljava/lang/String;

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    iput-object v0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->adUrl:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean v0, v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->embedClickThroughUrl:Z

    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->embedClickThroughUrl:Z

    .line 158
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean p0, p0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->showClickThroughClose:Z

    if-eqz p0, :cond_7

    iget-object p0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->adUrl:Ljava/lang/String;

    if-eqz p0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->isCloseButtonVisible:Z

    if-nez v1, :cond_8

    const/16 p0, 0x64

    .line 161
    iput p0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->seekerMaxValue:I

    const-wide/16 v0, 0x0

    .line 162
    iput-wide v0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->seekerProgress:D

    const-string p0, "00:00"

    .line 163
    iput-object p0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->currentTimeText:Ljava/lang/String;

    const-string p0, "00:00"

    .line 164
    iput-object p0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->timeLeftText:Ljava/lang/String;

    const-string p0, "00:00"

    .line 165
    iput-object p0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->durationText:Ljava/lang/String;

    goto :goto_7

    .line 167
    :cond_8
    iget-wide v2, v1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->duration:J

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    long-to-int p0, v2

    iput p0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->seekerMaxValue:I

    .line 168
    iget-wide v2, v1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->progress:D

    iput-wide v2, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->seekerProgress:D

    .line 169
    iget-wide v2, v1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->current:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->currentTimeText:Ljava/lang/String;

    .line 170
    iget-wide v2, v1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->remaining:J

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->timeLeftText:Ljava/lang/String;

    .line 171
    iget-wide v0, v1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->duration:J

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;->durationText:Ljava/lang/String;

    :goto_7
    return-void
.end method

.method public static translatePropsTo(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    .line 25
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->voidVideo:Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p0, p1, v0}, Lcom/aol/mobile/sdk/player/view/model/UiPropertiesTranslator;->translateVideoProps(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 29
    invoke-static {p0, p1, v1}, Lcom/aol/mobile/sdk/player/view/model/UiPropertiesTranslator;->translateVoidVideoProps(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static translatePropsTo(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;)V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->renderer:Ljava/lang/String;

    :goto_0
    iput-object v0, p1, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;->contentRendererId:Ljava/lang/String;

    .line 141
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isCasting:Z

    iput-boolean v0, p1, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;->isCasting:Z

    .line 142
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Ad:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;->isAdVisible:Z

    .line 143
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Ad:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;->isAdControlsVisible:Z

    .line 144
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Content:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;->isContentVisible:Z

    .line 145
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v0, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Content:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne p0, v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p1, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;->isContentControlsVisible:Z

    return-void
.end method

.method private static translateVideoProps(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;)V
    .locals 12

    .line 71
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isPlaybackStarted:Z

    .line 72
    iget-boolean v1, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->canBeSeek:Z

    .line 73
    iget-boolean v2, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isSeeking:Z

    .line 74
    iget-object v3, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->title:Ljava/lang/String;

    .line 75
    iget-object v4, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    .line 77
    iget-boolean v5, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isLoading:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_1

    iget-boolean v5, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isBuffering:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isLoading:Z

    .line 78
    iget-boolean v5, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->canBePlayed:Z

    iput-boolean v5, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isPlayButtonVisible:Z

    .line 79
    iget-boolean v5, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->canBePaused:Z

    iput-boolean v5, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isPauseButtonVisible:Z

    .line 80
    iget-boolean v5, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->canBeReplayed:Z

    iput-boolean v5, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isReplayButtonVisible:Z

    if-nez v2, :cond_2

    .line 81
    iget-object v5, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v5, v5, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->count:I

    if-le v5, v7, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isNextButtonVisible:Z

    .line 82
    iget-object v5, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget-boolean v5, v5, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->hasNextVideo:Z

    iput-boolean v5, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isNextButtonEnabled:Z

    if-nez v2, :cond_3

    .line 83
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v2, v2, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->count:I

    if-le v2, v7, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isPrevButtonVisible:Z

    .line 84
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget-boolean v2, v2, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->hasPreviousVideo:Z

    iput-boolean v2, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isPrevButtonEnabled:Z

    if-eqz v4, :cond_5

    .line 86
    iget-wide v8, v4, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->duration:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isAutoplay:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isPlaybackStarted:Z

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isSeekerVisible:Z

    .line 88
    iget v2, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->bufferedPercentage:I

    iput v2, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerBufferedProgress:I

    if-nez v4, :cond_6

    const/16 v2, 0x64

    .line 91
    iput v2, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerMaxValue:I

    const-wide/16 v4, 0x0

    .line 92
    iput-wide v4, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerProgress:D

    const-string v2, "00:00"

    .line 93
    iput-object v2, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerCurrentTimeText:Ljava/lang/String;

    const-string v2, "00:00"

    .line 94
    iput-object v2, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerTimeLeftText:Ljava/lang/String;

    const-string v2, "00:00"

    .line 95
    iput-object v2, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerDurationText:Ljava/lang/String;

    goto :goto_5

    .line 97
    :cond_6
    iget-wide v8, v4, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->duration:J

    const-wide/16 v10, 0xa

    div-long/2addr v8, v10

    long-to-int v2, v8

    iput v2, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerMaxValue:I

    .line 98
    iget-wide v8, v4, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->progress:D

    iput-wide v8, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerProgress:D

    .line 99
    iget-wide v8, v4, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->current:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerCurrentTimeText:Ljava/lang/String;

    .line 100
    iget-wide v8, v4, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->remaining:J

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerTimeLeftText:Ljava/lang/String;

    .line 101
    iget-wide v4, v4, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->duration:J

    div-long/2addr v4, v10

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerDurationText:Ljava/lang/String;

    :goto_5
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    .line 104
    :goto_6
    iput-boolean v2, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isSeekForwardButtonVisible:Z

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    .line 105
    :goto_7
    iput-boolean v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isSeekBackButtonVisible:Z

    .line 107
    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->renderer:Ljava/lang/String;

    const-string v2, "com.onemobilesdk.videorenderer.flat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v7

    iput-boolean v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isCompassViewVisible:Z

    .line 108
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->camera:Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;

    iget-wide v1, v1, Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;->latitude:D

    iput-wide v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->compassLatitude:D

    .line 109
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->camera:Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;

    iget-wide v1, v1, Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;->longitude:D

    iput-wide v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->compassLongitude:D

    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    const/4 v1, 0x1

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    .line 111
    :goto_8
    iput-boolean v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isTitleVisible:Z

    .line 112
    iput-object v3, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->titleText:Ljava/lang/String;

    .line 114
    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->thumbnailUrl:Ljava/lang/String;

    iput-object v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->thumbnailImageUrl:Ljava/lang/String;

    .line 115
    iget-boolean v1, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isAutoplay:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isPlaybackStarted:Z

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_9

    :cond_a
    const/4 v1, 0x0

    :goto_9
    iput-boolean v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isThumbnailImageVisible:Z

    .line 116
    iget-boolean v1, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isVideoStreamPlaying:Z

    iput-boolean v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isStreamPlaying:Z

    .line 118
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isTrackChooserButtonVisible:Z

    .line 119
    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->audioTrackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v7, :cond_c

    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->textTrackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v7, :cond_b

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    goto :goto_b

    :cond_c
    :goto_a
    const/4 v1, 0x1

    :goto_b
    iput-boolean v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isTrackChooserButtonEnabled:Z

    .line 120
    iget-object v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 121
    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->audioTrackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aol/mobile/sdk/renderer/AudioTrack;

    .line 122
    iget-object v3, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->audioTracks:Ljava/util/LinkedList;

    new-instance v4, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;

    iget-object v5, v2, Lcom/aol/mobile/sdk/renderer/AudioTrack;->title:Ljava/lang/String;

    iget-boolean v2, v2, Lcom/aol/mobile/sdk/renderer/AudioTrack;->isSelected:Z

    invoke-direct {v4, v5, v2}, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 124
    :cond_d
    iget-object v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->ccTracks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 125
    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->textTrackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aol/mobile/sdk/renderer/TextTrack;

    .line 126
    iget-object v3, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->ccTracks:Ljava/util/LinkedList;

    new-instance v4, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;

    iget-object v5, v2, Lcom/aol/mobile/sdk/renderer/TextTrack;->title:Ljava/lang/String;

    iget-boolean v2, v2, Lcom/aol/mobile/sdk/renderer/TextTrack;->isSelected:Z

    invoke-direct {v4, v5, v2}, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel$TrackOptionVM;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 128
    :cond_e
    iget-boolean v1, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isLive:Z

    iput-boolean v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isLiveIndicatorVisible:Z

    .line 129
    iget-boolean v1, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isLive:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isVideoStreamPlaying:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_e

    :cond_f
    const/4 v1, 0x0

    :goto_e
    iput-boolean v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isOnLiveEdge:Z

    if-eqz v0, :cond_10

    .line 130
    iget-boolean v1, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isScreenCastingEnabled:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_f

    :cond_10
    const/4 v1, 0x0

    :goto_f
    iput-boolean v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isCastButtonVisible:Z

    if-eqz v0, :cond_11

    .line 131
    iget-boolean p0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isCasting:Z

    if-eqz p0, :cond_11

    const/4 v6, 0x1

    :cond_11
    iput-boolean v6, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isCasting:Z

    .line 133
    iget-object p0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->adCues:Ljava/util/Set;

    iget-object v0, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->adCues:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    .line 134
    iget-object p0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->adCues:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 135
    iget-object p0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->adCues:Ljava/util/Set;

    iget-object p1, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->adCues:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_12
    return-void
.end method

.method private static translateVoidVideoProps(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;)V
    .locals 5

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isLoading:Z

    .line 36
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isPlayButtonVisible:Z

    .line 37
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isPauseButtonVisible:Z

    .line 38
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isReplayButtonVisible:Z

    .line 39
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v1, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->count:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isNextButtonVisible:Z

    .line 40
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget-boolean v1, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->hasNextVideo:Z

    iput-boolean v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isNextButtonEnabled:Z

    .line 41
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v1, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->count:I

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isPrevButtonVisible:Z

    .line 42
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget-boolean v1, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->hasPreviousVideo:Z

    iput-boolean v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isPrevButtonEnabled:Z

    .line 43
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isSeekerVisible:Z

    .line 44
    iput v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerBufferedProgress:I

    const/16 v1, 0x64

    .line 45
    iput v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerMaxValue:I

    const-wide/16 v3, 0x0

    .line 46
    iput-wide v3, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerProgress:D

    const-string v1, "00:00"

    .line 47
    iput-object v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerCurrentTimeText:Ljava/lang/String;

    const-string v1, "00:00"

    .line 48
    iput-object v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerTimeLeftText:Ljava/lang/String;

    const-string v1, "00:00"

    .line 49
    iput-object v1, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->seekerDurationText:Ljava/lang/String;

    .line 50
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isSeekForwardButtonVisible:Z

    .line 51
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isSeekBackButtonVisible:Z

    .line 52
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isCompassViewVisible:Z

    .line 53
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->camera:Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;

    iget-wide v3, v1, Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;->latitude:D

    iput-wide v3, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->compassLatitude:D

    .line 54
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->camera:Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;

    iget-wide v3, p0, Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;->longitude:D

    iput-wide v3, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->compassLongitude:D

    .line 55
    iput-boolean v2, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isTitleVisible:Z

    .line 56
    iget-object p0, p2, Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;->reason:Ljava/lang/String;

    iput-object p0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->titleText:Ljava/lang/String;

    .line 57
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isTrackChooserButtonVisible:Z

    .line 58
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isTrackChooserButtonEnabled:Z

    const/4 p0, 0x0

    .line 59
    iput-object p0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->thumbnailImageUrl:Ljava/lang/String;

    .line 60
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isThumbnailImageVisible:Z

    .line 61
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isStreamPlaying:Z

    .line 62
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isLiveIndicatorVisible:Z

    .line 63
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isOnLiveEdge:Z

    .line 64
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isCastButtonVisible:Z

    .line 65
    iput-boolean v0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->isCasting:Z

    .line 66
    iget-object p0, p1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;->adCues:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method
