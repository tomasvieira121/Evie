.class public Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdFinished;
.super Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;
.source "OathPlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdFinished"
.end annotation


# instance fields
.field public final adProps:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/model/properties/AdProperties;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdFinished;->adProps:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    return-void
.end method
