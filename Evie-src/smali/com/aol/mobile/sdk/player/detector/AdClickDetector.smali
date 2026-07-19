.class public final Lcom/aol/mobile/sdk/player/detector/AdClickDetector;
.super Ljava/lang/Object;
.source "AdClickDetector.java"


# instance fields
.field private isClicked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/detector/AdClickDetector;->isClicked:Z

    return-void
.end method


# virtual methods
.method public detect(Z)Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/detector/AdClickDetector;->isClicked:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/detector/AdClickDetector;->isClicked:Z

    return v0
.end method
