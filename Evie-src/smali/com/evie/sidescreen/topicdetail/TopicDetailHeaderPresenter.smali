.class public Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "TopicDetailHeaderPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFollowButtonHandler:Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

.field private final mOnBackListener:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;

.field private final mPopupMenuHelper:Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;

.field private final mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

.field private final mTopic:Lorg/schema/evie/topics/Topic;

.field private final mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;


# direct methods
.method public constructor <init>(Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/personalize/FollowState;Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;Lcom/evie/models/topics/TopicPersonalizationStore;Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 0
    .param p1    # Lorg/schema/evie/topics/Topic;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Lcom/evie/models/topics/TopicPersonalizationStore;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    .line 54
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-interface {p4, p2, p1}, Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;->create(Lcom/evie/sidescreen/personalize/FollowState;Lio/reactivex/disposables/CompositeDisposable;)Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mFollowButtonHandler:Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    .line 55
    iput-object p3, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mOnBackListener:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;

    .line 56
    iput-object p5, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    .line 57
    iput-object p6, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mPopupMenuHelper:Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;

    .line 58
    iput-object p7, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "topic is marked @NonNull but is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getHeaderColor(Landroid/graphics/Bitmap;)I
    .locals 2

    const v0, -0x333334

    .line 167
    :try_start_0
    new-instance v1, Landroidx/palette/graphics/Palette$Builder;

    invoke-direct {v1, p1}, Landroidx/palette/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x4

    .line 174
    invoke-virtual {v1, p1}, Landroidx/palette/graphics/Palette$Builder;->maximumColorCount(I)Landroidx/palette/graphics/Palette$Builder;

    .line 175
    invoke-virtual {v1}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v1

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getDominantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    return v0

    .line 185
    :cond_1
    invoke-virtual {v1}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    const/4 v0, 0x0

    .line 186
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(IZ)Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils$MaterialPalette;

    move-result-object p1

    .line 187
    iget p1, p1, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    return p1

    :catch_0
    return v0
.end method

.method private handleNoBackDrop(Ljava/lang/String;)V
    .locals 2

    .line 129
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    .line 132
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    const/4 v1, 0x0

    .line 134
    invoke-virtual {v0, p1, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    new-instance v1, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailHeaderPresenter$2JDsFUm_JqkYywBiwLiArpAT7JM;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailHeaderPresenter$2JDsFUm_JqkYywBiwLiArpAT7JM;-><init>(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;Lcom/facebook/datasource/DataSource;)V

    invoke-static {v1}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 155
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 156
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailHeaderPresenter$21iexpv4AWrEUEiMuwFN5pE9Vrs;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailHeaderPresenter$21iexpv4AWrEUEiMuwFN5pE9Vrs;-><init>(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;)V

    .line 157
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 136
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private handleNoLogoOrBackDrop(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    invoke-virtual {v0}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    invoke-virtual {v0}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "hashcode"

    .line 116
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 117
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils;->getPrimaryColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->setLogo(Landroid/graphics/drawable/ColorDrawable;)V

    .line 118
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils;->getSecondaryColor(I)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->setBackdrop(Landroid/graphics/drawable/ColorDrawable;)V

    return-void
.end method

.method public static synthetic lambda$handleNoBackDrop$1(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;Lcom/facebook/datasource/DataSource;)Landroid/graphics/drawable/ColorDrawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, -0x333334

    .line 140
    :try_start_0
    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->waitForFinalResult(Lcom/facebook/datasource/DataSource;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/references/CloseableReference;

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/image/CloseableImage;

    .line 143
    instance-of v2, v1, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    if-eqz v2, :cond_0

    .line 144
    check-cast v1, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/CloseableBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 145
    invoke-direct {p0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->getHeaderColor(Landroid/graphics/Bitmap;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 149
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->handleUnanticipatedException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 153
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p1

    .line 151
    :goto_1
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 152
    throw v0
.end method

.method public static synthetic lambda$handleNoBackDrop$2(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;Landroid/graphics/drawable/ColorDrawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->setBackdrop(Landroid/graphics/drawable/ColorDrawable;)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    invoke-interface {v0}, Lcom/evie/models/topics/TopicPersonalizationStore;->getTopicFollows()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    invoke-interface {v1}, Lcom/evie/models/topics/TopicPersonalizationStore;->getTopicBlocks()Ljava/util/Set;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/personalize/FollowState;->determineFollowState(Lorg/schema/evie/topics/Topic;Ljava/util/Collection;Ljava/util/Collection;)Lcom/evie/sidescreen/personalize/FollowState;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->getFollowButtonViewHolder()Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    .line 104
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mFollowButtonHandler:Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->setState(Lcom/evie/sidescreen/personalize/FollowState;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;
    .locals 1

    .line 68
    new-instance v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getFollowButtonHandler()Lcom/evie/sidescreen/personalize/IFollowButtonHandler;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mFollowButtonHandler:Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 63
    sget v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->ID:I

    return v0
.end method

.method public onBack()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mOnBackListener:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;

    invoke-interface {v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter$OnBackListener;->onBack()V

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->onBindViewHolder(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;)V
    .locals 6

    .line 73
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    invoke-virtual {v0}, Lorg/schema/evie/topics/Topic;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->setTitle(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    invoke-virtual {v0}, Lorg/schema/evie/topics/Topic;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->setDescription(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mFollowButtonHandler:Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    invoke-virtual {p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->getFollowButtonViewHolder()Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    iget-object v3, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;->bindFollowButtonViewHolder(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    const/4 v0, 0x0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    invoke-virtual {v1}, Lorg/schema/evie/topics/Topic;->getImages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->getLogoWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->getLogoAspectRatio()F

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/schema/MediaSelector;->selectMediaUrl(Ljava/util/List;IF)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 86
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    invoke-virtual {v2}, Lorg/schema/evie/topics/Topic;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->getBackdropWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->getBackdropAspectRatio()F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/schema/MediaSelector;->selectMediaUrl(Ljava/util/List;IFZ)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :catch_1
    invoke-virtual {p1, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->setLogoUri(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->setBackdropUri(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 96
    invoke-direct {p0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->handleNoBackDrop(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_1
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->handleNoLogoOrBackDrop(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;)V

    .line 101
    :goto_1
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mTopicPersonalizationStore:Lcom/evie/models/topics/TopicPersonalizationStore;

    invoke-interface {v0}, Lcom/evie/models/topics/TopicPersonalizationStore;->listenToChanges()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailHeaderPresenter$yFk6AkY4bR0oHI1nGFJCuuN0Mdo;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/topicdetail/-$$Lambda$TopicDetailHeaderPresenter$yFk6AkY4bR0oHI1nGFJCuuN0Mdo;-><init>(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onClickFollowContextButton(Landroid/view/View;)V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mPopupMenuHelper:Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;

    iget-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mTopic:Lorg/schema/evie/topics/Topic;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;->showMenuAtView(Lorg/schema/evie/topics/Topic;Landroid/content/Context;Landroid/view/View;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    return-void
.end method

.method protected onUnbindViewHolder()V
    .locals 0

    .line 196
    invoke-super {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;->onUnbindViewHolder()V

    return-void
.end method
