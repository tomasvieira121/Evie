.class public Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;
.super Landroidx/fragment/app/Fragment;
.source "RelatedArticlesFragment.java"


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

.field private mPresenters:Ljava/util/List;
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

.field mTopLevelTilePresenterFactory:Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".screenInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->EXTRA_SCREEN_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 47
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mActive:Lio/reactivex/subjects/BehaviorSubject;

    .line 55
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;Ljava/lang/String;ZI)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->getRelatedContent(Ljava/lang/String;ZI)V

    return-void
.end method

.method public static createInstance(Lorg/schema/NewsArticle;Ljava/lang/String;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;
    .locals 2

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    sget-object v1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->EXTRA_ARTICLE:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "com.evie.sidescreen.article_id"

    .line 70
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->EXTRA_SCREEN_INFO:Ljava/lang/String;

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 73
    new-instance p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;-><init>()V

    .line 74
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private getRelatedContent(Ljava/lang/String;ZI)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    .line 141
    invoke-virtual {v2, p1, p2, v0}, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->getRelatedContent(Ljava/lang/String;ZLjava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 142
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 143
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedArticlesFragment$eBk6zXY61Apc4rxxEyg_YI5jMtg;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedArticlesFragment$eBk6zXY61Apc4rxxEyg_YI5jMtg;-><init>(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;ILjava/lang/String;Z)V

    .line 144
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 140
    invoke-virtual {v1, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public static synthetic lambda$getRelatedContent$0(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;ILjava/lang/String;ZLcom/evie/common/data/Lce;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    invoke-virtual {p4}, Lcom/evie/common/data/Lce;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p4}, Lcom/evie/common/data/Lce;->getErrorData()Ljava/lang/Throwable;

    move-result-object p4

    instance-of p4, p4, Ljava/io/IOException;

    if-eqz p4, :cond_1

    const/4 p4, 0x4

    if-ge p1, p4, :cond_1

    .line 147
    new-instance p4, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment$1;

    invoke-direct {p4, p0, p2, p3, p1}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment$1;-><init>(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;Ljava/lang/String;ZI)V

    .line 151
    iget-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mHandler:Landroid/os/Handler;

    const/16 p3, 0x3e8

    shl-int p1, p3, p1

    int-to-long v0, p1

    invoke-virtual {p2, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p4}, Lcom/evie/common/data/Lce;->isLoading()Z

    move-result p1

    if-nez p1, :cond_1

    .line 154
    invoke-virtual {p4}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;

    if-eqz p1, :cond_1

    .line 156
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->populateRelatedContent(Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private populateArticle()V
    .locals 8

    .line 126
    new-instance v2, Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/evie/models/sidescreen/data/TileType;->ARTICLE_SEED:Lcom/evie/models/sidescreen/data/TileType;

    const/4 v6, 0x0

    invoke-direct {v2, v0, v1, v6}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;-><init>(Ljava/lang/String;Lcom/evie/models/sidescreen/data/TileType;I)V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mPresenters:Ljava/util/List;

    .line 129
    iget-object v7, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mPresenters:Ljava/util/List;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mTopLevelTilePresenterFactory:Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mArticle:Lorg/schema/NewsArticle;

    iget-object v5, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;->create(Landroid/content/Context;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/Thing;Lorg/schema/Thing;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mPresenters:Ljava/util/List;

    invoke-virtual {v0, v1, v6}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->setItemPresenters(Ljava/util/List;Z)V

    return-void
.end method

.method private populateRelatedContent(Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;)V
    .locals 10

    .line 163
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getSeed()Lorg/schema/NewsArticle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getSeed()Lorg/schema/NewsArticle;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mArticle:Lorg/schema/NewsArticle;

    .line 165
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0, v2, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->setArticle(Lorg/schema/NewsArticle;Z)V

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->populateArticle()V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mArticle:Lorg/schema/NewsArticle;

    if-nez v0, :cond_3

    .line 170
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;

    if-eqz p1, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->setArticle(Lorg/schema/NewsArticle;Z)V

    :cond_2
    return-void

    .line 176
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getArticleBody()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 177
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mPresenters:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getArticleBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;->setArticleBody(Ljava/lang/String;)V

    .line 180
    :cond_4
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getObjects()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getLayout()Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getLayout()Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/models/sidescreen/data/SideScreenContentLayout;->getTiles()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getLayout()Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/models/sidescreen/data/SideScreenContentLayout;->getTiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 181
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mPresenters:Ljava/util/List;

    new-instance v3, Lcom/evie/sidescreen/CustomPresenter;

    sget v4, Lcom/evie/sidescreen/R$layout;->ss_related_articles_header:I

    invoke-direct {v3, v4, v2, v1}, Lcom/evie/sidescreen/CustomPresenter;-><init>(IZZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getLayout()Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/models/sidescreen/data/SideScreenContentLayout;->getTiles()Ljava/util/List;

    move-result-object v6

    .line 184
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mPresenters:Ljava/util/List;

    iget-object v3, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mTopLevelTilePresenterFactory:Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    .line 185
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenRelatedContent;->getObjects()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x1

    sget-object v8, Lcom/evie/models/sidescreen/data/TileType;->RELATED_ARTICLE:Lcom/evie/models/sidescreen/data/TileType;

    iget-object v9, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 184
    invoke-virtual/range {v3 .. v9}, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;->processTiles(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILcom/evie/models/sidescreen/data/TileType;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mPresenters:Ljava/util/List;

    invoke-virtual {p1, v0, v2}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->setItemPresenters(Ljava/util/List;Z)V

    :cond_5
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 82
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 83
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 84
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 90
    sget p3, Lcom/evie/sidescreen/R$layout;->ss_topics_list_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 196
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 95
    sget p2, Lcom/evie/sidescreen/R$id;->recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 96
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance p2, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-direct {p2}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;-><init>()V

    iput-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    .line 98
    iget-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 99
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 100
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object p2, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->EXTRA_SCREEN_INFO:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object p2, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->EXTRA_ARTICLE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/schema/NewsArticle;

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mArticle:Lorg/schema/NewsArticle;

    .line 109
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mArticle:Lorg/schema/NewsArticle;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->populateArticle()V

    .line 111
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p1}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->getRelatedContent(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.evie.sidescreen.article_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mArticleId:Ljava/lang/String;

    .line 114
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mArticleId:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p2}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->getRelatedContent(Ljava/lang/String;ZI)V

    :goto_0
    return-void
.end method

.method public setArticle(Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 1

    .line 119
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mArticle:Lorg/schema/NewsArticle;

    .line 120
    iput-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 121
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->populateArticle()V

    .line 122
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p1}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->getRelatedContent(Ljava/lang/String;ZI)V

    return-void
.end method
