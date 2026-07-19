.class public Lcom/aol/mobile/sdk/player/telemetry/detector/SubtitlesEnabledDetector;
.super Ljava/lang/Object;
.source "SubtitlesEnabledDetector.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# instance fields
.field private ccIsEnabled:Z

.field private selectedCc:Lcom/aol/mobile/sdk/renderer/TextTrack;

.field private final sender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/SubtitlesEnabledDetector;->sender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 3

    .line 34
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    .line 36
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/SubtitlesEnabledDetector;->sessionId:Ljava/lang/String;

    iget-object v2, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aol/mobile/sdk/player/utils/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 37
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/SubtitlesEnabledDetector;->sessionId:Ljava/lang/String;

    .line 38
    iput-boolean v2, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/SubtitlesEnabledDetector;->ccIsEnabled:Z

    :cond_0
    if-eqz v0, :cond_1

    .line 41
    iget-object p1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->selectedTextTrack:Lcom/aol/mobile/sdk/renderer/TextTrack;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 43
    :goto_0
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/SubtitlesEnabledDetector;->selectedCc:Lcom/aol/mobile/sdk/renderer/TextTrack;

    if-eq v1, p1, :cond_3

    .line 44
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/SubtitlesEnabledDetector;->selectedCc:Lcom/aol/mobile/sdk/renderer/TextTrack;

    .line 46
    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/SubtitlesEnabledDetector;->ccIsEnabled:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/SubtitlesEnabledDetector;->selectedCc:Lcom/aol/mobile/sdk/renderer/TextTrack;

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lcom/aol/mobile/sdk/renderer/TextTrack;->isEmpty:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/SubtitlesEnabledDetector;->ccIsEnabled:Z

    .line 48
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/SubtitlesEnabledDetector;->sender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->subtitles:Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1, p1}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->sendSubtitlesEnabledData(Z)V

    :cond_3
    return-void
.end method
