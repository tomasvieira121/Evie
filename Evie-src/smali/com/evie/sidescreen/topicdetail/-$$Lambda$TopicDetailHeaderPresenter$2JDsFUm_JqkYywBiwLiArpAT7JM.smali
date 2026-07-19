.class public final synthetic Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailHeaderPresenter$2JDsFUm_JqkYywBiwLiArpAT7JM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;

.field private final synthetic f$1:Lcom/facebook/datasource/DataSource;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;Lcom/facebook/datasource/DataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailHeaderPresenter$2JDsFUm_JqkYywBiwLiArpAT7JM;->f$0:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;

    iput-object p2, p0, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailHeaderPresenter$2JDsFUm_JqkYywBiwLiArpAT7JM;->f$1:Lcom/facebook/datasource/DataSource;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailHeaderPresenter$2JDsFUm_JqkYywBiwLiArpAT7JM;->f$0:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;

    iget-object v1, p0, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailHeaderPresenter$2JDsFUm_JqkYywBiwLiArpAT7JM;->f$1:Lcom/facebook/datasource/DataSource;

    invoke-static {v0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->lambda$handleNoBackDrop$1(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;Lcom/facebook/datasource/DataSource;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    return-object v0
.end method
