.class public Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;
.super Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;
.source "ExoPlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Progress"
.end annotation


# instance fields
.field private final position:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;-><init>()V

    iput-wide p1, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;->position:J

    return-void
.end method


# virtual methods
.method public getPosition()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;->position:J

    return-wide v0
.end method
