.class public Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "TopicsOnboardingBottomBarPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFinishRunnable:Ljava/lang/Runnable;

.field private final mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

.field private final mSkipRunnable:Ljava/lang/Runnable;

.field private final mTopicsModel:Lcom/evie/models/topics/TopicsModel;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/evie/models/topics/TopicsModel;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;)V
    .locals 0
    .param p3    # Lcom/evie/models/topics/TopicsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p4    # Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mSkipRunnable:Ljava/lang/Runnable;

    .line 31
    iput-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mFinishRunnable:Ljava/lang/Runnable;

    .line 32
    iput-object p3, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    .line 33
    iput-object p4, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "personalize_onboarding_saved_topics"

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->refreshFollowText()V

    :cond_0
    return-void
.end method

.method private refreshFollowText()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->getPersonalizeOnboardingList()Ljava/util/List;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v1, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->setFollowEnabled(Z)V

    .line 64
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v1, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->setFollowCount(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;
    .locals 1

    .line 44
    new-instance v0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 39
    sget v0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->onBindViewHolder(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->refreshFollowText()V

    .line 51
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    .line 52
    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->observeSharedPreferenceChanges()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingBottomBarPresenter$GtAzg0g50DqkNZPmIQTMCmhk_cE;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingBottomBarPresenter$GtAzg0g50DqkNZPmIQTMCmhk_cE;-><init>(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;)V

    .line 53
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onFollowButton()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 75
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->getPersonalizeOnboardingList()Ljava/util/List;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    invoke-virtual {v1, v0}, Lcom/evie/models/topics/TopicsModel;->followTopics(Ljava/util/List;)V

    .line 78
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->setPersonalizeOnboardingList(Ljava/util/List;)V

    .line 79
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->setHasFinishedPersonalizeOnboarding(Z)V

    return-void
.end method

.method public onSkip()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mSkipRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 69
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->setPersonalizeOnboardingList(Ljava/util/List;)V

    .line 70
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->setHasFinishedPersonalizeOnboarding(Z)V

    return-void
.end method
