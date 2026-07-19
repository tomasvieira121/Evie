.class public Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;
.super Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;
.source "OathPlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Progress"
.end annotation


# instance fields
.field public final duration:J

.field public final position:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;-><init>()V

    iput-wide p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;->position:J

    iput-wide p3, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;->duration:J

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;->duration:J

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;->position:J

    return-wide v0
.end method
