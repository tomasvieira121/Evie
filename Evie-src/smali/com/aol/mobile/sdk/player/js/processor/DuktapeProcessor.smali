.class public final Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;
.super Ljava/lang/Object;
.source "DuktapeProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Bridge;,
        Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Native;,
        Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Callback;
    }
.end annotation


# instance fields
.field protected final callback:Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Callback;

.field private duktape:Lcom/squareup/duktape/Duktape;

.field private final jsTelemetry:Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Callback;)V
    .locals 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p4, p0, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->callback:Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Callback;

    .line 28
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->jsTelemetry:Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;

    .line 31
    :try_start_0
    invoke-static {}, Lcom/squareup/duktape/Duktape;->create()Lcom/squareup/duktape/Duktape;

    move-result-object p4

    iput-object p4, p0, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->duktape:Lcom/squareup/duktape/Duktape;

    .line 32
    iget-object p4, p0, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->duktape:Lcom/squareup/duktape/Duktape;

    const-string v0, "nativeBridge"

    const-class v1, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Native;

    new-instance v2, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Bridge;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Bridge;-><init>(Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$1;)V

    invoke-virtual {p4, v0, v1, v2}, Lcom/squareup/duktape/Duktape;->set(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 33
    iget-object p4, p0, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->duktape:Lcom/squareup/duktape/Duktape;

    invoke-virtual {p4, p3}, Lcom/squareup/duktape/Duktape;->evaluate(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iget-object p3, p0, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->duktape:Lcom/squareup/duktape/Duktape;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "var processor = onemobilesdk_analytics("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", {   sendURL : function(url) {       nativeBridge.sendUrl(url)   }, print : function(value) {        nativeBridge.print(value)   }})"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/squareup/duktape/Duktape;->evaluate(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/squareup/duktape/DuktapeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 43
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->sendJsInitIssue(Lcom/squareup/duktape/DuktapeException;)V

    .line 44
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->dispose()V

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;)Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->jsTelemetry:Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->duktape:Lcom/squareup/duktape/Duktape;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/squareup/duktape/Duktape;->close()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->duktape:Lcom/squareup/duktape/Duktape;

    :cond_0
    return-void
.end method

.method public processProps(Ljava/lang/String;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->duktape:Lcom/squareup/duktape/Duktape;

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processor.props("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/duktape/Duktape;->evaluate(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/squareup/duktape/DuktapeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->jsTelemetry:Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;

    invoke-virtual {v1, v0, p1}, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->sendJsExecutionIssue(Lcom/squareup/duktape/DuktapeException;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->dispose()V

    :goto_0
    return-void
.end method
