.class public final Lcom/aol/mobile/sdk/player/detector/AdRequestDetector;
.super Ljava/lang/Object;
.source "AdRequestDetector.java"


# instance fields
.field private adNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detect(I)Z
    .locals 1

    .line 13
    iget v0, p0, Lcom/aol/mobile/sdk/player/detector/AdRequestDetector;->adNum:I

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iput p1, p0, Lcom/aol/mobile/sdk/player/detector/AdRequestDetector;->adNum:I

    return v0
.end method
