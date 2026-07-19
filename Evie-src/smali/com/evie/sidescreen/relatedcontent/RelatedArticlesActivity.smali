.class public Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;
.super Lcom/evie/sidescreen/SideScreenActivity;
.source "RelatedArticlesActivity.java"

# interfaces
.implements Ldagger/android/support/HasSupportFragmentInjector;


# static fields
.field public static final EXTRA_ARTICLE:Ljava/lang/String;

.field private static final PREFIX:Ljava/lang/String; = "com.evie.sidescreen.relatedcontent.RelatedArticlesActivity"


# instance fields
.field private mArticle:Lorg/schema/NewsArticle;

.field private mArticleId:Ljava/lang/String;

.field mContainer:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLogo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPopupView:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPopupViewProvider:Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

.field private mRelatedContentFragment:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

.field private mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

.field mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mToolbarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".article"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->EXTRA_ARTICLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenActivity;-><init>()V

    .line 61
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mPopupViewProvider:Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    return-void
.end method

.method public static synthetic lambda$shareArticle$0(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;Lcom/evie/sidescreen/ActivityStarter;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getHeadline()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {p1, p2, v0, v1}, Lcom/evie/sidescreen/ActivityStarter;->startShareActivity(Ljava/lang/String;Ljava/lang/String;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    return-void
.end method

.method private setHeader()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getPublisherOrganization()Lorg/schema/Organization;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mToolbarTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getPublisherOrganization()Lorg/schema/Organization;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schema/Organization;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getPublisherOrganization()Lorg/schema/Organization;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0}, Lorg/schema/Organization;->getFaviconUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mLogo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mLogo:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 202
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mLogo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private shareArticle()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    new-instance v0, Lcom/evie/sidescreen/ActivityStarter;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    invoke-direct {v0, p0, v1}, Lcom/evie/sidescreen/ActivityStarter;-><init>(Landroid/app/Activity;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    .line 229
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mSideScreenRelatedContentModel:Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    iget-object v3, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mArticle:Lorg/schema/NewsArticle;

    .line 230
    invoke-virtual {v3}, Lorg/schema/NewsArticle;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;->getShortLink(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v2

    .line 231
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    .line 232
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedArticlesActivity$TM7hoyzFJckwH4HBO9X1dMqqdm4;

    invoke-direct {v3, p0, v0}, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedArticlesActivity$TM7hoyzFJckwH4HBO9X1dMqqdm4;-><init>(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;Lcom/evie/sidescreen/ActivityStarter;)V

    .line 233
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 229
    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getPopupViewProvider()Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mPopupViewProvider:Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    return-object v0
.end method

.method protected getScreenViewMetaData()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mArticle:Lorg/schema/NewsArticle;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mArticleId:Ljava/lang/String;

    return-object v0
.end method

.method protected getScreenViewProtobuf()Ljava/lang/String;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getAnalytics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "analytics_proto"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getScreenViewSubType()Ljava/lang/String;
    .locals 1

    const-string v0, "trending"

    return-object v0
.end method

.method protected getScreenViewTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getScreenViewType()Ljava/lang/String;
    .locals 1

    const-string v0, "related-articles"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 94
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->onCreateInject()V

    .line 95
    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    sget p1, Lcom/evie/sidescreen/R$layout;->ss_related_articles_activity:I

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->setContentView(I)V

    .line 97
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 99
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mPopupViewProvider:Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mPopupView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;->setPopupView(Landroid/view/ViewGroup;)V

    .line 101
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "analytics.send_tap_event"

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v2, "item_type"

    const-string v3, "analytics.item_type"

    .line 105
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v2, "analytics_proto"

    const-string v3, "analytics.proto"

    .line 106
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v2, "screen_type"

    const-string v3, "notification"

    .line 107
    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v2, "entity_id"

    const-string v3, "com.evie.sidescreen.article_id"

    .line 108
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const-string v2, "impression_id"

    const-string v3, "analytics.impression_id"

    .line 109
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    .line 111
    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v3, "ev_ss_tap"

    invoke-virtual {v2, v3, v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 116
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 120
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mToolbarTitle:Landroid/widget/TextView;

    const v2, -0xc0c0c1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mToolbarTitle:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 122
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    sget v3, Lcom/evie/sidescreen/R$string;->circular_font_regular:I

    invoke-virtual {p0, v3}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 124
    sget-object v0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->EXTRA_ARTICLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/schema/NewsArticle;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->setArticle(Lorg/schema/NewsArticle;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "com.evie.sidescreen.article_id"

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mArticleId:Ljava/lang/String;

    .line 129
    new-instance p1, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const-string v0, "related_content"

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mArticleId:Ljava/lang/String;

    const-string v2, "related_articles"

    invoke-direct {p1, v0, v1, v2}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 132
    :goto_0
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mArticle:Lorg/schema/NewsArticle;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mArticleId:Ljava/lang/String;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->createInstance(Lorg/schema/NewsArticle;Ljava/lang/String;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mRelatedContentFragment:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    .line 133
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mRelatedContentFragment:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 135
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->shareArticle()V

    const/4 p1, 0x1

    return p1

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 76
    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const-string v0, "Share"

    const/4 v1, 0x0

    const/16 v2, 0x65

    .line 77
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 78
    sget v0, Lcom/evie/sidescreen/R$drawable;->ic_share_black_24dp:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x2

    .line 79
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public setArticle(Lorg/schema/NewsArticle;Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->finish()V

    return-void

    .line 178
    :cond_0
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mArticle:Lorg/schema/NewsArticle;

    .line 179
    new-instance p1, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const-string v0, "related_content"

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "related_articles"

    invoke-direct {p1, v0, v1, v2}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 180
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->setHeader()V

    if-nez p2, :cond_1

    .line 183
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mRelatedContentFragment:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    if-eqz p1, :cond_1

    .line 184
    iget-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mArticle:Lorg/schema/NewsArticle;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {p1, p2, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->setArticle(Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    :cond_1
    return-void
.end method

.method public supportFragmentInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->getSupportFragmentInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method
