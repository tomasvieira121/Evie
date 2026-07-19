.class public final Lcom/aol/mobile/sdk/player/detector/AdFinishDetector;
.super Ljava/lang/Object;
.source "AdFinishDetector.java"


# instance fields
.field private adId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detect(Ljava/lang/String;D)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 13
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/detector/AdFinishDetector;->adId:Ljava/lang/String;

    return v0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/detector/AdFinishDetector;->adId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p2, v1

    if-nez v3, :cond_2

    .line 21
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/detector/AdFinishDetector;->adId:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
