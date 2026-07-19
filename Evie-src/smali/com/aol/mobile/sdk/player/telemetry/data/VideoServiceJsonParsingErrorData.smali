.class public Lcom/aol/mobile/sdk/player/telemetry/data/VideoServiceJsonParsingErrorData;
.super Ljava/lang/Object;
.source "VideoServiceJsonParsingErrorData.java"


# instance fields
.field public final context:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final responseJson:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/data/VideoServiceJsonParsingErrorData;->context:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/telemetry/data/VideoServiceJsonParsingErrorData;->responseJson:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/telemetry/data/VideoServiceJsonParsingErrorData;->message:Ljava/lang/String;

    return-void
.end method
