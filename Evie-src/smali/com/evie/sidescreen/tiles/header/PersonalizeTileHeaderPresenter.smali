.class public Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;
.super Lcom/evie/sidescreen/tiles/header/TileHeaderPresenter;
.source "PersonalizeTileHeaderPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;
.implements Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/header/TileHeaderPresenter<",
        "Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;",
        ">;",
        "Lcom/evie/sidescreen/tiles/TileBackgroundItemDecoration$TileBackgroundContractor;",
        "Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private final mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field private mDebugDataUsage:Ljava/lang/Runnable;

.field private mDebugDataUsageEnabled:Z

.field private final mEnableDataDebug:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableDataDebugDisposable:Lio/reactivex/disposables/Disposable;

.field private mHandler:Landroid/os/Handler;

.field private final mSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

.field private final mSideScreenConfiguration:Lcom/evie/sidescreen/SideScreenConfiguration;


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;Lcom/evie/sidescreen/SideScreenConfiguration;)V
    .locals 2
    .param p2    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p3    # Lcom/evie/sidescreen/ActivityStarter;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p4    # Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Lcom/evie/sidescreen/SideScreenConfiguration;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            "Lcom/evie/sidescreen/ActivityStarter;",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            "Lcom/evie/sidescreen/SideScreenConfiguration;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/header/TileHeaderPresenter;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mDebugDataUsageEnabled:Z

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter$1;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter$1;-><init>(Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;)V

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mDebugDataUsage:Ljava/lang/Runnable;

    .line 44
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mEnableDataDebug:Lio/reactivex/Observable;

    .line 45
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    .line 46
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 47
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    .line 48
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mSideScreenConfiguration:Lcom/evie/sidescreen/SideScreenConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;)Ljava/lang/Runnable;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mDebugDataUsage:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mDebugDataUsageEnabled:Z

    .line 67
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;->setDefaultTitle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public backgroundReliesOnAlpha()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public backgroundReliesOnPrevAlpha()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;
    .locals 1

    .line 59
    new-instance v0, Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 54
    sget v0, Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/header/PersonalizeTilesHeaderViewHolder;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mEnableDataDebug:Lio/reactivex/Observable;

    new-instance v0, Lcom/evie/sidescreen/tiles/header/-$$Lambda$PersonalizeTileHeaderPresenter$PR2Q7lhTW4lOb2C9HvNZLkF5Vsg;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/tiles/header/-$$Lambda$PersonalizeTileHeaderPresenter$PR2Q7lhTW4lOb2C9HvNZLkF5Vsg;-><init>(Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mEnableDataDebugDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onClickPersonalizeLink()V
    .locals 4

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "personalize"

    .line 114
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screen_type"

    const-string v2, "side_screen"

    .line 115
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v2, "ev_ss_tap"

    invoke-virtual {v1, v2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "bottom_bar"

    .line 118
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mSideScreenConfiguration:Lcom/evie/sidescreen/SideScreenConfiguration;

    invoke-virtual {v1}, Lcom/evie/sidescreen/SideScreenConfiguration;->getOnboardingFlow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    .line 119
    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->getHasFinishedPersonalizeOnboarding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const-class v2, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeOnboardingActivity;

    invoke-virtual {v0, v2}, Lcom/evie/sidescreen/ActivityStarter;->getLocalActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 121
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const-class v2, Lcom/evie/sidescreen/personalize/PersonalizeActivity;

    invoke-virtual {v0, v2}, Lcom/evie/sidescreen/ActivityStarter;->getLocalActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    .line 125
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {v0, v3}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->setHasOpenedPersonalize(Z)V

    return-void
.end method

.method protected onUnbindViewHolder()V
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/header/TileHeaderPresenter;->onUnbindViewHolder()V

    .line 78
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mEnableDataDebugDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mEnableDataDebugDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mEnableDataDebugDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/header/TileHeaderPresenter;->onVisibilityChanged(Z)V

    .line 102
    iget-boolean v0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mDebugDataUsageEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mDebugDataUsage:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenter;->mDebugDataUsage:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public shouldFillInBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldRoundBottomCorners()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldRoundTopCorners()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowBottomTileDivider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowTopTileDivider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
