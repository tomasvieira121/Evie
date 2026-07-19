.class public Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;
.super Ljava/lang/Object;
.source "TopicsFooterBarHandler.java"


# instance fields
.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private final mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field private final mTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schema/evie/topics/Topic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->mTopics:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 35
    iput-object p2, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    return-void
.end method

.method public static synthetic lambda$bindFooterBarWithItems$0(Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->showRelatedTopics(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$bindFooterBarWithItems$1(Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;Ljava/lang/String;Landroid/view/View;Lorg/schema/evie/topics/Topic;)V
    .locals 0

    .line 59
    invoke-direct {p0, p3, p1}, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->showTopicDetail(Lorg/schema/evie/topics/Topic;Ljava/lang/String;)V

    return-void
.end method

.method private showRelatedTopics(Ljava/lang/String;)V
    .locals 3

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "related_topics"

    .line 83
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screen_type"

    const-string v2, "article_viewer"

    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screen_id"

    .line 85
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v2, "ev_ss_tap"

    invoke-virtual {v1, v2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 88
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const-class v1, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/ActivityStarter;->getLocalActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->EXTRA_ARTICLE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    sget-object p1, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->EXTRA_TOPICS_KEY:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->mTopics:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 91
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    return-void
.end method

.method private showTopicDetail(Lorg/schema/evie/topics/Topic;Ljava/lang/String;)V
    .locals 3

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "topic"

    .line 69
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_topic"

    .line 70
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screen_type"

    const-string v2, "article_viewer"

    .line 71
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screen_id"

    .line 72
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p2, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {p2, v1, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    iget-object p2, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const-class v0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;

    invoke-virtual {p2, v0}, Lcom/evie/sidescreen/ActivityStarter;->getLocalActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 76
    sget-object v0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->INTENT_KEY_TOPIC_ID:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    return-void
.end method


# virtual methods
.method public bindFooterBarWithItems(Lcom/evie/sidescreen/personalize/TopicsFooterBar;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/personalize/TopicsFooterBar;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lorg/schema/Thing;",
            ">;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->mTopics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p3, :cond_1

    .line 44
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schema/Thing;

    .line 45
    instance-of v1, v0, Lorg/schema/evie/topics/Topic;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->mTopics:Ljava/util/List;

    check-cast v0, Lorg/schema/evie/topics/Topic;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_1
    iget-object p3, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->mTopics:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    const/16 p2, 0x8

    .line 53
    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->setVisibility(I)V

    goto :goto_1

    .line 55
    :cond_2
    new-instance p3, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsFooterBarHandler$qnw1dK8RQNeOFH2WHKls82udDb0;

    invoke-direct {p3, p0, p2}, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsFooterBarHandler$qnw1dK8RQNeOFH2WHKls82udDb0;-><init>(Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->setOnCaretClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance p3, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsFooterBarHandler$q2IOORMP7OSCe5Mn35lW_hMUidg;

    invoke-direct {p3, p0, p2}, Lcom/evie/sidescreen/personalize/-$$Lambda$TopicsFooterBarHandler$q2IOORMP7OSCe5Mn35lW_hMUidg;-><init>(Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->setOnTopicClickListener(Lcom/evie/sidescreen/personalize/TopicsFooterBar$OnTopicClickListener;)V

    .line 61
    iget-object p2, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->mTopics:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->setItems(Ljava/util/List;)V

    :goto_1
    return-void
.end method
