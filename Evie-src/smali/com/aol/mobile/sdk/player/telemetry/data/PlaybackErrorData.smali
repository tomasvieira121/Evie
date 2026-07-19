.class public Lcom/aol/mobile/sdk/player/telemetry/data/PlaybackErrorData;
.super Ljava/lang/Object;
.source "PlaybackErrorData.java"


# instance fields
.field public final context:Ljava/lang/String;

.field public final errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

.field public final propsAsString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/model/ErrorState;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/data/PlaybackErrorData;->context:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/telemetry/data/PlaybackErrorData;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    .line 23
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/telemetry/data/PlaybackErrorData;->propsAsString:Ljava/lang/String;

    return-void
.end method
