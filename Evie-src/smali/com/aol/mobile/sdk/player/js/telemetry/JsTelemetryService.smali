.class public final Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;
.super Ljava/lang/Object;
.source "JsTelemetryService.java"


# instance fields
.field private final telemetrySender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->telemetrySender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    return-void
.end method

.method private getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 64
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 67
    :try_start_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    throw p1
.end method


# virtual methods
.method public sendJsDebugIssue(Ljava/lang/String;)V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->telemetrySender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    new-instance v1, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;

    sget-object v2, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->DEBUG_TEXT:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->telemetrySender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->context:Ljava/lang/String;

    const-string v4, "Text from javascript"

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;-><init>(Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->sendJSIssue(Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;)V

    return-void
.end method

.method public sendJsExecutionIssue(Lcom/squareup/duktape/DuktapeException;Ljava/lang/String;)V
    .locals 6

    .line 47
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->telemetrySender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    new-instance v1, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;

    sget-object v2, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->EXECUTION:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->telemetrySender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->context:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Props processing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, v3, p2, p1}, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;-><init>(Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->sendJSIssue(Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;)V

    return-void
.end method

.method public sendJsInitIssue(Lcom/squareup/duktape/DuktapeException;)V
    .locals 5

    .line 57
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->telemetrySender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    new-instance v1, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;

    sget-object v2, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->INIT:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->telemetrySender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->context:Ljava/lang/String;

    const-string v4, "Javascript init"

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;-><init>(Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->sendJSIssue(Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;)V

    return-void
.end method

.method public sendJsLoadIssue(Lcom/aol/mobile/sdk/player/http/HttpServiceException;)V
    .locals 5

    .line 38
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->telemetrySender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    new-instance v2, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;

    sget-object v3, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->SOURCE_LOADING:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->telemetrySender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->context:Ljava/lang/String;

    iget p1, p1, Lcom/aol/mobile/sdk/player/http/HttpServiceException;->responseCode:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1, v0}, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;-><init>(Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->sendJSIssue(Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;)V

    return-void
.end method

.method public sendPropsSerializationIssue(Lorg/json/JSONException;)V
    .locals 5

    .line 52
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->telemetrySender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    new-instance v2, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;

    sget-object v3, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->PROPS_SERIALIZATION:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->telemetrySender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->context:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1, v0}, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;-><init>(Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->sendJSIssue(Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;)V

    return-void
.end method
