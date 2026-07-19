.class public final synthetic Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$oGSEQGe4torg0hj-2utTBCuTowY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

.field private final synthetic f$1:Lcom/evie/sidescreen/ActivityStarter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Lcom/evie/sidescreen/ActivityStarter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$oGSEQGe4torg0hj-2utTBCuTowY;->f$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    iput-object p2, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$oGSEQGe4torg0hj-2utTBCuTowY;->f$1:Lcom/evie/sidescreen/ActivityStarter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$oGSEQGe4torg0hj-2utTBCuTowY;->f$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$oGSEQGe4torg0hj-2utTBCuTowY;->f$1:Lcom/evie/sidescreen/ActivityStarter;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->lambda$shareVideo$0(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Lcom/evie/sidescreen/ActivityStarter;Ljava/lang/String;)V

    return-void
.end method
