.class public Lcom/aol/mobile/sdk/player/view/model/VideoVMTranslator;
.super Ljava/lang/Object;
.source "VideoVMTranslator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translatePropsToAdVideoVM(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;)V
    .locals 5

    .line 19
    iput-object p2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    .line 20
    iget-boolean p2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isMuted:Z

    iput-boolean p2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isMuted:Z

    .line 21
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->seekPosition:Ljava/lang/Long;

    :goto_0
    iput-object p2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->seekPosition:Ljava/lang/Long;

    .line 22
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Ad:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isActive:Z

    .line 23
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean p2, p2, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isAdClicked:Z

    if-nez p2, :cond_2

    iget-boolean p2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isActive:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->shouldPlay:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->shouldPlay:Z

    .line 24
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    iput-object p2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->videoUrl:Ljava/lang/String;

    .line 25
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean p2, p2, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isScalable:Z

    iput-boolean p2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isScalable:Z

    .line 26
    iput-boolean v3, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->areSubtitlesEnabled:Z

    .line 27
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean p2, p2, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isMaintainAspectRatio:Z

    iput-boolean p2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isMaintainAspectRatio:Z

    .line 28
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-nez p2, :cond_3

    move-object p2, v0

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v3, p2, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->current:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :goto_3
    iput-object p2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->currentPosition:Ljava/lang/Long;

    .line 29
    iput-object v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->title:Ljava/lang/String;

    .line 30
    iput-boolean v2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isAd:Z

    .line 31
    iget-boolean p0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isCasting:Z

    iput-boolean p0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isCasting:Z

    return-void
.end method

.method public static translatePropsToContentVideoVM(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;)V
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    .line 36
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->camera:Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;

    .line 38
    iput-object p2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    .line 39
    iget-boolean p2, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isMuted:Z

    iput-boolean p2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isMuted:Z

    const/4 p2, 0x0

    if-eqz v0, :cond_1

    .line 40
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->seekPosition:Ljava/lang/Long;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p2

    :goto_1
    iput-object v2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->seekPosition:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 41
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v2, v2, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->current:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3

    :cond_3
    :goto_2
    move-object v2, p2

    :goto_3
    iput-object v2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->currentPosition:Ljava/lang/Long;

    .line 43
    iget-wide v2, v1, Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;->longitude:D

    iput-wide v2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->longitude:D

    .line 44
    iget-wide v1, v1, Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;->latitude:D

    iput-wide v1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->latitude:D

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 45
    iget-boolean v3, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isLive:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    iput-boolean v3, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isLive:Z

    .line 46
    iget-boolean v3, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isCasting:Z

    iput-boolean v3, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isCasting:Z

    .line 47
    iget-object v3, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v4, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Content:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    iput-boolean v3, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isActive:Z

    .line 48
    iget-boolean v3, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isActive:Z

    if-eqz v3, :cond_6

    iget-boolean p0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->shouldPlay:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_6

    :cond_6
    const/4 p0, 0x0

    :goto_6
    iput-boolean p0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->shouldPlay:Z

    if-nez v0, :cond_7

    move-object p0, p2

    goto :goto_7

    .line 49
    :cond_7
    iget-object p0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->url:Ljava/lang/String;

    :goto_7
    iput-object p0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->videoUrl:Ljava/lang/String;

    if-nez v0, :cond_8

    move-object p0, p2

    goto :goto_8

    .line 50
    :cond_8
    iget-object p0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->subtitles:Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;

    iget-object p0, p0, Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;->url:Ljava/lang/String;

    :goto_8
    iput-object p0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->subtitleUrl:Ljava/lang/String;

    if-nez v0, :cond_9

    move-object p0, p2

    goto :goto_9

    .line 51
    :cond_9
    iget-object p0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->subtitles:Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;

    iget-object p0, p0, Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;->lang:Ljava/lang/String;

    :goto_9
    iput-object p0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->subtitleLang:Ljava/lang/String;

    .line 52
    iput-boolean v1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->areSubtitlesEnabled:Z

    if-nez v0, :cond_a

    move-object p0, p2

    goto :goto_a

    .line 53
    :cond_a
    iget-object p0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->title:Ljava/lang/String;

    :goto_a
    iput-object p0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->title:Ljava/lang/String;

    .line 54
    iput-boolean v2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isAd:Z

    if-eqz v0, :cond_b

    .line 56
    iget-object p0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->selectedAudioTrack:Lcom/aol/mobile/sdk/renderer/AudioTrack;

    iput-object p0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->selectedAudioTrack:Lcom/aol/mobile/sdk/renderer/AudioTrack;

    .line 57
    iget-object p0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->selectedTextTrack:Lcom/aol/mobile/sdk/renderer/TextTrack;

    iput-object p0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->selectedTextTrack:Lcom/aol/mobile/sdk/renderer/TextTrack;

    goto :goto_b

    .line 59
    :cond_b
    iput-object p2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->selectedAudioTrack:Lcom/aol/mobile/sdk/renderer/AudioTrack;

    .line 60
    iput-object p2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->selectedTextTrack:Lcom/aol/mobile/sdk/renderer/TextTrack;

    :goto_b
    return-void
.end method
