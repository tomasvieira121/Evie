.class public final synthetic Lcom/evie/sidescreen/tiles/loading/-$$Lambda$TilesLoadingPresenter$mMMX758zdywKgsZJgtyENOZlGws;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/loading/-$$Lambda$TilesLoadingPresenter$mMMX758zdywKgsZJgtyENOZlGws;->f$0:Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/loading/-$$Lambda$TilesLoadingPresenter$mMMX758zdywKgsZJgtyENOZlGws;->f$0:Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;

    check-cast p1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;->lambda$onBindViewHolder$0(Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    return-void
.end method
