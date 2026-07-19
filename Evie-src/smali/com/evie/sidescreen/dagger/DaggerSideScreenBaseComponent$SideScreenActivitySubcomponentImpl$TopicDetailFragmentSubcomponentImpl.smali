.class final Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerSideScreenBaseComponent.java"

# interfaces
.implements Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributesTopicDetailFragmentInjector$TopicDetailFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TopicDetailFragmentSubcomponentImpl"
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

.field private topicDetailFollowPopupMenuHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper;",
            ">;"
        }
    .end annotation
.end field

.field private topicDetailHeaderPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory;",
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
.method private constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;)V
    .locals 0

    .line 1925
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1927
    invoke-direct {p0, p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->initialize(Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V
    .locals 0

    .line 1837
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;)V

    return-void
.end method

.method private getTopicDetailPresenterFactory()Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;
    .locals 5

    .line 1931
    new-instance v0, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1932
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->topicDetailHeaderPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private getTopicDetailViewHolderFactory()Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolderFactory;
    .locals 2

    .line 1939
    new-instance v0, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolderFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->lifecycleAwareMvpRecyclerAdapterProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolderFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private initialize(Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;)V
    .locals 8

    .line 1944
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1947
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/TopicsModule;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1948
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1946
    invoke-static {p1, v0}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;->create(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;

    move-result-object p1

    .line 1945
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->providesPersonalizationSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 1949
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1952
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/TopicsModule;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->providesPersonalizationSharedPreferencesProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1954
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 1951
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;->create(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;

    move-result-object p1

    .line 1950
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->providesTopicPersonalizationStoreProvider:Ljavax/inject/Provider;

    .line 1955
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1958
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/TopicsModule;

    move-result-object v0

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1959
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1960
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1961
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$5600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->providesTopicPersonalizationStoreProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1963
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 1957
    invoke-static/range {v0 .. v5}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->create(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;

    move-result-object p1

    .line 1956
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    .line 1964
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1967
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1965
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->followButtonHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 1968
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1970
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1971
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1969
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->followButtonOnboardingHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 1972
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1975
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->followButtonHandlerFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->followButtonOnboardingHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 1974
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;

    move-result-object p1

    .line 1973
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->followButtonHandlerFactoryProvider2:Ljavax/inject/Provider;

    .line 1978
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->providesTopicPersonalizationStoreProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1982
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 1979
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/topicdetail/TopicDetailFollowPopupMenuHelper_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->topicDetailFollowPopupMenuHelperProvider:Ljavax/inject/Provider;

    .line 1983
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->followButtonHandlerFactoryProvider2:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->providesTopicPersonalizationStoreProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->topicDetailFollowPopupMenuHelperProvider:Ljavax/inject/Provider;

    .line 1984
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->topicDetailHeaderPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 1988
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1991
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    .line 1992
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->access$5700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1993
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 1990
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/ActivityStarter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/ActivityStarter_Factory;

    move-result-object p1

    .line 1989
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    .line 1994
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1997
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->providesTopicPersonalizationStoreProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v3, v3, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2000
    invoke-static {v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    .line 1995
    invoke-static {p1, v0, v1, v2, v3}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    .line 2001
    new-instance p1, Ldagger/internal/DelegateFactory;

    invoke-direct {p1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2002
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2004
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    .line 2005
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->access$5800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    .line 2008
    invoke-static {}, Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;->create()Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;

    move-result-object v3

    .line 2003
    invoke-static {p1, v0, v1, v2, v3}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2009
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2012
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2010
    invoke-static {p1, v0, v1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articleTileHeroCaptionPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2015
    invoke-static {}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler_Factory;->create()Lcom/evie/sidescreen/exoplayer/VideoFocusHandler_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    .line 2016
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    .line 2018
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->access$5900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2019
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    .line 2020
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->access$5800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2023
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    .line 2025
    invoke-static {}, Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;->create()Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;

    move-result-object v7

    .line 2017
    invoke-static/range {v0 .. v7}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->popupVideoViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2026
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    .line 2029
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->access$5900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2031
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2032
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->popupVideoViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2034
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 2027
    invoke-static/range {v0 .. v6}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articleTileHeroVideoPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2035
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2038
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2039
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2036
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articleTileHeroYouTubePreviewPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2040
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2042
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    .line 2041
    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable_Factory;->create(Ljavax/inject/Provider;)Lcom/evie/sidescreen/oathplayer/OathPlayerObservable_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->oathPlayerObservableProvider:Ljavax/inject/Provider;

    .line 2043
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2046
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2047
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->oathPlayerObservableProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->videoFocusHandlerProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2050
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 2044
    invoke-static/range {v0 .. v5}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articleTileHeroOathPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2051
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2054
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2052
    invoke-static {p1, v0, v1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articleTileRowPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2057
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2060
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2058
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articleTileHeroImagePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2062
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articleTileHeroCaptionPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articleTileHeroVideoPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articleTileHeroYouTubePreviewPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articleTileHeroOathPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articleTileRowPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articleTileHeroImagePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2063
    invoke-static/range {v0 .. v5}, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articleTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2070
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2072
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->followButtonHandlerFactoryProvider2:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, v2, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2075
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 2071
    invoke-static {p1, v0, v1, v2}, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2076
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2080
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2077
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->recommendedPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2081
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2083
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2082
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->playlistItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2084
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2087
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2085
    invoke-static {p1, v0, v1, v2}, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->relatedArticlePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2090
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2093
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2091
    invoke-static {p1, v0, v1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articleSeedPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2096
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2099
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2097
    invoke-static {p1, v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->videoSeedPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2102
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2105
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2106
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2103
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->yelpSingleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2107
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->yelpSingleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2110
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    .line 2108
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->yelpMultipleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2112
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2115
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2116
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2113
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->yelpSingleBusinessHeroPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2117
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->yelpMultipleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->yelpSingleBusinessHeroPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2118
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->yelpPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2121
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articleTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->recommendedPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->playlistItemPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->relatedArticlePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->articleSeedPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->videoSeedPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->yelpPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2122
    invoke-static/range {v0 .. v6}, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->nonAdTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2130
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2132
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2133
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2134
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2131
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->heroAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2135
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2137
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2138
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2139
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2136
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->rowAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2140
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->heroAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->rowAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2141
    invoke-static {p1, v0}, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->adMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2144
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->topLevelTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->nonAdTilePresenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->adMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 2146
    invoke-static {v0, v1}, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory_Factory;

    move-result-object v0

    .line 2144
    invoke-static {p1, v0}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 2148
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2150
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2151
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2149
    invoke-static {p1, v0}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->lifecycleAwareMvpRecyclerAdapterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectTopicDetailFragment(Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;)Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;
    .locals 1

    .line 2161
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->getTopicDetailPresenterFactory()Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;

    move-result-object v0

    .line 2160
    invoke-static {p1, v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment_MembersInjector;->injectMTopicDetailPresenterFactory(Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;Lcom/evie/sidescreen/topicdetail/TopicDetailPresenterFactory;)V

    .line 2163
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->getTopicDetailViewHolderFactory()Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolderFactory;

    move-result-object v0

    .line 2162
    invoke-static {p1, v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment_MembersInjector;->injectMTopicDetailViewHolderFactory(Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;Lcom/evie/sidescreen/topicdetail/TopicDetailViewHolderFactory;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;)V
    .locals 0

    .line 2156
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->injectTopicDetailFragment(Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;)Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 1837
    check-cast p1, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;->inject(Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;)V

    return-void
.end method
