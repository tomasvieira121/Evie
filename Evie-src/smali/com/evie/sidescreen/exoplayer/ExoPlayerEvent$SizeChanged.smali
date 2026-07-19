.class public Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$SizeChanged;
.super Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;
.source "ExoPlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeChanged"
.end annotation


# instance fields
.field private final height:I

.field private final pixelWidthHeightRatio:F

.field private final unappliedRotationDegrees:I

.field private final width:I


# direct methods
.method public constructor <init>(IIIF)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;-><init>()V

    iput p1, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$SizeChanged;->width:I

    iput p2, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$SizeChanged;->height:I

    iput p3, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$SizeChanged;->unappliedRotationDegrees:I

    iput p4, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$SizeChanged;->pixelWidthHeightRatio:F

    return-void
.end method
