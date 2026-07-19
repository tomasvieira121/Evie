.class public Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;
.super Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;
.source "OathPlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# instance fields
.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;->message:Ljava/lang/String;

    return-object v0
.end method
