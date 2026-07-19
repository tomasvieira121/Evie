.class public Lch/hsr/geohash/BoundingBox;
.super Ljava/lang/Object;
.source "BoundingBox.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6328d263af705254L


# instance fields
.field private maxLat:D

.field private maxLon:D

.field private minLat:D

.field private minLon:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p5, p6, p7, p8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lch/hsr/geohash/BoundingBox;->minLon:D

    .line 29
    invoke-static {p5, p6, p7, p8}, Ljava/lang/Math;->max(DD)D

    move-result-wide p5

    iput-wide p5, p0, Lch/hsr/geohash/BoundingBox;->maxLon:D

    .line 30
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p5

    iput-wide p5, p0, Lch/hsr/geohash/BoundingBox;->minLat:D

    .line 31
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lch/hsr/geohash/BoundingBox;->maxLat:D

    return-void
.end method

.method public constructor <init>(Lch/hsr/geohash/WGS84Point;Lch/hsr/geohash/WGS84Point;)V
    .locals 9

    .line 24
    invoke-virtual {p1}, Lch/hsr/geohash/WGS84Point;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p2}, Lch/hsr/geohash/WGS84Point;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lch/hsr/geohash/WGS84Point;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p2}, Lch/hsr/geohash/WGS84Point;->getLongitude()D

    move-result-wide v7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lch/hsr/geohash/BoundingBox;-><init>(DDDD)V

    return-void
.end method

.method private static hashCode(D)I
    .locals 2

    .line 78
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lch/hsr/geohash/BoundingBox;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 60
    check-cast p1, Lch/hsr/geohash/BoundingBox;

    .line 61
    iget-wide v3, p0, Lch/hsr/geohash/BoundingBox;->minLat:D

    iget-wide v5, p1, Lch/hsr/geohash/BoundingBox;->minLat:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lch/hsr/geohash/BoundingBox;->minLon:D

    iget-wide v5, p1, Lch/hsr/geohash/BoundingBox;->minLon:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lch/hsr/geohash/BoundingBox;->maxLat:D

    iget-wide v5, p1, Lch/hsr/geohash/BoundingBox;->maxLat:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lch/hsr/geohash/BoundingBox;->maxLon:D

    iget-wide v5, p1, Lch/hsr/geohash/BoundingBox;->maxLon:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getLowerRight()Lch/hsr/geohash/WGS84Point;
    .locals 5

    .line 43
    new-instance v0, Lch/hsr/geohash/WGS84Point;

    iget-wide v1, p0, Lch/hsr/geohash/BoundingBox;->minLat:D

    iget-wide v3, p0, Lch/hsr/geohash/BoundingBox;->maxLon:D

    invoke-direct {v0, v1, v2, v3, v4}, Lch/hsr/geohash/WGS84Point;-><init>(DD)V

    return-object v0
.end method

.method public getUpperLeft()Lch/hsr/geohash/WGS84Point;
    .locals 5

    .line 39
    new-instance v0, Lch/hsr/geohash/WGS84Point;

    iget-wide v1, p0, Lch/hsr/geohash/BoundingBox;->maxLat:D

    iget-wide v3, p0, Lch/hsr/geohash/BoundingBox;->minLon:D

    invoke-direct {v0, v1, v2, v3, v4}, Lch/hsr/geohash/WGS84Point;-><init>(DD)V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 70
    iget-wide v0, p0, Lch/hsr/geohash/BoundingBox;->minLat:D

    invoke-static {v0, v1}, Lch/hsr/geohash/BoundingBox;->hashCode(D)I

    move-result v0

    const/16 v1, 0x275

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 71
    iget-wide v2, p0, Lch/hsr/geohash/BoundingBox;->maxLat:D

    invoke-static {v2, v3}, Lch/hsr/geohash/BoundingBox;->hashCode(D)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 72
    iget-wide v2, p0, Lch/hsr/geohash/BoundingBox;->minLon:D

    invoke-static {v2, v3}, Lch/hsr/geohash/BoundingBox;->hashCode(D)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 73
    iget-wide v2, p0, Lch/hsr/geohash/BoundingBox;->maxLon:D

    invoke-static {v2, v3}, Lch/hsr/geohash/BoundingBox;->hashCode(D)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lch/hsr/geohash/BoundingBox;->getUpperLeft()Lch/hsr/geohash/WGS84Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lch/hsr/geohash/BoundingBox;->getLowerRight()Lch/hsr/geohash/WGS84Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
