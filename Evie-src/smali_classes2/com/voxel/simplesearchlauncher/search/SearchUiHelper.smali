.class public Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;
.super Ljava/lang/Object;
.source "SearchUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$ScaleState;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private mDefaultLauncherPromptShowing:Z

.field private mFeedbackPromptShowing:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

.field private final mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

.field private final mScaleState:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$ScaleState;

.field private mSearchBroadcastReceiver:Lcom/evie/search/local/LocalSearchBroadcastReceiver;

.field private mSearchDelayHandler:Landroid/os/Handler;

.field private mSearchPresenter:Lcom/evie/search/SearchPresenter;

.field private mSearchRunnable:Ljava/lang/Runnable;

.field private mSearchText:Ljava/lang/String;

.field private mSearchViewHolderFactory:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;

.field mServerUrl:Ljava/lang/String;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSpringScale:Lcom/facebook/rebound/Spring;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/view/SpringySearchView;Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;Lcom/evie/models/frequentlyused/FrequentlyUsedModel;Lcom/evie/search/AppAvailabilityProvider;Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$ScaleState;)V
    .locals 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchDelayHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$1;-><init>(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchRunnable:Ljava/lang/Runnable;

    const-string v0, ""

    .line 85
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mFeedbackPromptShowing:Z

    .line 90
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mDefaultLauncherPromptShowing:Z

    .line 99
    invoke-static {p1}, Lcom/voxel/launcher3/LauncherApplication;->getInjector(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/dagger/Injector;

    move-result-object v1

    invoke-interface {v1}, Lcom/voxel/simplesearchlauncher/dagger/Injector;->getLauncherAppComponent()Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;->inject(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V

    .line 100
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mActivity:Landroid/app/Activity;

    .line 101
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mHandler:Landroid/os/Handler;

    .line 102
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    .line 103
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    .line 104
    iput-object p6, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mScaleState:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$ScaleState;

    .line 106
    new-instance p2, Lcom/evie/search/SearchPresenter;

    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mServerUrl:Ljava/lang/String;

    invoke-direct {p2, p1, p4, p5, p3}, Lcom/evie/search/SearchPresenter;-><init>(Landroid/content/Context;Lcom/evie/models/frequentlyused/FrequentlyUsedModel;Lcom/evie/search/AppAvailabilityProvider;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 108
    new-instance p2, Lcom/evie/search/local/LocalSearchBroadcastReceiver;

    invoke-direct {p2}, Lcom/evie/search/local/LocalSearchBroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchBroadcastReceiver:Lcom/evie/search/local/LocalSearchBroadcastReceiver;

    .line 110
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    .line 111
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.PACKAGE_CHANGED"

    .line 112
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.PACKAGE_REPLACED"

    .line 113
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.PACKAGE_REMOVED"

    .line 114
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "package"

    .line 115
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 116
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchBroadcastReceiver:Lcom/evie/search/local/LocalSearchBroadcastReceiver;

    invoke-static {p3, p4, p2}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "com.evie.search.DECAY_USAGE_IF_NEEDED"

    .line 119
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchBroadcastReceiver:Lcom/evie/search/local/LocalSearchBroadcastReceiver;

    invoke-static {p3, p4, p2}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 124
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    new-instance p3, Lcom/voxel/simplesearchlauncher/search/-$$Lambda$SearchUiHelper$XlsRNcS_JijPGHJeVTZd6xSolrI;

    invoke-direct {p3, p0}, Lcom/voxel/simplesearchlauncher/search/-$$Lambda$SearchUiHelper$XlsRNcS_JijPGHJeVTZd6xSolrI;-><init>(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V

    invoke-virtual {p2, p3}, Lcom/evie/search/SearchPresenter;->setSearchListExpandListener(Lcom/evie/search/SearchPresenter$SearchListExpandListener;)V

    .line 133
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    new-instance p3, Lcom/voxel/simplesearchlauncher/search/-$$Lambda$SearchUiHelper$GMUydjc0gLllskp1cH6tRAxNU3g;

    invoke-direct {p3, p0}, Lcom/voxel/simplesearchlauncher/search/-$$Lambda$SearchUiHelper$GMUydjc0gLllskp1cH6tRAxNU3g;-><init>(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V

    invoke-virtual {p2, p3}, Lcom/evie/search/SearchPresenter;->setSearchQueryChangeListener(Lcom/evie/search/SearchPresenter$SearchQueryChangeListener;)V

    .line 138
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    new-instance p3, Lcom/voxel/simplesearchlauncher/search/-$$Lambda$SearchUiHelper$z5AVREnUVW7qZwM-JlbBof3Jtrw;

    invoke-direct {p3, p0}, Lcom/voxel/simplesearchlauncher/search/-$$Lambda$SearchUiHelper$z5AVREnUVW7qZwM-JlbBof3Jtrw;-><init>(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V

    invoke-virtual {p2, p3}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 147
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object p2

    .line 148
    invoke-virtual {p2}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSpringScale:Lcom/facebook/rebound/Spring;

    .line 149
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSpringScale:Lcom/facebook/rebound/Spring;

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p2, p3, p4}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 150
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSpringScale:Lcom/facebook/rebound/Spring;

    new-instance p3, Lcom/facebook/rebound/SpringConfig;

    const-wide p4, 0x4072c00000000000L    # 300.0

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    invoke-direct {p3, p4, p5, v0, v1}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {p2, p3}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 151
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSpringScale:Lcom/facebook/rebound/Spring;

    new-instance p3, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$2;

    invoke-direct {p3, p0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$2;-><init>(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V

    invoke-virtual {p2, p3}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 181
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    invoke-virtual {p3}, Lcom/evie/search/SearchPresenter;->getAdapter()Lcom/evie/search/SearchAdapter;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->setAdapter(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;)V

    .line 182
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    new-instance p3, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;

    invoke-direct {p3, p0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;-><init>(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V

    invoke-virtual {p2, p3}, Lcom/evie/search/SearchPresenter;->setSearchStateChangeListener(Lcom/evie/search/SearchPresenter$SearchStateChangeListener;)V

    .line 241
    new-instance p2, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;

    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    invoke-direct {p2, p1, p3}, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;-><init>(Landroid/app/Activity;Lcom/evie/search/SearchPresenter;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchViewHolderFactory:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Lcom/evie/search/SearchPresenter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Lcom/voxel/simplesearchlauncher/view/SpringySearchView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Landroid/app/Activity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Landroid/content/SharedPreferences;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 128
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 129
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->clearFocus()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;Ljava/lang/String;)V
    .locals 2

    .line 134
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->updateSearchInput(Ljava/lang/String;)Z

    .line 135
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    sub-int/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/evie/search/SearchPresenter;->setAvailableHeight(I)V

    return-void
.end method

.method public static synthetic lambda$showFeedbackItemIfNeeded$3(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V
    .locals 3

    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mFeedbackPromptShowing:Z

    .line 333
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launcher.has_completed_feedback"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic lambda$showSetLauncherSearchPromptIfNeeded$4(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V
    .locals 3

    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mDefaultLauncherPromptShowing:Z

    .line 361
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launcher.has_completed_search_default_launcher_prompt"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evie/search/SearchPresenter;->setSearchListExpandListener(Lcom/evie/search/SearchPresenter$SearchListExpandListener;)V

    .line 487
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    invoke-virtual {v0, v1}, Lcom/evie/search/SearchPresenter;->setSearchStateChangeListener(Lcom/evie/search/SearchPresenter$SearchStateChangeListener;)V

    .line 488
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    invoke-virtual {v0, v1}, Lcom/evie/search/SearchPresenter;->setSearchQueryChangeListener(Lcom/evie/search/SearchPresenter$SearchQueryChangeListener;)V

    .line 489
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    invoke-virtual {v0}, Lcom/evie/search/SearchPresenter;->dispose()V

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchBroadcastReceiver:Lcom/evie/search/local/LocalSearchBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getQueryTextListener()Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
    .locals 1

    .line 249
    new-instance v0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$4;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$4;-><init>(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V

    return-object v0
.end method

.method public getSearchPresenter()Lcom/evie/search/SearchPresenter;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    return-object v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchText:Ljava/lang/String;

    return-object v0
.end method

.method public showFeedbackItemIfNeeded()Z
    .locals 7

    .line 319
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "launcher.has_completed_feedback"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "launcher.num_completed_searches"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v3, 0x19

    cmp-long v5, v0, v3

    if-ltz v5, :cond_1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 322
    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x3

    .line 327
    sget-wide v5, Lcom/voxel/simplesearchlauncher/utils/Constants;->MILLIS_IN_DAY:J

    mul-long v5, v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    new-instance v1, Lcom/voxel/simplesearchlauncher/search/SearchFeedbackPresenter;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/voxel/simplesearchlauncher/search/SearchFeedbackPresenter;-><init>(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchViewHolderFactory:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;

    new-instance v4, Lcom/voxel/simplesearchlauncher/search/-$$Lambda$SearchUiHelper$QRyFP4zhESuij7FBrIGR0v4X5Rs;

    invoke-direct {v4, p0}, Lcom/voxel/simplesearchlauncher/search/-$$Lambda$SearchUiHelper$QRyFP4zhESuij7FBrIGR0v4X5Rs;-><init>(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/evie/search/SearchPresenter;->setCustomPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;Lcom/evie/search/recyclerview/viewholder/CustomViewHolderFactory;Ljava/lang/Runnable;)V

    .line 336
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mFeedbackPromptShowing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 337
    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mFeedbackPromptShowing:Z

    .line 338
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object v0

    const-string v3, "ev_search_feedback_shown"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    const-string v0, "Error retrieving package info."

    .line 344
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v2
.end method

.method public showSetLauncherSearchPromptIfNeeded()Z
    .locals 5

    .line 352
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "launcher.has_completed_search_default_launcher_prompt"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/ResetLauncherActivity;->isLauncherDefault(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "launcher.has_completed_search_default_launcher_prompt"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    new-instance v2, Lcom/voxel/simplesearchlauncher/search/SearchDefaultLauncherPresenter;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/voxel/simplesearchlauncher/search/SearchDefaultLauncherPresenter;-><init>(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchViewHolderFactory:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;

    new-instance v4, Lcom/voxel/simplesearchlauncher/search/-$$Lambda$SearchUiHelper$i26z_Gkt5ONzOEOP7HfM6T95GvY;

    invoke-direct {v4, p0}, Lcom/voxel/simplesearchlauncher/search/-$$Lambda$SearchUiHelper$i26z_Gkt5ONzOEOP7HfM6T95GvY;-><init>(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/evie/search/SearchPresenter;->setCustomPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;Lcom/evie/search/recyclerview/viewholder/CustomViewHolderFactory;Ljava/lang/Runnable;)V

    .line 364
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mDefaultLauncherPromptShowing:Z

    if-nez v0, :cond_1

    .line 365
    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mDefaultLauncherPromptShowing:Z

    :cond_1
    return v1

    .line 370
    :cond_2
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mDefaultLauncherPromptShowing:Z

    if-eqz v0, :cond_3

    .line 371
    iput-boolean v2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mDefaultLauncherPromptShowing:Z

    .line 372
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    invoke-virtual {v0}, Lcom/evie/search/SearchPresenter;->removeCustomPresenter()V

    :cond_3
    :goto_0
    return v2
.end method

.method public updateMainLayerScale()V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mScaleState:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$ScaleState;

    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$ScaleState;->getScaledView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mScaleState:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$ScaleState;

    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$ScaleState;->getScale()F

    move-result v0

    .line 417
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSpringScale:Lcom/facebook/rebound/Spring;

    if-eqz v1, :cond_1

    .line 418
    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v1

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mScaleState:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$ScaleState;

    invoke-interface {v1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$ScaleState;->getScaledView()Landroid/view/View;

    move-result-object v1

    .line 422
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 423
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public updateSearchInput(Ljava/lang/String;)Z
    .locals 3

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchText:Ljava/lang/String;

    .line 304
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchDelayHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 307
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchDelayHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchDelayHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->mSearchRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
