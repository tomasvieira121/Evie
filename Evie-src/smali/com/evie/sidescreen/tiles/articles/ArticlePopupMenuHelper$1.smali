.class Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;
.super Ljava/lang/Object;
.source "ArticlePopupMenuHelper.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->showMenuAtView(Lorg/schema/NewsArticle;Landroid/content/Context;Landroid/view/View;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

.field final synthetic val$article:Lorg/schema/NewsArticle;

.field final synthetic val$finalHighestEntity:Lorg/schema/evie/topics/Topic;

.field final synthetic val$finalPublisher:Lorg/schema/evie/topics/Topic;

.field final synthetic val$screenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lorg/schema/evie/topics/Topic;Lorg/schema/evie/topics/Topic;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->val$article:Lorg/schema/NewsArticle;

    iput-object p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->val$screenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    iput-object p4, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->val$finalPublisher:Lorg/schema/evie/topics/Topic;

    iput-object p5, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->val$finalHighestEntity:Lorg/schema/evie/topics/Topic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3

    .line 110
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 112
    :pswitch_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->val$article:Lorg/schema/NewsArticle;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->val$screenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {p1, p2, v1}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->share(Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    return v0

    .line 118
    :pswitch_1
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->val$finalHighestEntity:Lorg/schema/evie/topics/Topic;

    goto :goto_0

    .line 115
    :pswitch_2
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->val$finalPublisher:Lorg/schema/evie/topics/Topic;

    :goto_0
    if-nez p1, :cond_0

    return v1

    .line 128
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    packed-switch p2, :pswitch_data_1

    return v1

    .line 142
    :pswitch_3
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

    invoke-static {p2}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->access$000(Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;)Lcom/evie/models/topics/TopicsModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/evie/models/topics/TopicsModel;->unblockTopic(Lorg/schema/evie/topics/Topic;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 143
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

    const-string v1, "unblock"

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->val$screenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-static {p2, v1, p1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->access$100(Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Ljava/lang/String;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    goto :goto_1

    .line 138
    :pswitch_4
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

    invoke-static {p2}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->access$000(Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;)Lcom/evie/models/topics/TopicsModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/evie/models/topics/TopicsModel;->blockTopic(Lorg/schema/evie/topics/Topic;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 139
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

    const-string v1, "block"

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->val$screenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-static {p2, v1, p1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->access$100(Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Ljava/lang/String;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    goto :goto_1

    .line 134
    :pswitch_5
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

    invoke-static {p2}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->access$000(Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;)Lcom/evie/models/topics/TopicsModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/evie/models/topics/TopicsModel;->unfollowTopic(Lorg/schema/evie/topics/Topic;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 135
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

    const-string v1, "unfollow"

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->val$screenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-static {p2, v1, p1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->access$100(Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Ljava/lang/String;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    goto :goto_1

    .line 130
    :pswitch_6
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

    invoke-static {p2}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->access$000(Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;)Lcom/evie/models/topics/TopicsModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/evie/models/topics/TopicsModel;->followTopic(Lorg/schema/evie/topics/Topic;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 131
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->this$0:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

    const-string v1, "follow"

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;->val$screenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-static {p2, v1, p1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->access$100(Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Ljava/lang/String;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method
