.class public final Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;
.super Ljava/lang/Object;
.source "VrmTelemetry.java"


# instance fields
.field private final httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

.field private final telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    .line 24
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;->telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

    return-void
.end method


# virtual methods
.method public getStateObserver()Lcom/aol/mobile/sdk/player/StateObserver;
    .locals 4

    .line 29
    new-instance v0, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;->telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;->context:Ljava/lang/String;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;->telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;->url:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v1, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry$1;

    invoke-direct {v1, p0, v0}, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry$1;-><init>(Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;)V

    return-object v1
.end method
