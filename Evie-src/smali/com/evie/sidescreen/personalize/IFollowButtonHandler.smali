.class public abstract Lcom/evie/sidescreen/personalize/IFollowButtonHandler;
.super Ljava/lang/Object;
.source "IFollowButtonHandler.java"

# interfaces
.implements Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;


# instance fields
.field protected final mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field protected mFollowState:Lcom/evie/sidescreen/personalize/FollowState;

.field protected mIsFromRecommended:Z

.field protected mRecommendedSubPosition:I

.field protected mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/personalize/FollowState;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    .line 21
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->mFollowState:Lcom/evie/sidescreen/personalize/FollowState;

    .line 22
    iput-object p2, p0, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method


# virtual methods
.method public bindFollowButtonViewHolder(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 0

    .line 26
    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->setTopic(Lorg/schema/evie/topics/Topic;)V

    .line 27
    invoke-virtual {p1, p3}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->setScreenInfo(Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    .line 28
    iget-object p2, p0, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->mFollowState:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    return-void
.end method

.method public setRecommendedSubPosition(I)V
    .locals 1

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->mIsFromRecommended:Z

    .line 37
    iput p1, p0, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->mRecommendedSubPosition:I

    return-void
.end method

.method public setState(Lcom/evie/sidescreen/personalize/FollowState;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->mFollowState:Lcom/evie/sidescreen/personalize/FollowState;

    return-void
.end method

.method public setTile(Lcom/evie/models/sidescreen/data/SideScreenContentTile;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    return-void
.end method
