.class Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder$1;
.super Ljava/lang/Object;
.source "TopicDetailHeaderViewHolder.java"

# interfaces
.implements Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder$1;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlockedButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder$1;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

    invoke-static {v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->access$200(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->getFollowButtonHandler()Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->onBlockedButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    return-void
.end method

.method public onFollowButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder$1;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

    invoke-static {v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->access$000(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->getFollowButtonHandler()Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->onFollowButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    return-void
.end method

.method public onFollowingButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder$1;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

    invoke-static {v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->access$100(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->getFollowButtonHandler()Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->onFollowingButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    return-void
.end method
