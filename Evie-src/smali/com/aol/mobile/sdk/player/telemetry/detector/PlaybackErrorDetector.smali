.class public final Lcom/aol/mobile/sdk/player/telemetry/detector/PlaybackErrorDetector;
.super Ljava/lang/Object;
.source "PlaybackErrorDetector.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# instance fields
.field private errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

.field private final sender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/PlaybackErrorDetector;->sender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 3

    .line 32
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/PlaybackErrorDetector;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 35
    :try_start_0
    invoke-static {p1}, Lcom/aol/mobile/sdk/player/js/PropertiesSerializer;->toJson(Lcom/aol/mobile/sdk/player/model/properties/Properties;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 37
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/PlaybackErrorDetector;->sender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    iget-object v2, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    invoke-virtual {v1, v2, v0}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->sendPlaybackErrorData(Lcom/aol/mobile/sdk/player/model/ErrorState;Ljava/lang/String;)V

    .line 40
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/detector/PlaybackErrorDetector;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    :cond_0
    return-void
.end method
