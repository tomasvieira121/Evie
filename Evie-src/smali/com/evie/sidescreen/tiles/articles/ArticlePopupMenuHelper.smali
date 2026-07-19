.class public Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;
.super Ljava/lang/Object;
.source "ArticlePopupMenuHelper.java"


# instance fields
.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private final mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field private final mSideScreenRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

.field private final mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

.field private final mTopicsModel:Lcom/evie/models/topics/TopicsModel;


# direct methods
.method public constructor <init>(Lcom/evie/models/topics/TopicsModel;Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;Lcom/evie/models/topics/TopicPersonalizationStore;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    .line 66
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->mSideScreenRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    .line 67
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    .line 68
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 69
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;)Lcom/evie/models/topics/TopicsModel;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Ljava/lang/String;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->trackTap(Ljava/lang/String;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    return-void
.end method

.method private addMenuItemsForTopic(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Lorg/schema/evie/topics/Topic;ILorg/schema/Organization;)V
    .locals 4

    .line 163
    invoke-virtual {p3}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    invoke-interface {v1}, Lcom/evie/models/topics/TopicPersonalizationStore;->getTopicFollows()Ljava/util/Set;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    invoke-interface {v2}, Lcom/evie/models/topics/TopicPersonalizationStore;->getTopicBlocks()Ljava/util/Set;

    move-result-object v2

    .line 172
    invoke-static {v0, v1, v2}, Lcom/evie/sidescreen/personalize/FollowState;->determineFollowState(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Lcom/evie/sidescreen/personalize/FollowState;

    move-result-object v0

    .line 174
    sget-object v3, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {v3, v0}, Lcom/evie/sidescreen/personalize/FollowState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p5, :cond_1

    .line 175
    invoke-direct {p0, p5, v1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->determineFollowStateForPublisher(Lorg/schema/Organization;Ljava/util/Set;Ljava/util/Set;)Lcom/evie/sidescreen/personalize/FollowState;

    move-result-object v0

    .line 178
    :cond_1
    sget-object p5, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$2;->$SwitchMap$com$evie$sidescreen$personalize$FollowState:[I

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/FollowState;->ordinal()I

    move-result v0

    aget p5, p5, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p5, :pswitch_data_0

    .line 187
    sget p5, Lcom/evie/sidescreen/R$string;->ss_article_context_menu_follow:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/schema/evie/topics/Topic;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, p5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p4, v1, v1, p5}, Landroidx/appcompat/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 p5, 0x2

    .line 188
    sget v2, Lcom/evie/sidescreen/R$string;->ss_article_context_menu_block:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/schema/evie/topics/Topic;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p5, v1, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_0
    const/4 p5, 0x3

    .line 183
    sget v2, Lcom/evie/sidescreen/R$string;->ss_article_context_menu_unblock:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/schema/evie/topics/Topic;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p5, v1, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 180
    :pswitch_1
    sget p5, Lcom/evie/sidescreen/R$string;->ss_article_context_menu_unfollow:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/schema/evie/topics/Topic;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, v1

    invoke-virtual {p1, p5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, v0, v1, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private determineFollowStateForPublisher(Lorg/schema/Organization;Ljava/util/Set;Ljava/util/Set;)Lcom/evie/sidescreen/personalize/FollowState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schema/Organization;",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)",
            "Lcom/evie/sidescreen/personalize/FollowState;"
        }
    .end annotation

    .line 197
    invoke-virtual {p1}, Lorg/schema/Organization;->getTopicId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/evie/models/topics/data/TopicId;

    invoke-virtual {p1}, Lorg/schema/Organization;->getTopicId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/evie/models/topics/data/TopicId;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v1

    .line 200
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v1, v0

    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 202
    :goto_0
    invoke-virtual {p1}, Lorg/schema/Organization;->getTopicId2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    new-instance v2, Lcom/evie/models/topics/data/TopicId;

    invoke-virtual {p1}, Lorg/schema/Organization;->getTopicId2()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/evie/models/topics/data/TopicId;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 205
    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 207
    :cond_1
    invoke-virtual {p1}, Lorg/schema/Organization;->getTopicId3()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 208
    new-instance v2, Lcom/evie/models/topics/data/TopicId;

    invoke-virtual {p1}, Lorg/schema/Organization;->getTopicId3()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/evie/models/topics/data/TopicId;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr v1, p1

    .line 210
    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v1, :cond_3

    .line 214
    sget-object p1, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    .line 217
    sget-object p1, Lcom/evie/sidescreen/personalize/FollowState;->BLOCKED:Lcom/evie/sidescreen/personalize/FollowState;

    return-object p1

    .line 219
    :cond_4
    sget-object p1, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    return-object p1
.end method

.method public static synthetic lambda$share$0(Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    invoke-virtual {p1}, Lorg/schema/NewsArticle;->getHeadline()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p1, p2}, Lcom/evie/sidescreen/ActivityStarter;->startShareActivity(Ljava/lang/String;Ljava/lang/String;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    return-void
.end method

.method private trackTap(Ljava/lang/String;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 2

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    .line 231
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attribute_topic"

    .line 232
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attribute_screen_info"

    .line 233
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string p2, "ev_ss_tap"

    invoke-virtual {p1, p2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public share(Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->mSideScreenRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    invoke-virtual {p1}, Lorg/schema/NewsArticle;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->getShortLink(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 224
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 225
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticlePopupMenuHelper$CuSXxMvvOnnrnhxE8NG8ccvBH9k;

    invoke-direct {v1, p0, p1, p2}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticlePopupMenuHelper$CuSXxMvvOnnrnhxE8NG8ccvBH9k;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    .line 226
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public showMenuAtView(Lorg/schema/NewsArticle;Landroid/content/Context;Landroid/view/View;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 14

    move-object/from16 v6, p2

    .line 76
    new-instance v7, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v7, v6}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {p1}, Lorg/schema/NewsArticle;->getTopics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    move-object v12, v1

    move-object v13, v12

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schema/Thing;

    if-nez v12, :cond_1

    .line 82
    instance-of v3, v1, Lorg/schema/evie/topics/TopicPublisher;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lorg/schema/evie/topics/TopicPublisher;

    invoke-virtual {v3}, Lorg/schema/evie/topics/TopicPublisher;->isArticlePublisher()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    move-object v12, v1

    check-cast v12, Lorg/schema/evie/topics/Topic;

    .line 85
    :cond_1
    instance-of v3, v1, Lorg/schema/evie/topics/TopicEntity;

    if-eqz v3, :cond_0

    .line 86
    check-cast v1, Lorg/schema/evie/topics/TopicEntity;

    .line 87
    invoke-virtual {v1}, Lorg/schema/evie/topics/TopicEntity;->getSalience()F

    move-result v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 89
    invoke-virtual {v1}, Lorg/schema/evie/topics/TopicEntity;->getSalience()F

    move-result v2

    move-object v13, v1

    goto :goto_0

    :cond_2
    if-eqz v12, :cond_3

    const/4 v4, 0x0

    .line 95
    invoke-virtual {p1}, Lorg/schema/NewsArticle;->getPublisherOrganization()Lorg/schema/Organization;

    move-result-object v5

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, v7

    move-object v3, v12

    invoke-direct/range {v0 .. v5}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->addMenuItemsForTopic(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Lorg/schema/evie/topics/Topic;ILorg/schema/Organization;)V

    :cond_3
    if-eqz v13, :cond_4

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, v7

    move-object v3, v13

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->addMenuItemsForTopic(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Lorg/schema/evie/topics/Topic;ILorg/schema/Organization;)V

    :cond_4
    const/4 v0, 0x2

    .line 101
    sget v1, Lcom/evie/sidescreen/R$string;->share:I

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2, v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 105
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;

    move-object v8, v0

    move-object v9, p0

    move-object v10, p1

    move-object/from16 v11, p4

    invoke-direct/range {v8 .. v13}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$1;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lorg/schema/evie/topics/Topic;Lorg/schema/evie/topics/Topic;)V

    invoke-virtual {v7, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 156
    new-instance v0, Landroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-direct {v0, v6, v7}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    move-object/from16 v1, p3

    .line 157
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setAnchorView(Landroid/view/View;)V

    const v1, 0x800015

    .line 158
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 159
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->show()V

    return-void
.end method
