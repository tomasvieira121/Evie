.class final Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Bridge;
.super Ljava/lang/Object;
.source "DuktapeProcessor.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Bridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;


# direct methods
.method private constructor <init>(Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Bridge;->this$0:Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Bridge;-><init>(Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;)V

    return-void
.end method


# virtual methods
.method public print(Ljava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Bridge;->this$0:Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->access$100(Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;)Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->sendJsDebugIssue(Ljava/lang/String;)V

    return-void
.end method

.method public sendUrl(Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Bridge;->this$0:Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->callback:Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Callback;

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Callback;->onUrlFired(Ljava/lang/String;)V

    return-void
.end method
