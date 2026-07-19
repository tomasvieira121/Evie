.class final Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerSideScreenBaseComponent.java"

# interfaces
.implements Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SideScreenSubcomponentImpl"
.end annotation


# instance fields
.field private activityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

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

.field private announcementSectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;",
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

.field private breakingNewsSectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection;",
            ">;"
        }
    .end annotation
.end field

.field private dataWarningCardPresenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private exoPlayerObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;",
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

.field private footerPresenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/footer/FooterPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private frequentlyUsedPresenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;",
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

.field private lifecycleAwareMvpRecyclerAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;",
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

.field private personalizeTileHeaderPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory;",
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

.field private providesAbTestConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private providesAnnouncementModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/announcement/AnnouncementModel;",
            ">;"
        }
    .end annotation
.end field

.field private providesCustomMainTabPresentersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesImagePopupListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;",
            ">;"
        }
    .end annotation
.end field

.field private providesLauncherInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/LauncherInfo;",
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

.field private providesPopupViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesPromptStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/PromptStoreModel;",
            ">;"
        }
    .end annotation
.end field

.field private providesSearchBarOverridesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;",
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

.field private providesUnactivatedTilesSectionOverrideProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;"
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

.field private searchBarPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private sideScreenConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private sideScreenContentTabModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field private sideScreenGenericTabSectionModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field private sideScreenMainTabSectionModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field private sideScreenPresenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private sideScreenSubcomponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;",
            ">;"
        }
    .end annotation
.end field

.field private sideScreenViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenView;",
            ">;"
        }
    .end annotation
.end field

.field private tabsModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/TabsModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

.field private tilesLoadingPresenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private tilesSectionFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/TilesSectionFactory;",
            ">;"
        }
    .end annotation
.end field

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

.field private weatherPresenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/weather/WeatherPresenter;",
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
.method private constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;Lcom/evie/sidescreen/dagger/SideScreenModule;Landroid/app/Activity;)V
    .locals 0

    .line 1162
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1164
    invoke-direct {p0, p2, p3, p4}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->initialize(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;Lcom/evie/sidescreen/dagger/SideScreenModule;Landroid/app/Activity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;Lcom/evie/sidescreen/dagger/SideScreenModule;Landroid/app/Activity;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V
    .locals 0

    .line 1018
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;Lcom/evie/sidescreen/dagger/SideScreenModule;Landroid/app/Activity;)V

    return-void
.end method

