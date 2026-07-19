.class public Lcom/aol/mobile/sdk/player/view/DefaultFeedbackHandler;
.super Ljava/lang/Object;
.source "DefaultFeedbackHandler.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PublicApi;
.end annotation


# static fields
.field private static final FACTOR:D

.field private static final TEN_SECONDS:J = 0x2710L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    sput-wide v0, Lcom/aol/mobile/sdk/player/view/DefaultFeedbackHandler;->FACTOR:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getNormalizedProgress(JJ)D
    .locals 3

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    return-wide p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gez v2, :cond_1

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_1
    long-to-double p3, p3

    long-to-double p1, p1

    .line 30
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p3, p1

    return-wide p3
.end method

.method public onAudioTrackSelected(Lcom/aol/mobile/sdk/player/Player;I)V
    .locals 1

    .line 100
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object v0

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->audioTrackList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/aol/mobile/sdk/renderer/AudioTrack;

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/Player;->selectAudioTrack(Lcom/aol/mobile/sdk/renderer/AudioTrack;)V

    return-void
.end method

.method public onButtonClick(Lcom/aol/mobile/sdk/player/Player;Lcom/aol/mobile/sdk/controls/ContentControls$Button;)V
    .locals 7

    .line 35
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object v0

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    .line 36
    iget-object v1, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    .line 37
    :cond_1
    iget-wide v5, v0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->duration:J

    :goto_1
    cmp-long v1, v5, v3

    if-lez v1, :cond_3

    .line 38
    iget-object v1, v0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->seekPosition:Ljava/lang/Long;

    if-nez v1, :cond_2

    iget-wide v0, v0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->current:J

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->seekPosition:Ljava/lang/Long;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 41
    :cond_3
    sget-object v0, Lcom/aol/mobile/sdk/player/view/DefaultFeedbackHandler$1;->$SwitchMap$com$aol$mobile$sdk$controls$ContentControls$Button:[I

    invoke-virtual {p2}, Lcom/aol/mobile/sdk/controls/ContentControls$Button;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const-wide/16 v0, 0x2710

    packed-switch p2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-wide/16 v0, 0x0

    .line 73
    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/aol/mobile/sdk/player/Player;->setCameraDirection(DD)V

    goto :goto_3

    :pswitch_1
    if-nez v2, :cond_4

    return-void

    .line 69
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v5, v6, v2, v3}, Lcom/aol/mobile/sdk/player/view/DefaultFeedbackHandler;->getNormalizedProgress(JJ)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/aol/mobile/sdk/player/Player;->seekTo(D)V

    goto :goto_3

    :pswitch_2
    if-nez v2, :cond_5

    return-void

    .line 64
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p0, v5, v6, v2, v3}, Lcom/aol/mobile/sdk/player/view/DefaultFeedbackHandler;->getNormalizedProgress(JJ)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/aol/mobile/sdk/player/Player;->seekTo(D)V

    goto :goto_3

    .line 59
    :pswitch_3
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->playPrevious()V

    goto :goto_3

    .line 55
    :pswitch_4
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->playNext()V

    goto :goto_3

    .line 51
    :pswitch_5
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->replay()V

    goto :goto_3

    .line 47
    :pswitch_6
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->pause()V

    goto :goto_3

    .line 43
    :pswitch_7
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->play()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCcTrackSelected(Lcom/aol/mobile/sdk/player/Player;I)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object v0

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->textTrackList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/aol/mobile/sdk/renderer/TextTrack;

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/Player;->selectTextTrack(Lcom/aol/mobile/sdk/renderer/TextTrack;)V

    return-void
.end method

.method public onScroll(Lcom/aol/mobile/sdk/player/Player;FF)V
    .locals 4

    neg-float p2, p2

    float-to-double v0, p2

    .line 80
    sget-wide v2, Lcom/aol/mobile/sdk/player/view/DefaultFeedbackHandler;->FACTOR:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v2

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/aol/mobile/sdk/player/Player;->moveCameraBy(DD)V

    return-void
.end method

.method public onSeekStarted(Lcom/aol/mobile/sdk/player/Player;)V
    .locals 0

    .line 85
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->startSeek()V

    return-void
.end method

.method public onSeekStopped(Lcom/aol/mobile/sdk/player/Player;)V
    .locals 0

    .line 95
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->stopSeek()V

    return-void
.end method

.method public onSeekTo(Lcom/aol/mobile/sdk/player/Player;D)V
    .locals 0

    .line 90
    invoke-virtual {p1, p2, p3}, Lcom/aol/mobile/sdk/player/Player;->seekTo(D)V

    return-void
.end method
