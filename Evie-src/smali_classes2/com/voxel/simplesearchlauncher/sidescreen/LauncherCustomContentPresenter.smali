.class public Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;
.super Ljava/lang/Object;
.source "LauncherCustomContentPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/SideScreenPresenter$SideScreenScrollListener;
.implements Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation


# instance fields
.field private mActivated:Z

.field private final mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private final mConvertToCelsius:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTopEmptyScrollDistance:I

.field private mDisposed:Z

.field private final mLauncher:Lcom/voxel/launcher3/Launcher;

.field private mMaxSearchBarElevation:I

.field private final mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mRevealProgress:F

.field private mSearchBarBackgroundColorOffset:F

.field private mSearchScrollPosition:I

.field private final mSideScreen:Lcom/evie/sidescreen/SideScreen;

.field private mViewHolder:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/Launcher;Landroid/content/Context;Lcom/evie/sidescreen/SideScreenSharedDependencies;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V
    .locals 3
    .param p2    # Landroid/content/Context;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p3    # Lcom/evie/sidescreen/SideScreenSharedDependencies;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p4    # Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mActivated:Z

    .line 37
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mDisposed:Z

    .line 49
    iput v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSearchScrollPosition:I

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSearchBarBackgroundColorOffset:F

    .line 55
    new-instance v1, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter$1;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter$1;-><init>(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;)V

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 69
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 70
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0701df

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mMaxSearchBarElevation:I

    .line 71
    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    .line 72
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getUseCelsius()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mConvertToCelsius:Lio/reactivex/subjects/BehaviorSubject;

    .line 74
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p4, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, p4}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 76
    invoke-static {}, Lcom/evie/sidescreen/SideScreenDependencies;->builder()Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;

    move-result-object p1

    new-instance p4, Lcom/evie/sidescreen/LauncherInfo;

    .line 77
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p4, v1, v2}, Lcom/evie/sidescreen/LauncherInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {p1, p4}, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->launcherInfo(Lcom/evie/sidescreen/LauncherInfo;)Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;

    move-result-object p1

    new-instance p4, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter$2;

    invoke-direct {p4, p0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter$2;-><init>(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;)V

    .line 78
    invoke-virtual {p1, p4}, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->activityOverrides(Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;)Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;

    move-result-object p1

    new-instance p4, Lcom/voxel/simplesearchlauncher/sidescreen/-$$Lambda$LauncherCustomContentPresenter$L_NeLYk49wj-MLfjimi_Bb4H0rU;

    invoke-direct {p4, p0}, Lcom/voxel/simplesearchlauncher/sidescreen/-$$Lambda$LauncherCustomContentPresenter$L_NeLYk49wj-MLfjimi_Bb4H0rU;-><init>(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;)V

    .line 99
    invoke-virtual {p1, p4}, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->popupListener(Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;)Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;

    move-result-object p1

    new-instance p4, Lcom/evie/common/AbTestConfiguration;

    invoke-direct {p4, p2}, Lcom/evie/common/AbTestConfiguration;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p1, p4}, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->abTestConfiguration(Lcom/evie/common/AbTestConfiguration;)Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/evie/sidescreen/SideScreenDependencies$SideScreenDependenciesBuilder;->build()Lcom/evie/sidescreen/SideScreenDependencies;

    move-result-object p1

    .line 107
    invoke-static {}, Lcom/evie/sidescreen/SideScreenSettings;->builder()Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;

    move-result-object p2

    .line 108
    invoke-virtual {p2, v0}, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->isRtl(Z)Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;

    move-result-object p2

    .line 109
    invoke-virtual {p2, v0}, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->backgroundEnabled(Z)Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;

    move-result-object p2

    .line 110
    invoke-virtual {p2, v0}, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->searchEnabled(Z)Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;

    move-result-object p2

    .line 111
    invoke-virtual {p2, v0}, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->frequentlyUsedEnabled(Z)Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;

    move-result-object p2

    iget-object p4, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mConvertToCelsius:Lio/reactivex/subjects/BehaviorSubject;

    .line 112
    invoke-virtual {p2, p4}, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->convertToCelsius(Lio/reactivex/Observable;)Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;

    move-result-object p2

    const/4 p4, 0x1

    .line 113
    invoke-virtual {p2, p4}, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->isFullscreen(Z)Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;

    move-result-object p2

    .line 114
    invoke-virtual {p2}, Lcom/evie/sidescreen/SideScreenSettings$SideScreenSettingsBuilder;->build()Lcom/evie/sidescreen/SideScreenSettings;

    move-result-object p2

    .line 116
    new-instance p4, Lcom/evie/sidescreen/SideScreen;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p4, v0, p1, p3, p2}, Lcom/evie/sidescreen/SideScreen;-><init>(Landroid/app/Activity;Lcom/evie/sidescreen/SideScreenDependencies;Lcom/evie/sidescreen/SideScreenSharedDependencies;Lcom/evie/sidescreen/SideScreenSettings;)V

    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSideScreen:Lcom/evie/sidescreen/SideScreen;

    .line 117
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSideScreen:Lcom/evie/sidescreen/SideScreen;

    invoke-virtual {p1}, Lcom/evie/sidescreen/SideScreen;->getSideScreenPresenter()Lcom/evie/sidescreen/SideScreenPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/evie/sidescreen/SideScreenPresenter;->setScrollListener(Lcom/evie/sidescreen/SideScreenPresenter$SideScreenScrollListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mConvertToCelsius:Lio/reactivex/subjects/BehaviorSubject;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;)Lcom/voxel/launcher3/Launcher;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    return-object p0
