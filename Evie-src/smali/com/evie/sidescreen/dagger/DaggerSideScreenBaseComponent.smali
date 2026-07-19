.class public final Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;
.super Ljava/lang/Object;
.source "DaggerSideScreenBaseComponent.java"

# interfaces
.implements Lcom/evie/sidescreen/dagger/SideScreenBaseComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentImpl;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_adTilePresenterFactories;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_adUnitPools;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_playerBuilderRequestor;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_tileSettings;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_exoplayerCache;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_frequentlyUsedModel;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_gson;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_analyticsHandler;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_appVersionCode;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_retrofit;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_okHttpClient;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;
    }
.end annotation


# instance fields
.field private abTestConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private adTilePresenterFactoriesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdTilePresenterFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private adUnitPoolsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdUnitPool;",
            ">;>;"
        }
    .end annotation
.end field

.field private analyticsHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;"
        }
    .end annotation
.end field

.field private analyticsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;"
        }
    .end annotation
.end field

.field private final announcementModule:Lcom/evie/sidescreen/dagger/AnnouncementModule;

.field private appVersionCodeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private configSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private exoplayerCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/upstream/cache/Cache;",
            ">;"
        }
    .end annotation
.end field

.field private frequentlyUsedModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/frequentlyused/FrequentlyUsedModel;",
            ">;"
        }
    .end annotation
.end field

.field private gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycleCallbacksModule:Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;

.field private okHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private playerBuilderRequestorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;",
            ">;"
        }
    .end annotation
.end field

.field private provideAutoplayVideoSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesAbTestConfigurationModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;",
            ">;"
        }
    .end annotation
.end field

.field private providesActivationModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;"
        }
    .end annotation
.end field

.field private providesBackgroundEnabledSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private providesBackgroundModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/background/BackgroundModel;",
            ">;"
        }
    .end annotation
.end field

.field private providesBandwidthMeterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/upstream/BandwidthMeter;",
            ">;"
        }
    .end annotation
.end field

.field private providesCompositeDisposableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ">;"
        }
    .end annotation
.end field

.field private providesConfigModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/config/ConfigModel;",
            ">;"
        }
    .end annotation
.end field

.field private providesConnectivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesConnectivityModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ConnectivityModel;",
            ">;"
        }
    .end annotation
.end field

.field private providesContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private providesConvertToCelsiusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesDataSourceFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private providesDataUsageDebugEnabledProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesExtractorsFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;",
            ">;"
        }
    .end annotation
.end field

.field private providesFrequentlyUsedEnabledProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private providesFullscreenSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private providesIsRtlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private providesLayerStackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/LayerStack;",
            ">;"
        }
    .end annotation
.end field

.field private providesLifecycleCallbacksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private providesLocationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private providesNetworkStatusModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/network/NetworkStatusModel;",
            ">;"
        }
    .end annotation
.end field

.field private providesPersonalizeOnboardingModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private providesSearchEnabledSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private providesSharedPreferencesModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;"
        }
    .end annotation
.end field

.field private providesSideScreenContentAPIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenContentAPI;",
            ">;"
        }
    .end annotation
.end field

.field private providesSideScreenRelatedContentModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;",
            ">;"
        }
    .end annotation
.end field

.field private providesSidescreenApiVersionCodeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private providesSimpleExoPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/SimpleExoPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private providesTilesSectionRefreshTimeLimitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesTopHeaderEnabledProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private providesTrackSelectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelector;",
            ">;"
        }
    .end annotation
.end field

.field private providesWallpaperModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/wallpaper/WallpaperModel;",
            ">;"
        }
    .end annotation
.end field

.field private providesWeatherModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/weather/WeatherModel;",
            ">;"
        }
    .end annotation
.end field

.field private retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private sideScreenConfigurationModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfigurationModel;",
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

.field private final sideScreenSharedDependenciesExcludingContext:Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;

