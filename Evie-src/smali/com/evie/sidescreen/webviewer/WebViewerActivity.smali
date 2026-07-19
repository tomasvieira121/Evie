.class public Lcom/evie/sidescreen/webviewer/WebViewerActivity;
.super Lcom/evie/sidescreen/SideScreenActivity;
.source "WebViewerActivity.java"


# static fields
.field public static final EXTRA_ANALYTICS_PROTO_KEY:Ljava/lang/String;

.field public static final EXTRA_FALLBACK_URL_KEY:Ljava/lang/String;

.field public static final EXTRA_FAVICON_KEY:Ljava/lang/String;

.field public static final EXTRA_JSON_TOPICS_KEY:Ljava/lang/String;

.field public static final EXTRA_SHARE_SUBJECT_KEY:Ljava/lang/String;

.field public static final EXTRA_TILE_ID_KEY:Ljava/lang/String;

.field public static final EXTRA_TITLE_KEY:Ljava/lang/String;

.field public static final EXTRA_TOPICS_KEY:Ljava/lang/String;

.field public static final EXTRA_URL_KEY:Ljava/lang/String;

.field private static final PREFIX:Ljava/lang/String; = "com.evie.sidescreen.webviewer.WebViewerActivity"


# instance fields
.field mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mContentView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFooterBarHandler:Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;

.field mLogo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mProgressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mProtobuf:Ljava/lang/String;

.field private mShareSubject:Ljava/lang/String;

.field private mStartUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTileId:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mToolbarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lorg/schema/evie/topics/Topic;",
            ">;"
        }
    .end annotation
.end field

.field mTopicsFooterBar:Lcom/evie/sidescreen/personalize/TopicsFooterBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mWebView:Landroid/webkit/WebView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_URL_KEY:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fallbackurl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_FALLBACK_URL_KEY:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_TITLE_KEY:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".share"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_SHARE_SUBJECT_KEY:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".favicon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_FAVICON_KEY:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".topics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_TOPICS_KEY:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tileId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_TILE_ID_KEY:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".topics_json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_JSON_TOPICS_KEY:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".analytics_proto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_ANALYTICS_PROTO_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenActivity;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mStartUrls:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/webviewer/WebViewerActivity;)Ljava/util/Set;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mStartUrls:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/webviewer/WebViewerActivity;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->updateTopicsFooterBarVisibility(Ljava/lang/String;)V

    return-void
.end method

