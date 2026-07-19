.class public final Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;
.super Ljava/lang/Object;
.source "TelemetrySender.java"


# instance fields
.field public final context:Ljava/lang/String;

.field private final handler:Lcom/aol/mobile/sdk/player/http/EmptyResponseHandler;

.field private final httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

.field private final parser:Lcom/aol/mobile/sdk/player/http/EmptyResponseParser;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/http/HttpService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/aol/mobile/sdk/player/http/EmptyResponseParser;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/http/EmptyResponseParser;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->parser:Lcom/aol/mobile/sdk/player/http/EmptyResponseParser;

    .line 39
    new-instance v0, Lcom/aol/mobile/sdk/player/http/EmptyResponseHandler;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/http/EmptyResponseHandler;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->handler:Lcom/aol/mobile/sdk/player/http/EmptyResponseHandler;

    .line 43
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    .line 44
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->context:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->url:Ljava/lang/String;

    return-void
.end method

.method private sendData(Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/aol/mobile/sdk/player/http/DataSerializer<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->parser:Lcom/aol/mobile/sdk/player/http/EmptyResponseParser;

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->handler:Lcom/aol/mobile/sdk/player/http/EmptyResponseHandler;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/aol/mobile/sdk/player/http/HttpService;->makePost(Ljava/lang/String;Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V

    return-void
.end method


# virtual methods
.method public sendExternalPlaybackTriggeredData()V
    .locals 2

    .line 57
    new-instance v0, Lcom/aol/mobile/sdk/player/telemetry/data/ExternalPlaybackTriggeredData;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->context:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/aol/mobile/sdk/player/telemetry/data/ExternalPlaybackTriggeredData;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/aol/mobile/sdk/player/telemetry/serializer/ExternalPlaybackTriggeredSerializer;

    invoke-direct {v1}, Lcom/aol/mobile/sdk/player/telemetry/serializer/ExternalPlaybackTriggeredSerializer;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->sendData(Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;)V

    return-void
.end method

.method public sendJSIssue(Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;)V
    .locals 1

    .line 53
    new-instance v0, Lcom/aol/mobile/sdk/player/js/telemetry/JsIssueSerializer;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/js/telemetry/JsIssueSerializer;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->sendData(Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;)V

    return-void
.end method

.method public sendPlaybackErrorData(Lcom/aol/mobile/sdk/player/model/ErrorState;Ljava/lang/String;)V
    .locals 2

    .line 61
    new-instance v0, Lcom/aol/mobile/sdk/player/telemetry/data/PlaybackErrorData;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->context:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcom/aol/mobile/sdk/player/telemetry/data/PlaybackErrorData;-><init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/model/ErrorState;Ljava/lang/String;)V

    new-instance p1, Lcom/aol/mobile/sdk/player/telemetry/serializer/PlaybackErrorSerializer;

    invoke-direct {p1}, Lcom/aol/mobile/sdk/player/telemetry/serializer/PlaybackErrorSerializer;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->sendData(Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;)V

    return-void
.end method

.method public sendSubtitlesEnabledData(Z)V
    .locals 2

    .line 65
    new-instance v0, Lcom/aol/mobile/sdk/player/telemetry/data/SubtitlesEnabledData;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->context:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/aol/mobile/sdk/player/telemetry/data/SubtitlesEnabledData;-><init>(Ljava/lang/String;Z)V

    new-instance p1, Lcom/aol/mobile/sdk/player/telemetry/serializer/SubtitlesEnabledSerializer;

    invoke-direct {p1}, Lcom/aol/mobile/sdk/player/telemetry/serializer/SubtitlesEnabledSerializer;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->sendData(Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;)V

    return-void
.end method

.method public sendVideoServiceJsonParsingErrorData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 69
    new-instance v0, Lcom/aol/mobile/sdk/player/telemetry/data/VideoServiceJsonParsingErrorData;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->context:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcom/aol/mobile/sdk/player/telemetry/data/VideoServiceJsonParsingErrorData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/aol/mobile/sdk/player/telemetry/serializer/VideoServiceJsonParsingErrorSerializer;

    invoke-direct {p1}, Lcom/aol/mobile/sdk/player/telemetry/serializer/VideoServiceJsonParsingErrorSerializer;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->sendData(Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;)V

    return-void
.end method

.method public sendVrmStatisticsData(JJ)V
    .locals 7

    .line 73
    new-instance v6, Lcom/aol/mobile/sdk/player/telemetry/data/VrmStatisticsData;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->context:Ljava/lang/String;

    move-object v0, v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/aol/mobile/sdk/player/telemetry/data/VrmStatisticsData;-><init>(Ljava/lang/String;JJ)V

    new-instance p1, Lcom/aol/mobile/sdk/player/telemetry/serializer/VrmStatisticsSerializer;

    invoke-direct {p1}, Lcom/aol/mobile/sdk/player/telemetry/serializer/VrmStatisticsSerializer;-><init>()V

    invoke-direct {p0, v6, p1}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->sendData(Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;)V

    return-void
.end method