.field private tileSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/TileSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final topicsModule:Lcom/evie/sidescreen/dagger/TopicsModule;


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Lcom/evie/sidescreen/dagger/ContextModule;Lcom/evie/sidescreen/dagger/LocationModule;Lcom/evie/sidescreen/dagger/DisposeModule;Lcom/evie/sidescreen/dagger/BackgroundModule;Lcom/evie/sidescreen/dagger/SettingsModule;Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;Lcom/evie/sidescreen/dagger/ActivationModule;Lcom/evie/sidescreen/dagger/LayerStackModule;Lcom/evie/sidescreen/dagger/NetworkStatusModule;Lcom/evie/sidescreen/dagger/ConnectivityModule;Lcom/evie/sidescreen/dagger/ExoPlayerModule;Lcom/evie/sidescreen/dagger/TileSettingsModule;Lcom/evie/sidescreen/dagger/WeatherModule;Lcom/evie/sidescreen/dagger/AnnouncementModule;Lcom/evie/sidescreen/dagger/TopicsModule;Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V
    .locals 5

    move-object v0, p0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p17

    .line 328
    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->sideScreenSharedDependenciesExcludingContext:Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;

    move-object/from16 v2, p15

    .line 330
    iput-object v2, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->announcementModule:Lcom/evie/sidescreen/dagger/AnnouncementModule;

    move-object/from16 v3, p16

    .line 331
    iput-object v3, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->topicsModule:Lcom/evie/sidescreen/dagger/TopicsModule;

    move-object v4, p7

    .line 332
    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->lifecycleCallbacksModule:Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;

    .line 333
    invoke-direct/range {p0 .. p17}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->initialize(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Lcom/evie/sidescreen/dagger/ContextModule;Lcom/evie/sidescreen/dagger/LocationModule;Lcom/evie/sidescreen/dagger/DisposeModule;Lcom/evie/sidescreen/dagger/BackgroundModule;Lcom/evie/sidescreen/dagger/SettingsModule;Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;Lcom/evie/sidescreen/dagger/ActivationModule;Lcom/evie/sidescreen/dagger/LayerStackModule;Lcom/evie/sidescreen/dagger/NetworkStatusModule;Lcom/evie/sidescreen/dagger/ConnectivityModule;Lcom/evie/sidescreen/dagger/ExoPlayerModule;Lcom/evie/sidescreen/dagger/TileSettingsModule;Lcom/evie/sidescreen/dagger/WeatherModule;Lcom/evie/sidescreen/dagger/AnnouncementModule;Lcom/evie/sidescreen/dagger/TopicsModule;Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Lcom/evie/sidescreen/dagger/ContextModule;Lcom/evie/sidescreen/dagger/LocationModule;Lcom/evie/sidescreen/dagger/DisposeModule;Lcom/evie/sidescreen/dagger/BackgroundModule;Lcom/evie/sidescreen/dagger/SettingsModule;Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;Lcom/evie/sidescreen/dagger/ActivationModule;Lcom/evie/sidescreen/dagger/LayerStackModule;Lcom/evie/sidescreen/dagger/NetworkStatusModule;Lcom/evie/sidescreen/dagger/ConnectivityModule;Lcom/evie/sidescreen/dagger/ExoPlayerModule;Lcom/evie/sidescreen/dagger/TileSettingsModule;Lcom/evie/sidescreen/dagger/WeatherModule;Lcom/evie/sidescreen/dagger/AnnouncementModule;Lcom/evie/sidescreen/dagger/TopicsModule;Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V
    .locals 0

    .line 199
    invoke-direct/range {p0 .. p17}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;-><init>(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Lcom/evie/sidescreen/dagger/ContextModule;Lcom/evie/sidescreen/dagger/LocationModule;Lcom/evie/sidescreen/dagger/DisposeModule;Lcom/evie/sidescreen/dagger/BackgroundModule;Lcom/evie/sidescreen/dagger/SettingsModule;Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;Lcom/evie/sidescreen/dagger/ActivationModule;Lcom/evie/sidescreen/dagger/LayerStackModule;Lcom/evie/sidescreen/dagger/NetworkStatusModule;Lcom/evie/sidescreen/dagger/ConnectivityModule;Lcom/evie/sidescreen/dagger/ExoPlayerModule;Lcom/evie/sidescreen/dagger/TileSettingsModule;Lcom/evie/sidescreen/dagger/WeatherModule;Lcom/evie/sidescreen/dagger/AnnouncementModule;Lcom/evie/sidescreen/dagger/TopicsModule;Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->analyticsHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->appVersionCodeProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/TopicsModule;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->topicsModule:Lcom/evie/sidescreen/dagger/TopicsModule;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesLocationHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->configSharedPreferencesProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesActivationModelProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesLifecycleCallbacksProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->frequentlyUsedModelProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesSharedPreferencesModelProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesNetworkStatusModelProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesSideScreenRelatedContentModelProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesLayerStackProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesSimpleExoPlayerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesDataSourceFactoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesExtractorsFactoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->provideAutoplayVideoSettingProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->playerBuilderRequestorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesPersonalizeOnboardingModeProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->adUnitPoolsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->adTilePresenterFactoriesProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesConnectivityModelProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesTilesSectionRefreshTimeLimitProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesCompositeDisposableProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesTopHeaderEnabledProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesDataUsageDebugEnabledProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesFrequentlyUsedEnabledProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesSideScreenContentAPIProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesSidescreenApiVersionCodeProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->sideScreenConfigurationModelProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesBackgroundModelProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesAbTestConfigurationModelProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesWeatherModelProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesConvertToCelsiusProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesIsRtlProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesSearchEnabledSettingProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesFullscreenSettingProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->sideScreenSharedDependenciesExcludingContext:Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;

    return-object p0
.end method

.method static synthetic access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->lifecycleCallbacksModule:Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->abTestConfigurationProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->analyticsModelProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->gsonProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/AnnouncementModule;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->announcementModule:Lcom/evie/sidescreen/dagger/AnnouncementModule;

    return-object p0
.end method

.method static synthetic access$900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->retrofitProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static builder()Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;
    .locals 2

    .line 354
    new-instance v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Lcom/evie/sidescreen/dagger/ContextModule;Lcom/evie/sidescreen/dagger/LocationModule;Lcom/evie/sidescreen/dagger/DisposeModule;Lcom/evie/sidescreen/dagger/BackgroundModule;Lcom/evie/sidescreen/dagger/SettingsModule;Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;Lcom/evie/sidescreen/dagger/ActivationModule;Lcom/evie/sidescreen/dagger/LayerStackModule;Lcom/evie/sidescreen/dagger/NetworkStatusModule;Lcom/evie/sidescreen/dagger/ConnectivityModule;Lcom/evie/sidescreen/dagger/ExoPlayerModule;Lcom/evie/sidescreen/dagger/TileSettingsModule;Lcom/evie/sidescreen/dagger/WeatherModule;Lcom/evie/sidescreen/dagger/AnnouncementModule;Lcom/evie/sidescreen/dagger/TopicsModule;Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    move-object/from16 v2, p12

    move-object/from16 v3, p17

    .line 377
    invoke-static/range {p2 .. p2}, Lcom/evie/sidescreen/dagger/ContextModule_ProvidesContextFactory;->create(Lcom/evie/sidescreen/dagger/ContextModule;)Lcom/evie/sidescreen/dagger/ContextModule_ProvidesContextFactory;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 378
    new-instance v4, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_okHttpClient;

    invoke-direct {v4, v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_okHttpClient;-><init>(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->okHttpClientProvider:Ljavax/inject/Provider;

    .line 381
    new-instance v4, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_retrofit;

    invoke-direct {v4, v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_retrofit;-><init>(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->retrofitProvider:Ljavax/inject/Provider;

    .line 384
    iget-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->okHttpClientProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->retrofitProvider:Ljavax/inject/Provider;

    move-object/from16 v13, p1

    .line 386
    invoke-static {v13, v4, v5}, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenContentAPIFactory;->create(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenContentAPIFactory;

    move-result-object v4

    .line 385
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesSideScreenContentAPIProvider:Ljavax/inject/Provider;

    .line 388
    new-instance v4, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_appVersionCode;

    invoke-direct {v4, v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_appVersionCode;-><init>(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->appVersionCodeProvider:Ljavax/inject/Provider;

    .line 391
    iget-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 392
    invoke-static {v4}, Lcom/evie/common/AbTestConfiguration_Factory;->create(Ljavax/inject/Provider;)Lcom/evie/common/AbTestConfiguration_Factory;

    move-result-object v4

    invoke-static {v4}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->abTestConfigurationProvider:Ljavax/inject/Provider;

    .line 393
    new-instance v4, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_analyticsHandler;

    invoke-direct {v4, v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_analyticsHandler;-><init>(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 398
    invoke-static/range {p3 .. p3}, Lcom/evie/sidescreen/dagger/LocationModule_ProvidesLocationHandlerFactory;->create(Lcom/evie/sidescreen/dagger/LocationModule;)Lcom/evie/sidescreen/dagger/LocationModule_ProvidesLocationHandlerFactory;

    move-result-object v4

    .line 397
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesLocationHandlerProvider:Ljavax/inject/Provider;

    .line 399
    iget-object v7, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesSideScreenContentAPIProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->appVersionCodeProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->abTestConfigurationProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->analyticsHandlerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesLocationHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v6, p1

    .line 401
    invoke-static/range {v6 .. v12}, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->create(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;

    move-result-object v4

    .line 400
    invoke-static {v4}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesSideScreenRelatedContentModelProvider:Ljavax/inject/Provider;

    .line 409
    new-instance v4, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_gson;

    invoke-direct {v4, v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_gson;-><init>(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->gsonProvider:Ljavax/inject/Provider;

    .line 412
    iget-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->gsonProvider:Ljavax/inject/Provider;

    .line 414
    invoke-static {v4, v5}, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesSharedPreferencesModelFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ProvidesSharedPreferencesModelFactory;

    move-result-object v4

    .line 413
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesSharedPreferencesModelProvider:Ljavax/inject/Provider;

    .line 416
    iget-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 417
    invoke-static {v4}, Lcom/evie/sidescreen/analytics/AnalyticsModel_Factory;->create(Ljavax/inject/Provider;)Lcom/evie/sidescreen/analytics/AnalyticsModel_Factory;

    move-result-object v4

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 420
    invoke-static/range {p4 .. p4}, Lcom/evie/sidescreen/dagger/DisposeModule_ProvidesCompositeDisposableFactory;->create(Lcom/evie/sidescreen/dagger/DisposeModule;)Lcom/evie/sidescreen/dagger/DisposeModule_ProvidesCompositeDisposableFactory;

    move-result-object v4

    .line 419
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesCompositeDisposableProvider:Ljavax/inject/Provider;

    .line 422
    invoke-static/range {p6 .. p6}, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesBackgroundEnabledSettingFactory;->create(Lcom/evie/sidescreen/dagger/SettingsModule;)Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesBackgroundEnabledSettingFactory;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesBackgroundEnabledSettingProvider:Ljavax/inject/Provider;

    .line 424
    invoke-static/range {p7 .. p7}, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory;->create(Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;)Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesLifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 428
    invoke-static/range {p8 .. p8}, Lcom/evie/sidescreen/dagger/ActivationModule_ProvidesActivationModelFactory;->create(Lcom/evie/sidescreen/dagger/ActivationModule;)Lcom/evie/sidescreen/dagger/ActivationModule_ProvidesActivationModelFactory;

    move-result-object v4

    .line 427
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesActivationModelProvider:Ljavax/inject/Provider;

    .line 429
    iget-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->retrofitProvider:Ljavax/inject/Provider;

    move-object/from16 v5, p5

    .line 431
    invoke-static {v5, v4}, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesWallpaperModelFactory;->create(Lcom/evie/sidescreen/dagger/BackgroundModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesWallpaperModelFactory;

    move-result-object v4

    .line 430
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesWallpaperModelProvider:Ljavax/inject/Provider;

    .line 433
    iget-object v6, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesBackgroundEnabledSettingProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesLifecycleCallbacksProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesActivationModelProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesWallpaperModelProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->okHttpClientProvider:Ljavax/inject/Provider;

    .line 435
    invoke-static/range {v5 .. v11}, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->create(Lcom/evie/sidescreen/dagger/BackgroundModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;

    move-result-object v4

    .line 434
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesBackgroundModelProvider:Ljavax/inject/Provider;

    .line 443
    iget-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->retrofitProvider:Ljavax/inject/Provider;

    .line 444
    invoke-static {v4}, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesConfigModelFactory;->create(Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesConfigModelFactory;

    move-result-object v4

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesConfigModelProvider:Ljavax/inject/Provider;

    .line 445
    iget-object v5, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->abTestConfigurationProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesConfigModelProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesActivationModelProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesLifecycleCallbacksProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->analyticsHandlerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->appVersionCodeProvider:Ljavax/inject/Provider;

    .line 447
    invoke-static/range {v5 .. v11}, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;

    move-result-object v4

    .line 446
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesAbTestConfigurationModelProvider:Ljavax/inject/Provider;

    .line 457
    invoke-static/range {p9 .. p9}, Lcom/evie/sidescreen/dagger/LayerStackModule_ProvidesLayerStackFactory;->create(Lcom/evie/sidescreen/dagger/LayerStackModule;)Lcom/evie/sidescreen/dagger/LayerStackModule_ProvidesLayerStackFactory;

    move-result-object v4

    .line 456
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesLayerStackProvider:Ljavax/inject/Provider;

    .line 458
    iget-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 460
    invoke-static {v4}, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory;->create(Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory;

    move-result-object v4

    .line 459
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->configSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 462
    iget-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->configSharedPreferencesProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->gsonProvider:Ljavax/inject/Provider;

    .line 464
    invoke-static {v4, v5}, Lcom/evie/sidescreen/SideScreenConfiguration_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/SideScreenConfiguration_Factory;

    move-result-object v4

    .line 463
    invoke-static {v4}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->sideScreenConfigurationProvider:Ljavax/inject/Provider;

    .line 465
    iget-object v14, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesActivationModelProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesAbTestConfigurationModelProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesLifecycleCallbacksProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->sideScreenConfigurationProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesConfigModelProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->analyticsHandlerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->appVersionCodeProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesCompositeDisposableProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesSharedPreferencesModelProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    .line 467
    invoke-static/range {v14 .. v23}, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;

    move-result-object v4

    .line 466
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->sideScreenConfigurationModelProvider:Ljavax/inject/Provider;

    .line 478
    new-instance v4, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_frequentlyUsedModel;

    invoke-direct {v4, v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_frequentlyUsedModel;-><init>(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->frequentlyUsedModelProvider:Ljavax/inject/Provider;

    .line 483
    invoke-static/range {p10 .. p10}, Lcom/evie/sidescreen/dagger/NetworkStatusModule_ProvidesNetworkStatusModelFactory;->create(Lcom/evie/sidescreen/dagger/NetworkStatusModule;)Lcom/evie/sidescreen/dagger/NetworkStatusModule_ProvidesNetworkStatusModelFactory;

    move-result-object v4

    .line 482
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesNetworkStatusModelProvider:Ljavax/inject/Provider;

    .line 484
    iget-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 486
    invoke-static {v1, v4}, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityManagerFactory;->create(Lcom/evie/sidescreen/dagger/ConnectivityModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityManagerFactory;

    move-result-object v4

    .line 485
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesConnectivityManagerProvider:Ljavax/inject/Provider;

    .line 488
    iget-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesConnectivityManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesCompositeDisposableProvider:Ljavax/inject/Provider;

    .line 490
    invoke-static {v1, v4, v5, v6}, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;->create(Lcom/evie/sidescreen/dagger/ConnectivityModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;

    move-result-object v1

    .line 489
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesConnectivityModelProvider:Ljavax/inject/Provider;

    .line 497
    invoke-static/range {p12 .. p12}, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesBandwidthMeterFactory;->create(Lcom/evie/sidescreen/dagger/ExoPlayerModule;)Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesBandwidthMeterFactory;

    move-result-object v1

    .line 496
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesBandwidthMeterProvider:Ljavax/inject/Provider;

    .line 498
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesBandwidthMeterProvider:Ljavax/inject/Provider;

    .line 500
    invoke-static {v2, v1}, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesTrackSelectorFactory;->create(Lcom/evie/sidescreen/dagger/ExoPlayerModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesTrackSelectorFactory;

    move-result-object v1

    .line 499
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesTrackSelectorProvider:Ljavax/inject/Provider;

    .line 502
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesTrackSelectorProvider:Ljavax/inject/Provider;

    .line 503
    invoke-static {v2, v1, v4}, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesSimpleExoPlayerFactory;->create(Lcom/evie/sidescreen/dagger/ExoPlayerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesSimpleExoPlayerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesSimpleExoPlayerProvider:Ljavax/inject/Provider;

    .line 505
    new-instance v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_exoplayerCache;

    invoke-direct {v1, v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_exoplayerCache;-><init>(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->exoplayerCacheProvider:Ljavax/inject/Provider;

    .line 508
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesContextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->exoplayerCacheProvider:Ljavax/inject/Provider;

    .line 510
    invoke-static {v2, v1, v4}, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesDataSourceFactoryFactory;->create(Lcom/evie/sidescreen/dagger/ExoPlayerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesDataSourceFactoryFactory;

    move-result-object v1

    .line 509
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesDataSourceFactoryProvider:Ljavax/inject/Provider;

    .line 514
    invoke-static/range {p12 .. p12}, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesExtractorsFactoryFactory;->create(Lcom/evie/sidescreen/dagger/ExoPlayerModule;)Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesExtractorsFactoryFactory;

    move-result-object v1

    .line 513
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesExtractorsFactoryProvider:Ljavax/inject/Provider;

    .line 515
    new-instance v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_tileSettings;

    invoke-direct {v1, v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_tileSettings;-><init>(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->tileSettingsProvider:Ljavax/inject/Provider;

    .line 518
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->tileSettingsProvider:Ljavax/inject/Provider;

    move-object/from16 v2, p13

    .line 519
    invoke-static {v2, v1}, Lcom/evie/sidescreen/dagger/TileSettingsModule_ProvideAutoplayVideoSettingFactory;->create(Lcom/evie/sidescreen/dagger/TileSettingsModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TileSettingsModule_ProvideAutoplayVideoSettingFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->provideAutoplayVideoSettingProvider:Ljavax/inject/Provider;

    .line 521
    new-instance v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_playerBuilderRequestor;

    invoke-direct {v1, v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_playerBuilderRequestor;-><init>(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->playerBuilderRequestorProvider:Ljavax/inject/Provider;

    .line 525
    invoke-static/range {p6 .. p6}, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesPersonalizeOnboardingModeFactory;->create(Lcom/evie/sidescreen/dagger/SettingsModule;)Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesPersonalizeOnboardingModeFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesPersonalizeOnboardingModeProvider:Ljavax/inject/Provider;

    .line 526
    new-instance v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_adUnitPools;

    invoke-direct {v1, v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_adUnitPools;-><init>(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->adUnitPoolsProvider:Ljavax/inject/Provider;

    .line 529
    new-instance v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_adTilePresenterFactories;

    invoke-direct {v1, v3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_adTilePresenterFactories;-><init>(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->adTilePresenterFactoriesProvider:Ljavax/inject/Provider;

    .line 533
    invoke-static/range {p6 .. p6}, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesTilesSectionRefreshTimeLimitFactory;->create(Lcom/evie/sidescreen/dagger/SettingsModule;)Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesTilesSectionRefreshTimeLimitFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesTilesSectionRefreshTimeLimitProvider:Ljavax/inject/Provider;

    .line 535
    invoke-static/range {p6 .. p6}, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesTopHeaderEnabledFactory;->create(Lcom/evie/sidescreen/dagger/SettingsModule;)Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesTopHeaderEnabledFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesTopHeaderEnabledProvider:Ljavax/inject/Provider;

    .line 537
    invoke-static/range {p6 .. p6}, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesDataUsageDebugEnabledFactory;->create(Lcom/evie/sidescreen/dagger/SettingsModule;)Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesDataUsageDebugEnabledFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesDataUsageDebugEnabledProvider:Ljavax/inject/Provider;

    .line 539
    invoke-static/range {p6 .. p6}, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesFrequentlyUsedEnabledFactory;->create(Lcom/evie/sidescreen/dagger/SettingsModule;)Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesFrequentlyUsedEnabledFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesFrequentlyUsedEnabledProvider:Ljavax/inject/Provider;

    .line 541
    invoke-static/range {p1 .. p1}, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSidescreenApiVersionCodeFactory;->create(Lcom/evie/sidescreen/dagger/SideScreenContentModule;)Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSidescreenApiVersionCodeFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesSidescreenApiVersionCodeProvider:Ljavax/inject/Provider;

    .line 543
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->retrofitProvider:Ljavax/inject/Provider;

    move-object/from16 v2, p14

    .line 545
    invoke-static {v2, v1}, Lcom/evie/sidescreen/dagger/WeatherModule_ProvidesWeatherModelFactory;->create(Lcom/evie/sidescreen/dagger/WeatherModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/WeatherModule_ProvidesWeatherModelFactory;

    move-result-object v1

    .line 544
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesWeatherModelProvider:Ljavax/inject/Provider;

    .line 547
    invoke-static/range {p6 .. p6}, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesConvertToCelsiusFactory;->create(Lcom/evie/sidescreen/dagger/SettingsModule;)Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesConvertToCelsiusFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesConvertToCelsiusProvider:Ljavax/inject/Provider;

    .line 549
    invoke-static/range {p6 .. p6}, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesIsRtlFactory;->create(Lcom/evie/sidescreen/dagger/SettingsModule;)Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesIsRtlFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesIsRtlProvider:Ljavax/inject/Provider;

    .line 551
    invoke-static/range {p6 .. p6}, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesSearchEnabledSettingFactory;->create(Lcom/evie/sidescreen/dagger/SettingsModule;)Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesSearchEnabledSettingFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesSearchEnabledSettingProvider:Ljavax/inject/Provider;

    .line 553
    invoke-static/range {p6 .. p6}, Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesFullscreenSettingFactory;->create(Lcom/evie/sidescreen/dagger/SettingsModule;)Lcom/evie/sidescreen/dagger/SettingsModule_ProvidesFullscreenSettingFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesFullscreenSettingProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public activitySubcomponentBuilder()Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent$Builder;
    .locals 2

    .line 573
    new-instance v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentBuilder;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V

    return-object v0
.end method

.method public sideScreenRelatedContentModel()Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesSideScreenRelatedContentModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    return-object v0
.end method

.method public sideScreenSharedPreferencesModel()Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->providesSharedPreferencesModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    return-object v0
.end method

.method public sideScreenSubcomponentBuilder()Lcom/evie/sidescreen/dagger/SideScreenSubcomponent$Builder;
    .locals 2

    .line 568
    new-instance v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenSubcomponentBuilder;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V

    return-object v0
.end method
