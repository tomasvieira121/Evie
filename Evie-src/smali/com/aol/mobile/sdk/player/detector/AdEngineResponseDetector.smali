.class public final Lcom/aol/mobile/sdk/player/detector/AdEngineResponseDetector;
.super Ljava/lang/Object;
.source "AdEngineResponseDetector.java"


# instance fields
.field private isSent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detect(Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;)Z
    .locals 3

    .line 15
    sget-object v0, Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;->NO_TASK:Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 16
    iput-boolean v1, p0, Lcom/aol/mobile/sdk/player/detector/AdEngineResponseDetector;->isSent:Z

    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/detector/AdEngineResponseDetector;->isSent:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;->FINISHED:Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;

    if-ne p1, v0, :cond_1

    .line 20
    iput-boolean v2, p0, Lcom/aol/mobile/sdk/player/detector/AdEngineResponseDetector;->isSent:Z

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
