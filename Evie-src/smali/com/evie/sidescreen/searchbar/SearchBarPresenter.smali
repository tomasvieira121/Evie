.class public Lcom/evie/sidescreen/searchbar/SearchBarPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "SearchBarPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityOverrides:Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private final mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

.field private final mContext:Landroid/content/Context;

.field private final mLauncherInfo:Lcom/evie/sidescreen/LauncherInfo;

.field private final mSearchBarBackgroundModel:Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/LauncherInfo;Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p2    # Lcom/evie/sidescreen/ActivityStarter;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p3    # Lcom/evie/sidescreen/LauncherInfo;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p4    # Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 43
    iput-object p3, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mLauncherInfo:Lcom/evie/sidescreen/LauncherInfo;

    .line 44
    iput-object p4, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mActivityOverrides:Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

    .line 45
    iput-object p5, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    .line 46
    iput-object p6, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mSearchBarBackgroundModel:Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel;

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/evie/sidescreen/searchbar/SearchBarPresenter;Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->hasShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->show()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    iget-object v1, p1, Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    iget-boolean p1, p1, Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;->mShouldInvert:Z

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->setShouldInvert(Z)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/evie/sidescreen/searchbar/SearchBarPresenter;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->handleUnanticipatedException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;
    .locals 1

    .line 56
    new-instance v0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 51
    sget v0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->onBindViewHolder(Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;)V
    .locals 3

    .line 61
    iget-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mSearchBarBackgroundModel:Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel;

    .line 62
    invoke-virtual {v0}, Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel;->getObservable()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/searchbar/-$$Lambda$SearchBarPresenter$wCsZwgTFm6vp6DD4TnIaw9Pmhbs;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/searchbar/-$$Lambda$SearchBarPresenter$wCsZwgTFm6vp6DD4TnIaw9Pmhbs;-><init>(Lcom/evie/sidescreen/searchbar/SearchBarPresenter;)V

    new-instance v2, Lcom/evie/sidescreen/searchbar/-$$Lambda$SearchBarPresenter$jh80x7dFDQOL43ysr7Eq5hZfpn0;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/searchbar/-$$Lambda$SearchBarPresenter$jh80x7dFDQOL43ysr7Eq5hZfpn0;-><init>(Lcom/evie/sidescreen/searchbar/SearchBarPresenter;)V

    .line 63
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSearchBarClick(Landroid/view/View;)V
    .locals 3

    .line 74
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "item_type"

    const-string v1, "search"

    .line 75
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_type"

    const-string v1, "side_screen"

    .line 76
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {v0, v1, p1}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 79
    iget-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mActivityOverrides:Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;->onSearchBarClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 82
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 83
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mContext:Landroid/content/Context;

    const-string v1, "com.evie.screen.SearchActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    return-void
.end method

.method public onSettingsClick(Landroid/view/View;)V
    .locals 3

    .line 89
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "item_type"

    const-string v1, "settings"

    .line 90
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_type"

    const-string v1, "side_screen"

    .line 91
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {v0, v1, p1}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    iget-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mActivityOverrides:Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;->onSettingsClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 97
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 98
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mContext:Landroid/content/Context;

    const-string v1, "com.evie.screen.SettingsActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_LAUNCHER_PACKAGE_NAME"

    .line 99
    iget-object v1, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mLauncherInfo:Lcom/evie/sidescreen/LauncherInfo;

    invoke-virtual {v1}, Lcom/evie/sidescreen/LauncherInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_SETTINGS_ACTIVITY_LAUNCH_INTENT"

    .line 100
    iget-object v1, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mLauncherInfo:Lcom/evie/sidescreen/LauncherInfo;

    invoke-virtual {v1}, Lcom/evie/sidescreen/LauncherInfo;->getSettingsActivityLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    return-void
.end method
