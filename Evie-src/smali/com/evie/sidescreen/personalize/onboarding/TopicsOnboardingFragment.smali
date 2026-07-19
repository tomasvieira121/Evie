.class public Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;
.super Landroidx/fragment/app/Fragment;
.source "TopicsOnboardingFragment.java"

# interfaces
.implements Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;


# static fields
.field private static final EXTRA_SCREEN_INFO:Ljava/lang/String;


# instance fields
.field mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mFinishRunnable:Ljava/lang/Runnable;

.field mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

.field private mSkipRunnable:Ljava/lang/Runnable;

.field private mTopicsListPresenter:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;

.field private mTopicsListViewHolder:Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

.field private mTopicsOnboardingBottomBarPresenter:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;

.field mTopicsOnboardingBottomBarPresenterFactory:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenterFactory;

.field private mTopicsOnboardingBottomBarViewHolder:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

.field mTopicsOnboardingPresenterFactory:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".screenInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->EXTRA_SCREEN_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 43
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 45
    new-instance v0, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingFragment$nLo4Lv3BcWnTgf_FrZji5-oaHKU;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingFragment$nLo4Lv3BcWnTgf_FrZji5-oaHKU;-><init>(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;)V

    iput-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mSkipRunnable:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingFragment$4eRdGZuQMHcWjRmhUUNJfijO8nI;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingFragment$4eRdGZuQMHcWjRmhUUNJfijO8nI;-><init>(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;)V

    iput-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;)V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 58
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 59
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->setPersonalizeOnboardingList(Ljava/util/List;)V

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 66
    sget p3, Lcom/evie/sidescreen/R$layout;->ss_topics_onboarding_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 99
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 100
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsListPresenter:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->dispose()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsListPresenter:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;

    .line 102
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsListViewHolder:Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    .line 103
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsOnboardingBottomBarPresenter:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;

    invoke-virtual {v1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->dispose()V

    .line 104
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsOnboardingBottomBarPresenter:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;

    .line 105
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsOnboardingBottomBarViewHolder:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

    .line 106
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public onFollowStateChanged(Lcom/evie/sidescreen/personalize/TopicItemPresenter;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 92
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 94
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsListPresenter:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->load()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 72
    new-instance p2, Lcom/evie/models/topics/data/ListTopicsRequestOptions;

    invoke-direct {p2}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;-><init>()V

    const/16 v0, 0x64

    .line 73
    invoke-virtual {p2, v0}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->setLimit(I)V

    .line 75
    new-instance v0, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const-string v1, "personalize_onboarding"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsOnboardingPresenterFactory:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2, p0, v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->create(Lcom/evie/models/topics/data/ListTopicsRequestOptions;ZLcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsListPresenter:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;

    .line 78
    new-instance p2, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    invoke-direct {p2, p1}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsListViewHolder:Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    .line 80
    iget-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsListViewHolder:Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsListPresenter:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;

    invoke-virtual {p2, v0}, Lcom/evie/sidescreen/personalize/TopicsListViewHolder;->bindPresenter(Lcom/evie/sidescreen/mvp/ItemPresenter;)V

    .line 81
    iget-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsListPresenter:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsListViewHolder:Lcom/evie/sidescreen/personalize/TopicsListViewHolder;

    invoke-virtual {p2, v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->bindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    .line 83
    iget-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsOnboardingBottomBarPresenterFactory:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenterFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mSkipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0, v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenterFactory;->create(Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsOnboardingBottomBarPresenter:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;

    .line 84
    new-instance p2, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

    invoke-direct {p2, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsOnboardingBottomBarViewHolder:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

    .line 86
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsOnboardingBottomBarViewHolder:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

    iget-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsOnboardingBottomBarPresenter:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->bindPresenter(Lcom/evie/sidescreen/mvp/ItemPresenter;)V

    .line 87
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsOnboardingBottomBarPresenter:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;

    iget-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;->mTopicsOnboardingBottomBarViewHolder:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->bindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    return-void
.end method
