.class public final Lcom/aol/mobile/sdk/player/detector/VideoImpressionDetector;
.super Ljava/lang/Object;
.source "VideoImpressionDetector.java"


# instance fields
.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detect(Ljava/lang/String;IIZ)Z
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/VideoImpressionDetector;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-lez p2, :cond_2

    if-gtz p3, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/detector/VideoImpressionDetector;->sessionId:Ljava/lang/String;

    return p4

    :cond_2
    :goto_0
    return v1
.end method