.end method

.method private getMaxSearchBarScrollPosition()I
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getSearchBarHiddenHeight()I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;F)Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getSearchDropTargetBarAlpha()Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, p0, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    const/4 p1, 0x1

    return p1
.end method

.method private updateSearchScrollPosition()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getQsbSearchViewScroller()Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    move-result-object v0

    iget v1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSearchScrollPosition:I

    int-to-float v1, v1

    iget v2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mRevealProgress:F

    mul-float v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->put(Ljava/lang/Object;F)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSideScreen:Lcom/evie/sidescreen/SideScreen;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreen;->cleanup()V

    .line 233
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mDisposed:Z

    return-void
.end method

.method public getSideScreen()Lcom/evie/sidescreen/SideScreen;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSideScreen:Lcom/evie/sidescreen/SideScreen;

    return-object v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mDisposed:Z

    return v0
.end method

.method public isScrollingAllowed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCustomContentScrollProgressChanged(FF)V
    .locals 5

    .line 141
    iput p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mRevealProgress:F

    .line 143
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mViewHolder:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->setBackgroundAlpha(F)V

    .line 146
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSideScreen:Lcom/evie/sidescreen/SideScreen;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreen;->getSideScreenPresenter()Lcom/evie/sidescreen/SideScreenPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/SideScreenPresenter;->setScreenScrollXProgress(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    .line 150
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/launcher3/Workspace;->numCustomPages()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/CellLayout;

    .line 151
    invoke-virtual {v2, v1}, Lcom/voxel/launcher3/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 154
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v2

    const v3, 0x3f828f5c    # 1.02f

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v2

    mul-float v4, p2, v3

    invoke-virtual {v2, v4}, Lcom/voxel/launcher3/Hotseat;->setTranslationX(F)V

    .line 156
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/Hotseat;->getBackgroundView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 157
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->getHotseatAlpha()Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->getIndicatorContainer()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->getIndicatorContainer()Landroid/view/View;

    move-result-object v2

    mul-float p2, p2, v3

    invoke-virtual {v2, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 163
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/voxel/launcher3/Launcher;->getIndicatorAlpha()Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object p2

    invoke-virtual {p2, p0, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    .line 166
    :cond_1
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarDesktopEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    .line 167
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/voxel/launcher3/Launcher;->getQsbSearchViewScrollerModifier()Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    move-result-object p2

    iget v1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mRevealProgress:F

    sub-float/2addr v0, v1

    invoke-virtual {p2, p0, v0}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->put(Ljava/lang/Object;F)V

    .line 170
    :cond_2
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->updateSearchScrollPosition()V

    .line 173
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/voxel/launcher3/Launcher;->getQsbSearchView()Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    move-result-object p2

    iget v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSearchBarBackgroundColorOffset:F

    mul-float v0, v0, p1

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setBackgroundAlternativeFactorOffset(F)V

    return-void
.end method

.method public onHide()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSideScreen:Lcom/evie/sidescreen/SideScreen;

    sget-object v1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->HIDE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/SideScreen;->onLifecycleEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    .line 136
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->finishScreenView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSideScreen:Lcom/evie/sidescreen/SideScreen;

    sget-object v1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->PAUSE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/SideScreen;->onLifecycleEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSideScreen:Lcom/evie/sidescreen/SideScreen;

    sget-object v1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->RESUME:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/SideScreen;->onLifecycleEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    return-void
.end method

.method public onShow(Z)V
    .locals 7

    .line 124
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mActivated:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mActivated:Z

    .line 126
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSideScreen:Lcom/evie/sidescreen/SideScreen;

    invoke-virtual {p1}, Lcom/evie/sidescreen/SideScreen;->activate()V

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSideScreen:Lcom/evie/sidescreen/SideScreen;

    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/SideScreen;->onLifecycleEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    .line 129
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v2, "side-screen"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->startScreenView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v0, "ev_ss_active"

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onSideScreenScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    return-void
.end method

.method public onSideScreenScrolled(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->getMaxSearchBarScrollPosition()I

    move-result p1

    .line 211
    iput p4, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mCurrentTopEmptyScrollDistance:I

    .line 213
    iget p2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mCurrentTopEmptyScrollDistance:I

    int-to-float p2, p2

    const p3, 0x3f2aaaab

    mul-float p2, p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSearchScrollPosition:I

    .line 214
    iget p2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSearchScrollPosition:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mSearchScrollPosition:I

    .line 216
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->updateSearchScrollPosition()V

    .line 219
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mViewHolder:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;

    int-to-float p2, p4

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->getSideScreen()Lcom/evie/sidescreen/SideScreen;

    move-result-object p3

    invoke-virtual {p3}, Lcom/evie/sidescreen/SideScreen;->getSideScreenPresenter()Lcom/evie/sidescreen/SideScreenPresenter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/evie/sidescreen/SideScreenPresenter;->getMaxTopEmptyScrollDistance()F

    move-result p3

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->setFullBackgroundAlpha(F)V

    return-void
.end method

.method public setViewHolder(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->mViewHolder:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;

    return-void
.end method

.method public shouldIncludeInWallpaperScroll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
