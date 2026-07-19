.class public abstract Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;
.super Lcom/evie/sidescreen/personalize/IFollowButtonHandler;
.source "BaseFollowButtonHandler.java"

# interfaces
.implements Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;


# instance fields
.field private final mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/personalize/FollowState;Lio/reactivex/disposables/CompositeDisposable;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;-><init>(Lcom/evie/sidescreen/personalize/FollowState;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 20
    iput-object p3, p0, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    return-void
.end method

.method private handleFollow(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V
    .locals 1

    .line 24
    sget-object v0, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    .line 25
    sget-object v0, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->onHandleFollow(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V

    return-void
.end method

.method private handleUnblock(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V
    .locals 1

    .line 36
    sget-object v0, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    .line 37
    sget-object v0, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->onHandleUnblock(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V

    return-void
.end method

.method private handleUnfollow(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    .line 31
    sget-object v0, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->onHandleUnfollow(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V

    return-void
.end method


# virtual methods
.method public final onBlockedButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 3

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "unblock"

    .line 83
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_topic"

    .line 84
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_screen_info"

    .line 85
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-boolean p3, p0, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->mIsFromRecommended:Z

    if-eqz p3, :cond_0

    const-string p3, "sub_position"

    .line 87
    iget v1, p0, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->mRecommendedSubPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "attribute_content_tile"

    .line 88
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    iget-object p3, p0, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {p3, v1, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->handleUnblock(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V

    return-void
.end method

.method public final onFollowButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 3

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "follow"

    .line 51
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_topic"

    .line 52
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_screen_info"

    .line 53
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-boolean p3, p0, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->mIsFromRecommended:Z

    if-eqz p3, :cond_0

    const-string p3, "sub_position"

    .line 55
    iget v1, p0, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->mRecommendedSubPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "attribute_content_tile"

    .line 56
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    iget-object p3, p0, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {p3, v1, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->handleFollow(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V

    return-void
.end method

.method public final onFollowingButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 3

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "unfollow"

    .line 67
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_topic"

    .line 68
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_screen_info"

    .line 69
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-boolean p3, p0, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->mIsFromRecommended:Z

    if-eqz p3, :cond_0

    const-string p3, "sub_position"

    .line 71
    iget v1, p0, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->mRecommendedSubPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "attribute_content_tile"

    .line 72
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    iget-object p3, p0, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {p3, v1, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;->handleUnfollow(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V

    return-void
.end method

.method protected abstract onHandleFollow(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V
.end method

.method protected abstract onHandleUnblock(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V
.end method

.method protected abstract onHandleUnfollow(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V
.end method
