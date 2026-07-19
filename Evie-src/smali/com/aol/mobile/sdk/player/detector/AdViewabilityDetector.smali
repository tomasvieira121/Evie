.class public final Lcom/aol/mobile/sdk/player/detector/AdViewabilityDetector;
.super Ljava/lang/Object;
.source "AdViewabilityDetector.java"


# instance fields
.field private isGroupMFired:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isGroupMReached(D)Z
    .locals 3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public detect(Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 11
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/detector/AdViewabilityDetector;->isGroupMFired:Z

    return v0

    .line 15
    :cond_0
    iget-boolean v1, p0, Lcom/aol/mobile/sdk/player/detector/AdViewabilityDetector;->isGroupMFired:Z

    if-eqz v1, :cond_1

    return v0

    .line 19
    :cond_1
    iget-wide v1, p1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->progress:D

    invoke-direct {p0, v1, v2}, Lcom/aol/mobile/sdk/player/detector/AdViewabilityDetector;->isGroupMReached(D)Z

    move-result p1

    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/detector/AdViewabilityDetector;->isGroupMFired:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method