.method public static clearCookies(Landroid/content/Context;)Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 295
    new-instance v0, Lcom/evie/sidescreen/webviewer/-$$Lambda$WebViewerActivity$NVbEB2tGP8cPvuc4WtskfKjxckA;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/webviewer/-$$Lambda$WebViewerActivity$NVbEB2tGP8cPvuc4WtskfKjxckA;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/Completable;

    move-result-object p0

    .line 308
    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$clearCookies$1(Landroid/content/Context;)V
    .locals 2

    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 297
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 298
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object p0

    .line 301
    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 302
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 304
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 305
    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 306
    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/evie/sidescreen/webviewer/WebViewerActivity;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    .line 291
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTopicsFooterBar:Lcom/evie/sidescreen/personalize/TopicsFooterBar;

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic lambda$onOptionsItemSelected$2(Lcom/evie/sidescreen/webviewer/WebViewerActivity;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    iget-object v1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mShareSubject:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evie/sidescreen/ActivityStarter;->startShareActivity(Ljava/lang/String;Ljava/lang/String;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    return-void
.end method

.method private onBrowserSelected(Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 3

    .line 415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "open_in_browser"

    .line 416
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_screen_info"

    .line 417
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {p1, v1, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 420
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 421
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->finish()V

    :cond_0
    return-void
.end method

.method private updateTopicsFooterBarVisibility(Ljava/lang/String;)V
    .locals 4

    .line 349
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTopics:Ljava/util/List;

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mStartUrls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 355
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 361
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTopicsFooterBar:Lcom/evie/sidescreen/personalize/TopicsFooterBar;

    invoke-virtual {p1, v3}, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->setVisibility(I)V

    goto :goto_2

    .line 363
    :cond_3
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTopicsFooterBar:Lcom/evie/sidescreen/personalize/TopicsFooterBar;

    invoke-virtual {p1, v1}, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->setVisibility(I)V

    goto :goto_2

    .line 350
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTopicsFooterBar:Lcom/evie/sidescreen/personalize/TopicsFooterBar;

    invoke-virtual {p1, v1}, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 428
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getPopupViewProvider()Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;
    .locals 2

    .line 441
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method protected getScreenViewMetaData()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTileId:Ljava/lang/String;

    return-object v0
.end method

.method protected getScreenViewProtobuf()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mProtobuf:Ljava/lang/String;

    return-object v0
.end method

.method protected getScreenViewSubType()Ljava/lang/String;
    .locals 1

    const-string v0, "trending"

    return-object v0
.end method

.method protected getScreenViewTitle()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected getScreenViewType()Ljava/lang/String;
    .locals 1

    const-string v0, "web-viewer"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    .line 382
    :cond_0
    invoke-super {p0}, Lcom/evie/sidescreen/SideScreenActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 100
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->onCreateInject()V

    .line 101
    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->finish()V

    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 110
    sget-object v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_URL_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->finish()V

    return-void

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mStartUrls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 116
    iget-object v1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mStartUrls:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_FALLBACK_URL_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mStartUrls:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_2
    sget-object v2, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_TITLE_KEY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTitle:Ljava/lang/String;

    .line 125
    iget-object v2, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    iput-object v2, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTitle:Ljava/lang/String;

    .line 126
    sget-object v2, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_ANALYTICS_PROTO_KEY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mProtobuf:Ljava/lang/String;

    .line 128
    sget-object v2, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_SHARE_SUBJECT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mShareSubject:Ljava/lang/String;

    .line 130
    sget-object v2, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_FAVICON_KEY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 134
    :try_start_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v4, "analytics.send_tap_event"

    const/4 v5, 0x0

    .line 139
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 140
    new-instance v4, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v6, "item_type"

    const-string v7, "analytics.item_type"

    .line 142
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v6, "analytics_proto"

    const-string v7, "analytics.proto"

    .line 143
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v6, "screen_type"

    const-string v7, "notification"

    .line 144
    invoke-virtual {v4, v6, v7}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v6, "entity_id"

    const-string v7, "com.evie.sidescreen.article_id"

    .line 145
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v6, "impression_id"

    const-string v7, "analytics.impression_id"

    .line 146
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    .line 148
    iget-object v6, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v7, "ev_ss_tap"

    invoke-virtual {v6, v7, v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 150
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 151
    sget-object v6, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_JSON_TOPICS_KEY:Ljava/lang/String;

    .line 152
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/evie/sidescreen/webviewer/WebViewerActivity$1;

    invoke-direct {v7, p0}, Lcom/evie/sidescreen/webviewer/WebViewerActivity$1;-><init>(Lcom/evie/sidescreen/webviewer/WebViewerActivity;)V

    .line 154
    invoke-virtual {v7}, Lcom/evie/sidescreen/webviewer/WebViewerActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 151
    invoke-virtual {v4, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTopics:Ljava/util/List;

    goto :goto_0

    .line 157
    :cond_4
    :try_start_1
    sget-object v4, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_TOPICS_KEY:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTopics:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 163
    :goto_0
    iget-object v4, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTopics:Ljava/util/List;

    if-nez v4, :cond_5

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTopics:Ljava/util/List;

    .line 167
    :cond_5
    sget-object v4, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_TILE_ID_KEY:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTileId:Ljava/lang/String;

    .line 169
    new-instance p1, Lcom/evie/sidescreen/ActivityStarter;

    iget-object v4, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    invoke-direct {p1, p0, v4}, Lcom/evie/sidescreen/ActivityStarter;-><init>(Landroid/app/Activity;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    iput-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 170
    new-instance p1, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;

    iget-object v4, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    iget-object v6, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    invoke-direct {p1, v4, v6}, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;-><init>(Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    iput-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mFooterBarHandler:Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;

    .line 173
    sget p1, Lcom/evie/sidescreen/R$layout;->ss_web_viewer_activity:I

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->setContentView(I)V

    .line 174
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 177
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 178
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 181
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mToolbarTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 184
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v6, 0x64

    invoke-virtual {p1, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    if-nez v3, :cond_6

    .line 187
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mLogo:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 189
    :cond_6
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mLogo:Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 190
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    :goto_1
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p0}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->clearCookies(Landroid/content/Context;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 196
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/evie/sidescreen/webviewer/WebViewerActivity$2;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/webviewer/WebViewerActivity$2;-><init>(Lcom/evie/sidescreen/webviewer/WebViewerActivity;)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 212
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/evie/sidescreen/webviewer/WebViewerActivity$3;-><init>(Lcom/evie/sidescreen/webviewer/WebViewerActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 271
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 272
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 273
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 274
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 275
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 276
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 277
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 278
    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 282
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 284
    :cond_7
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 285
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mFooterBarHandler:Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;

    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTopicsFooterBar:Lcom/evie/sidescreen/personalize/TopicsFooterBar;

    iget-object v1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTileId:Ljava/lang/String;

    iget-object v2, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTopics:Ljava/util/List;

    invoke-virtual {p1, v0, v1, v2}, Lcom/evie/sidescreen/personalize/TopicsFooterBarHandler;->bindFooterBarWithItems(Lcom/evie/sidescreen/personalize/TopicsFooterBar;Ljava/lang/String;Ljava/util/List;)V

    .line 291
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v0, Lcom/evie/sidescreen/webviewer/-$$Lambda$WebViewerActivity$9iYs8AaDpAg7nVX99ECXs90TREQ;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/webviewer/-$$Lambda$WebViewerActivity$9iYs8AaDpAg7nVX99ECXs90TREQ;-><init>(Lcom/evie/sidescreen/webviewer/WebViewerActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 388
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/R$menu;->ss_web_viewer_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 0

    .line 433
    invoke-super {p0}, Lcom/evie/sidescreen/SideScreenActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 394
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 395
    new-instance v1, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const-string v2, "article_viewer"

    iget-object v3, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mTileId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    sget v2, Lcom/evie/sidescreen/R$id;->action_share:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 397
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mSideScreenRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    iget-object v2, p0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->mWebView:Landroid/webkit/WebView;

    .line 398
    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->getShortLink(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 399
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 400
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/evie/sidescreen/webviewer/-$$Lambda$WebViewerActivity$VsuGW5i2dFE3xvZSzfJODAU3Q-Q;

    invoke-direct {v2, p0, v1}, Lcom/evie/sidescreen/webviewer/-$$Lambda$WebViewerActivity$VsuGW5i2dFE3xvZSzfJODAU3Q-Q;-><init>(Lcom/evie/sidescreen/webviewer/WebViewerActivity;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    .line 401
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 397
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return v3

    .line 406
    :cond_0
    sget v2, Lcom/evie/sidescreen/R$id;->action_browser:I

    if-ne v0, v2, :cond_1

    .line 407
    invoke-direct {p0, v1}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->onBrowserSelected(Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    return v3

    .line 410
    :cond_1
    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 318
    invoke-super {p0}, Lcom/evie/sidescreen/SideScreenActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 313
    invoke-super {p0}, Lcom/evie/sidescreen/SideScreenActivity;->onResume()V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 370
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
