.class public final Lcom/aol/mobile/sdk/player/telemetry/detector/ExternalPlaybackTriggeredDetector;
.super Ljava/lang/Object;
.source "ExternalPlaybackTriggeredDetector.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# instance fields
.field private castTriggered:Z

.field private final sender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/ExternalPlaybackTriggeredDetector;->sender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/ExternalPlaybackTriggeredDetector;->castTriggered:Z

    if-nez v0, :cond_0

    iget-boolean p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isCasting:Z

    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/ExternalPlaybackTriggeredDetector;->sender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->sendExternalPlaybackTriggeredData()V

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/ExternalPlaybackTriggeredDetector;->castTriggered:Z

    :cond_0
    return-void
.end method
