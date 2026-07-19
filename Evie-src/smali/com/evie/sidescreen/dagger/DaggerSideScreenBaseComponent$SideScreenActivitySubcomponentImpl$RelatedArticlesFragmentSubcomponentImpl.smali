.class final Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerSideScreenBaseComponent.java"

# interfaces
.implements Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeRelatedContentFragmentInjector$RelatedArticlesFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RelatedArticlesFragmentSubcomponentImpl"
.end annotation


# instance fields
.field private activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private adMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private articlePopupMenuHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;",
            ">;"
        }
    .end annotation
.end field

.field private articleSeedPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private articleTileHeroCaptionPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private articleTileHeroImagePresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private articleTileHeroOathPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private articleTileHeroVideoPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private articleTileHeroYouTubePreviewPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private articleTilePresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private articleTileRowPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private followButtonHandlerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private followButtonHandlerFactoryProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private followButtonOnboardingHandlerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private heroAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private nonAdTilePresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private oathPlayerObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;",
            ">;"
        }
    .end annotation
.end field

.field private playlistItemPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private popupVideoViewerPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private providesPersonalizationSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private providesTopicPersonalizationStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicPersonalizationStore;",
            ">;"
        }
    .end annotation
.end field

.field private providesTopicsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;"
        }
    .end annotation
.end field

.field private recommendedPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private relatedArticlePresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private rowAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

.field private topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private topicItemPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private videoFocusHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;",
            ">;"
        }
    .end annotation
.end field

