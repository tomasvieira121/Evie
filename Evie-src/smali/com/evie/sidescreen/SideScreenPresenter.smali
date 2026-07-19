.class public Lcom/evie/sidescreen/SideScreenPresenter;
.super Ljava/lang/Object;
.source "SideScreenPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/StackLayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/SideScreenPresenter$SideScreenScrollListener;
    }
.end annotation


# instance fields
.field private final mAbTestConfigurationModel:Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;

.field private final mActivationModel:Lcom/evie/sidescreen/ActivationModel;

.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private final mAnnouncementModel:Lcom/evie/models/announcement/AnnouncementModel;

.field private final mBackgroundModel:Lcom/evie/sidescreen/background/BackgroundModel;

.field private final mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private mIsFirstEmittedItemAfterTabChange:Z

.field private final mLayerStack:Lcom/evie/sidescreen/LayerStack;

.field private mScrollListener:Lcom/evie/sidescreen/SideScreenPresenter$SideScreenScrollListener;

.field private final mSideScreenConfiguration:Lcom/evie/sidescreen/SideScreenConfiguration;

.field private final mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

.field private mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

.field private mTabsModel:Lcom/evie/sidescreen/TabsModel;

.field private final mTabsModelFactory:Lcom/evie/sidescreen/TabsModelFactory;

.field private final mTopicsModel:Lcom/evie/models/topics/TopicsModel;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/background/BackgroundModel;Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;Lcom/evie/sidescreen/LayerStack;Lcom/evie/models/announcement/AnnouncementModel;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;Lcom/evie/models/topics/TopicsModel;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/SideScreenConfiguration;Lcom/evie/sidescreen/TabsModelFactory;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 70
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mBackgroundModel:Lcom/evie/sidescreen/background/BackgroundModel;

    .line 71
    iput-object p2, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mAbTestConfigurationModel:Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;

    .line 72
    iput-object p3, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mLayerStack:Lcom/evie/sidescreen/LayerStack;

    .line 73
    iput-object p4, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mAnnouncementModel:Lcom/evie/models/announcement/AnnouncementModel;

    .line 74
    iput-object p5, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    .line 75
    iput-object p6, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    .line 76
    iput-object p7, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 77
    iput-object p8, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 78
    iput-object p9, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenConfiguration:Lcom/evie/sidescreen/SideScreenConfiguration;

    .line 79
    iput-object p10, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mTabsModelFactory:Lcom/evie/sidescreen/TabsModelFactory;

    .line 81
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mTabsModelFactory:Lcom/evie/sidescreen/TabsModelFactory;

    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/TabsModelFactory;->create(Lio/reactivex/disposables/CompositeDisposable;)Lcom/evie/sidescreen/TabsModel;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mTabsModel:Lcom/evie/sidescreen/TabsModel;

    return-void
.end method

