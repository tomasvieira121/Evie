.class public Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "PersonalizePagePresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/personalize/TopicsListViewHolder;",
        ">;",
        "Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;"
    }
.end annotation


# instance fields
.field private final mParent:Lcom/evie/sidescreen/personalize/PersonalizePresenter;

.field private final mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

.field private final mTitle:Ljava/lang/String;

.field private final mTopicItemPresenterFactory:Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/personalize/PersonalizePresenter;Ljava/lang/String;Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;)V
    .locals 0
    .param p4    # Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 35
    iput-object p2, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->mParent:Lcom/evie/sidescreen/personalize/PersonalizePresenter;

    .line 36
    iput-object p4, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->mTopicItemPresenterFactory:Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;

    .line 37
    iput-object p3, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 57
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->setItemPresenters(Ljava/util/List;)V

    .line 59
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->showLoading()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/TopicsListViewHolder;
    .locals 1

    .line 47
    new-instance v0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 42
    sget v0, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->ID:I

    return v0
.end method

.method public load(Lcom/evie/models/topics/data/PersonalizePage;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/models/topics/data/PersonalizePage;",
            "Ljava/util/List<",
            "Lorg/schema/Id;",
            ">;",
            "Ljava/util/List<",
            "Lorg/schema/Id;",
            ">;)V"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 69
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schema/Id;

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v2}, Lorg/schema/Id;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {v2}, Lorg/schema/Id;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_1
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 76
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schema/Id;

    if-eqz v2, :cond_2

    .line 77
    invoke-virtual {v2}, Lorg/schema/Id;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 78
    invoke-virtual {v2}, Lorg/schema/Id;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 p3, 0x1

    .line 83
    invoke-virtual {p1}, Lcom/evie/models/topics/data/PersonalizePage;->getSections()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/models/topics/data/PersonalizeSection;

    .line 84
    invoke-virtual {v2}, Lcom/evie/models/topics/data/PersonalizeSection;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 85
    new-instance v3, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;

    invoke-virtual {v2}, Lcom/evie/models/topics/data/PersonalizeSection;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Lcom/evie/sidescreen/personalize/TopicHeaderItemPresenter;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 p3, 0x0

    .line 89
    invoke-virtual {v2}, Lcom/evie/models/topics/data/PersonalizeSection;->getTopics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schema/evie/topics/Topic;

    .line 90
    invoke-virtual {v3}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 91
    invoke-virtual {v3}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 93
    sget-object v6, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    if-eqz v4, :cond_6

    .line 95
    sget-object v6, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    .line 97
    sget-object v6, Lcom/evie/sidescreen/personalize/FollowState;->BLOCKED:Lcom/evie/sidescreen/personalize/FollowState;

    .line 100
    :cond_7
    :goto_3
    iget-object v4, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->mTopicItemPresenterFactory:Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;

    iget-object v5, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {v4, v3, v6, v5}, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;->create(Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/personalize/FollowState;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    move-result-object v3

    .line 101
    invoke-virtual {v3, p0}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->setFollowStateChangedListener(Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;)V

    .line 102
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 106
    :cond_8
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->setItemPresenters(Ljava/util/List;)V

    .line 107
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->hideLoading()V

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->onBindViewHolder(Lcom/evie/sidescreen/personalize/TopicsListViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/personalize/TopicsListViewHolder;)V
    .locals 0

    return-void
.end method

.method public onFollowStateChanged(Lcom/evie/sidescreen/personalize/TopicItemPresenter;)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;->mParent:Lcom/evie/sidescreen/personalize/PersonalizePresenter;

    invoke-virtual {p1, p0}, Lcom/evie/sidescreen/personalize/PersonalizePresenter;->onFollowStateChanged(Lcom/evie/sidescreen/personalize/PersonalizePagePresenter;)V

    return-void
.end method
