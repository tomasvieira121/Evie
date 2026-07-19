.class public final Lcom/aol/mobile/sdk/player/model/CameraDirection;
.super Ljava/lang/Object;
.source "CameraDirection.java"


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public change(DD)V
    .locals 6

    .line 22
    invoke-static {p1, p2}, Lcom/aol/mobile/sdk/player/utils/AngleHelper;->asPiMinusPiRange(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/aol/mobile/sdk/player/model/CameraDirection;->longitude:D

    const-wide v2, -0x3faac00000000000L    # -85.0

    const-wide v4, 0x4055400000000000L    # 85.0

    move-wide v0, p3

    .line 23
    invoke-static/range {v0 .. v5}, Lcom/aol/mobile/sdk/player/utils/AngleHelper;->limitAngleToRange(DDD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/aol/mobile/sdk/player/model/CameraDirection;->latitude:D

    return-void
.end method

.method public getLatitude()D
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/model/CameraDirection;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/model/CameraDirection;->longitude:D

    return-wide v0
.end method

.method public moveBy(DD)V
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/model/CameraDirection;->longitude:D

    add-double/2addr v0, p1

    iget-wide p1, p0, Lcom/aol/mobile/sdk/player/model/CameraDirection;->latitude:D

    add-double/2addr p1, p3

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/aol/mobile/sdk/player/model/CameraDirection;->change(DD)V

    return-void
.end method
