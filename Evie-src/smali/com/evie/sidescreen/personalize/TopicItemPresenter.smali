.class public Lcom/evie/sidescreen/personalize/TopicItemPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "TopicItemPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/personalize/TopicItemViewHolder;",
        ">;",
        "Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;"
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_TOPIC_FOLLOWING_STATUS:I


# instance fields
.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private final mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field private mDarkTheme:Z

.field private final mFollowButtonHandler:Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

.field private mFollowStateChangedListener:Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;

.field private mIsFromRecommended:Z

.field private final mOnboardingMode:Z

.field private mRecommendedSubPosition:I

.field private final mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

.field private mShouldShowTileRowDividers:Z

.field private mShowDivider:Z

.field private mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

.field private final mTopic:Lorg/schema/evie/topics/Topic;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-class v0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    sput v0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->REQUEST_CODE_TOPIC_FOLLOWING_STATUS:I

    return-void
.end method

.method public constructor <init>(Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/personalize/FollowState;Lcom/evie/sidescreen/analytics/data/ScreenInfo;ZLcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 1
    .param p4    # Z
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Lcom/evie/sidescreen/ActivityStarter;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p7    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mDarkTheme:Z

    .line 49
    iput-boolean v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mShouldShowTileRowDividers:Z

    .line 60
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    .line 61
    iput-object p5, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 62
    iput-object p3, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 63
    iput-boolean p4, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mOnboardingMode:Z

    .line 64
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-interface {p6, p2, p1}, Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;->create(Lcom/evie/sidescreen/personalize/FollowState;Lio/reactivex/disposables/CompositeDisposable;)Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mFollowButtonHandler:Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    .line 65
    iput-object p7, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    .line 67
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mFollowButtonHandler:Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    return-void
.end method

.method private onItemClick(Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;ILcom/evie/models/sidescreen/data/SideScreenContentTile;)V
    .locals 3

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "topic"

    .line 148
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_topic"

    .line 149
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attribute_screen_info"

    .line 150
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sub_position"

    .line 151
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attribute_content_tile"

    .line 152
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string p2, "ev_ss_tap"

    invoke-virtual {p1, p2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 155
    invoke-direct {p0}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->startTopicDetailActivity()V

    return-void
.end method

.method private startTopicDetailActivity()V
    .locals 5

    const/4 v0, 0x0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v1, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    iget-object v1, v1, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 166
    :goto_0
    iget-object v2, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const-class v3, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;

    invoke-virtual {v2, v3}, Lcom/evie/sidescreen/ActivityStarter;->getLocalActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 167
    sget-object v3, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->INTENT_KEY_TOPIC_ID:Ljava/lang/String;

    iget-object v4, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    invoke-virtual {v4}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    sget-object v3, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->INTENT_FROM_RELATED_VIDEOS:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v3, 0x0

    sget v4, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->REQUEST_CODE_TOPIC_FOLLOWING_STATUS:I

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/evie/sidescreen/ActivityStarter;->startActivityForResult(Landroid/view/View;Landroid/content/Intent;IZ)Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/TopicItemViewHolder;
    .locals 1

    .line 106
    new-instance v0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public followStateChanged()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mFollowStateChangedListener:Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p0}, Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;->onFollowStateChanged(Lcom/evie/sidescreen/personalize/TopicItemPresenter;)V

    :cond_0
    return-void
.end method

.method public getFollowButtonHandler()Lcom/evie/sidescreen/personalize/IFollowButtonHandler;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mFollowButtonHandler:Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    return-object v0
.end method

.method public getLayoutResId()I
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mDarkTheme:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/evie/sidescreen/R$layout;->ss_topic_list_item_dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_topic_list_item:I

    :goto_0
    return v0
.end method

.method public getRecommendedSubPosition()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mRecommendedSubPosition:I

    return v0
.end method

.method public getTopic()Lorg/schema/evie/topics/Topic;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 90
    sget v0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->onBindViewHolder(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)V
    .locals 3

    .line 111
    iget-boolean v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mDarkTheme:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->setDarkTheme()V

    goto :goto_0

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mShowDivider:Z

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->showDivider()V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->hideDivider()V

    .line 122
    :goto_0
    iget-boolean v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mOnboardingMode:Z

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->setCheckFollowStyle()V

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->setTextFollowStyle()V

    .line 127
    :goto_1
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    invoke-virtual {v0}, Lorg/schema/evie/topics/Topic;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    invoke-virtual {v0}, Lorg/schema/evie/topics/Topic;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->getIconWidth()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lorg/schema/MediaSelector;->selectMediaUrl(Ljava/util/List;IF)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->setIconUrl(Ljava/lang/String;)V

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    invoke-virtual {v0}, Lorg/schema/evie/topics/Topic;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->setLabel(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mFollowButtonHandler:Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->getFollowButtonViewHolder()Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    move-result-object p1

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    iget-object v2, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->bindFollowButtonViewHolder(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    return-void
.end method

.method public onItemClick()V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    iget v2, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mRecommendedSubPosition:I

    iget-object v3, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->onItemClick(Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;ILcom/evie/models/sidescreen/data/SideScreenContentTile;)V

    return-void
.end method

.method protected onUnbindViewHolder()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->clearAll()V

    .line 218
    invoke-super {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;->onUnbindViewHolder()V

    return-void
.end method

.method public setDarkTheme()V
    .locals 1

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mDarkTheme:Z

    return-void
.end method

.method public setFollowState(Lcom/evie/sidescreen/personalize/FollowState;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->getFollowButtonViewHolder()Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mFollowButtonHandler:Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    return-void
.end method

.method public setFollowStateChangedListener(Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mFollowStateChangedListener:Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;

    return-void
.end method

.method public setRecommendedSubPosition(I)V
    .locals 1

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mIsFromRecommended:Z

    .line 72
    iput p1, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mRecommendedSubPosition:I

    .line 73
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mFollowButtonHandler:Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->setRecommendedSubPosition(I)V

    return-void
.end method

.method public setShouldShowTileRowDividers(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mShouldShowTileRowDividers:Z

    return-void
.end method

.method public setShowDivider(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mShowDivider:Z

    return-void
.end method

.method public setTile(Lcom/evie/models/sidescreen/data/SideScreenContentTile;)V
    .locals 1

    .line 77
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    .line 78
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mFollowButtonHandler:Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->setTile(Lcom/evie/models/sidescreen/data/SideScreenContentTile;)V

    return-void
.end method

.method public shouldShowBottomTileDivider()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mShouldShowTileRowDividers:Z

    return v0
.end method

.method public shouldShowTopTileDivider()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->mShouldShowTileRowDividers:Z

    return v0
.end method
