.class public final synthetic Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailHeaderPresenter$21iexpv4AWrEUEiMuwFN5pE9Vrs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailHeaderPresenter$21iexpv4AWrEUEiMuwFN5pE9Vrs;->f$0:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailHeaderPresenter$21iexpv4AWrEUEiMuwFN5pE9Vrs;->f$0:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->lambda$handleNoBackDrop$2(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;Landroid/graphics/drawable/ColorDrawable;)V

    return-void
.end method
