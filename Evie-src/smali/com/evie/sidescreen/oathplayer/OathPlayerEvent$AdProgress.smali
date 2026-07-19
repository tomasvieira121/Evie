.class public Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdProgress;
.super Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;
.source "OathPlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdProgress"
.end annotation


# instance fields
.field public final position:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;-><init>()V

    iput-wide p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdProgress;->position:J

    return-void
.end method


# virtual methods
.method public getPosition()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdProgress;->position:J

    return-wide v0
.end method