.method private handlePersonalizeTooltipPreference()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->getHasOpenedPersonalize()Z

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {v1}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->getHasFinishedPersonalizeOnboarding()Z

    move-result v1

    const-string v2, "classic"

    .line 186
    iget-object v3, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenConfiguration:Lcom/evie/sidescreen/SideScreenConfiguration;

    invoke-virtual {v3}, Lcom/evie/sidescreen/SideScreenConfiguration;->getOnboardingFlow()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/evie/sidescreen/SideScreenView;->setPersonalizeTooltipEnabled(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "bottom_bar"

    .line 188
    iget-object v2, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenConfiguration:Lcom/evie/sidescreen/SideScreenConfiguration;

    invoke-virtual {v2}, Lcom/evie/sidescreen/SideScreenConfiguration;->getOnboardingFlow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/SideScreenView;->setPersonalizeToolbarEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$bindSideScreenView$0(Lcom/evie/sidescreen/SideScreenPresenter;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mTabsModel:Lcom/evie/sidescreen/TabsModel;

    invoke-virtual {p1}, Lcom/evie/sidescreen/TabsModel;->getTabIndexSubject()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$bindSideScreenView$1(Lcom/evie/sidescreen/SideScreenPresenter;Ljava/lang/Integer;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mIsFirstEmittedItemAfterTabChange:Z

    .line 116
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/evie/sidescreen/SideScreenView;->shouldTabShowPersonalizeTooltip(Z)V

    .line 117
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mTabsModel:Lcom/evie/sidescreen/TabsModel;

    invoke-virtual {p1}, Lcom/evie/sidescreen/TabsModel;->getCurrentModel()Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;

    move-result-object p1

    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenPresenter;->shouldDisplayDataWarningCard()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/evie/sidescreen/SideScreenTabSectionModelInterface;->getSideScreenSections(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$bindSideScreenView$2(Lcom/evie/sidescreen/SideScreenPresenter;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    iget-boolean v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mIsFirstEmittedItemAfterTabChange:Z

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/SideScreenPresenter;->scrollToSavedPosition(Z)V

    .line 122
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mLayerStack:Lcom/evie/sidescreen/LayerStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/LayerStack;->clearToRoot(Z)V

    .line 123
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    iget-boolean v2, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mIsFirstEmittedItemAfterTabChange:Z

    invoke-virtual {v0, p1, v2}, Lcom/evie/sidescreen/SideScreenView;->showPresenters(Ljava/util/List;Z)V

    .line 124
    iput-boolean v1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mIsFirstEmittedItemAfterTabChange:Z

    return-void
.end method

.method static synthetic lambda$bindSideScreenView$3(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "has_opened_personalize"

    .line 143
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "personalize_onboarding_finished"

    .line 144
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic lambda$bindSideScreenView$4(Lcom/evie/sidescreen/SideScreenPresenter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenPresenter;->handlePersonalizeTooltipPreference()V

    return-void
.end method

.method public static synthetic lambda$bindSideScreenView$5(Lcom/evie/sidescreen/SideScreenPresenter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenPresenter;->handlePersonalizeTooltipPreference()V

    .line 154
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/SideScreenView;->setRefreshEnabled(Z)V

    return-void
.end method

.method public static synthetic lambda$bindSideScreenView$6(Lcom/evie/sidescreen/SideScreenPresenter;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/SideScreenView;->moveTabIndicator(I)V

    return-void
.end method

.method public static synthetic lambda$bindSideScreenView$7(Lcom/evie/sidescreen/SideScreenPresenter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/SideScreenView;->setUpTabs(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$bindSideScreenView$8(Lcom/evie/sidescreen/SideScreenPresenter;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    invoke-virtual {p1}, Lcom/evie/sidescreen/SideScreenView;->hideRefreshView()V

    return-void
.end method

.method private shouldDisplayDataWarningCard()Z
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->getDataWarningCardDismissed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->getWasOnboardedWithFreeBee()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.voxel.launcher3.prefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "com.evie.screen.WelcomeScreenController.PREFERENCE_CONDITIONS_ACCEPTED"

    .line 256
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->setWasOnboardedWithFreeBee(Z)V

    .line 260
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method bindSideScreenView(Lcom/evie/sidescreen/SideScreenView;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mTabsModel:Lcom/evie/sidescreen/TabsModel;

    invoke-virtual {v0}, Lcom/evie/sidescreen/TabsModel;->bindTabObservables()V

    .line 103
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    .line 105
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/SideScreenView;->setPersonalizeTooltipEnabled(Z)V

    .line 106
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/SideScreenView;->setRefreshEnabled(Z)V

    .line 109
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mAbTestConfigurationModel:Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;

    .line 110
    invoke-virtual {v0}, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->getObservable()Lio/reactivex/Observable;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    .line 111
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->cast(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$xIKycCmeWVnurwnBzjClWLJi3JM;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$xIKycCmeWVnurwnBzjClWLJi3JM;-><init>(Lcom/evie/sidescreen/SideScreenPresenter;)V

    .line 113
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$mXi7IskpBjmLKx9yKbFaE7YBTfU;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$mXi7IskpBjmLKx9yKbFaE7YBTfU;-><init>(Lcom/evie/sidescreen/SideScreenPresenter;)V

    .line 114
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 119
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$Fxldr8ar50-BD1yxVVvCjRdzKrA;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$Fxldr8ar50-BD1yxVVvCjRdzKrA;-><init>(Lcom/evie/sidescreen/SideScreenPresenter;)V

    .line 120
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 129
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    invoke-virtual {v0}, Lcom/evie/models/topics/TopicsModel;->getFollows()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 133
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mBackgroundModel:Lcom/evie/sidescreen/background/BackgroundModel;

    .line 134
    invoke-virtual {v0}, Lcom/evie/sidescreen/background/BackgroundModel;->getObservable()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/evie/sidescreen/-$$Lambda$jXQFbkv7OAsLAJPu2tNb9ewGuBo;

    invoke-direct {v2, v1}, Lcom/evie/sidescreen/-$$Lambda$jXQFbkv7OAsLAJPu2tNb9ewGuBo;-><init>(Lcom/evie/sidescreen/SideScreenView;)V

    .line 135
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 140
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    .line 142
    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->observeSharedPreferenceChanges()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$FzBX7sJIWOFU1Bvg3DlDfmdS3_0;->INSTANCE:Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$FzBX7sJIWOFU1Bvg3DlDfmdS3_0;

    .line 143
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$dSfKHmR-7ZuOVx1qyb2ttHtWZNo;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$dSfKHmR-7ZuOVx1qyb2ttHtWZNo;-><init>(Lcom/evie/sidescreen/SideScreenPresenter;)V

    .line 145
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 140
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 149
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 151
    invoke-virtual {v0}, Lcom/evie/sidescreen/ActivationModel;->getActivationObservable()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$G_LnI-uCTLoVuLWTGpKwdYgE0Mc;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$G_LnI-uCTLoVuLWTGpKwdYgE0Mc;-><init>(Lcom/evie/sidescreen/SideScreenPresenter;)V

    .line 152
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 158
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mTabsModel:Lcom/evie/sidescreen/TabsModel;

    .line 159
    invoke-virtual {v0}, Lcom/evie/sidescreen/TabsModel;->getTabIndicatorIndexSubject()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$M2jvb50mI69B3rv5bwC6dLQgowc;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$M2jvb50mI69B3rv5bwC6dLQgowc;-><init>(Lcom/evie/sidescreen/SideScreenPresenter;)V

    .line 160
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 163
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mTabsModel:Lcom/evie/sidescreen/TabsModel;

    .line 164
    invoke-virtual {v0}, Lcom/evie/sidescreen/TabsModel;->getTabEnabledSubject()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/evie/sidescreen/-$$Lambda$rmX0_1eJyDLzmehisJxIcbfpeP8;

    invoke-direct {v2, v1}, Lcom/evie/sidescreen/-$$Lambda$rmX0_1eJyDLzmehisJxIcbfpeP8;-><init>(Lcom/evie/sidescreen/SideScreenView;)V

    .line 165
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 168
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mTabsModel:Lcom/evie/sidescreen/TabsModel;

    .line 169
    invoke-virtual {v0}, Lcom/evie/sidescreen/TabsModel;->getTabLabelsSubject()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$eBnI7RLTjUZrmLp0yN3OkZYjI5U;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$eBnI7RLTjUZrmLp0yN3OkZYjI5U;-><init>(Lcom/evie/sidescreen/SideScreenPresenter;)V

    .line 170
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 168
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 173
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mTabsModel:Lcom/evie/sidescreen/TabsModel;

    .line 174
    invoke-virtual {v0}, Lcom/evie/sidescreen/TabsModel;->getTabHideRefreshSubject()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$RlOUXx2aoE1NVt6ieiNd8Mvaz5w;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/-$$Lambda$SideScreenPresenter$RlOUXx2aoE1NVt6ieiNd8Mvaz5w;-><init>(Lcom/evie/sidescreen/SideScreenPresenter;)V

    .line 175
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 173
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 178
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mLayerStack:Lcom/evie/sidescreen/LayerStack;

    invoke-virtual {p1, p0}, Lcom/evie/sidescreen/LayerStack;->push(Lcom/evie/sidescreen/StackLayer;)V

    return-void

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Binding side screen view more than once?!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mScrollListener:Lcom/evie/sidescreen/SideScreenPresenter$SideScreenScrollListener;

    .line 203
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public getMaxTopEmptyScrollDistance()F
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenView;->getMaxTopEmptyScrollDistance()F

    move-result v0

    return v0
.end method

.method public isRootLayer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClickBackground()V
    .locals 0

    return-void
.end method

.method public onPersonalizeBottomBarClick()V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const-class v1, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeOnboardingActivity;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/ActivityStarter;->getLocalActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mTabsModel:Lcom/evie/sidescreen/TabsModel;

    const-string v2, "swipe"

    invoke-virtual {v1, v2}, Lcom/evie/sidescreen/TabsModel;->onRefresh(Ljava/lang/String;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 224
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mAnnouncementModel:Lcom/evie/models/announcement/AnnouncementModel;

    invoke-virtual {v1}, Lcom/evie/models/announcement/AnnouncementModel;->cacheAnnouncement()Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 225
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mTopicsModel:Lcom/evie/models/topics/TopicsModel;

    invoke-virtual {v1}, Lcom/evie/models/topics/TopicsModel;->getFollows()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mScrollListener:Lcom/evie/sidescreen/SideScreenPresenter$SideScreenScrollListener;

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0, p1, p2}, Lcom/evie/sidescreen/SideScreenPresenter$SideScreenScrollListener;->onSideScreenScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mScrollListener:Lcom/evie/sidescreen/SideScreenPresenter$SideScreenScrollListener;

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/evie/sidescreen/SideScreenPresenter$SideScreenScrollListener;->onSideScreenScrolled(Landroidx/recyclerview/widget/RecyclerView;III)V

    :cond_0
    return-void
.end method

.method public onTabClick(I)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mTabsModel:Lcom/evie/sidescreen/TabsModel;

    iget-object v1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    .line 87
    invoke-virtual {v1}, Lcom/evie/sidescreen/SideScreenView;->findFirstvVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    .line 88
    invoke-virtual {v2}, Lcom/evie/sidescreen/SideScreenView;->findFirstVisibleItemOffset()I

    move-result v2

    .line 85
    invoke-virtual {v0, p1, v1, v2}, Lcom/evie/sidescreen/TabsModel;->onTabClick(III)V

    if-nez p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    invoke-virtual {p1}, Lcom/evie/sidescreen/SideScreenView;->showWeatherView()V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    invoke-virtual {p1}, Lcom/evie/sidescreen/SideScreenView;->hideWeatherView()V

    :goto_0
    return-void
.end method

.method public pop(Z)V
    .locals 0

    return-void
.end method

.method public scrollToSavedPosition(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 289
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mTabsModel:Lcom/evie/sidescreen/TabsModel;

    invoke-virtual {p1}, Lcom/evie/sidescreen/TabsModel;->getScrollPosition()Landroid/util/Pair;

    move-result-object p1

    .line 290
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/evie/sidescreen/SideScreenView;->scrollToPositionWithOffset(II)V

    :cond_0
    return-void
.end method

.method public setScreenScrollXProgress(F)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mSideScreenView:Lcom/evie/sidescreen/SideScreenView;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/SideScreenView;->setScreenScrollXProgress(F)V

    return-void
.end method

.method public setScrollListener(Lcom/evie/sidescreen/SideScreenPresenter$SideScreenScrollListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenPresenter;->mScrollListener:Lcom/evie/sidescreen/SideScreenPresenter$SideScreenScrollListener;

    return-void
.end method
