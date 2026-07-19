.class Lcom/evie/sidescreen/personalize/TopicItemViewHolder$1;
.super Ljava/lang/Object;
.source "TopicItemViewHolder.java"

# interfaces
.implements Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/personalize/TopicItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/personalize/TopicItemViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder$1;->this$0:Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlockedButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder$1;->this$0:Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    invoke-static {v0}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->access$400(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->getFollowButtonHandler()Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->onBlockedButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    .line 54
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder$1;->this$0:Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    invoke-static {p1}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->access$500(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->followStateChanged()V

    return-void
.end method

.method public onFollowButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder$1;->this$0:Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    invoke-static {v0}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->access$000(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->getFollowButtonHandler()Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->onFollowButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    .line 42
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder$1;->this$0:Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    invoke-static {p1}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->access$100(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->followStateChanged()V

    return-void
.end method

.method public onFollowingButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder$1;->this$0:Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    invoke-static {v0}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->access$200(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->getFollowButtonHandler()Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->onFollowingButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    .line 48
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder$1;->this$0:Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    invoke-static {p1}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->access$300(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->followStateChanged()V

    return-void
.end method
