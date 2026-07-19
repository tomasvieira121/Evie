.class public final synthetic Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailPresenter$dXMuMzs_noBP4kNOJkeRbozFO9o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;

.field private final synthetic f$1:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailPresenter$dXMuMzs_noBP4kNOJkeRbozFO9o;->f$0:Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;

    iput-object p2, p0, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailPresenter$dXMuMzs_noBP4kNOJkeRbozFO9o;->f$1:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailPresenter$dXMuMzs_noBP4kNOJkeRbozFO9o;->f$0:Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;

    iget-object v1, p0, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailPresenter$dXMuMzs_noBP4kNOJkeRbozFO9o;->f$1:Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;

    check-cast p1, Lcom/evie/common/data/Lce;

    invoke-static {v0, v1, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;->lambda$onBindViewHolder$0(Lcom/evie/sidescreen/topicdetail/TopicDetailPresenter;Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolder;Lcom/evie/common/data/Lce;)V

    return-void
.end method
