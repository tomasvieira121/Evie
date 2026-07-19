.class public final synthetic Lcom/evie/sidescreen/relatedcontent/-$$Lambda$ExoVideoHandler$dH9NH52iOsL9X27DElIswqJsxyU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$ExoVideoHandler$dH9NH52iOsL9X27DElIswqJsxyU;->f$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$ExoVideoHandler$dH9NH52iOsL9X27DElIswqJsxyU;->f$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    check-cast p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->lambda$initExoPlayer$0(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;)V

    return-void
.end method
