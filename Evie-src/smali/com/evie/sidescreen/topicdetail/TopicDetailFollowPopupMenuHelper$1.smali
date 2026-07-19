.class Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;
.super Ljava/lang/Object;
.source "TopicDetailFollowPopupMenuHelper.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->showMenuAtView(Lorg/schema/evie/topics/Topic;Landroid/content/Context;Landroid/view/View;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;

.field final synthetic val$screenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

.field final synthetic val$topic:Lorg/schema/evie/topics/Topic;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;

    iput-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->val$topic:Lorg/schema/evie/topics/Topic;

    iput-object p3, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->val$screenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2

    .line 59
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 73
    :pswitch_0
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;

    invoke-static {p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->access$000(Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;)Lcom/evie/models/topics/TopicsModel;

    move-result-object p1

    iget-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->val$topic:Lorg/schema/evie/topics/Topic;

    invoke-virtual {p1, p2}, Lcom/evie/models/topics/TopicsModel;->unblockTopic(Lorg/schema/evie/topics/Topic;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 74
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;

    const-string p2, "unblock"

    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->val$topic:Lorg/schema/evie/topics/Topic;

    iget-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->val$screenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-static {p1, p2, v0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->access$100(Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;Ljava/lang/String;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    goto :goto_0

    .line 69
    :pswitch_1
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;

    invoke-static {p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->access$000(Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;)Lcom/evie/models/topics/TopicsModel;

    move-result-object p1

    iget-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->val$topic:Lorg/schema/evie/topics/Topic;

    invoke-virtual {p1, p2}, Lcom/evie/models/topics/TopicsModel;->blockTopic(Lorg/schema/evie/topics/Topic;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 70
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;

    const-string p2, "block"

    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->val$topic:Lorg/schema/evie/topics/Topic;

    iget-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->val$screenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-static {p1, p2, v0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->access$100(Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;Ljava/lang/String;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;

    invoke-static {p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->access$000(Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;)Lcom/evie/models/topics/TopicsModel;

    move-result-object p1

    iget-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->val$topic:Lorg/schema/evie/topics/Topic;

    invoke-virtual {p1, p2}, Lcom/evie/models/topics/TopicsModel;->unfollowTopic(Lorg/schema/evie/topics/Topic;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 66
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;

    const-string p2, "unfollow"

    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->val$topic:Lorg/schema/evie/topics/Topic;

    iget-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->val$screenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-static {p1, p2, v0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->access$100(Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;Ljava/lang/String;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    goto :goto_0

    .line 61
    :pswitch_3
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;

    invoke-static {p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->access$000(Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;)Lcom/evie/models/topics/TopicsModel;

    move-result-object p1

    iget-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->val$topic:Lorg/schema/evie/topics/Topic;

    invoke-virtual {p1, p2}, Lcom/evie/models/topics/TopicsModel;->followTopic(Lorg/schema/evie/topics/Topic;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 62
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;

    const-string p2, "follow"

    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->val$topic:Lorg/schema/evie/topics/Topic;

    iget-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;->val$screenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-static {p1, p2, v0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->access$100(Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;Ljava/lang/String;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method