.field private videoSeedPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private yelpMultipleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private yelpPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private yelpSingleBusinessHeroPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private yelpSingleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;)V
    .locals 0

    .line 2624
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2626
    invoke-direct {p0, p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->initialize(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V
    .locals 0

    .line 2542
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;)V

    return-void
.end method

.method private getAdMediationItemPresenterFactory()Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;
    .locals 3

    .line 2772
    new-instance v0, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;

    .line 2773
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getHeroAdMediationItemPresenterFactory()Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory;

    move-result-object v1

    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getRowAdMediationItemPresenterFactory()Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;-><init>(Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory;Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;)V

    return-object v0
.end method

.method private getArticleSeedPresenterFactory()Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory;
    .locals 5

    .line 2712
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, v2, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2714
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private getArticleTileHeroCaptionPresenterFactory()Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory;
    .locals 5

    .line 2630
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, v2, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2632
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private getArticleTileHeroImagePresenterFactory()Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory;
    .locals 4

    .line 2675
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, v2, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2677
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private getArticleTileHeroOathPresenterFactory()Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;
    .locals 8

    .line 2657
    new-instance v7, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2659
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2660
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->oathPlayerObservableProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2663
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method private getArticleTileHeroVideoPresenterFactory()Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;
    .locals 9

    .line 2638
    new-instance v8, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    .line 2640
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->access$5900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2642
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2643
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupVideoViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2645
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method private getArticleTileHeroYouTubePreviewPresenterFactory()Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory;
    .locals 4

    .line 2650
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, v2, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2652
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v3, v3, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2653
    invoke-static {v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private getArticleTilePresenterFactory()Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;
    .locals 8

    .line 2682
    new-instance v7, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;

    .line 2683
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getArticleTileHeroCaptionPresenterFactory()Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory;

    move-result-object v1

    .line 2684
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getArticleTileHeroVideoPresenterFactory()Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;

    move-result-object v2

    .line 2685
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getArticleTileHeroYouTubePreviewPresenterFactory()Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory;

    move-result-object v3

    .line 2686
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getArticleTileHeroOathPresenterFactory()Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;

    move-result-object v4

    .line 2687
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getArticleTileRowPresenterFactory()Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory;

    move-result-object v5

    .line 2688
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getArticleTileHeroImagePresenterFactory()Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory;)V

    return-object v7
.end method

.method private getArticleTileRowPresenterFactory()Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory;
    .locals 5

    .line 2667
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, v2, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2669
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private getHeroAdMediationItemPresenterFactory()Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory;
    .locals 4

    .line 2758
    new-instance v0, Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2759
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, v2, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2760
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v3, v3, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2761
    invoke-static {v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private getNonAdTilePresenterFactory()Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;
    .locals 9

    .line 2747
    new-instance v8, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;

    .line 2748
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getArticleTilePresenterFactory()Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;

    move-result-object v1

    .line 2749
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getRecommendedPresenterFactory()Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory;

    move-result-object v2

    .line 2750
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getPlaylistItemPresenterFactory()Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;

    move-result-object v3

    .line 2751
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getRelatedArticlePresenterFactory()Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;

    move-result-object v4

    .line 2752
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getArticleSeedPresenterFactory()Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory;

    move-result-object v5

    .line 2753
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getVideoSeedPresenterFactory()Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory;

    move-result-object v6

    .line 2754
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getYelpPresenterFactory()Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory;Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory;Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory;Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;)V

    return-object v8
.end method

.method private getPlaylistItemPresenterFactory()Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;
    .locals 3

    .line 2699
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, v2, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2700
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private getRecommendedPresenterFactory()Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory;
    .locals 4

    .line 2692
    new-instance v0, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v3, v3, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2695
    invoke-static {v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private getRelatedArticlePresenterFactory()Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;
    .locals 5

    .line 2704
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, v2, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2706
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private getRowAdMediationItemPresenterFactory()Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;
    .locals 4

    .line 2765
    new-instance v0, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2766
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, v2, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2767
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v3, v3, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2768
    invoke-static {v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private getTopLevelTilePresenterFactory()Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;
    .locals 3

    .line 2777
    new-instance v0, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    .line 2778
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getNonAdTilePresenterFactory()Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;

    move-result-object v1

    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getAdMediationItemPresenterFactory()Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;-><init>(Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;)V

    return-object v0
.end method

.method private getVideoSeedPresenterFactory()Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory;
    .locals 5

    .line 2720
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, v2, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2722
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private getYelpMultipleBusinessPresenterFactory()Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;
    .locals 4

    .line 2728
    new-instance v0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->yelpSingleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, v2, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2730
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private getYelpPresenterFactory()Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;
    .locals 3

    .line 2742
    new-instance v0, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;

    .line 2743
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getYelpMultipleBusinessPresenterFactory()Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;

    move-result-object v1

    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getYelpSingleBusinessHeroPresenterFactory()Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;-><init>(Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;)V

    return-object v0
.end method

.method private getYelpSingleBusinessHeroPresenterFactory()Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;
    .locals 4

    .line 2735
    new-instance v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, v2, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2737
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v3, v3, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2738
    invoke-static {v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private initialize(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;)V
    .locals 8

    .line 2783
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2786
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    .line 2787
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->access$5700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2788
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2785
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/ActivityStarter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/ActivityStarter_Factory;

    move-result-object p1

    .line 2784
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    .line 2789
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2792
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/TopicsModule;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2793
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2791
    invoke-static {p1, v0}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;->create(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;

    move-result-object p1

    .line 2790
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->providesPersonalizationSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 2794
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2797
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/TopicsModule;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->providesPersonalizationSharedPreferencesProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2799
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2796
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;->create(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;

    move-result-object p1

    .line 2795
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->providesTopicPersonalizationStoreProvider:Ljavax/inject/Provider;

    .line 2800
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2803
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/TopicsModule;

    move-result-object v0

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2804
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2805
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2806
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$5600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->providesTopicPersonalizationStoreProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2808
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 2802
    invoke-static/range {v0 .. v5}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->create(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;

    move-result-object p1

    .line 2801
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    .line 2809
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2812
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->providesTopicPersonalizationStoreProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v3, v3, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2815
    invoke-static {v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    .line 2810
    invoke-static {p1, v0, v1, v2, v3}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    .line 2816
    new-instance p1, Ldagger/internal/DelegateFactory;

    invoke-direct {p1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2817
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2820
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2818
    invoke-static {p1, v0, v1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articleTileHeroCaptionPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2823
    invoke-static {}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler_Factory;->create()Lcom/evie/sidescreen/exoplayer/VideoFocusHandler_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    .line 2824
    new-instance p1, Ldagger/internal/DelegateFactory;

    invoke-direct {p1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2825
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    .line 2827
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->access$5900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2828
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    .line 2829
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->access$5800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2832
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    .line 2834
    invoke-static {}, Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;->create()Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;

    move-result-object v7

    .line 2826
    invoke-static/range {v0 .. v7}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupVideoViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2835
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    .line 2838
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->access$5900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2840
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2841
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupVideoViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2843
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 2836
    invoke-static/range {v0 .. v6}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articleTileHeroVideoPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2844
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2847
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2848
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2845
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articleTileHeroYouTubePreviewPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2849
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2851
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    .line 2850
    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable_Factory;->create(Ljavax/inject/Provider;)Lcom/evie/sidescreen/oathplayer/OathPlayerObservable_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->oathPlayerObservableProvider:Ljavax/inject/Provider;

    .line 2852
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2855
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2856
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->oathPlayerObservableProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2859
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 2853
    invoke-static/range {v0 .. v5}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articleTileHeroOathPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2860
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2863
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2861
    invoke-static {p1, v0, v1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articleTileRowPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2866
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2869
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2867
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articleTileHeroImagePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2871
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articleTileHeroCaptionPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articleTileHeroVideoPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articleTileHeroYouTubePreviewPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articleTileHeroOathPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articleTileRowPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articleTileHeroImagePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2872
    invoke-static/range {v0 .. v5}, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articleTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2879
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2882
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2880
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->followButtonHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 2883
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2885
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2886
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2884
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->followButtonOnboardingHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 2887
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2890
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->followButtonHandlerFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->followButtonOnboardingHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 2889
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;

    move-result-object p1

    .line 2888
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->followButtonHandlerFactoryProvider2:Ljavax/inject/Provider;

    .line 2893
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2895
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->followButtonHandlerFactoryProvider2:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, v2, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2898
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 2894
    invoke-static {p1, v0, v1, v2}, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2899
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2903
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2900
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->recommendedPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2904
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2906
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2905
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->playlistItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2907
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2910
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2908
    invoke-static {p1, v0, v1, v2}, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->relatedArticlePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2913
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2916
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2914
    invoke-static {p1, v0, v1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articleSeedPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2919
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2922
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2920
    invoke-static {p1, v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->videoSeedPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2925
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2928
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2929
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2926
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->yelpSingleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2930
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->yelpSingleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2933
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    .line 2931
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->yelpMultipleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2935
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2938
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2939
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2936
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->yelpSingleBusinessHeroPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2940
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->yelpMultipleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->yelpSingleBusinessHeroPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2941
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->yelpPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2944
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articleTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->recommendedPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->playlistItemPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->relatedArticlePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->articleSeedPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->videoSeedPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->yelpPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2945
    invoke-static/range {v0 .. v6}, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->nonAdTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2953
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2955
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2956
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2957
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2954
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->heroAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2958
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2960
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2961
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2962
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2959
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->rowAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2963
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->heroAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->rowAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2964
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->adMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2967
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->nonAdTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->adMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2969
    invoke-static {v0, v1}, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory_Factory;

    move-result-object v0

    .line 2967
    invoke-static {p1, v0}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2971
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2974
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    .line 2975
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->access$5800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    .line 2978
    invoke-static {}, Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;->create()Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;

    move-result-object v4

    .line 2973
    invoke-static {v0, v1, v2, v3, v4}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;

    move-result-object v0

    .line 2971
    invoke-static {p1, v0}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-void
.end method

.method private injectRelatedArticlesFragment(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;)Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;
    .locals 1

    .line 2989
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->getTopLevelTilePresenterFactory()Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    move-result-object v0

    .line 2988
    invoke-static {p1, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment_MembersInjector;->injectMTopLevelTilePresenterFactory(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;)V

    .line 2990
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2992
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    .line 2990
    invoke-static {p1, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment_MembersInjector;->injectMRelatedContentModel(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;)V
    .locals 0

    .line 2983
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->injectRelatedArticlesFragment(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;)Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 2542
    check-cast p1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;->inject(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;)V

    return-void
.end method