.method private initialize(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;Lcom/evie/sidescreen/dagger/SideScreenModule;Landroid/app/Activity;)V
    .locals 11

    .line 1172
    invoke-static {p3}, Ldagger/internal/InstanceFactory;->createNullable(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityProvider:Ljavax/inject/Provider;

    .line 1173
    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1176
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1178
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 1175
    invoke-static {p3, v0, v1}, Lcom/evie/sidescreen/ActivityStarter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/ActivityStarter_Factory;

    move-result-object p3

    .line 1174
    invoke-static {p3}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    .line 1179
    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1182
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1183
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1181
    invoke-static {p3, v0}, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory;

    move-result-object p3

    .line 1180
    invoke-static {p3}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesPromptStoreProvider:Ljavax/inject/Provider;

    .line 1185
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesAbTestConfigurationFactory;->create(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesAbTestConfigurationFactory;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesAbTestConfigurationProvider:Ljavax/inject/Provider;

    .line 1187
    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1190
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/AnnouncementModule;

    move-result-object v0

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1191
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1192
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1193
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesPromptStoreProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1195
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesAbTestConfigurationProvider:Ljavax/inject/Provider;

    .line 1189
    invoke-static/range {v0 .. v6}, Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;->create(Lcom/evie/sidescreen/dagger/AnnouncementModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/AnnouncementModule_ProvidesAnnouncementModelFactory;

    move-result-object p3

    .line 1188
    invoke-static {p3}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesAnnouncementModelProvider:Ljavax/inject/Provider;

    .line 1197
    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1200
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/TopicsModule;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1201
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1199
    invoke-static {p3, v0}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;->create(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;

    move-result-object p3

    .line 1198
    invoke-static {p3}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesPersonalizationSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 1202
    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1205
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/TopicsModule;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesPersonalizationSharedPreferencesProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1207
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 1204
    invoke-static {p3, v0, v1}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;->create(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;

    move-result-object p3

    .line 1203
    invoke-static {p3}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesTopicPersonalizationStoreProvider:Ljavax/inject/Provider;

    .line 1208
    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1211
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/TopicsModule;

    move-result-object v0

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1212
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1213
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesAbTestConfigurationProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesTopicPersonalizationStoreProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1216
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 1210
    invoke-static/range {v0 .. v5}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->create(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;

    move-result-object p3

    .line 1209
    invoke-static {p3}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    .line 1217
    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1220
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1400(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1221
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1219
    invoke-static {p3, v0}, Lcom/evie/sidescreen/SideScreenConfiguration_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/SideScreenConfiguration_Factory;

    move-result-object p3

    .line 1218
    invoke-static {p3}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenConfigurationProvider:Ljavax/inject/Provider;

    .line 1222
    invoke-static {p0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenSubcomponentProvider:Ljavax/inject/Provider;

    .line 1223
    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenSubcomponentProvider:Ljavax/inject/Provider;

    .line 1224
    invoke-static {p1, p3}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesCustomMainTabPresentersFactory;->create(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesCustomMainTabPresentersFactory;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesCustomMainTabPresentersProvider:Ljavax/inject/Provider;

    .line 1227
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesSearchBarOverridesFactory;->create(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesSearchBarOverridesFactory;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesSearchBarOverridesProvider:Ljavax/inject/Provider;

    .line 1229
    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1231
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1233
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1234
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1235
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1236
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1237
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesSearchBarOverridesProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesAbTestConfigurationProvider:Ljavax/inject/Provider;

    .line 1230
    invoke-static/range {v0 .. v8}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->frequentlyUsedPresenterProvider:Ljavax/inject/Provider;

    .line 1240
    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1242
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1243
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1244
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1245
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1246
    invoke-static {v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    .line 1241
    invoke-static {p3, v0, v1, v2, v3}, Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/datanotification/DataWarningCardPresenter_Factory;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->dataWarningCardPresenterProvider:Ljavax/inject/Provider;

    .line 1247
    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1250
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesTopicPersonalizationStoreProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1253
    invoke-static {v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    .line 1248
    invoke-static {p3, v0, v1, v2, v3}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    .line 1254
    new-instance p3, Ldagger/internal/DelegateFactory;

    invoke-direct {p3}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenViewProvider:Ljavax/inject/Provider;

    .line 1255
    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenViewProvider:Ljavax/inject/Provider;

    .line 1257
    invoke-static {p2, p3}, Lcom/evie/sidescreen/dagger/SideScreenModule_ProvidesPopupViewFactory;->create(Lcom/evie/sidescreen/dagger/SideScreenModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/SideScreenModule_ProvidesPopupViewFactory;

    move-result-object p2

    .line 1256
    invoke-static {p2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesPopupViewProvider:Ljavax/inject/Provider;

    .line 1259
    new-instance p2, Ldagger/internal/DelegateFactory;

    invoke-direct {p2}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1261
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesImagePopupListenerFactory;->create(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesImagePopupListenerFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesImagePopupListenerProvider:Ljavax/inject/Provider;

    .line 1263
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1265
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p2

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesPopupViewProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesImagePopupListenerProvider:Ljavax/inject/Provider;

    .line 1264
    invoke-static {p2, p3, v0, v1, v2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1270
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1273
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1271
    invoke-static {p2, p3, v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articleTileHeroCaptionPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1276
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1278
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p2

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1279
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1280
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2400(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1277
    invoke-static {p2, p3, v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->exoPlayerObservableProvider:Ljavax/inject/Provider;

    .line 1281
    invoke-static {}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler_Factory;->create()Lcom/evie/sidescreen/exoplayer/VideoFocusHandler_Factory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    .line 1282
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->exoPlayerObservableProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1285
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesPopupViewProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1289
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesImagePopupListenerProvider:Ljavax/inject/Provider;

    .line 1283
    invoke-static/range {v0 .. v7}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->popupVideoViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1292
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->exoPlayerObservableProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1297
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1298
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->popupVideoViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1300
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 1293
    invoke-static/range {v0 .. v6}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articleTileHeroVideoPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1301
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1304
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1305
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1302
    invoke-static {p2, p3, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articleTileHeroYouTubePreviewPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1306
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1308
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p2

    .line 1307
    invoke-static {p2}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable_Factory;->create(Ljavax/inject/Provider;)Lcom/evie/sidescreen/oathplayer/OathPlayerObservable_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->oathPlayerObservableProvider:Ljavax/inject/Provider;

    .line 1309
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1312
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1313
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->oathPlayerObservableProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1316
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 1310
    invoke-static/range {v0 .. v5}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articleTileHeroOathPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1317
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1320
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1318
    invoke-static {p2, p3, v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articleTileRowPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1323
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1326
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1324
    invoke-static {p2, p3, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articleTileHeroImagePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1328
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articleTileHeroCaptionPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articleTileHeroVideoPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articleTileHeroYouTubePreviewPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articleTileHeroOathPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articleTileRowPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articleTileHeroImagePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1329
    invoke-static/range {v0 .. v5}, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articleTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1336
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1339
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    .line 1337
    invoke-static {p2, p3}, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->followButtonHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 1340
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1342
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p2

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1343
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    .line 1341
    invoke-static {p2, p3}, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->followButtonOnboardingHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 1344
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1347
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p2

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->followButtonHandlerFactoryProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->followButtonOnboardingHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 1346
    invoke-static {p2, p3, v0}, Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;

    move-result-object p2

    .line 1345
    invoke-static {p2}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->followButtonHandlerFactoryProvider2:Ljavax/inject/Provider;

    .line 1350
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1352
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p2

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->followButtonHandlerFactoryProvider2:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1355
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 1351
    invoke-static {p2, p3, v0, v1}, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1356
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1360
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1357
    invoke-static {p2, p3, v0}, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->recommendedPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1361
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1363
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    .line 1362
    invoke-static {p2, p3}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->playlistItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1364
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1367
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1365
    invoke-static {p2, p3, v0, v1}, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->relatedArticlePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1370
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1373
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1371
    invoke-static {p2, p3, v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articleSeedPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1376
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1379
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1377
    invoke-static {p2, p3, v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->videoSeedPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1382
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1385
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1386
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1383
    invoke-static {p2, p3, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->yelpSingleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1387
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->yelpSingleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1390
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    .line 1388
    invoke-static {p2, p3, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->yelpMultipleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1392
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1395
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1396
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1393
    invoke-static {p2, p3, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->yelpSingleBusinessHeroPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1397
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->yelpMultipleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->yelpSingleBusinessHeroPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1398
    invoke-static {p2, p3}, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->yelpPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1401
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articleTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->recommendedPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->playlistItemPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->relatedArticlePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->articleSeedPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->videoSeedPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->yelpPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1402
    invoke-static/range {v0 .. v6}, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->nonAdTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1410
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1412
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p2

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1413
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1414
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1411
    invoke-static {p2, p3, v0}, Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->heroAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1415
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1417
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p2

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1418
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1419
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1416
    invoke-static {p2, p3, v0}, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->rowAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1420
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->heroAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->rowAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1421
    invoke-static {p2, p3}, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->adMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1424
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->nonAdTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->adMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1426
    invoke-static {p3, v0}, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory_Factory;

    move-result-object p3

    .line 1424
    invoke-static {p2, p3}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1428
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1430
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p2

    .line 1429
    invoke-static {p2}, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter_Factory;->create(Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->tilesLoadingPresenterProvider:Ljavax/inject/Provider;

    .line 1432
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesUnactivatedTilesSectionOverrideFactory;->create(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesUnactivatedTilesSectionOverrideFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesUnactivatedTilesSectionOverrideProvider:Ljavax/inject/Provider;

    .line 1434
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1436
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1437
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1438
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1439
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$3000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->tilesLoadingPresenterProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1442
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$3100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesUnactivatedTilesSectionOverrideProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1444
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$3200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 1435
    invoke-static/range {v0 .. v8}, Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/TilesSectionFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->tilesSectionFactoryProvider:Ljavax/inject/Provider;

    .line 1445
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1447
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p2

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1448
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    .line 1446
    invoke-static {p2, p3}, Lcom/evie/sidescreen/footer/FooterPresenter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/footer/FooterPresenter_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->footerPresenterProvider:Ljavax/inject/Provider;

    .line 1449
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1451
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p2

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1452
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesPromptStoreProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1454
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 1450
    invoke-static {p2, p3, v0, v1}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->announcementSectionProvider:Ljavax/inject/Provider;

    .line 1455
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1457
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p2

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1458
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesPromptStoreProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1460
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    .line 1456
    invoke-static {p2, p3, v0, v1, v2}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsSection_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->breakingNewsSectionProvider:Ljavax/inject/Provider;

    .line 1462
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1464
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p2

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1466
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenConfigurationProvider:Ljavax/inject/Provider;

    .line 1463
    invoke-static {p2, p3, v0, v1}, Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/header/PersonalizeTileHeaderPresenterFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->personalizeTileHeaderPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1468
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesCustomMainTabPresentersProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->frequentlyUsedPresenterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->dataWarningCardPresenterProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->tilesSectionFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->footerPresenterProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->announcementSectionProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->breakingNewsSectionProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1477
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$3300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1478
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$3400(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1479
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$3500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v9

    iget-object v10, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->personalizeTileHeaderPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1469
    invoke-static/range {v0 .. v10}, Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/SideScreenMainTabSectionModelFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenMainTabSectionModelFactoryProvider:Ljavax/inject/Provider;

    .line 1481
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->dataWarningCardPresenterProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->tilesSectionFactoryProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1485
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$3400(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->footerPresenterProvider:Ljavax/inject/Provider;

    .line 1487
    invoke-static {}, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenterFactory_Factory;->create()Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenterFactory_Factory;

    move-result-object v2

    .line 1482
    invoke-static {p2, p3, v0, v1, v2}, Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/SideScreenGenericTabSectionModelFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenGenericTabSectionModelFactoryProvider:Ljavax/inject/Provider;

    .line 1488
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1490
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1491
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$3600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1492
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$3700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesAbTestConfigurationProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1494
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1495
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1496
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 1489
    invoke-static/range {v0 .. v6}, Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/models/sidescreen/SideScreenContentTabModelFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenContentTabModelFactoryProvider:Ljavax/inject/Provider;

    .line 1497
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1499
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p2

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1500
    invoke-static {p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$3800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p3

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenMainTabSectionModelFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenGenericTabSectionModelFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenContentTabModelFactoryProvider:Ljavax/inject/Provider;

    .line 1498
    invoke-static {p2, p3, v0, v1, v2}, Lcom/evie/sidescreen/TabsModelFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/TabsModelFactory_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->tabsModelFactoryProvider:Ljavax/inject/Provider;

    .line 1504
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1507
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$3900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1508
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$4000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1509
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesAnnouncementModelProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1511
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1513
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenConfigurationProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->tabsModelFactoryProvider:Ljavax/inject/Provider;

    .line 1506
    invoke-static/range {v0 .. v9}, Lcom/evie/sidescreen/SideScreenPresenter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/SideScreenPresenter_Factory;

    move-result-object p2

    .line 1505
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenPresenterProvider:Ljavax/inject/Provider;

    .line 1517
    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1519
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1520
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$4100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1521
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$4200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1522
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1523
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$3000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1524
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1526
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1527
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v8

    .line 1518
    invoke-static/range {v0 .. v8}, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->weatherPresenterProvider:Ljavax/inject/Provider;

    .line 1529
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesLauncherInfoFactory;->create(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesLauncherInfoFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesLauncherInfoProvider:Ljavax/inject/Provider;

    .line 1531
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1533
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesLauncherInfoProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->providesSearchBarOverridesProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1537
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 1532
    invoke-static {p1, p2, p3, v0, v1}, Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->searchBarPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1538
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1540
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1541
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p2

    .line 1539
    invoke-static {p1, p2}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->lifecycleAwareMvpRecyclerAdapterProvider:Ljavax/inject/Provider;

    .line 1542
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenViewProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenPresenterProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1547
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->weatherPresenterProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1549
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$4300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1550
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$4400(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1551
    invoke-static {p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$4500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 1552
    invoke-static {}, Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModelFactory_Factory;->create()Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModelFactory_Factory;

    move-result-object v6

    iget-object v7, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->searchBarPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->lifecycleAwareMvpRecyclerAdapterProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenConfigurationProvider:Ljavax/inject/Provider;

    .line 1545
    invoke-static/range {v0 .. v9}, Lcom/evie/sidescreen/SideScreenView_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/SideScreenView_Factory;

    move-result-object p2

    .line 1544
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    .line 1542
    invoke-static {p1, p2}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-void
.end method

.method private injectSideScreen(Lcom/evie/sidescreen/SideScreen;)Lcom/evie/sidescreen/SideScreen;
    .locals 1

    .line 1587
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenViewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/SideScreenView;

    invoke-static {p1, v0}, Lcom/evie/sidescreen/SideScreen_MembersInjector;->injectMSideScreenView(Lcom/evie/sidescreen/SideScreen;Lcom/evie/sidescreen/SideScreenView;)V

    .line 1588
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->sideScreenPresenterProvider:Ljavax/inject/Provider;

    .line 1589
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/SideScreenPresenter;

    .line 1588
    invoke-static {p1, v0}, Lcom/evie/sidescreen/SideScreen_MembersInjector;->injectMSideScreenPresenter(Lcom/evie/sidescreen/SideScreen;Lcom/evie/sidescreen/SideScreenPresenter;)V

    .line 1590
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1591
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/ActivationModel;

    .line 1590
    invoke-static {p1, v0}, Lcom/evie/sidescreen/SideScreen_MembersInjector;->injectMActivationModel(Lcom/evie/sidescreen/SideScreen;Lcom/evie/sidescreen/ActivationModel;)V

    .line 1592
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1593
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/LayerStack;

    .line 1592
    invoke-static {p1, v0}, Lcom/evie/sidescreen/SideScreen_MembersInjector;->injectMLayerStack(Lcom/evie/sidescreen/SideScreen;Lcom/evie/sidescreen/LayerStack;)V

    .line 1594
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1596
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$4000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;

    .line 1594
    invoke-static {p1, v0}, Lcom/evie/sidescreen/SideScreen_MembersInjector;->injectMAbTestConfigurationModel(Lcom/evie/sidescreen/SideScreen;Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;)V

    .line 1597
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1598
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$3800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/SideScreenConfigurationModel;

    .line 1597
    invoke-static {p1, v0}, Lcom/evie/sidescreen/SideScreen_MembersInjector;->injectMSideScreenConfigurationModel(Lcom/evie/sidescreen/SideScreen;Lcom/evie/sidescreen/SideScreenConfigurationModel;)V

    return-object p1
.end method


# virtual methods
.method public disposables()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$3200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/CompositeDisposable;

    return-object v0
.end method

.method public inject(Lcom/evie/sidescreen/SideScreen;)V
    .locals 0

    .line 1583
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->injectSideScreen(Lcom/evie/sidescreen/SideScreen;)Lcom/evie/sidescreen/SideScreen;

    return-void
.end method

.method public memoryWatcher()Lcom/evie/common/utils/MemoryWatcher;
    .locals 2

    .line 1575
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1576
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$4600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;

    move-result-object v0

    .line 1577
    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;->memoryWatcher()Lcom/evie/common/utils/MemoryWatcher;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1575
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/utils/MemoryWatcher;

    return-object v0
.end method
