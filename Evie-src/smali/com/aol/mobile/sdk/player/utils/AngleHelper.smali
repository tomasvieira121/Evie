.class public final Lcom/aol/mobile/sdk/player/utils/AngleHelper;
.super Ljava/lang/Object;
.source "AngleHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asPiMinusPiRange(D)D
    .locals 5

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    add-double/2addr p0, v0

    rem-double/2addr p0, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v4, p0, v2

    if-ltz v4, :cond_0

    sub-double/2addr p0, v0

    .line 20
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    return-wide p0

    .line 22
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static limitAngleToRange(DDD)D
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lcom/aol/mobile/sdk/player/utils/AngleHelper;->asPiMinusPiRange(D)D

    move-result-wide p0

    .line 27
    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p4

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method
