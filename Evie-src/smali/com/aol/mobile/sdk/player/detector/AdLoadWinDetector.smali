.class public final Lcom/aol/mobile/sdk/player/detector/AdLoadWinDetector;
.super Ljava/lang/Object;
.source "AdLoadWinDetector.java"


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
.method public detect(Ljava/lang/String;)Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/AdLoadWinDetector;->adId:Ljava/lang/String;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/AdLoadWinDetector;->adId:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 16
    :goto_0
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/detector/AdLoadWinDetector;->adId:Ljava/lang/String;

    return v0
.end method
