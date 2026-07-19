.class public final Lcom/aol/mobile/sdk/player/detector/AdResumeDetector;
.super Ljava/lang/Object;
.source "AdResumeDetector.java"


# instance fields
.field private canBeFired:Z

.field private prevPlayingState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/detector/AdResumeDetector;->canBeFired:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/detector/AdResumeDetector;->prevPlayingState:Z

    return-void
.end method


# virtual methods
.method public detect(Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;Z)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 17
    iget-wide v2, p1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->current:J

    iget-wide v4, p1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->duration:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 21
    iput-boolean v1, p0, Lcom/aol/mobile/sdk/player/detector/AdResumeDetector;->canBeFired:Z

    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/aol/mobile/sdk/player/detector/AdResumeDetector;->prevPlayingState:Z

    .line 19
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/detector/AdResumeDetector;->canBeFired:Z

    .line 25
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/detector/AdResumeDetector;->prevPlayingState:Z

    if-eq p2, p1, :cond_3

    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/detector/AdResumeDetector;->canBeFired:Z

    if-eqz p1, :cond_3

    .line 29
    iput-boolean p2, p0, Lcom/aol/mobile/sdk/player/detector/AdResumeDetector;->prevPlayingState:Z

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    return p2
.end method
