.class public Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;
.super Ljava/lang/Object;
.source "TopicDetailFollowPopupMenuHelper.java"


# instance fields
.field private final mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field private final mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

.field private final mTopicsModel:Lcom/evie/models/topics/TopicsModel;


# direct methods
.method public constructor <init>(Lcom/evie/models/topics/TopicsModel;Lcom/evie/models/topics/TopicPersonalizationStore;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    .line 44
    iput-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    .line 45
    iput-object p3, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;)Lcom/evie/models/topics/TopicsModel;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;Ljava/lang/String;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->trackTap(Ljava/lang/String;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    return-void
.end method

.method private addMenuItemsForTopic(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Lorg/schema/evie/topics/Topic;)V
    .locals 5

    .line 94
    invoke-virtual {p3}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    invoke-interface {v1}, Lcom/evie/models/topics/TopicPersonalizationStore;->getTopicFollows()Ljava/util/Set;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    invoke-interface {v2}, Lcom/evie/models/topics/TopicPersonalizationStore;->getTopicBlocks()Ljava/util/Set;

    move-result-object v2

    .line 103
    invoke-static {v0, v1, v2}, Lcom/evie/sidescreen/personalize/FollowState;->determineFollowState(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Lcom/evie/sidescreen/personalize/FollowState;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$2;->$SwitchMap$com$evie$sidescreen$personalize$FollowState:[I

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/FollowState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 114
    sget v0, Lcom/evie/sidescreen/R$string;->ss_article_context_menu_follow:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/schema/evie/topics/Topic;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v2, v2, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x2

    .line 115
    sget v3, Lcom/evie/sidescreen/R$string;->ss_article_context_menu_block:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/schema/evie/topics/Topic;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, v0, v2, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    .line 110
    sget v3, Lcom/evie/sidescreen/R$string;->ss_article_context_menu_unblock:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/schema/evie/topics/Topic;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, v0, v2, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 107
    :pswitch_1
    sget v0, Lcom/evie/sidescreen/R$string;->ss_article_context_menu_unfollow:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/schema/evie/topics/Topic;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v2

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, v1, v2, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private trackTap(Ljava/lang/String;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 2

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    .line 122
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attribute_topic"

    .line 123
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attribute_screen_info"

    .line 124
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string p2, "ev_ss_tap"

    invoke-virtual {p1, p2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public showMenuAtView(Lorg/schema/evie/topics/Topic;Landroid/content/Context;Landroid/view/View;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 2

    .line 51
    new-instance v0, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v0, p2}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0, p2, v0, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->addMenuItemsForTopic(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Lorg/schema/evie/topics/Topic;)V

    .line 55
    new-instance v1, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;

    invoke-direct {v1, p0, p1, p4}, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper$1;-><init>(Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 87
    new-instance p1, Landroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-direct {p1, p2, v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 88
    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setAnchorView(Landroid/view/View;)V

    const p2, 0x800015

    .line 89
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 90
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->show()V

    return-void
.end method
