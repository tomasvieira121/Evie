.class public Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;
.super Landroidx/fragment/app/Fragment;
.source "RelatedVideosFragment.java"


# static fields
.field private static final EXTRA_SCREEN_INFO:Ljava/lang/String;


# instance fields
.field private mActive:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

.field private mArticle:Lorg/schema/NewsArticle;

.field private mArticleId:Ljava/lang/String;

.field mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private mHandler:Landroid/os/Handler;

.field mPresenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

.field private mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

.field mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

.field mTopLevelTilePresenterFactory:Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

.field mTopicItemPresenterFactory:Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".screenInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->EXTRA_SCREEN_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 54
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mActive:Lio/reactivex/subjects/BehaviorSubject;

    .line 68
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;Ljava/lang/String;ZI)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->getRelatedContent(Ljava/lang/String;ZI)V

    return-void
.end method

.method public static createInstance(Lorg/schema/NewsArticle;Ljava/lang/String;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;
    .locals 2

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    sget-object v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->EXTRA_ARTICLE:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "com.evie.sidescreen.article_id"

    .line 83
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->EXTRA_SCREEN_INFO:Ljava/lang/String;

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 86
    new-instance p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;-><init>()V

    .line 87
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private getRelatedContent(Ljava/lang/String;ZI)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    .line 155
    invoke-virtual {v2, p1, p2, v0}, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->getRelatedContent(Ljava/lang/String;ZLjava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 156
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 157
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosFragment$rTcnn4mAwLgAkZBlv0emvk2tQaA;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosFragment$rTcnn4mAwLgAkZBlv0emvk2tQaA;-><init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;ILjava/lang/String;Z)V

    .line 158
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 154
    invoke-virtual {v1, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public static synthetic lambda$getRelatedContent$0(Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;ILjava/lang/String;ZLcom/evie/common/data/Lce;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    invoke-virtual {p4}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p4}, Lcom/evie/common/data/Lce;->getErrorData()Ljava/lang/Throwable;

    move-result-object p4

    instance-of p4, p4, Ljava/io/IOException;

    if-eqz p4, :cond_1

    const/4 p4, 0x5

    if-ge p1, p4, :cond_1

    .line 161
    new-instance p4, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment$1;

    invoke-direct {p4, p0, p2, p3, p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment$1;-><init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;Ljava/lang/String;ZI)V

    .line 165
    iget-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mHandler:Landroid/os/Handler;

    const/16 p3, 0x3e8

    shl-int p1, p3, p1

    int-to-long v0, p1

    invoke-virtual {p2, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p4}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result p1

    if-nez p1, :cond_1

    .line 168
    invoke-virtual {p4}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;

    if-eqz p1, :cond_1

    .line 170
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->populateRelatedContent(Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private populateArticle()V
    .locals 8

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mPresenters:Ljava/util/List;

    .line 143
    new-instance v3, Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/evie/models/sidescreen/data/TileType;->VIDEO_SEED:Lcom/evie/models/sidescreen/data/TileType;

    const/4 v7, 0x0

    invoke-direct {v3, v0, v1, v7}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;-><init>(Ljava/lang/String;Lcom/evie/models/sidescreen/data/TileType;I)V

    .line 144
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mPresenters:Ljava/util/List;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mTopLevelTilePresenterFactory:Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mArticle:Lorg/schema/NewsArticle;

    iget-object v6, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;->create(Landroid/content/Context;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/Thing;Lorg/schema/Thing;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mPresenters:Ljava/util/List;

    invoke-virtual {v0, v1, v7}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->setItemPresenters(Ljava/util/List;Z)V

    return-void
.end method

.method private populateRelatedContent(Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;)V
    .locals 10

    .line 177
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getSeed()Lorg/schema/NewsArticle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getSeed()Lorg/schema/NewsArticle;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mArticle:Lorg/schema/NewsArticle;

    .line 179
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    iget-object v3, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0, v3, v2}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setArticle(Lorg/schema/NewsArticle;I)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mArticle:Lorg/schema/NewsArticle;

    if-nez v0, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-virtual {p1, v1, v2}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setArticle(Lorg/schema/NewsArticle;I)V

    :cond_1
    return-void

    .line 187
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->populateArticle()V

    .line 190
    :cond_3
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getPublisher()Lcom/evie/models/sidescreen/data/RelatedContentPublisher;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 191
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getPublisher()Lcom/evie/models/sidescreen/data/RelatedContentPublisher;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/evie/models/sidescreen/data/RelatedContentPublisher;->getTopics()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/evie/models/sidescreen/data/RelatedContentPublisher;->getTopics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 193
    invoke-virtual {v0}, Lcom/evie/models/sidescreen/data/RelatedContentPublisher;->getTopics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schema/evie/topics/Topic;

    .line 195
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getPublisher()Lcom/evie/models/sidescreen/data/RelatedContentPublisher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evie/models/sidescreen/data/RelatedContentPublisher;->getFollows()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 197
    iget-object v5, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mTopicItemPresenterFactory:Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    :goto_2
    iget-object v6, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {v5, v0, v3, v6}, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;->create(Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/personalize/FollowState;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->setDarkTheme()V

    .line 199
    invoke-virtual {v0, v4}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->setShouldShowTileRowDividers(Z)V

    .line 200
    iget-object v3, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mPresenters:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    const-string v0, "null topic"

    .line 202
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getObjects()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getLayout()Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getLayout()Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/models/sidescreen/data/SideScreenContentLayout;->getTiles()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getLayout()Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/models/sidescreen/data/SideScreenContentLayout;->getTiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 210
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/AutoplayPresenter;

    iget-object v3, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    iget-object v4, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {v4}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->getPlaylistAutoplayEnabled()Z

    move-result v4

    invoke-direct {v0, v3, v1, v4}, Lcom/evie/sidescreen/tiles/videos/AutoplayPresenter;-><init>(Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Z)V

    .line 211
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mPresenters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getLayout()Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/models/sidescreen/data/SideScreenContentLayout;->getTiles()Ljava/util/List;

    move-result-object v6

    .line 214
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mPresenters:Ljava/util/List;

    iget-object v3, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mTopLevelTilePresenterFactory:Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    .line 215
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getObjects()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x1

    sget-object v8, Lcom/evie/models/sidescreen/data/TileType;->PLAYLIST_ITEM:Lcom/evie/models/sidescreen/data/TileType;

    iget-object v9, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 214
    invoke-virtual/range {v3 .. v9}, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;->processTiles(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILcom/evie/models/sidescreen/data/TileType;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    :cond_8
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mPresenters:Ljava/util/List;

    invoke-virtual {p1, v0, v2}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->setItemPresenters(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public getNextArticle()Lorg/schema/NewsArticle;
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mPresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 226
    instance-of v2, v1, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;

    if-eqz v2, :cond_0

    .line 227
    check-cast v1, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;

    invoke-virtual {v1}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;->getArticle()Lorg/schema/NewsArticle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 95
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 96
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 97
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 103
    sget p3, Lcom/evie/sidescreen/R$layout;->ss_topics_list_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 244
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 108
    sget p2, Lcom/evie/sidescreen/R$id;->recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 109
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/evie/sidescreen/R$color;->dark_theme_bg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 110
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance p2, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-direct {p2}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;-><init>()V

    iput-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    .line 112
    iget-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 113
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 114
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object p2, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->EXTRA_SCREEN_INFO:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/analytics/data/ScreenInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    sget-object v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->EXTRA_ARTICLE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lorg/schema/NewsArticle;

    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {p0, p2, p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->setArticle(Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    goto :goto_1

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "com.evie.sidescreen.article_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mArticleId:Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 129
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mArticleId:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->getRelatedContent(Ljava/lang/String;ZI)V

    :goto_1
    return-void
.end method

.method public setArticle(Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 1

    .line 134
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mArticle:Lorg/schema/NewsArticle;

    .line 135
    iput-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 136
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->populateArticle()V

    .line 137
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p1}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->getRelatedContent(Ljava/lang/String;ZI)V

    return-void
.end method

.method public updateFollowingStatus(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 234
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/FollowState;->determineFollowState(ZZ)Lcom/evie/sidescreen/personalize/FollowState;

    move-result-object p1

    .line 235
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mPresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mPresenters:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->mPresenters:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->setFollowState(Lcom/evie/sidescreen/personalize/FollowState;)V

    :cond_0
    return-void
.end method
