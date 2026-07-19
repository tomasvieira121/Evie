.class public final synthetic Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$I9USc0fJTwpHjL4y7uVz6O5ZNBo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/tiles/TilesSection;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/tiles/TilesSection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$I9USc0fJTwpHjL4y7uVz6O5ZNBo;->f$0:Lcom/evie/sidescreen/tiles/TilesSection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$I9USc0fJTwpHjL4y7uVz6O5ZNBo;->f$0:Lcom/evie/sidescreen/tiles/TilesSection;

    check-cast p1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/tiles/TilesSection;->lambda$new$3(Lcom/evie/sidescreen/tiles/TilesSection;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    return-void
.end method
