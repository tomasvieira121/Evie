.class public final synthetic Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsListPresenter$JhELOVeO0BouNIaiC_hdsJfgt3o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/personalize/TopicsListPresenter;

.field private final synthetic f$1:Lcom/evie/sidescreen/personalize/TopicsListViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/personalize/TopicsListPresenter;Lcom/evie/sidescreen/personalize/TopicsListViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsListPresenter$JhELOVeO0BouNIaiC_hdsJfgt3o;->f$0:Lcom/evie/sidescreen/personalize/TopicsListPresenter;

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsListPresenter$JhELOVeO0BouNIaiC_hdsJfgt3o;->f$1:Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsListPresenter$JhELOVeO0BouNIaiC_hdsJfgt3o;->f$0:Lcom/evie/sidescreen/personalize/TopicsListPresenter;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsListPresenter$JhELOVeO0BouNIaiC_hdsJfgt3o;->f$1:Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    check-cast p1, Lcom/evie/common/data/Lce;

    invoke-static {v0, v1, p1}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->lambda$load$1(Lcom/evie/sidescreen/personalize/TopicsListPresenter;Lcom/evie/sidescreen/personalize/TopicsListViewHolder;Lcom/evie/common/data/Lce;)V

    return-void
.end method
