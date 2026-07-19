package com.evie.sidescreen.dagger;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import androidx.fragment.app.Fragment;
import com.evie.common.AbTestConfiguration;
import com.evie.common.AbTestConfiguration_Factory;
import com.evie.common.utils.MemoryWatcher;
import com.evie.models.PromptStoreModel;
import com.evie.models.announcement.AnnouncementModel;
import com.evie.models.config.ConfigModel;
import com.evie.models.frequentlyused.FrequentlyUsedModel;
import com.evie.models.sidescreen.SideScreenContentAPI;
import com.evie.models.sidescreen.SideScreenContentTabModelFactory;
import com.evie.models.sidescreen.SideScreenContentTabModelFactory_Factory;
import com.evie.models.sidescreen.SideScreenRelatedContentModel;
import com.evie.models.topics.TopicPersonalizationStore;
import com.evie.models.topics.TopicsModel;
import com.evie.models.wallpaper.WallpaperModel;
import com.evie.models.weather.WeatherModel;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.ActivityStarter_Factory;
import com.evie.sidescreen.ConnectivityModel;
import com.evie.sidescreen.LauncherInfo;
import com.evie.sidescreen.LayerStack;
import com.evie.sidescreen.SideScreen;
import com.evie.sidescreen.SideScreenConfiguration;
import com.evie.sidescreen.SideScreenConfigurationModel;
import com.evie.sidescreen.SideScreenConfiguration_Factory;
import com.evie.sidescreen.SideScreenDependencies;
import com.evie.sidescreen.SideScreenGenericTabSectionModelFactory;
import com.evie.sidescreen.SideScreenGenericTabSectionModelFactory_Factory;
import com.evie.sidescreen.SideScreenMainTabSectionModelFactory;
import com.evie.sidescreen.SideScreenMainTabSectionModelFactory_Factory;
import com.evie.sidescreen.SideScreenPresenter;
import com.evie.sidescreen.SideScreenPresenter_Factory;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.SideScreenView;
import com.evie.sidescreen.SideScreenView_Factory;
import com.evie.sidescreen.SideScreen_MembersInjector;
import com.evie.sidescreen.TabsModelFactory;
import com.evie.sidescreen.TabsModelFactory_Factory;
import com.evie.sidescreen.TileSettings;
import com.evie.sidescreen.analytics.AbTestConfigurationModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.AnalyticsModel_Factory;
import com.evie.sidescreen.background.BackgroundModel;
import com.evie.sidescreen.dagger.external.PlayerBuilderRequestor;
import com.evie.sidescreen.datanotification.DataWarningCardPresenter;
import com.evie.sidescreen.datanotification.DataWarningCardPresenter_Factory;
import com.evie.sidescreen.exoplayer.ExoPlayerObservable;
import com.evie.sidescreen.exoplayer.ExoPlayerObservable_Factory;
import com.evie.sidescreen.exoplayer.VideoFocusHandler;
import com.evie.sidescreen.exoplayer.VideoFocusHandler_Factory;
import com.evie.sidescreen.footer.FooterPresenter;
import com.evie.sidescreen.footer.FooterPresenter_Factory;
import com.evie.sidescreen.frequentlyused.FrequentlyUsedPresenter;
import com.evie.sidescreen.frequentlyused.FrequentlyUsedPresenter_Factory;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.mvp.LifecycleAwareMvpRecyclerAdapter;
import com.evie.sidescreen.mvp.LifecycleAwareMvpRecyclerAdapter_Factory;
import com.evie.sidescreen.network.NetworkStatusModel;
import com.evie.sidescreen.oathplayer.OathPlayerObservable;
import com.evie.sidescreen.oathplayer.OathPlayerObservable_Factory;
import com.evie.sidescreen.personalize.FollowButtonHandlerFactory;
import com.evie.sidescreen.personalize.FollowButtonHandlerFactory_Factory;
import com.evie.sidescreen.personalize.IFollowButtonHandlerFactory;
import com.evie.sidescreen.personalize.PersonalizePagePresenterFactory;
import com.evie.sidescreen.personalize.PersonalizePagePresenterFactory_Factory;
import com.evie.sidescreen.personalize.PersonalizePresenterFactory;
import com.evie.sidescreen.personalize.TopicItemPresenterFactory;
import com.evie.sidescreen.personalize.TopicItemPresenterFactory_Factory;
import com.evie.sidescreen.personalize.TopicsListFragment;
import com.evie.sidescreen.personalize.TopicsListFragment_MembersInjector;
import com.evie.sidescreen.personalize.TopicsListPresenterFactory;
import com.evie.sidescreen.personalize.onboarding.FollowButtonOnboardingHandlerFactory;
import com.evie.sidescreen.personalize.onboarding.FollowButtonOnboardingHandlerFactory_Factory;
import com.evie.sidescreen.personalize.onboarding.PersonalizeFragment;
import com.evie.sidescreen.personalize.onboarding.PersonalizeFragment_MembersInjector;
import com.evie.sidescreen.personalize.onboarding.TopicsOnboardingBottomBarPresenterFactory;
import com.evie.sidescreen.personalize.onboarding.TopicsOnboardingFragment;
import com.evie.sidescreen.personalize.onboarding.TopicsOnboardingFragment_MembersInjector;
import com.evie.sidescreen.personalize.onboarding.TopicsOnboardingPresenterFactory;
import com.evie.sidescreen.prompts.announcement.AnnouncementSection;
import com.evie.sidescreen.prompts.announcement.AnnouncementSection_Factory;
import com.evie.sidescreen.prompts.breakingnews.BreakingNewsSection;
import com.evie.sidescreen.prompts.breakingnews.BreakingNewsSection_Factory;
import com.evie.sidescreen.relatedcontent.RelatedArticlesFragment;
import com.evie.sidescreen.relatedcontent.RelatedArticlesFragment_MembersInjector;
import com.evie.sidescreen.relatedcontent.RelatedVideosFragment;
import com.evie.sidescreen.relatedcontent.RelatedVideosFragment_MembersInjector;
import com.evie.sidescreen.searchbar.SearchBarPresenterFactory;
import com.evie.sidescreen.searchbar.SearchBarPresenterFactory_Factory;
import com.evie.sidescreen.searchbar.WhiteSearchBarBackgroundModelFactory_Factory;
import com.evie.sidescreen.tiles.NonAdTilePresenterFactory;
import com.evie.sidescreen.tiles.NonAdTilePresenterFactory_Factory;
import com.evie.sidescreen.tiles.TilesSectionFactory;
import com.evie.sidescreen.tiles.TilesSectionFactory_Factory;
import com.evie.sidescreen.tiles.TopLevelTilePresenterFactory;
import com.evie.sidescreen.tiles.TopLevelTilePresenterFactory_Factory;
import com.evie.sidescreen.tiles.ads.AdMediationItemPresenterFactory;
import com.evie.sidescreen.tiles.ads.AdMediationItemPresenterFactory_Factory;
import com.evie.sidescreen.tiles.ads.AdTilePresenterFactory;
import com.evie.sidescreen.tiles.ads.AdUnitPool;
import com.evie.sidescreen.tiles.ads.HeroAdMediationItemPresenterFactory;
import com.evie.sidescreen.tiles.ads.HeroAdMediationItemPresenterFactory_Factory;
import com.evie.sidescreen.tiles.ads.RowAdMediationItemPresenterFactory;
import com.evie.sidescreen.tiles.ads.RowAdMediationItemPresenterFactory_Factory;
import com.evie.sidescreen.tiles.articles.ArticlePopupMenuHelper;
import com.evie.sidescreen.tiles.articles.ArticlePopupMenuHelper_Factory;
import com.evie.sidescreen.tiles.articles.ArticleSeedPresenterFactory;
import com.evie.sidescreen.tiles.articles.ArticleSeedPresenterFactory_Factory;
import com.evie.sidescreen.tiles.articles.ArticleTileHeroCaptionPresenterFactory;
import com.evie.sidescreen.tiles.articles.ArticleTileHeroCaptionPresenterFactory_Factory;
import com.evie.sidescreen.tiles.articles.ArticleTileHeroImagePresenterFactory;
import com.evie.sidescreen.tiles.articles.ArticleTileHeroImagePresenterFactory_Factory;
import com.evie.sidescreen.tiles.articles.ArticleTileHeroOathPresenterFactory;
import com.evie.sidescreen.tiles.articles.ArticleTileHeroOathPresenterFactory_Factory;
import com.evie.sidescreen.tiles.articles.ArticleTileHeroVideoPresenterFactory;
import com.evie.sidescreen.tiles.articles.ArticleTileHeroVideoPresenterFactory_Factory;
import com.evie.sidescreen.tiles.articles.ArticleTileHeroYouTubePreviewPresenterFactory;
import com.evie.sidescreen.tiles.articles.ArticleTileHeroYouTubePreviewPresenterFactory_Factory;
import com.evie.sidescreen.tiles.articles.ArticleTilePresenterFactory;
import com.evie.sidescreen.tiles.articles.ArticleTilePresenterFactory_Factory;
import com.evie.sidescreen.tiles.articles.ArticleTileRowPresenterFactory;
import com.evie.sidescreen.tiles.articles.ArticleTileRowPresenterFactory_Factory;
import com.evie.sidescreen.tiles.articles.RelatedArticlePresenterFactory;
import com.evie.sidescreen.tiles.articles.RelatedArticlePresenterFactory_Factory;
import com.evie.sidescreen.tiles.header.PersonalizeTileHeaderPresenterFactory;
import com.evie.sidescreen.tiles.header.PersonalizeTileHeaderPresenterFactory_Factory;
import com.evie.sidescreen.tiles.header.PlainTilesHeaderPresenterFactory_Factory;
import com.evie.sidescreen.tiles.imageviewer.PopupImageViewerPresenterFactory;
import com.evie.sidescreen.tiles.imageviewer.PopupImageViewerPresenterFactory_Factory;
import com.evie.sidescreen.tiles.imageviewer.PopupVideoViewerPresenterFactory;
import com.evie.sidescreen.tiles.imageviewer.PopupVideoViewerPresenterFactory_Factory;
import com.evie.sidescreen.tiles.loading.TilesLoadingPresenter;
import com.evie.sidescreen.tiles.loading.TilesLoadingPresenter_Factory;
import com.evie.sidescreen.tiles.recommended.RecommendedPresenterFactory;
import com.evie.sidescreen.tiles.recommended.RecommendedPresenterFactory_Factory;
import com.evie.sidescreen.tiles.videos.PlaylistItemPresenterFactory;
import com.evie.sidescreen.tiles.videos.PlaylistItemPresenterFactory_Factory;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import com.evie.sidescreen.tiles.videos.VideoSeedPresenterFactory;
import com.evie.sidescreen.tiles.videos.VideoSeedPresenterFactory_Factory;
import com.evie.sidescreen.tiles.yelp.YelpMultipleBusinessPresenterFactory;
import com.evie.sidescreen.tiles.yelp.YelpMultipleBusinessPresenterFactory_Factory;
import com.evie.sidescreen.tiles.yelp.YelpPresenterFactory;
import com.evie.sidescreen.tiles.yelp.YelpPresenterFactory_Factory;
import com.evie.sidescreen.tiles.yelp.YelpSingleBusinessHeroPresenterFactory;
import com.evie.sidescreen.tiles.yelp.YelpSingleBusinessHeroPresenterFactory_Factory;
import com.evie.sidescreen.tiles.yelp.YelpSingleBusinessPresenterFactory;
import com.evie.sidescreen.tiles.yelp.YelpSingleBusinessPresenterFactory_Factory;
import com.evie.sidescreen.topicdetail.TopicDetailFollowPopupMenuHelper;
import com.evie.sidescreen.topicdetail.TopicDetailFollowPopupMenuHelper_Factory;
import com.evie.sidescreen.topicdetail.TopicDetailFragment;
import com.evie.sidescreen.topicdetail.TopicDetailFragment_MembersInjector;
import com.evie.sidescreen.topicdetail.TopicDetailHeaderPresenterFactory;
import com.evie.sidescreen.topicdetail.TopicDetailHeaderPresenterFactory_Factory;
import com.evie.sidescreen.topicdetail.TopicDetailPresenterFactory;
import com.evie.sidescreen.topicdetail.TopicDetailViewHolderFactory;
import com.evie.sidescreen.weather.WeatherPresenter;
import com.evie.sidescreen.weather.WeatherPresenter_Factory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.gson.Gson;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import dagger.android.AndroidInjector;
import dagger.android.DispatchingAndroidInjector;
import dagger.android.DispatchingAndroidInjector_Factory;
import dagger.internal.DelegateFactory;
import dagger.internal.DoubleCheck;
import dagger.internal.InstanceFactory;
import dagger.internal.MapBuilder;
import dagger.internal.Preconditions;
import dagger.internal.SingleCheck;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes.dex */
public final class DaggerSideScreenBaseComponent implements SideScreenBaseComponent {
    private Provider<AbTestConfiguration> abTestConfigurationProvider;
    private Provider<Map<String, AdTilePresenterFactory>> adTilePresenterFactoriesProvider;
    private Provider<Map<String, AdUnitPool>> adUnitPoolsProvider;
    private Provider<AnalyticsHandler> analyticsHandlerProvider;
    private Provider<AnalyticsModel> analyticsModelProvider;
    private final AnnouncementModule announcementModule;
    private Provider<Integer> appVersionCodeProvider;
    private Provider<SharedPreferences> configSharedPreferencesProvider;
    private Provider<Cache> exoplayerCacheProvider;
    private Provider<FrequentlyUsedModel> frequentlyUsedModelProvider;
    private Provider<Gson> gsonProvider;
    private final LifecycleCallbacksModule lifecycleCallbacksModule;
    private Provider<OkHttpClient> okHttpClientProvider;
    private Provider<PlayerBuilderRequestor> playerBuilderRequestorProvider;
    private Provider<Observable<Boolean>> provideAutoplayVideoSettingProvider;
    private Provider<AbTestConfigurationModel> providesAbTestConfigurationModelProvider;
    private Provider<ActivationModel> providesActivationModelProvider;
    private Provider<Boolean> providesBackgroundEnabledSettingProvider;
    private Provider<BackgroundModel> providesBackgroundModelProvider;
    private Provider<BandwidthMeter> providesBandwidthMeterProvider;
    private Provider<CompositeDisposable> providesCompositeDisposableProvider;
    private Provider<ConfigModel> providesConfigModelProvider;
    private Provider<ConnectivityManager> providesConnectivityManagerProvider;
    private Provider<ConnectivityModel> providesConnectivityModelProvider;
    private Provider<Context> providesContextProvider;
    private Provider<Observable<Boolean>> providesConvertToCelsiusProvider;
    private Provider<DataSource.Factory> providesDataSourceFactoryProvider;
    private Provider<Observable<Boolean>> providesDataUsageDebugEnabledProvider;
    private Provider<ExtractorsFactory> providesExtractorsFactoryProvider;
    private Provider<Boolean> providesFrequentlyUsedEnabledProvider;
    private Provider<Boolean> providesFullscreenSettingProvider;
    private Provider<Boolean> providesIsRtlProvider;
    private Provider<LayerStack> providesLayerStackProvider;
    private Provider<LifecycleCallbacks> providesLifecycleCallbacksProvider;
    private Provider<LocationHandler> providesLocationHandlerProvider;
    private Provider<NetworkStatusModel> providesNetworkStatusModelProvider;
    private Provider<Boolean> providesPersonalizeOnboardingModeProvider;
    private Provider<Boolean> providesSearchEnabledSettingProvider;
    private Provider<SideScreenSharedPreferencesModel> providesSharedPreferencesModelProvider;
    private Provider<SideScreenContentAPI> providesSideScreenContentAPIProvider;
    private Provider<SideScreenRelatedContentModel> providesSideScreenRelatedContentModelProvider;
    private Provider<Integer> providesSidescreenApiVersionCodeProvider;
    private Provider<SimpleExoPlayer> providesSimpleExoPlayerProvider;
    private Provider<Observable<Long>> providesTilesSectionRefreshTimeLimitProvider;
    private Provider<Boolean> providesTopHeaderEnabledProvider;
    private Provider<TrackSelector> providesTrackSelectorProvider;
    private Provider<WallpaperModel> providesWallpaperModelProvider;
    private Provider<WeatherModel> providesWeatherModelProvider;
    private Provider<Retrofit> retrofitProvider;
    private Provider<SideScreenConfigurationModel> sideScreenConfigurationModelProvider;
    private Provider<SideScreenConfiguration> sideScreenConfigurationProvider;
    private final SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext;
    private Provider<TileSettings> tileSettingsProvider;
    private final TopicsModule topicsModule;

    private DaggerSideScreenBaseComponent(SideScreenContentModule sideScreenContentModule, ContextModule contextModule, LocationModule locationModule, DisposeModule disposeModule, BackgroundModule backgroundModule, SettingsModule settingsModule, LifecycleCallbacksModule lifecycleCallbacksModule, ActivationModule activationModule, LayerStackModule layerStackModule, NetworkStatusModule networkStatusModule, ConnectivityModule connectivityModule, ExoPlayerModule exoPlayerModule, TileSettingsModule tileSettingsModule, WeatherModule weatherModule, AnnouncementModule announcementModule, TopicsModule topicsModule, SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext) {
        this.sideScreenSharedDependenciesExcludingContext = sideScreenSharedDependenciesExcludingContext;
        this.announcementModule = announcementModule;
        this.topicsModule = topicsModule;
        this.lifecycleCallbacksModule = lifecycleCallbacksModule;
        initialize(sideScreenContentModule, contextModule, locationModule, disposeModule, backgroundModule, settingsModule, lifecycleCallbacksModule, activationModule, layerStackModule, networkStatusModule, connectivityModule, exoPlayerModule, tileSettingsModule, weatherModule, announcementModule, topicsModule, sideScreenSharedDependenciesExcludingContext);
    }

    public static Builder builder() {
        return new Builder();
    }

    private void initialize(SideScreenContentModule sideScreenContentModule, ContextModule contextModule, LocationModule locationModule, DisposeModule disposeModule, BackgroundModule backgroundModule, SettingsModule settingsModule, LifecycleCallbacksModule lifecycleCallbacksModule, ActivationModule activationModule, LayerStackModule layerStackModule, NetworkStatusModule networkStatusModule, ConnectivityModule connectivityModule, ExoPlayerModule exoPlayerModule, TileSettingsModule tileSettingsModule, WeatherModule weatherModule, AnnouncementModule announcementModule, TopicsModule topicsModule, SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext) {
        this.providesContextProvider = ContextModule_ProvidesContextFactory.create(contextModule);
        this.okHttpClientProvider = new C0490x6a9138f8(sideScreenSharedDependenciesExcludingContext);
        this.retrofitProvider = new C0492x30d6b8bc(sideScreenSharedDependenciesExcludingContext);
        this.providesSideScreenContentAPIProvider = DoubleCheck.provider(SideScreenContentModule_ProvidesSideScreenContentAPIFactory.create(sideScreenContentModule, this.okHttpClientProvider, this.retrofitProvider));
        this.appVersionCodeProvider = new C0486xd8f3234d(sideScreenSharedDependenciesExcludingContext);
        this.abTestConfigurationProvider = SingleCheck.provider(AbTestConfiguration_Factory.create(this.providesContextProvider));
        this.analyticsHandlerProvider = new C0485xaff113ed(sideScreenSharedDependenciesExcludingContext);
        this.providesLocationHandlerProvider = DoubleCheck.provider(LocationModule_ProvidesLocationHandlerFactory.create(locationModule));
        this.providesSideScreenRelatedContentModelProvider = SingleCheck.provider(C0494x2690c3a1.create(sideScreenContentModule, this.providesContextProvider, this.providesSideScreenContentAPIProvider, this.appVersionCodeProvider, this.abTestConfigurationProvider, this.analyticsHandlerProvider, this.providesLocationHandlerProvider));
        this.gsonProvider = new C0489xd448b854(sideScreenSharedDependenciesExcludingContext);
        this.providesSharedPreferencesModelProvider = DoubleCheck.provider(C0504xa3003cff.create(this.providesContextProvider, this.gsonProvider));
        this.analyticsModelProvider = DoubleCheck.provider(AnalyticsModel_Factory.create(this.analyticsHandlerProvider));
        this.providesCompositeDisposableProvider = DoubleCheck.provider(DisposeModule_ProvidesCompositeDisposableFactory.create(disposeModule));
        this.providesBackgroundEnabledSettingProvider = SettingsModule_ProvidesBackgroundEnabledSettingFactory.create(settingsModule);
        this.providesLifecycleCallbacksProvider = LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory.create(lifecycleCallbacksModule);
        this.providesActivationModelProvider = DoubleCheck.provider(ActivationModule_ProvidesActivationModelFactory.create(activationModule));
        this.providesWallpaperModelProvider = DoubleCheck.provider(BackgroundModule_ProvidesWallpaperModelFactory.create(backgroundModule, this.retrofitProvider));
        this.providesBackgroundModelProvider = DoubleCheck.provider(BackgroundModule_ProvidesBackgroundModelFactory.create(backgroundModule, this.providesBackgroundEnabledSettingProvider, this.providesContextProvider, this.providesLifecycleCallbacksProvider, this.providesActivationModelProvider, this.providesWallpaperModelProvider, this.okHttpClientProvider));
        this.providesConfigModelProvider = DoubleCheck.provider(ConfigModule_ProvidesConfigModelFactory.create(this.retrofitProvider));
        this.providesAbTestConfigurationModelProvider = DoubleCheck.provider(ConfigModule_ProvidesAbTestConfigurationModelFactory.create(this.abTestConfigurationProvider, this.providesConfigModelProvider, this.providesActivationModelProvider, this.providesLifecycleCallbacksProvider, this.analyticsHandlerProvider, this.providesContextProvider, this.appVersionCodeProvider));
        this.providesLayerStackProvider = DoubleCheck.provider(LayerStackModule_ProvidesLayerStackFactory.create(layerStackModule));
        this.configSharedPreferencesProvider = DoubleCheck.provider(SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory.create(this.providesContextProvider));
        this.sideScreenConfigurationProvider = SingleCheck.provider(SideScreenConfiguration_Factory.create(this.configSharedPreferencesProvider, this.gsonProvider));
        this.sideScreenConfigurationModelProvider = DoubleCheck.provider(ConfigModule_SideScreenConfigurationModelFactory.create(this.providesActivationModelProvider, this.providesAbTestConfigurationModelProvider, this.providesLifecycleCallbacksProvider, this.sideScreenConfigurationProvider, this.providesConfigModelProvider, this.analyticsHandlerProvider, this.appVersionCodeProvider, this.providesContextProvider, this.providesCompositeDisposableProvider, this.providesSharedPreferencesModelProvider));
        this.frequentlyUsedModelProvider = new C0488xba748328(sideScreenSharedDependenciesExcludingContext);
        this.providesNetworkStatusModelProvider = DoubleCheck.provider(NetworkStatusModule_ProvidesNetworkStatusModelFactory.create(networkStatusModule));
        this.providesConnectivityManagerProvider = DoubleCheck.provider(ConnectivityModule_ProvidesConnectivityManagerFactory.create(connectivityModule, this.providesContextProvider));
        this.providesConnectivityModelProvider = DoubleCheck.provider(ConnectivityModule_ProvidesConnectivityModelFactory.create(connectivityModule, this.providesContextProvider, this.providesConnectivityManagerProvider, this.providesCompositeDisposableProvider));
        this.providesBandwidthMeterProvider = DoubleCheck.provider(ExoPlayerModule_ProvidesBandwidthMeterFactory.create(exoPlayerModule));
        this.providesTrackSelectorProvider = DoubleCheck.provider(ExoPlayerModule_ProvidesTrackSelectorFactory.create(exoPlayerModule, this.providesBandwidthMeterProvider));
        this.providesSimpleExoPlayerProvider = ExoPlayerModule_ProvidesSimpleExoPlayerFactory.create(exoPlayerModule, this.providesContextProvider, this.providesTrackSelectorProvider);
        this.exoplayerCacheProvider = new C0487x5ffde6ce(sideScreenSharedDependenciesExcludingContext);
        this.providesDataSourceFactoryProvider = DoubleCheck.provider(ExoPlayerModule_ProvidesDataSourceFactoryFactory.create(exoPlayerModule, this.providesContextProvider, this.exoplayerCacheProvider));
        this.providesExtractorsFactoryProvider = DoubleCheck.provider(ExoPlayerModule_ProvidesExtractorsFactoryFactory.create(exoPlayerModule));
        this.tileSettingsProvider = new C0493xbbb4747a(sideScreenSharedDependenciesExcludingContext);
        this.provideAutoplayVideoSettingProvider = TileSettingsModule_ProvideAutoplayVideoSettingFactory.create(tileSettingsModule, this.tileSettingsProvider);
        this.playerBuilderRequestorProvider = new C0491xf0e69ca1(sideScreenSharedDependenciesExcludingContext);
        this.providesPersonalizeOnboardingModeProvider = SettingsModule_ProvidesPersonalizeOnboardingModeFactory.create(settingsModule);
        this.adUnitPoolsProvider = new C0484xd939db27(sideScreenSharedDependenciesExcludingContext);
        this.adTilePresenterFactoriesProvider = new C0483x994c76ba(sideScreenSharedDependenciesExcludingContext);
        this.providesTilesSectionRefreshTimeLimitProvider = SettingsModule_ProvidesTilesSectionRefreshTimeLimitFactory.create(settingsModule);
        this.providesTopHeaderEnabledProvider = SettingsModule_ProvidesTopHeaderEnabledFactory.create(settingsModule);
        this.providesDataUsageDebugEnabledProvider = SettingsModule_ProvidesDataUsageDebugEnabledFactory.create(settingsModule);
        this.providesFrequentlyUsedEnabledProvider = SettingsModule_ProvidesFrequentlyUsedEnabledFactory.create(settingsModule);
        this.providesSidescreenApiVersionCodeProvider = SideScreenContentModule_ProvidesSidescreenApiVersionCodeFactory.create(sideScreenContentModule);
        this.providesWeatherModelProvider = DoubleCheck.provider(WeatherModule_ProvidesWeatherModelFactory.create(weatherModule, this.retrofitProvider));
        this.providesConvertToCelsiusProvider = SettingsModule_ProvidesConvertToCelsiusFactory.create(settingsModule);
        this.providesIsRtlProvider = DoubleCheck.provider(SettingsModule_ProvidesIsRtlFactory.create(settingsModule));
        this.providesSearchEnabledSettingProvider = SettingsModule_ProvidesSearchEnabledSettingFactory.create(settingsModule);
        this.providesFullscreenSettingProvider = SettingsModule_ProvidesFullscreenSettingFactory.create(settingsModule);
    }

    @Override // com.evie.sidescreen.dagger.SideScreenBaseComponent
    public SideScreenRelatedContentModel sideScreenRelatedContentModel() {
        return this.providesSideScreenRelatedContentModelProvider.get();
    }

    @Override // com.evie.sidescreen.dagger.SideScreenBaseComponent
    public SideScreenSharedPreferencesModel sideScreenSharedPreferencesModel() {
        return this.providesSharedPreferencesModelProvider.get();
    }

    @Override // com.evie.sidescreen.dagger.SideScreenBaseComponent
    public SideScreenSubcomponent.Builder sideScreenSubcomponentBuilder() {
        return new SideScreenSubcomponentBuilder();
    }

    @Override // com.evie.sidescreen.dagger.SideScreenBaseComponent
    public SideScreenActivitySubcomponent.Builder activitySubcomponentBuilder() {
        return new SideScreenActivitySubcomponentBuilder();
    }

    public static final class Builder {
        private ActivationModule activationModule;
        private AnnouncementModule announcementModule;
        private BackgroundModule backgroundModule;
        private ConnectivityModule connectivityModule;
        private ContextModule contextModule;
        private DisposeModule disposeModule;
        private ExoPlayerModule exoPlayerModule;
        private LayerStackModule layerStackModule;
        private LifecycleCallbacksModule lifecycleCallbacksModule;
        private LocationModule locationModule;
        private NetworkStatusModule networkStatusModule;
        private SettingsModule settingsModule;
        private SideScreenContentModule sideScreenContentModule;
        private SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext;
        private TileSettingsModule tileSettingsModule;
        private TopicsModule topicsModule;
        private WeatherModule weatherModule;

        private Builder() {
        }

        public Builder contextModule(ContextModule contextModule) {
            this.contextModule = (ContextModule) Preconditions.checkNotNull(contextModule);
            return this;
        }

        public Builder networkStatusModule(NetworkStatusModule networkStatusModule) {
            this.networkStatusModule = (NetworkStatusModule) Preconditions.checkNotNull(networkStatusModule);
            return this;
        }

        public Builder lifecycleCallbacksModule(LifecycleCallbacksModule lifecycleCallbacksModule) {
            this.lifecycleCallbacksModule = (LifecycleCallbacksModule) Preconditions.checkNotNull(lifecycleCallbacksModule);
            return this;
        }

        public Builder settingsModule(SettingsModule settingsModule) {
            this.settingsModule = (SettingsModule) Preconditions.checkNotNull(settingsModule);
            return this;
        }

        public Builder sideScreenSharedDependenciesExcludingContext(SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext) {
            this.sideScreenSharedDependenciesExcludingContext = (SideScreenSharedDependenciesExcludingContext) Preconditions.checkNotNull(sideScreenSharedDependenciesExcludingContext);
            return this;
        }

        public SideScreenBaseComponent build() {
            if (this.sideScreenContentModule == null) {
                this.sideScreenContentModule = new SideScreenContentModule();
            }
            Preconditions.checkBuilderRequirement(this.contextModule, ContextModule.class);
            if (this.locationModule == null) {
                this.locationModule = new LocationModule();
            }
            if (this.disposeModule == null) {
                this.disposeModule = new DisposeModule();
            }
            if (this.backgroundModule == null) {
                this.backgroundModule = new BackgroundModule();
            }
            Preconditions.checkBuilderRequirement(this.settingsModule, SettingsModule.class);
            Preconditions.checkBuilderRequirement(this.lifecycleCallbacksModule, LifecycleCallbacksModule.class);
            if (this.activationModule == null) {
                this.activationModule = new ActivationModule();
            }
            if (this.layerStackModule == null) {
                this.layerStackModule = new LayerStackModule();
            }
            Preconditions.checkBuilderRequirement(this.networkStatusModule, NetworkStatusModule.class);
            if (this.connectivityModule == null) {
                this.connectivityModule = new ConnectivityModule();
            }
            if (this.exoPlayerModule == null) {
                this.exoPlayerModule = new ExoPlayerModule();
            }
            if (this.tileSettingsModule == null) {
                this.tileSettingsModule = new TileSettingsModule();
            }
            if (this.weatherModule == null) {
                this.weatherModule = new WeatherModule();
            }
            if (this.announcementModule == null) {
                this.announcementModule = new AnnouncementModule();
            }
            if (this.topicsModule == null) {
                this.topicsModule = new TopicsModule();
            }
            Preconditions.checkBuilderRequirement(this.sideScreenSharedDependenciesExcludingContext, SideScreenSharedDependenciesExcludingContext.class);
            return new DaggerSideScreenBaseComponent(this.sideScreenContentModule, this.contextModule, this.locationModule, this.disposeModule, this.backgroundModule, this.settingsModule, this.lifecycleCallbacksModule, this.activationModule, this.layerStackModule, this.networkStatusModule, this.connectivityModule, this.exoPlayerModule, this.tileSettingsModule, this.weatherModule, this.announcementModule, this.topicsModule, this.sideScreenSharedDependenciesExcludingContext);
        }
    }

    /* JADX INFO: renamed from: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_okHttpClient */
    private static class C0490x6a9138f8 implements Provider<OkHttpClient> {
        private final SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext;

        C0490x6a9138f8(SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext) {
            this.sideScreenSharedDependenciesExcludingContext = sideScreenSharedDependenciesExcludingContext;
        }

        @Override // javax.inject.Provider
        public OkHttpClient get() {
            return (OkHttpClient) Preconditions.checkNotNull(this.sideScreenSharedDependenciesExcludingContext.okHttpClient(), "Cannot return null from a non-@Nullable component method");
        }
    }

    /* JADX INFO: renamed from: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_retrofit */
    private static class C0492x30d6b8bc implements Provider<Retrofit> {
        private final SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext;

        C0492x30d6b8bc(SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext) {
            this.sideScreenSharedDependenciesExcludingContext = sideScreenSharedDependenciesExcludingContext;
        }

        @Override // javax.inject.Provider
        public Retrofit get() {
            return (Retrofit) Preconditions.checkNotNull(this.sideScreenSharedDependenciesExcludingContext.retrofit(), "Cannot return null from a non-@Nullable component method");
        }
    }

    /* JADX INFO: renamed from: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_appVersionCode */
    private static class C0486xd8f3234d implements Provider<Integer> {
        private final SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext;

        C0486xd8f3234d(SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext) {
            this.sideScreenSharedDependenciesExcludingContext = sideScreenSharedDependenciesExcludingContext;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // javax.inject.Provider
        public Integer get() {
            return (Integer) Preconditions.checkNotNull(this.sideScreenSharedDependenciesExcludingContext.appVersionCode(), "Cannot return null from a non-@Nullable component method");
        }
    }

    /* JADX INFO: renamed from: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_analyticsHandler */
    private static class C0485xaff113ed implements Provider<AnalyticsHandler> {
        private final SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext;

        C0485xaff113ed(SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext) {
            this.sideScreenSharedDependenciesExcludingContext = sideScreenSharedDependenciesExcludingContext;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // javax.inject.Provider
        public AnalyticsHandler get() {
            return (AnalyticsHandler) Preconditions.checkNotNull(this.sideScreenSharedDependenciesExcludingContext.analyticsHandler(), "Cannot return null from a non-@Nullable component method");
        }
    }

    /* JADX INFO: renamed from: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_gson */
    private static class C0489xd448b854 implements Provider<Gson> {
        private final SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext;

        C0489xd448b854(SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext) {
            this.sideScreenSharedDependenciesExcludingContext = sideScreenSharedDependenciesExcludingContext;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // javax.inject.Provider
        public Gson get() {
            return (Gson) Preconditions.checkNotNull(this.sideScreenSharedDependenciesExcludingContext.gson(), "Cannot return null from a non-@Nullable component method");
        }
    }

    /* JADX INFO: renamed from: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_frequentlyUsedModel */
    private static class C0488xba748328 implements Provider<FrequentlyUsedModel> {
        private final SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext;

        C0488xba748328(SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext) {
            this.sideScreenSharedDependenciesExcludingContext = sideScreenSharedDependenciesExcludingContext;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // javax.inject.Provider
        public FrequentlyUsedModel get() {
            return (FrequentlyUsedModel) Preconditions.checkNotNull(this.sideScreenSharedDependenciesExcludingContext.frequentlyUsedModel(), "Cannot return null from a non-@Nullable component method");
        }
    }

    /* JADX INFO: renamed from: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_exoplayerCache */
    private static class C0487x5ffde6ce implements Provider<Cache> {
        private final SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext;

        C0487x5ffde6ce(SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext) {
            this.sideScreenSharedDependenciesExcludingContext = sideScreenSharedDependenciesExcludingContext;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // javax.inject.Provider
        public Cache get() {
            return (Cache) Preconditions.checkNotNull(this.sideScreenSharedDependenciesExcludingContext.exoplayerCache(), "Cannot return null from a non-@Nullable component method");
        }
    }

    /* JADX INFO: renamed from: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_tileSettings */
    private static class C0493xbbb4747a implements Provider<TileSettings> {
        private final SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext;

        C0493xbbb4747a(SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext) {
            this.sideScreenSharedDependenciesExcludingContext = sideScreenSharedDependenciesExcludingContext;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // javax.inject.Provider
        public TileSettings get() {
            return (TileSettings) Preconditions.checkNotNull(this.sideScreenSharedDependenciesExcludingContext.tileSettings(), "Cannot return null from a non-@Nullable component method");
        }
    }

    /* JADX INFO: renamed from: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_playerBuilderRequestor */
    private static class C0491xf0e69ca1 implements Provider<PlayerBuilderRequestor> {
        private final SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext;

        C0491xf0e69ca1(SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext) {
            this.sideScreenSharedDependenciesExcludingContext = sideScreenSharedDependenciesExcludingContext;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // javax.inject.Provider
        public PlayerBuilderRequestor get() {
            return (PlayerBuilderRequestor) Preconditions.checkNotNull(this.sideScreenSharedDependenciesExcludingContext.playerBuilderRequestor(), "Cannot return null from a non-@Nullable component method");
        }
    }

    /* JADX INFO: renamed from: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_adUnitPools */
    private static class C0484xd939db27 implements Provider<Map<String, AdUnitPool>> {
        private final SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext;

        C0484xd939db27(SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext) {
            this.sideScreenSharedDependenciesExcludingContext = sideScreenSharedDependenciesExcludingContext;
        }

        @Override // javax.inject.Provider
        public Map<String, AdUnitPool> get() {
            return (Map) Preconditions.checkNotNull(this.sideScreenSharedDependenciesExcludingContext.adUnitPools(), "Cannot return null from a non-@Nullable component method");
        }
    }

    /* JADX INFO: renamed from: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_adTilePresenterFactories */
    private static class C0483x994c76ba implements Provider<Map<String, AdTilePresenterFactory>> {
        private final SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext;

        C0483x994c76ba(SideScreenSharedDependenciesExcludingContext sideScreenSharedDependenciesExcludingContext) {
            this.sideScreenSharedDependenciesExcludingContext = sideScreenSharedDependenciesExcludingContext;
        }

        @Override // javax.inject.Provider
        public Map<String, AdTilePresenterFactory> get() {
            return (Map) Preconditions.checkNotNull(this.sideScreenSharedDependenciesExcludingContext.adTilePresenterFactories(), "Cannot return null from a non-@Nullable component method");
        }
    }

    private final class SideScreenSubcomponentBuilder implements SideScreenSubcomponent.Builder {
        private Activity activity;
        private SideScreenDependenciesModule sideScreenDependenciesModule;
        private SideScreenModule sideScreenModule;

        private SideScreenSubcomponentBuilder() {
        }

        @Override // com.evie.sidescreen.dagger.SideScreenSubcomponent.Builder
        public SideScreenSubcomponentBuilder activity(Activity activity) {
            this.activity = activity;
            return this;
        }

        @Override // com.evie.sidescreen.dagger.SideScreenSubcomponent.Builder
        public SideScreenSubcomponentBuilder sideScreenDependenciesModule(SideScreenDependenciesModule sideScreenDependenciesModule) {
            this.sideScreenDependenciesModule = (SideScreenDependenciesModule) Preconditions.checkNotNull(sideScreenDependenciesModule);
            return this;
        }

        @Override // com.evie.sidescreen.dagger.SideScreenSubcomponent.Builder
        public SideScreenSubcomponent build() {
            Preconditions.checkBuilderRequirement(this.sideScreenDependenciesModule, SideScreenDependenciesModule.class);
            if (this.sideScreenModule == null) {
                this.sideScreenModule = new SideScreenModule();
            }
            return new SideScreenSubcomponentImpl(this.sideScreenDependenciesModule, this.sideScreenModule, this.activity);
        }
    }

    private final class SideScreenSubcomponentImpl implements SideScreenSubcomponent {
        private Provider<Activity> activityProvider;
        private Provider<ActivityStarter> activityStarterProvider;
        private Provider<AdMediationItemPresenterFactory> adMediationItemPresenterFactoryProvider;
        private Provider<AnnouncementSection> announcementSectionProvider;
        private Provider<ArticlePopupMenuHelper> articlePopupMenuHelperProvider;
        private Provider<ArticleSeedPresenterFactory> articleSeedPresenterFactoryProvider;
        private Provider<ArticleTileHeroCaptionPresenterFactory> articleTileHeroCaptionPresenterFactoryProvider;
        private Provider<ArticleTileHeroImagePresenterFactory> articleTileHeroImagePresenterFactoryProvider;
        private Provider<ArticleTileHeroOathPresenterFactory> articleTileHeroOathPresenterFactoryProvider;
        private Provider<ArticleTileHeroVideoPresenterFactory> articleTileHeroVideoPresenterFactoryProvider;
        private Provider<ArticleTileHeroYouTubePreviewPresenterFactory> articleTileHeroYouTubePreviewPresenterFactoryProvider;
        private Provider<ArticleTilePresenterFactory> articleTilePresenterFactoryProvider;
        private Provider<ArticleTileRowPresenterFactory> articleTileRowPresenterFactoryProvider;
        private Provider<BreakingNewsSection> breakingNewsSectionProvider;
        private Provider<DataWarningCardPresenter> dataWarningCardPresenterProvider;
        private Provider<ExoPlayerObservable> exoPlayerObservableProvider;
        private Provider<FollowButtonHandlerFactory> followButtonHandlerFactoryProvider;
        private Provider<IFollowButtonHandlerFactory> followButtonHandlerFactoryProvider2;
        private Provider<FollowButtonOnboardingHandlerFactory> followButtonOnboardingHandlerFactoryProvider;
        private Provider<FooterPresenter> footerPresenterProvider;
        private Provider<FrequentlyUsedPresenter> frequentlyUsedPresenterProvider;
        private Provider<HeroAdMediationItemPresenterFactory> heroAdMediationItemPresenterFactoryProvider;
        private Provider<LifecycleAwareMvpRecyclerAdapter> lifecycleAwareMvpRecyclerAdapterProvider;
        private Provider<NonAdTilePresenterFactory> nonAdTilePresenterFactoryProvider;
        private Provider<OathPlayerObservable> oathPlayerObservableProvider;
        private Provider<PersonalizeTileHeaderPresenterFactory> personalizeTileHeaderPresenterFactoryProvider;
        private Provider<PlaylistItemPresenterFactory> playlistItemPresenterFactoryProvider;
        private Provider<PopupImageViewerPresenterFactory> popupImageViewerPresenterFactoryProvider;
        private Provider<PopupVideoViewerPresenterFactory> popupVideoViewerPresenterFactoryProvider;
        private Provider<AbTestConfiguration> providesAbTestConfigurationProvider;
        private Provider<AnnouncementModel> providesAnnouncementModelProvider;
        private Provider<List<ItemPresenter>> providesCustomMainTabPresentersProvider;
        private Provider<SideScreenDependencies.PopupListener> providesImagePopupListenerProvider;
        private Provider<LauncherInfo> providesLauncherInfoProvider;
        private Provider<SharedPreferences> providesPersonalizationSharedPreferencesProvider;
        private Provider<PopupViewProvider> providesPopupViewProvider;
        private Provider<PromptStoreModel> providesPromptStoreProvider;
        private Provider<SideScreenDependencies.ActivityOverrides> providesSearchBarOverridesProvider;
        private Provider<TopicPersonalizationStore> providesTopicPersonalizationStoreProvider;
        private Provider<TopicsModel> providesTopicsModelProvider;
        private Provider<List<ItemPresenter>> providesUnactivatedTilesSectionOverrideProvider;
        private Provider<RecommendedPresenterFactory> recommendedPresenterFactoryProvider;
        private Provider<RelatedArticlePresenterFactory> relatedArticlePresenterFactoryProvider;
        private Provider<RowAdMediationItemPresenterFactory> rowAdMediationItemPresenterFactoryProvider;
        private Provider<SearchBarPresenterFactory> searchBarPresenterFactoryProvider;
        private Provider<SideScreenConfiguration> sideScreenConfigurationProvider;
        private Provider<SideScreenContentTabModelFactory> sideScreenContentTabModelFactoryProvider;
        private Provider<SideScreenGenericTabSectionModelFactory> sideScreenGenericTabSectionModelFactoryProvider;
        private Provider<SideScreenMainTabSectionModelFactory> sideScreenMainTabSectionModelFactoryProvider;
        private Provider<SideScreenPresenter> sideScreenPresenterProvider;
        private Provider<SideScreenSubcomponent> sideScreenSubcomponentProvider;
        private Provider<SideScreenView> sideScreenViewProvider;
        private Provider<TabsModelFactory> tabsModelFactoryProvider;
        private Provider<TilesLoadingPresenter> tilesLoadingPresenterProvider;
        private Provider<TilesSectionFactory> tilesSectionFactoryProvider;
        private Provider<TopLevelTilePresenterFactory> topLevelTilePresenterFactoryProvider;
        private Provider<TopicItemPresenterFactory> topicItemPresenterFactoryProvider;
        private Provider<VideoFocusHandler> videoFocusHandlerProvider;
        private Provider<VideoSeedPresenterFactory> videoSeedPresenterFactoryProvider;
        private Provider<WeatherPresenter> weatherPresenterProvider;
        private Provider<YelpMultipleBusinessPresenterFactory> yelpMultipleBusinessPresenterFactoryProvider;
        private Provider<YelpPresenterFactory> yelpPresenterFactoryProvider;
        private Provider<YelpSingleBusinessHeroPresenterFactory> yelpSingleBusinessHeroPresenterFactoryProvider;
        private Provider<YelpSingleBusinessPresenterFactory> yelpSingleBusinessPresenterFactoryProvider;

        private SideScreenSubcomponentImpl(SideScreenDependenciesModule sideScreenDependenciesModule, SideScreenModule sideScreenModule, Activity activity) {
            initialize(sideScreenDependenciesModule, sideScreenModule, activity);
        }

        private void initialize(SideScreenDependenciesModule sideScreenDependenciesModule, SideScreenModule sideScreenModule, Activity activity) {
            this.activityProvider = InstanceFactory.createNullable(activity);
            this.activityStarterProvider = SingleCheck.provider(ActivityStarter_Factory.create(DaggerSideScreenBaseComponent.this.providesContextProvider, this.activityProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider));
            this.providesPromptStoreProvider = SingleCheck.provider(SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory.create(DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.gsonProvider));
            this.providesAbTestConfigurationProvider = SideScreenDependenciesModule_ProvidesAbTestConfigurationFactory.create(sideScreenDependenciesModule);
            this.providesAnnouncementModelProvider = SingleCheck.provider(AnnouncementModule_ProvidesAnnouncementModelFactory.create(DaggerSideScreenBaseComponent.this.announcementModule, DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.retrofitProvider, DaggerSideScreenBaseComponent.this.analyticsHandlerProvider, this.providesPromptStoreProvider, DaggerSideScreenBaseComponent.this.appVersionCodeProvider, this.providesAbTestConfigurationProvider));
            this.providesPersonalizationSharedPreferencesProvider = SingleCheck.provider(TopicsModule_ProvidesPersonalizationSharedPreferencesFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, DaggerSideScreenBaseComponent.this.providesContextProvider));
            this.providesTopicPersonalizationStoreProvider = SingleCheck.provider(TopicsModule_ProvidesTopicPersonalizationStoreFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, this.providesPersonalizationSharedPreferencesProvider, DaggerSideScreenBaseComponent.this.gsonProvider));
            this.providesTopicsModelProvider = SingleCheck.provider(TopicsModule_ProvidesTopicsModelFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, DaggerSideScreenBaseComponent.this.retrofitProvider, DaggerSideScreenBaseComponent.this.analyticsHandlerProvider, this.providesAbTestConfigurationProvider, this.providesTopicPersonalizationStoreProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider));
            this.sideScreenConfigurationProvider = SingleCheck.provider(SideScreenConfiguration_Factory.create(DaggerSideScreenBaseComponent.this.configSharedPreferencesProvider, DaggerSideScreenBaseComponent.this.gsonProvider));
            this.sideScreenSubcomponentProvider = InstanceFactory.create(this);
            this.providesCustomMainTabPresentersProvider = C0497x3015924d.create(sideScreenDependenciesModule, this.sideScreenSubcomponentProvider);
            this.providesSearchBarOverridesProvider = SideScreenDependenciesModule_ProvidesSearchBarOverridesFactory.create(sideScreenDependenciesModule);
            this.frequentlyUsedPresenterProvider = FrequentlyUsedPresenter_Factory.create(DaggerSideScreenBaseComponent.this.providesContextProvider, this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesActivationModelProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider, DaggerSideScreenBaseComponent.this.frequentlyUsedModelProvider, DaggerSideScreenBaseComponent.this.analyticsHandlerProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.providesSearchBarOverridesProvider, this.providesAbTestConfigurationProvider);
            this.dataWarningCardPresenterProvider = DataWarningCardPresenter_Factory.create(DaggerSideScreenBaseComponent.this.providesSharedPreferencesModelProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider, DaggerSideScreenBaseComponent.this.providesActivationModelProvider, DaggerSideScreenBaseComponent.this.providesNetworkStatusModelProvider);
            this.articlePopupMenuHelperProvider = ArticlePopupMenuHelper_Factory.create(this.providesTopicsModelProvider, DaggerSideScreenBaseComponent.this.providesSideScreenRelatedContentModelProvider, this.providesTopicPersonalizationStoreProvider, this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            this.sideScreenViewProvider = new DelegateFactory();
            this.providesPopupViewProvider = SingleCheck.provider(SideScreenModule_ProvidesPopupViewFactory.create(sideScreenModule, this.sideScreenViewProvider));
            this.topLevelTilePresenterFactoryProvider = new DelegateFactory();
            this.providesImagePopupListenerProvider = SideScreenDependenciesModule_ProvidesImagePopupListenerFactory.create(sideScreenDependenciesModule);
            this.popupImageViewerPresenterFactoryProvider = PopupImageViewerPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesLayerStackProvider, this.providesPopupViewProvider, this.topLevelTilePresenterFactoryProvider, this.activityStarterProvider, this.providesImagePopupListenerProvider);
            this.articleTileHeroCaptionPresenterFactoryProvider = ArticleTileHeroCaptionPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
            this.exoPlayerObservableProvider = ExoPlayerObservable_Factory.create(DaggerSideScreenBaseComponent.this.providesSimpleExoPlayerProvider, DaggerSideScreenBaseComponent.this.providesDataSourceFactoryProvider, DaggerSideScreenBaseComponent.this.providesExtractorsFactoryProvider);
            this.videoFocusHandlerProvider = DoubleCheck.provider(VideoFocusHandler_Factory.create());
            this.popupVideoViewerPresenterFactoryProvider = PopupVideoViewerPresenterFactory_Factory.create(this.exoPlayerObservableProvider, DaggerSideScreenBaseComponent.this.providesLayerStackProvider, this.providesPopupViewProvider, this.topLevelTilePresenterFactoryProvider, this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider, this.videoFocusHandlerProvider, this.providesImagePopupListenerProvider);
            this.articleTileHeroVideoPresenterFactoryProvider = ArticleTileHeroVideoPresenterFactory_Factory.create(this.activityStarterProvider, this.exoPlayerObservableProvider, this.videoFocusHandlerProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider, this.popupVideoViewerPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.provideAutoplayVideoSettingProvider);
            this.articleTileHeroYouTubePreviewPresenterFactoryProvider = ArticleTileHeroYouTubePreviewPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            this.oathPlayerObservableProvider = OathPlayerObservable_Factory.create(DaggerSideScreenBaseComponent.this.playerBuilderRequestorProvider);
            this.articleTileHeroOathPresenterFactoryProvider = ArticleTileHeroOathPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.oathPlayerObservableProvider, this.videoFocusHandlerProvider, DaggerSideScreenBaseComponent.this.provideAutoplayVideoSettingProvider);
            this.articleTileRowPresenterFactoryProvider = ArticleTileRowPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
            this.articleTileHeroImagePresenterFactoryProvider = ArticleTileHeroImagePresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.popupImageViewerPresenterFactoryProvider);
            this.articleTilePresenterFactoryProvider = ArticleTilePresenterFactory_Factory.create(this.articleTileHeroCaptionPresenterFactoryProvider, this.articleTileHeroVideoPresenterFactoryProvider, this.articleTileHeroYouTubePreviewPresenterFactoryProvider, this.articleTileHeroOathPresenterFactoryProvider, this.articleTileRowPresenterFactoryProvider, this.articleTileHeroImagePresenterFactoryProvider);
            this.followButtonHandlerFactoryProvider = FollowButtonHandlerFactory_Factory.create(this.providesTopicsModelProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            this.followButtonOnboardingHandlerFactoryProvider = FollowButtonOnboardingHandlerFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesSharedPreferencesModelProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            this.followButtonHandlerFactoryProvider2 = SingleCheck.provider(FactoryModule_FollowButtonHandlerFactoryFactory.create(DaggerSideScreenBaseComponent.this.providesPersonalizeOnboardingModeProvider, this.followButtonHandlerFactoryProvider, this.followButtonOnboardingHandlerFactoryProvider));
            this.topicItemPresenterFactoryProvider = TopicItemPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesPersonalizeOnboardingModeProvider, this.activityStarterProvider, this.followButtonHandlerFactoryProvider2, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            this.recommendedPresenterFactoryProvider = RecommendedPresenterFactory_Factory.create(this.providesTopicsModelProvider, this.topicItemPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            this.playlistItemPresenterFactoryProvider = PlaylistItemPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            this.relatedArticlePresenterFactoryProvider = RelatedArticlePresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
            this.articleSeedPresenterFactoryProvider = ArticleSeedPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
            this.videoSeedPresenterFactoryProvider = VideoSeedPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
            this.yelpSingleBusinessPresenterFactoryProvider = YelpSingleBusinessPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider);
            this.yelpMultipleBusinessPresenterFactoryProvider = YelpMultipleBusinessPresenterFactory_Factory.create(this.yelpSingleBusinessPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.activityStarterProvider);
            this.yelpSingleBusinessHeroPresenterFactoryProvider = YelpSingleBusinessHeroPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider);
            this.yelpPresenterFactoryProvider = YelpPresenterFactory_Factory.create(this.yelpMultipleBusinessPresenterFactoryProvider, this.yelpSingleBusinessHeroPresenterFactoryProvider);
            this.nonAdTilePresenterFactoryProvider = NonAdTilePresenterFactory_Factory.create(this.articleTilePresenterFactoryProvider, this.recommendedPresenterFactoryProvider, this.playlistItemPresenterFactoryProvider, this.relatedArticlePresenterFactoryProvider, this.articleSeedPresenterFactoryProvider, this.videoSeedPresenterFactoryProvider, this.yelpPresenterFactoryProvider);
            this.heroAdMediationItemPresenterFactoryProvider = HeroAdMediationItemPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.adUnitPoolsProvider, DaggerSideScreenBaseComponent.this.adTilePresenterFactoriesProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            this.rowAdMediationItemPresenterFactoryProvider = RowAdMediationItemPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.adUnitPoolsProvider, DaggerSideScreenBaseComponent.this.adTilePresenterFactoriesProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            this.adMediationItemPresenterFactoryProvider = AdMediationItemPresenterFactory_Factory.create(this.heroAdMediationItemPresenterFactoryProvider, this.rowAdMediationItemPresenterFactoryProvider);
            DelegateFactory.setDelegate(this.topLevelTilePresenterFactoryProvider, TopLevelTilePresenterFactory_Factory.create(this.nonAdTilePresenterFactoryProvider, this.adMediationItemPresenterFactoryProvider));
            this.tilesLoadingPresenterProvider = TilesLoadingPresenter_Factory.create(DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider);
            this.providesUnactivatedTilesSectionOverrideProvider = C0498x4c85fa1f.create(sideScreenDependenciesModule);
            this.tilesSectionFactoryProvider = TilesSectionFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.providesActivationModelProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider, DaggerSideScreenBaseComponent.this.providesConnectivityModelProvider, this.topLevelTilePresenterFactoryProvider, this.tilesLoadingPresenterProvider, DaggerSideScreenBaseComponent.this.providesTilesSectionRefreshTimeLimitProvider, this.providesUnactivatedTilesSectionOverrideProvider, DaggerSideScreenBaseComponent.this.providesCompositeDisposableProvider);
            this.footerPresenterProvider = FooterPresenter_Factory.create(DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            this.announcementSectionProvider = AnnouncementSection_Factory.create(DaggerSideScreenBaseComponent.this.providesActivationModelProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider, this.providesPromptStoreProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            this.breakingNewsSectionProvider = BreakingNewsSection_Factory.create(DaggerSideScreenBaseComponent.this.providesActivationModelProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider, this.providesPromptStoreProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.activityStarterProvider);
            this.personalizeTileHeaderPresenterFactoryProvider = PersonalizeTileHeaderPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesSharedPreferencesModelProvider, this.sideScreenConfigurationProvider);
            this.sideScreenMainTabSectionModelFactoryProvider = SideScreenMainTabSectionModelFactory_Factory.create(this.providesCustomMainTabPresentersProvider, this.frequentlyUsedPresenterProvider, this.dataWarningCardPresenterProvider, this.tilesSectionFactoryProvider, this.footerPresenterProvider, this.announcementSectionProvider, this.breakingNewsSectionProvider, DaggerSideScreenBaseComponent.this.providesTopHeaderEnabledProvider, DaggerSideScreenBaseComponent.this.providesDataUsageDebugEnabledProvider, DaggerSideScreenBaseComponent.this.providesFrequentlyUsedEnabledProvider, this.personalizeTileHeaderPresenterFactoryProvider);
            this.sideScreenGenericTabSectionModelFactoryProvider = SideScreenGenericTabSectionModelFactory_Factory.create(this.dataWarningCardPresenterProvider, this.tilesSectionFactoryProvider, DaggerSideScreenBaseComponent.this.providesDataUsageDebugEnabledProvider, this.footerPresenterProvider, PlainTilesHeaderPresenterFactory_Factory.create());
            this.sideScreenContentTabModelFactoryProvider = SideScreenContentTabModelFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.providesSideScreenContentAPIProvider, DaggerSideScreenBaseComponent.this.providesSidescreenApiVersionCodeProvider, this.providesAbTestConfigurationProvider, DaggerSideScreenBaseComponent.this.analyticsHandlerProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider, DaggerSideScreenBaseComponent.this.appVersionCodeProvider);
            this.tabsModelFactoryProvider = TabsModelFactory_Factory.create(DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.sideScreenConfigurationModelProvider, this.sideScreenMainTabSectionModelFactoryProvider, this.sideScreenGenericTabSectionModelFactoryProvider, this.sideScreenContentTabModelFactoryProvider);
            this.sideScreenPresenterProvider = DoubleCheck.provider(SideScreenPresenter_Factory.create(DaggerSideScreenBaseComponent.this.providesBackgroundModelProvider, DaggerSideScreenBaseComponent.this.providesAbTestConfigurationModelProvider, DaggerSideScreenBaseComponent.this.providesLayerStackProvider, this.providesAnnouncementModelProvider, DaggerSideScreenBaseComponent.this.providesSharedPreferencesModelProvider, this.providesTopicsModelProvider, DaggerSideScreenBaseComponent.this.providesActivationModelProvider, this.activityStarterProvider, this.sideScreenConfigurationProvider, this.tabsModelFactoryProvider));
            this.weatherPresenterProvider = WeatherPresenter_Factory.create(DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider, DaggerSideScreenBaseComponent.this.providesWeatherModelProvider, DaggerSideScreenBaseComponent.this.providesConvertToCelsiusProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider, DaggerSideScreenBaseComponent.this.providesConnectivityModelProvider, DaggerSideScreenBaseComponent.this.providesActivationModelProvider, this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsHandlerProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            this.providesLauncherInfoProvider = SideScreenDependenciesModule_ProvidesLauncherInfoFactory.create(sideScreenDependenciesModule);
            this.searchBarPresenterFactoryProvider = SearchBarPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesContextProvider, this.activityStarterProvider, this.providesLauncherInfoProvider, this.providesSearchBarOverridesProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            this.lifecycleAwareMvpRecyclerAdapterProvider = LifecycleAwareMvpRecyclerAdapter_Factory.create(DaggerSideScreenBaseComponent.this.providesActivationModelProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider);
            DelegateFactory.setDelegate(this.sideScreenViewProvider, DoubleCheck.provider(SideScreenView_Factory.create(this.sideScreenPresenterProvider, DaggerSideScreenBaseComponent.this.providesContextProvider, this.weatherPresenterProvider, DaggerSideScreenBaseComponent.this.providesIsRtlProvider, DaggerSideScreenBaseComponent.this.providesSearchEnabledSettingProvider, DaggerSideScreenBaseComponent.this.providesFullscreenSettingProvider, WhiteSearchBarBackgroundModelFactory_Factory.create(), this.searchBarPresenterFactoryProvider, this.lifecycleAwareMvpRecyclerAdapterProvider, this.sideScreenConfigurationProvider)));
        }

        @Override // com.evie.sidescreen.dagger.SideScreenSubcomponent
        public CompositeDisposable disposables() {
            return (CompositeDisposable) DaggerSideScreenBaseComponent.this.providesCompositeDisposableProvider.get();
        }

        @Override // com.evie.sidescreen.dagger.SideScreenSubcomponent
        public MemoryWatcher memoryWatcher() {
            return (MemoryWatcher) Preconditions.checkNotNull(DaggerSideScreenBaseComponent.this.sideScreenSharedDependenciesExcludingContext.memoryWatcher(), "Cannot return null from a non-@Nullable component method");
        }

        @Override // com.evie.sidescreen.dagger.SideScreenSubcomponent
        public void inject(SideScreen sideScreen) {
            injectSideScreen(sideScreen);
        }

        private SideScreen injectSideScreen(SideScreen sideScreen) {
            SideScreen_MembersInjector.injectMSideScreenView(sideScreen, this.sideScreenViewProvider.get());
            SideScreen_MembersInjector.injectMSideScreenPresenter(sideScreen, this.sideScreenPresenterProvider.get());
            SideScreen_MembersInjector.injectMActivationModel(sideScreen, (ActivationModel) DaggerSideScreenBaseComponent.this.providesActivationModelProvider.get());
            SideScreen_MembersInjector.injectMLayerStack(sideScreen, (LayerStack) DaggerSideScreenBaseComponent.this.providesLayerStackProvider.get());
            SideScreen_MembersInjector.injectMAbTestConfigurationModel(sideScreen, (AbTestConfigurationModel) DaggerSideScreenBaseComponent.this.providesAbTestConfigurationModelProvider.get());
            SideScreen_MembersInjector.injectMSideScreenConfigurationModel(sideScreen, (SideScreenConfigurationModel) DaggerSideScreenBaseComponent.this.sideScreenConfigurationModelProvider.get());
            return sideScreen;
        }
    }

    private final class SideScreenActivitySubcomponentBuilder implements SideScreenActivitySubcomponent.Builder {
        private Activity activity;
        private PopupViewProvider popupViewProvider;

        private SideScreenActivitySubcomponentBuilder() {
        }

        @Override // com.evie.sidescreen.dagger.SideScreenActivitySubcomponent.Builder
        public SideScreenActivitySubcomponentBuilder activity(Activity activity) {
            this.activity = activity;
            return this;
        }

        @Override // com.evie.sidescreen.dagger.SideScreenActivitySubcomponent.Builder
        public SideScreenActivitySubcomponentBuilder popupViewProvider(PopupViewProvider popupViewProvider) {
            this.popupViewProvider = (PopupViewProvider) Preconditions.checkNotNull(popupViewProvider);
            return this;
        }

        @Override // com.evie.sidescreen.dagger.SideScreenActivitySubcomponent.Builder
        public SideScreenActivitySubcomponent build() {
            Preconditions.checkBuilderRequirement(this.popupViewProvider, PopupViewProvider.class);
            return new SideScreenActivitySubcomponentImpl(this.activity, this.popupViewProvider);
        }
    }

    private final class SideScreenActivitySubcomponentImpl implements SideScreenActivitySubcomponent {
        private Provider<Activity> activityProvider;
        private Provider<ExoPlayerObservable> exoPlayerObservableProvider;
        private Provider<SideScreenInternalAndroidInjectorModule_PersonalizeFragment.PersonalizeFragmentSubcomponent.Builder> personalizeFragmentSubcomponentBuilderProvider;
        private Provider<PopupViewProvider> popupViewProvider2;
        private Provider<AbstractC0499x6483f16f.RelatedArticlesFragmentSubcomponent.Builder> relatedArticlesFragmentSubcomponentBuilderProvider;
        private Provider<AbstractC0500xd45e31aa.RelatedVideosFragmentSubcomponent.Builder> relatedVideosFragmentSubcomponentBuilderProvider;
        private Provider<AbstractC0503xdfec3cae.TopicDetailFragmentSubcomponent.Builder> topicDetailFragmentSubcomponentBuilderProvider;
        private Provider<AbstractC0501x4d755203.TopicsListFragmentSubcomponent.Builder> topicsListFragmentSubcomponentBuilderProvider;
        private Provider<AbstractC0502x199340c0.TopicsOnboardingFragmentSubcomponent.Builder> topicsOnboardingFragmentSubcomponentBuilderProvider;

        private SideScreenActivitySubcomponentImpl(Activity activity, PopupViewProvider popupViewProvider) {
            initialize(activity, popupViewProvider);
        }

        private Map<Class<?>, Provider<AndroidInjector.Factory<?>>> getMapOfClassOfAndProviderOfFactoryOf() {
            return MapBuilder.newMapBuilder(6).put(TopicDetailFragment.class, this.topicDetailFragmentSubcomponentBuilderProvider).put(TopicsListFragment.class, this.topicsListFragmentSubcomponentBuilderProvider).put(TopicsOnboardingFragment.class, this.topicsOnboardingFragmentSubcomponentBuilderProvider).put(PersonalizeFragment.class, this.personalizeFragmentSubcomponentBuilderProvider).put(RelatedArticlesFragment.class, this.relatedArticlesFragmentSubcomponentBuilderProvider).put(RelatedVideosFragment.class, this.relatedVideosFragmentSubcomponentBuilderProvider).build();
        }

        private void initialize(Activity activity, PopupViewProvider popupViewProvider) {
            this.topicDetailFragmentSubcomponentBuilderProvider = new Provider<AbstractC0503xdfec3cae.TopicDetailFragmentSubcomponent.Builder>() { // from class: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent.SideScreenActivitySubcomponentImpl.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // javax.inject.Provider
                public AbstractC0503xdfec3cae.TopicDetailFragmentSubcomponent.Builder get() {
                    return new TopicDetailFragmentSubcomponentBuilder();
                }
            };
            this.topicsListFragmentSubcomponentBuilderProvider = new Provider<AbstractC0501x4d755203.TopicsListFragmentSubcomponent.Builder>() { // from class: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent.SideScreenActivitySubcomponentImpl.2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // javax.inject.Provider
                public AbstractC0501x4d755203.TopicsListFragmentSubcomponent.Builder get() {
                    return new TopicsListFragmentSubcomponentBuilder();
                }
            };
            this.topicsOnboardingFragmentSubcomponentBuilderProvider = new Provider<AbstractC0502x199340c0.TopicsOnboardingFragmentSubcomponent.Builder>() { // from class: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent.SideScreenActivitySubcomponentImpl.3
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // javax.inject.Provider
                public AbstractC0502x199340c0.TopicsOnboardingFragmentSubcomponent.Builder get() {
                    return new TopicsOnboardingFragmentSubcomponentBuilder();
                }
            };
            this.personalizeFragmentSubcomponentBuilderProvider = new Provider<SideScreenInternalAndroidInjectorModule_PersonalizeFragment.PersonalizeFragmentSubcomponent.Builder>() { // from class: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent.SideScreenActivitySubcomponentImpl.4
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // javax.inject.Provider
                public SideScreenInternalAndroidInjectorModule_PersonalizeFragment.PersonalizeFragmentSubcomponent.Builder get() {
                    return new PersonalizeFragmentSubcomponentBuilder();
                }
            };
            this.relatedArticlesFragmentSubcomponentBuilderProvider = new Provider<AbstractC0499x6483f16f.RelatedArticlesFragmentSubcomponent.Builder>() { // from class: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent.SideScreenActivitySubcomponentImpl.5
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // javax.inject.Provider
                public AbstractC0499x6483f16f.RelatedArticlesFragmentSubcomponent.Builder get() {
                    return new RelatedArticlesFragmentSubcomponentBuilder();
                }
            };
            this.relatedVideosFragmentSubcomponentBuilderProvider = new Provider<AbstractC0500xd45e31aa.RelatedVideosFragmentSubcomponent.Builder>() { // from class: com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent.SideScreenActivitySubcomponentImpl.6
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // javax.inject.Provider
                public AbstractC0500xd45e31aa.RelatedVideosFragmentSubcomponent.Builder get() {
                    return new RelatedVideosFragmentSubcomponentBuilder();
                }
            };
            this.exoPlayerObservableProvider = ExoPlayerObservable_Factory.create(DaggerSideScreenBaseComponent.this.providesSimpleExoPlayerProvider, DaggerSideScreenBaseComponent.this.providesDataSourceFactoryProvider, DaggerSideScreenBaseComponent.this.providesExtractorsFactoryProvider);
            this.activityProvider = InstanceFactory.createNullable(activity);
            this.popupViewProvider2 = InstanceFactory.create(popupViewProvider);
        }

        @Override // com.evie.sidescreen.dagger.SideScreenActivitySubcomponent
        public LifecycleCallbacks lifecycleCallbacks() {
            return LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory.proxyProvidesLifecycleCallbacks(DaggerSideScreenBaseComponent.this.lifecycleCallbacksModule);
        }

        @Override // com.evie.sidescreen.dagger.SideScreenActivitySubcomponent
        public LayerStack layerStack() {
            return (LayerStack) DaggerSideScreenBaseComponent.this.providesLayerStackProvider.get();
        }

        @Override // com.evie.sidescreen.dagger.SideScreenActivitySubcomponent
        public DispatchingAndroidInjector<Fragment> supportFragmentInjector() {
            return DispatchingAndroidInjector_Factory.newDispatchingAndroidInjector(getMapOfClassOfAndProviderOfFactoryOf(), Collections.emptyMap());
        }

        @Override // com.evie.sidescreen.dagger.SideScreenActivitySubcomponent
        public ActivationModel activationModel() {
            return (ActivationModel) DaggerSideScreenBaseComponent.this.providesActivationModelProvider.get();
        }

        @Override // com.evie.sidescreen.dagger.SideScreenActivitySubcomponent
        public AnalyticsModel analyticsModel() {
            return (AnalyticsModel) DaggerSideScreenBaseComponent.this.analyticsModelProvider.get();
        }

        @Override // com.evie.sidescreen.dagger.SideScreenActivitySubcomponent
        public CompositeDisposable disposables() {
            return (CompositeDisposable) DaggerSideScreenBaseComponent.this.providesCompositeDisposableProvider.get();
        }

        @Override // com.evie.sidescreen.dagger.SideScreenActivitySubcomponent
        public SideScreenRelatedContentModel sideScreenRelatedContentModel() {
            return (SideScreenRelatedContentModel) DaggerSideScreenBaseComponent.this.providesSideScreenRelatedContentModelProvider.get();
        }

        @Override // com.evie.sidescreen.dagger.SideScreenActivitySubcomponent
        public SideScreenSharedPreferencesModel sideScreenSharedPreferencesModel() {
            return (SideScreenSharedPreferencesModel) DaggerSideScreenBaseComponent.this.providesSharedPreferencesModelProvider.get();
        }

        @Override // com.evie.sidescreen.dagger.SideScreenActivitySubcomponent
        public Provider<ExoPlayerObservable> exoPlayerObservableProvider() {
            return this.exoPlayerObservableProvider;
        }

        private final class TopicDetailFragmentSubcomponentBuilder extends AbstractC0503xdfec3cae.TopicDetailFragmentSubcomponent.Builder {
            private TopicDetailFragment seedInstance;

            private TopicDetailFragmentSubcomponentBuilder() {
            }

            @Override // dagger.android.AndroidInjector.Builder
            public void seedInstance(TopicDetailFragment topicDetailFragment) {
                this.seedInstance = (TopicDetailFragment) Preconditions.checkNotNull(topicDetailFragment);
            }

            @Override // dagger.android.AndroidInjector.Builder
            /* JADX INFO: renamed from: build */
            public AndroidInjector<TopicDetailFragment> build2() {
                Preconditions.checkBuilderRequirement(this.seedInstance, TopicDetailFragment.class);
                return new TopicDetailFragmentSubcomponentImpl(this.seedInstance);
            }
        }

        private final class TopicDetailFragmentSubcomponentImpl implements AbstractC0503xdfec3cae.TopicDetailFragmentSubcomponent {
            private Provider<ActivityStarter> activityStarterProvider;
            private Provider<AdMediationItemPresenterFactory> adMediationItemPresenterFactoryProvider;
            private Provider<ArticlePopupMenuHelper> articlePopupMenuHelperProvider;
            private Provider<ArticleSeedPresenterFactory> articleSeedPresenterFactoryProvider;
            private Provider<ArticleTileHeroCaptionPresenterFactory> articleTileHeroCaptionPresenterFactoryProvider;
            private Provider<ArticleTileHeroImagePresenterFactory> articleTileHeroImagePresenterFactoryProvider;
            private Provider<ArticleTileHeroOathPresenterFactory> articleTileHeroOathPresenterFactoryProvider;
            private Provider<ArticleTileHeroVideoPresenterFactory> articleTileHeroVideoPresenterFactoryProvider;
            private Provider<ArticleTileHeroYouTubePreviewPresenterFactory> articleTileHeroYouTubePreviewPresenterFactoryProvider;
            private Provider<ArticleTilePresenterFactory> articleTilePresenterFactoryProvider;
            private Provider<ArticleTileRowPresenterFactory> articleTileRowPresenterFactoryProvider;
            private Provider<FollowButtonHandlerFactory> followButtonHandlerFactoryProvider;
            private Provider<IFollowButtonHandlerFactory> followButtonHandlerFactoryProvider2;
            private Provider<FollowButtonOnboardingHandlerFactory> followButtonOnboardingHandlerFactoryProvider;
            private Provider<HeroAdMediationItemPresenterFactory> heroAdMediationItemPresenterFactoryProvider;
            private Provider<LifecycleAwareMvpRecyclerAdapter> lifecycleAwareMvpRecyclerAdapterProvider;
            private Provider<NonAdTilePresenterFactory> nonAdTilePresenterFactoryProvider;
            private Provider<OathPlayerObservable> oathPlayerObservableProvider;
            private Provider<PlaylistItemPresenterFactory> playlistItemPresenterFactoryProvider;
            private Provider<PopupImageViewerPresenterFactory> popupImageViewerPresenterFactoryProvider;
            private Provider<PopupVideoViewerPresenterFactory> popupVideoViewerPresenterFactoryProvider;
            private Provider<SharedPreferences> providesPersonalizationSharedPreferencesProvider;
            private Provider<TopicPersonalizationStore> providesTopicPersonalizationStoreProvider;
            private Provider<TopicsModel> providesTopicsModelProvider;
            private Provider<RecommendedPresenterFactory> recommendedPresenterFactoryProvider;
            private Provider<RelatedArticlePresenterFactory> relatedArticlePresenterFactoryProvider;
            private Provider<RowAdMediationItemPresenterFactory> rowAdMediationItemPresenterFactoryProvider;
            private Provider<TopLevelTilePresenterFactory> topLevelTilePresenterFactoryProvider;
            private Provider<TopicDetailFollowPopupMenuHelper> topicDetailFollowPopupMenuHelperProvider;
            private Provider<TopicDetailHeaderPresenterFactory> topicDetailHeaderPresenterFactoryProvider;
            private Provider<TopicItemPresenterFactory> topicItemPresenterFactoryProvider;
            private Provider<VideoFocusHandler> videoFocusHandlerProvider;
            private Provider<VideoSeedPresenterFactory> videoSeedPresenterFactoryProvider;
            private Provider<YelpMultipleBusinessPresenterFactory> yelpMultipleBusinessPresenterFactoryProvider;
            private Provider<YelpPresenterFactory> yelpPresenterFactoryProvider;
            private Provider<YelpSingleBusinessHeroPresenterFactory> yelpSingleBusinessHeroPresenterFactoryProvider;
            private Provider<YelpSingleBusinessPresenterFactory> yelpSingleBusinessPresenterFactoryProvider;

            private TopicDetailFragmentSubcomponentImpl(TopicDetailFragment topicDetailFragment) {
                initialize(topicDetailFragment);
            }

            private TopicDetailPresenterFactory getTopicDetailPresenterFactory() {
                return new TopicDetailPresenterFactory(DaggerSideScreenBaseComponent.this.providesContextProvider, this.providesTopicsModelProvider, this.topicDetailHeaderPresenterFactoryProvider, this.topLevelTilePresenterFactoryProvider);
            }

            private TopicDetailViewHolderFactory getTopicDetailViewHolderFactory() {
                return new TopicDetailViewHolderFactory(this.lifecycleAwareMvpRecyclerAdapterProvider);
            }

            private void initialize(TopicDetailFragment topicDetailFragment) {
                this.providesPersonalizationSharedPreferencesProvider = SingleCheck.provider(TopicsModule_ProvidesPersonalizationSharedPreferencesFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, DaggerSideScreenBaseComponent.this.providesContextProvider));
                this.providesTopicPersonalizationStoreProvider = SingleCheck.provider(TopicsModule_ProvidesTopicPersonalizationStoreFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, this.providesPersonalizationSharedPreferencesProvider, DaggerSideScreenBaseComponent.this.gsonProvider));
                this.providesTopicsModelProvider = SingleCheck.provider(TopicsModule_ProvidesTopicsModelFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, DaggerSideScreenBaseComponent.this.retrofitProvider, DaggerSideScreenBaseComponent.this.analyticsHandlerProvider, DaggerSideScreenBaseComponent.this.abTestConfigurationProvider, this.providesTopicPersonalizationStoreProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider));
                this.followButtonHandlerFactoryProvider = FollowButtonHandlerFactory_Factory.create(this.providesTopicsModelProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.followButtonOnboardingHandlerFactoryProvider = FollowButtonOnboardingHandlerFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesSharedPreferencesModelProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.followButtonHandlerFactoryProvider2 = SingleCheck.provider(FactoryModule_FollowButtonHandlerFactoryFactory.create(DaggerSideScreenBaseComponent.this.providesPersonalizeOnboardingModeProvider, this.followButtonHandlerFactoryProvider, this.followButtonOnboardingHandlerFactoryProvider));
                this.topicDetailFollowPopupMenuHelperProvider = TopicDetailFollowPopupMenuHelper_Factory.create(this.providesTopicsModelProvider, this.providesTopicPersonalizationStoreProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.topicDetailHeaderPresenterFactoryProvider = TopicDetailHeaderPresenterFactory_Factory.create(this.followButtonHandlerFactoryProvider2, this.providesTopicPersonalizationStoreProvider, this.topicDetailFollowPopupMenuHelperProvider);
                this.activityStarterProvider = SingleCheck.provider(ActivityStarter_Factory.create(DaggerSideScreenBaseComponent.this.providesContextProvider, SideScreenActivitySubcomponentImpl.this.activityProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider));
                this.articlePopupMenuHelperProvider = ArticlePopupMenuHelper_Factory.create(this.providesTopicsModelProvider, DaggerSideScreenBaseComponent.this.providesSideScreenRelatedContentModelProvider, this.providesTopicPersonalizationStoreProvider, this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.topLevelTilePresenterFactoryProvider = new DelegateFactory();
                this.popupImageViewerPresenterFactoryProvider = PopupImageViewerPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesLayerStackProvider, SideScreenActivitySubcomponentImpl.this.popupViewProvider2, this.topLevelTilePresenterFactoryProvider, this.activityStarterProvider, EmptyDependenciesModule_PopupListenerFactory.create());
                this.articleTileHeroCaptionPresenterFactoryProvider = ArticleTileHeroCaptionPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
                this.videoFocusHandlerProvider = DoubleCheck.provider(VideoFocusHandler_Factory.create());
                this.popupVideoViewerPresenterFactoryProvider = PopupVideoViewerPresenterFactory_Factory.create(SideScreenActivitySubcomponentImpl.this.exoPlayerObservableProvider, DaggerSideScreenBaseComponent.this.providesLayerStackProvider, SideScreenActivitySubcomponentImpl.this.popupViewProvider2, this.topLevelTilePresenterFactoryProvider, this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider, this.videoFocusHandlerProvider, EmptyDependenciesModule_PopupListenerFactory.create());
                this.articleTileHeroVideoPresenterFactoryProvider = ArticleTileHeroVideoPresenterFactory_Factory.create(this.activityStarterProvider, SideScreenActivitySubcomponentImpl.this.exoPlayerObservableProvider, this.videoFocusHandlerProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider, this.popupVideoViewerPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.provideAutoplayVideoSettingProvider);
                this.articleTileHeroYouTubePreviewPresenterFactoryProvider = ArticleTileHeroYouTubePreviewPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.oathPlayerObservableProvider = OathPlayerObservable_Factory.create(DaggerSideScreenBaseComponent.this.playerBuilderRequestorProvider);
                this.articleTileHeroOathPresenterFactoryProvider = ArticleTileHeroOathPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.oathPlayerObservableProvider, this.videoFocusHandlerProvider, DaggerSideScreenBaseComponent.this.provideAutoplayVideoSettingProvider);
                this.articleTileRowPresenterFactoryProvider = ArticleTileRowPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
                this.articleTileHeroImagePresenterFactoryProvider = ArticleTileHeroImagePresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.popupImageViewerPresenterFactoryProvider);
                this.articleTilePresenterFactoryProvider = ArticleTilePresenterFactory_Factory.create(this.articleTileHeroCaptionPresenterFactoryProvider, this.articleTileHeroVideoPresenterFactoryProvider, this.articleTileHeroYouTubePreviewPresenterFactoryProvider, this.articleTileHeroOathPresenterFactoryProvider, this.articleTileRowPresenterFactoryProvider, this.articleTileHeroImagePresenterFactoryProvider);
                this.topicItemPresenterFactoryProvider = TopicItemPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesPersonalizeOnboardingModeProvider, this.activityStarterProvider, this.followButtonHandlerFactoryProvider2, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.recommendedPresenterFactoryProvider = RecommendedPresenterFactory_Factory.create(this.providesTopicsModelProvider, this.topicItemPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.playlistItemPresenterFactoryProvider = PlaylistItemPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.relatedArticlePresenterFactoryProvider = RelatedArticlePresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
                this.articleSeedPresenterFactoryProvider = ArticleSeedPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
                this.videoSeedPresenterFactoryProvider = VideoSeedPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
                this.yelpSingleBusinessPresenterFactoryProvider = YelpSingleBusinessPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider);
                this.yelpMultipleBusinessPresenterFactoryProvider = YelpMultipleBusinessPresenterFactory_Factory.create(this.yelpSingleBusinessPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.activityStarterProvider);
                this.yelpSingleBusinessHeroPresenterFactoryProvider = YelpSingleBusinessHeroPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider);
                this.yelpPresenterFactoryProvider = YelpPresenterFactory_Factory.create(this.yelpMultipleBusinessPresenterFactoryProvider, this.yelpSingleBusinessHeroPresenterFactoryProvider);
                this.nonAdTilePresenterFactoryProvider = NonAdTilePresenterFactory_Factory.create(this.articleTilePresenterFactoryProvider, this.recommendedPresenterFactoryProvider, this.playlistItemPresenterFactoryProvider, this.relatedArticlePresenterFactoryProvider, this.articleSeedPresenterFactoryProvider, this.videoSeedPresenterFactoryProvider, this.yelpPresenterFactoryProvider);
                this.heroAdMediationItemPresenterFactoryProvider = HeroAdMediationItemPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.adUnitPoolsProvider, DaggerSideScreenBaseComponent.this.adTilePresenterFactoriesProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.rowAdMediationItemPresenterFactoryProvider = RowAdMediationItemPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.adUnitPoolsProvider, DaggerSideScreenBaseComponent.this.adTilePresenterFactoriesProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.adMediationItemPresenterFactoryProvider = AdMediationItemPresenterFactory_Factory.create(this.heroAdMediationItemPresenterFactoryProvider, this.rowAdMediationItemPresenterFactoryProvider);
                DelegateFactory.setDelegate(this.topLevelTilePresenterFactoryProvider, TopLevelTilePresenterFactory_Factory.create(this.nonAdTilePresenterFactoryProvider, this.adMediationItemPresenterFactoryProvider));
                this.lifecycleAwareMvpRecyclerAdapterProvider = LifecycleAwareMvpRecyclerAdapter_Factory.create(DaggerSideScreenBaseComponent.this.providesActivationModelProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider);
            }

            @Override // dagger.android.AndroidInjector
            public void inject(TopicDetailFragment topicDetailFragment) {
                injectTopicDetailFragment(topicDetailFragment);
            }

            private TopicDetailFragment injectTopicDetailFragment(TopicDetailFragment topicDetailFragment) {
                TopicDetailFragment_MembersInjector.injectMTopicDetailPresenterFactory(topicDetailFragment, getTopicDetailPresenterFactory());
                TopicDetailFragment_MembersInjector.injectMTopicDetailViewHolderFactory(topicDetailFragment, getTopicDetailViewHolderFactory());
                return topicDetailFragment;
            }
        }

        private final class TopicsListFragmentSubcomponentBuilder extends AbstractC0501x4d755203.TopicsListFragmentSubcomponent.Builder {
            private TopicsListFragment seedInstance;

            private TopicsListFragmentSubcomponentBuilder() {
            }

            @Override // dagger.android.AndroidInjector.Builder
            public void seedInstance(TopicsListFragment topicsListFragment) {
                this.seedInstance = (TopicsListFragment) Preconditions.checkNotNull(topicsListFragment);
            }

            @Override // dagger.android.AndroidInjector.Builder
            /* JADX INFO: renamed from: build */
            public AndroidInjector<TopicsListFragment> build2() {
                Preconditions.checkBuilderRequirement(this.seedInstance, TopicsListFragment.class);
                return new TopicsListFragmentSubcomponentImpl(this.seedInstance);
            }
        }

        private final class TopicsListFragmentSubcomponentImpl implements AbstractC0501x4d755203.TopicsListFragmentSubcomponent {
            private Provider<ActivityStarter> activityStarterProvider;
            private Provider<FollowButtonHandlerFactory> followButtonHandlerFactoryProvider;
            private Provider<IFollowButtonHandlerFactory> followButtonHandlerFactoryProvider2;
            private Provider<FollowButtonOnboardingHandlerFactory> followButtonOnboardingHandlerFactoryProvider;
            private Provider<SharedPreferences> providesPersonalizationSharedPreferencesProvider;
            private Provider<TopicPersonalizationStore> providesTopicPersonalizationStoreProvider;
            private Provider<TopicsModel> providesTopicsModelProvider;
            private Provider<TopicItemPresenterFactory> topicItemPresenterFactoryProvider;

            private TopicsListFragmentSubcomponentImpl(TopicsListFragment topicsListFragment) {
                initialize(topicsListFragment);
            }

            private TopicsListPresenterFactory getTopicsListPresenterFactory() {
                return new TopicsListPresenterFactory(this.providesTopicsModelProvider, this.topicItemPresenterFactoryProvider);
            }

            private void initialize(TopicsListFragment topicsListFragment) {
                this.providesPersonalizationSharedPreferencesProvider = SingleCheck.provider(TopicsModule_ProvidesPersonalizationSharedPreferencesFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, DaggerSideScreenBaseComponent.this.providesContextProvider));
                this.providesTopicPersonalizationStoreProvider = SingleCheck.provider(TopicsModule_ProvidesTopicPersonalizationStoreFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, this.providesPersonalizationSharedPreferencesProvider, DaggerSideScreenBaseComponent.this.gsonProvider));
                this.providesTopicsModelProvider = SingleCheck.provider(TopicsModule_ProvidesTopicsModelFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, DaggerSideScreenBaseComponent.this.retrofitProvider, DaggerSideScreenBaseComponent.this.analyticsHandlerProvider, DaggerSideScreenBaseComponent.this.abTestConfigurationProvider, this.providesTopicPersonalizationStoreProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider));
                this.activityStarterProvider = SingleCheck.provider(ActivityStarter_Factory.create(DaggerSideScreenBaseComponent.this.providesContextProvider, SideScreenActivitySubcomponentImpl.this.activityProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider));
                this.followButtonHandlerFactoryProvider = FollowButtonHandlerFactory_Factory.create(this.providesTopicsModelProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.followButtonOnboardingHandlerFactoryProvider = FollowButtonOnboardingHandlerFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesSharedPreferencesModelProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.followButtonHandlerFactoryProvider2 = SingleCheck.provider(FactoryModule_FollowButtonHandlerFactoryFactory.create(DaggerSideScreenBaseComponent.this.providesPersonalizeOnboardingModeProvider, this.followButtonHandlerFactoryProvider, this.followButtonOnboardingHandlerFactoryProvider));
                this.topicItemPresenterFactoryProvider = TopicItemPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesPersonalizeOnboardingModeProvider, this.activityStarterProvider, this.followButtonHandlerFactoryProvider2, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            }

            @Override // dagger.android.AndroidInjector
            public void inject(TopicsListFragment topicsListFragment) {
                injectTopicsListFragment(topicsListFragment);
            }

            private TopicsListFragment injectTopicsListFragment(TopicsListFragment topicsListFragment) {
                TopicsListFragment_MembersInjector.injectMTopicsListPresenterFactory(topicsListFragment, getTopicsListPresenterFactory());
                return topicsListFragment;
            }
        }

        private final class TopicsOnboardingFragmentSubcomponentBuilder extends AbstractC0502x199340c0.TopicsOnboardingFragmentSubcomponent.Builder {
            private TopicsOnboardingFragment seedInstance;

            private TopicsOnboardingFragmentSubcomponentBuilder() {
            }

            @Override // dagger.android.AndroidInjector.Builder
            public void seedInstance(TopicsOnboardingFragment topicsOnboardingFragment) {
                this.seedInstance = (TopicsOnboardingFragment) Preconditions.checkNotNull(topicsOnboardingFragment);
            }

            @Override // dagger.android.AndroidInjector.Builder
            /* JADX INFO: renamed from: build */
            public AndroidInjector<TopicsOnboardingFragment> build2() {
                Preconditions.checkBuilderRequirement(this.seedInstance, TopicsOnboardingFragment.class);
                return new TopicsOnboardingFragmentSubcomponentImpl(this.seedInstance);
            }
        }

        private final class TopicsOnboardingFragmentSubcomponentImpl implements AbstractC0502x199340c0.TopicsOnboardingFragmentSubcomponent {
            private Provider<ActivityStarter> activityStarterProvider;
            private Provider<FollowButtonHandlerFactory> followButtonHandlerFactoryProvider;
            private Provider<IFollowButtonHandlerFactory> followButtonHandlerFactoryProvider2;
            private Provider<FollowButtonOnboardingHandlerFactory> followButtonOnboardingHandlerFactoryProvider;
            private Provider<SharedPreferences> providesPersonalizationSharedPreferencesProvider;
            private Provider<TopicPersonalizationStore> providesTopicPersonalizationStoreProvider;
            private Provider<TopicsModel> providesTopicsModelProvider;
            private Provider<TopicItemPresenterFactory> topicItemPresenterFactoryProvider;

            private TopicsOnboardingFragmentSubcomponentImpl(TopicsOnboardingFragment topicsOnboardingFragment) {
                initialize(topicsOnboardingFragment);
            }

            private TopicsOnboardingPresenterFactory getTopicsOnboardingPresenterFactory() {
                return new TopicsOnboardingPresenterFactory(DaggerSideScreenBaseComponent.this.providesSharedPreferencesModelProvider, this.activityStarterProvider, this.providesTopicsModelProvider, this.topicItemPresenterFactoryProvider);
            }

            private TopicsOnboardingBottomBarPresenterFactory getTopicsOnboardingBottomBarPresenterFactory() {
                return new TopicsOnboardingBottomBarPresenterFactory(this.providesTopicsModelProvider, DaggerSideScreenBaseComponent.this.providesSharedPreferencesModelProvider);
            }

            private void initialize(TopicsOnboardingFragment topicsOnboardingFragment) {
                this.activityStarterProvider = SingleCheck.provider(ActivityStarter_Factory.create(DaggerSideScreenBaseComponent.this.providesContextProvider, SideScreenActivitySubcomponentImpl.this.activityProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider));
                this.providesPersonalizationSharedPreferencesProvider = SingleCheck.provider(TopicsModule_ProvidesPersonalizationSharedPreferencesFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, DaggerSideScreenBaseComponent.this.providesContextProvider));
                this.providesTopicPersonalizationStoreProvider = SingleCheck.provider(TopicsModule_ProvidesTopicPersonalizationStoreFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, this.providesPersonalizationSharedPreferencesProvider, DaggerSideScreenBaseComponent.this.gsonProvider));
                this.providesTopicsModelProvider = SingleCheck.provider(TopicsModule_ProvidesTopicsModelFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, DaggerSideScreenBaseComponent.this.retrofitProvider, DaggerSideScreenBaseComponent.this.analyticsHandlerProvider, DaggerSideScreenBaseComponent.this.abTestConfigurationProvider, this.providesTopicPersonalizationStoreProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider));
                this.followButtonHandlerFactoryProvider = FollowButtonHandlerFactory_Factory.create(this.providesTopicsModelProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.followButtonOnboardingHandlerFactoryProvider = FollowButtonOnboardingHandlerFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesSharedPreferencesModelProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.followButtonHandlerFactoryProvider2 = SingleCheck.provider(FactoryModule_FollowButtonHandlerFactoryFactory.create(DaggerSideScreenBaseComponent.this.providesPersonalizeOnboardingModeProvider, this.followButtonHandlerFactoryProvider, this.followButtonOnboardingHandlerFactoryProvider));
                this.topicItemPresenterFactoryProvider = TopicItemPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesPersonalizeOnboardingModeProvider, this.activityStarterProvider, this.followButtonHandlerFactoryProvider2, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            }

            @Override // dagger.android.AndroidInjector
            public void inject(TopicsOnboardingFragment topicsOnboardingFragment) {
                injectTopicsOnboardingFragment(topicsOnboardingFragment);
            }

            private TopicsOnboardingFragment injectTopicsOnboardingFragment(TopicsOnboardingFragment topicsOnboardingFragment) {
                TopicsOnboardingFragment_MembersInjector.injectMTopicsOnboardingPresenterFactory(topicsOnboardingFragment, getTopicsOnboardingPresenterFactory());
                TopicsOnboardingFragment_MembersInjector.injectMTopicsOnboardingBottomBarPresenterFactory(topicsOnboardingFragment, getTopicsOnboardingBottomBarPresenterFactory());
                TopicsOnboardingFragment_MembersInjector.injectMPreferencesModel(topicsOnboardingFragment, (SideScreenSharedPreferencesModel) DaggerSideScreenBaseComponent.this.providesSharedPreferencesModelProvider.get());
                TopicsOnboardingFragment_MembersInjector.injectMActivityStarter(topicsOnboardingFragment, this.activityStarterProvider.get());
                return topicsOnboardingFragment;
            }
        }

        private final class PersonalizeFragmentSubcomponentBuilder extends SideScreenInternalAndroidInjectorModule_PersonalizeFragment.PersonalizeFragmentSubcomponent.Builder {
            private PersonalizeFragment seedInstance;

            private PersonalizeFragmentSubcomponentBuilder() {
            }

            @Override // dagger.android.AndroidInjector.Builder
            public void seedInstance(PersonalizeFragment personalizeFragment) {
                this.seedInstance = (PersonalizeFragment) Preconditions.checkNotNull(personalizeFragment);
            }

            @Override // dagger.android.AndroidInjector.Builder
            /* JADX INFO: renamed from: build, reason: merged with bridge method [inline-methods] */
            public AndroidInjector<PersonalizeFragment> build2() {
                Preconditions.checkBuilderRequirement(this.seedInstance, PersonalizeFragment.class);
                return new PersonalizeFragmentSubcomponentImpl(this.seedInstance);
            }
        }

        private final class PersonalizeFragmentSubcomponentImpl implements SideScreenInternalAndroidInjectorModule_PersonalizeFragment.PersonalizeFragmentSubcomponent {
            private Provider<ActivityStarter> activityStarterProvider;
            private Provider<FollowButtonHandlerFactory> followButtonHandlerFactoryProvider;
            private Provider<IFollowButtonHandlerFactory> followButtonHandlerFactoryProvider2;
            private Provider<FollowButtonOnboardingHandlerFactory> followButtonOnboardingHandlerFactoryProvider;
            private Provider<PersonalizePagePresenterFactory> personalizePagePresenterFactoryProvider;
            private Provider<SharedPreferences> providesPersonalizationSharedPreferencesProvider;
            private Provider<TopicPersonalizationStore> providesTopicPersonalizationStoreProvider;
            private Provider<TopicsModel> providesTopicsModelProvider;
            private Provider<TopicItemPresenterFactory> topicItemPresenterFactoryProvider;

            private PersonalizeFragmentSubcomponentImpl(PersonalizeFragment personalizeFragment) {
                initialize(personalizeFragment);
            }

            private PersonalizePresenterFactory getPersonalizePresenterFactory() {
                return new PersonalizePresenterFactory(this.providesTopicsModelProvider, this.personalizePagePresenterFactoryProvider);
            }

            private void initialize(PersonalizeFragment personalizeFragment) {
                this.providesPersonalizationSharedPreferencesProvider = SingleCheck.provider(TopicsModule_ProvidesPersonalizationSharedPreferencesFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, DaggerSideScreenBaseComponent.this.providesContextProvider));
                this.providesTopicPersonalizationStoreProvider = SingleCheck.provider(TopicsModule_ProvidesTopicPersonalizationStoreFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, this.providesPersonalizationSharedPreferencesProvider, DaggerSideScreenBaseComponent.this.gsonProvider));
                this.providesTopicsModelProvider = SingleCheck.provider(TopicsModule_ProvidesTopicsModelFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, DaggerSideScreenBaseComponent.this.retrofitProvider, DaggerSideScreenBaseComponent.this.analyticsHandlerProvider, DaggerSideScreenBaseComponent.this.abTestConfigurationProvider, this.providesTopicPersonalizationStoreProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider));
                this.activityStarterProvider = SingleCheck.provider(ActivityStarter_Factory.create(DaggerSideScreenBaseComponent.this.providesContextProvider, SideScreenActivitySubcomponentImpl.this.activityProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider));
                this.followButtonHandlerFactoryProvider = FollowButtonHandlerFactory_Factory.create(this.providesTopicsModelProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.followButtonOnboardingHandlerFactoryProvider = FollowButtonOnboardingHandlerFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesSharedPreferencesModelProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.followButtonHandlerFactoryProvider2 = SingleCheck.provider(FactoryModule_FollowButtonHandlerFactoryFactory.create(DaggerSideScreenBaseComponent.this.providesPersonalizeOnboardingModeProvider, this.followButtonHandlerFactoryProvider, this.followButtonOnboardingHandlerFactoryProvider));
                this.topicItemPresenterFactoryProvider = TopicItemPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesPersonalizeOnboardingModeProvider, this.activityStarterProvider, this.followButtonHandlerFactoryProvider2, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.personalizePagePresenterFactoryProvider = PersonalizePagePresenterFactory_Factory.create(this.topicItemPresenterFactoryProvider);
            }

            @Override // dagger.android.AndroidInjector
            public void inject(PersonalizeFragment personalizeFragment) {
                injectPersonalizeFragment(personalizeFragment);
            }

            private PersonalizeFragment injectPersonalizeFragment(PersonalizeFragment personalizeFragment) {
                PersonalizeFragment_MembersInjector.injectMPersonalizePresenterFactory(personalizeFragment, getPersonalizePresenterFactory());
                return personalizeFragment;
            }
        }

        private final class RelatedArticlesFragmentSubcomponentBuilder extends AbstractC0499x6483f16f.RelatedArticlesFragmentSubcomponent.Builder {
            private RelatedArticlesFragment seedInstance;

            private RelatedArticlesFragmentSubcomponentBuilder() {
            }

            @Override // dagger.android.AndroidInjector.Builder
            public void seedInstance(RelatedArticlesFragment relatedArticlesFragment) {
                this.seedInstance = (RelatedArticlesFragment) Preconditions.checkNotNull(relatedArticlesFragment);
            }

            @Override // dagger.android.AndroidInjector.Builder
            /* JADX INFO: renamed from: build */
            public AndroidInjector<RelatedArticlesFragment> build2() {
                Preconditions.checkBuilderRequirement(this.seedInstance, RelatedArticlesFragment.class);
                return new RelatedArticlesFragmentSubcomponentImpl(this.seedInstance);
            }
        }

        private final class RelatedArticlesFragmentSubcomponentImpl implements AbstractC0499x6483f16f.RelatedArticlesFragmentSubcomponent {
            private Provider<ActivityStarter> activityStarterProvider;
            private Provider<AdMediationItemPresenterFactory> adMediationItemPresenterFactoryProvider;
            private Provider<ArticlePopupMenuHelper> articlePopupMenuHelperProvider;
            private Provider<ArticleSeedPresenterFactory> articleSeedPresenterFactoryProvider;
            private Provider<ArticleTileHeroCaptionPresenterFactory> articleTileHeroCaptionPresenterFactoryProvider;
            private Provider<ArticleTileHeroImagePresenterFactory> articleTileHeroImagePresenterFactoryProvider;
            private Provider<ArticleTileHeroOathPresenterFactory> articleTileHeroOathPresenterFactoryProvider;
            private Provider<ArticleTileHeroVideoPresenterFactory> articleTileHeroVideoPresenterFactoryProvider;
            private Provider<ArticleTileHeroYouTubePreviewPresenterFactory> articleTileHeroYouTubePreviewPresenterFactoryProvider;
            private Provider<ArticleTilePresenterFactory> articleTilePresenterFactoryProvider;
            private Provider<ArticleTileRowPresenterFactory> articleTileRowPresenterFactoryProvider;
            private Provider<FollowButtonHandlerFactory> followButtonHandlerFactoryProvider;
            private Provider<IFollowButtonHandlerFactory> followButtonHandlerFactoryProvider2;
            private Provider<FollowButtonOnboardingHandlerFactory> followButtonOnboardingHandlerFactoryProvider;
            private Provider<HeroAdMediationItemPresenterFactory> heroAdMediationItemPresenterFactoryProvider;
            private Provider<NonAdTilePresenterFactory> nonAdTilePresenterFactoryProvider;
            private Provider<OathPlayerObservable> oathPlayerObservableProvider;
            private Provider<PlaylistItemPresenterFactory> playlistItemPresenterFactoryProvider;
            private Provider<PopupImageViewerPresenterFactory> popupImageViewerPresenterFactoryProvider;
            private Provider<PopupVideoViewerPresenterFactory> popupVideoViewerPresenterFactoryProvider;
            private Provider<SharedPreferences> providesPersonalizationSharedPreferencesProvider;
            private Provider<TopicPersonalizationStore> providesTopicPersonalizationStoreProvider;
            private Provider<TopicsModel> providesTopicsModelProvider;
            private Provider<RecommendedPresenterFactory> recommendedPresenterFactoryProvider;
            private Provider<RelatedArticlePresenterFactory> relatedArticlePresenterFactoryProvider;
            private Provider<RowAdMediationItemPresenterFactory> rowAdMediationItemPresenterFactoryProvider;
            private Provider<TopLevelTilePresenterFactory> topLevelTilePresenterFactoryProvider;
            private Provider<TopicItemPresenterFactory> topicItemPresenterFactoryProvider;
            private Provider<VideoFocusHandler> videoFocusHandlerProvider;
            private Provider<VideoSeedPresenterFactory> videoSeedPresenterFactoryProvider;
            private Provider<YelpMultipleBusinessPresenterFactory> yelpMultipleBusinessPresenterFactoryProvider;
            private Provider<YelpPresenterFactory> yelpPresenterFactoryProvider;
            private Provider<YelpSingleBusinessHeroPresenterFactory> yelpSingleBusinessHeroPresenterFactoryProvider;
            private Provider<YelpSingleBusinessPresenterFactory> yelpSingleBusinessPresenterFactoryProvider;

            private RelatedArticlesFragmentSubcomponentImpl(RelatedArticlesFragment relatedArticlesFragment) {
                initialize(relatedArticlesFragment);
            }

            private ArticleTileHeroCaptionPresenterFactory getArticleTileHeroCaptionPresenterFactory() {
                return new ArticleTileHeroCaptionPresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
            }

            private ArticleTileHeroVideoPresenterFactory getArticleTileHeroVideoPresenterFactory() {
                return new ArticleTileHeroVideoPresenterFactory(this.activityStarterProvider, SideScreenActivitySubcomponentImpl.this.exoPlayerObservableProvider, this.videoFocusHandlerProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider, this.popupVideoViewerPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.provideAutoplayVideoSettingProvider);
            }

            private ArticleTileHeroYouTubePreviewPresenterFactory getArticleTileHeroYouTubePreviewPresenterFactory() {
                return new ArticleTileHeroYouTubePreviewPresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            }

            private ArticleTileHeroOathPresenterFactory getArticleTileHeroOathPresenterFactory() {
                return new ArticleTileHeroOathPresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.oathPlayerObservableProvider, this.videoFocusHandlerProvider, DaggerSideScreenBaseComponent.this.provideAutoplayVideoSettingProvider);
            }

            private ArticleTileRowPresenterFactory getArticleTileRowPresenterFactory() {
                return new ArticleTileRowPresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
            }

            private ArticleTileHeroImagePresenterFactory getArticleTileHeroImagePresenterFactory() {
                return new ArticleTileHeroImagePresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.popupImageViewerPresenterFactoryProvider);
            }

            private ArticleTilePresenterFactory getArticleTilePresenterFactory() {
                return new ArticleTilePresenterFactory(getArticleTileHeroCaptionPresenterFactory(), getArticleTileHeroVideoPresenterFactory(), getArticleTileHeroYouTubePreviewPresenterFactory(), getArticleTileHeroOathPresenterFactory(), getArticleTileRowPresenterFactory(), getArticleTileHeroImagePresenterFactory());
            }

            private RecommendedPresenterFactory getRecommendedPresenterFactory() {
                return new RecommendedPresenterFactory(this.providesTopicsModelProvider, this.topicItemPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            }

            private PlaylistItemPresenterFactory getPlaylistItemPresenterFactory() {
                return new PlaylistItemPresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            }

            private RelatedArticlePresenterFactory getRelatedArticlePresenterFactory() {
                return new RelatedArticlePresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
            }

            private ArticleSeedPresenterFactory getArticleSeedPresenterFactory() {
                return new ArticleSeedPresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
            }

            private VideoSeedPresenterFactory getVideoSeedPresenterFactory() {
                return new VideoSeedPresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
            }

            private YelpMultipleBusinessPresenterFactory getYelpMultipleBusinessPresenterFactory() {
                return new YelpMultipleBusinessPresenterFactory(this.yelpSingleBusinessPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.activityStarterProvider);
            }

            private YelpSingleBusinessHeroPresenterFactory getYelpSingleBusinessHeroPresenterFactory() {
                return new YelpSingleBusinessHeroPresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider);
            }

            private YelpPresenterFactory getYelpPresenterFactory() {
                return new YelpPresenterFactory(getYelpMultipleBusinessPresenterFactory(), getYelpSingleBusinessHeroPresenterFactory());
            }

            private NonAdTilePresenterFactory getNonAdTilePresenterFactory() {
                return new NonAdTilePresenterFactory(getArticleTilePresenterFactory(), getRecommendedPresenterFactory(), getPlaylistItemPresenterFactory(), getRelatedArticlePresenterFactory(), getArticleSeedPresenterFactory(), getVideoSeedPresenterFactory(), getYelpPresenterFactory());
            }

            private HeroAdMediationItemPresenterFactory getHeroAdMediationItemPresenterFactory() {
                return new HeroAdMediationItemPresenterFactory(DaggerSideScreenBaseComponent.this.adUnitPoolsProvider, DaggerSideScreenBaseComponent.this.adTilePresenterFactoriesProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            }

            private RowAdMediationItemPresenterFactory getRowAdMediationItemPresenterFactory() {
                return new RowAdMediationItemPresenterFactory(DaggerSideScreenBaseComponent.this.adUnitPoolsProvider, DaggerSideScreenBaseComponent.this.adTilePresenterFactoriesProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            }

            private AdMediationItemPresenterFactory getAdMediationItemPresenterFactory() {
                return new AdMediationItemPresenterFactory(getHeroAdMediationItemPresenterFactory(), getRowAdMediationItemPresenterFactory());
            }

            private TopLevelTilePresenterFactory getTopLevelTilePresenterFactory() {
                return new TopLevelTilePresenterFactory(getNonAdTilePresenterFactory(), getAdMediationItemPresenterFactory());
            }

            private void initialize(RelatedArticlesFragment relatedArticlesFragment) {
                this.activityStarterProvider = SingleCheck.provider(ActivityStarter_Factory.create(DaggerSideScreenBaseComponent.this.providesContextProvider, SideScreenActivitySubcomponentImpl.this.activityProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider));
                this.providesPersonalizationSharedPreferencesProvider = SingleCheck.provider(TopicsModule_ProvidesPersonalizationSharedPreferencesFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, DaggerSideScreenBaseComponent.this.providesContextProvider));
                this.providesTopicPersonalizationStoreProvider = SingleCheck.provider(TopicsModule_ProvidesTopicPersonalizationStoreFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, this.providesPersonalizationSharedPreferencesProvider, DaggerSideScreenBaseComponent.this.gsonProvider));
                this.providesTopicsModelProvider = SingleCheck.provider(TopicsModule_ProvidesTopicsModelFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, DaggerSideScreenBaseComponent.this.retrofitProvider, DaggerSideScreenBaseComponent.this.analyticsHandlerProvider, DaggerSideScreenBaseComponent.this.abTestConfigurationProvider, this.providesTopicPersonalizationStoreProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider));
                this.articlePopupMenuHelperProvider = ArticlePopupMenuHelper_Factory.create(this.providesTopicsModelProvider, DaggerSideScreenBaseComponent.this.providesSideScreenRelatedContentModelProvider, this.providesTopicPersonalizationStoreProvider, this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.popupImageViewerPresenterFactoryProvider = new DelegateFactory();
                this.articleTileHeroCaptionPresenterFactoryProvider = ArticleTileHeroCaptionPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
                this.videoFocusHandlerProvider = DoubleCheck.provider(VideoFocusHandler_Factory.create());
                this.topLevelTilePresenterFactoryProvider = new DelegateFactory();
                this.popupVideoViewerPresenterFactoryProvider = PopupVideoViewerPresenterFactory_Factory.create(SideScreenActivitySubcomponentImpl.this.exoPlayerObservableProvider, DaggerSideScreenBaseComponent.this.providesLayerStackProvider, SideScreenActivitySubcomponentImpl.this.popupViewProvider2, this.topLevelTilePresenterFactoryProvider, this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider, this.videoFocusHandlerProvider, EmptyDependenciesModule_PopupListenerFactory.create());
                this.articleTileHeroVideoPresenterFactoryProvider = ArticleTileHeroVideoPresenterFactory_Factory.create(this.activityStarterProvider, SideScreenActivitySubcomponentImpl.this.exoPlayerObservableProvider, this.videoFocusHandlerProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider, this.popupVideoViewerPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.provideAutoplayVideoSettingProvider);
                this.articleTileHeroYouTubePreviewPresenterFactoryProvider = ArticleTileHeroYouTubePreviewPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.oathPlayerObservableProvider = OathPlayerObservable_Factory.create(DaggerSideScreenBaseComponent.this.playerBuilderRequestorProvider);
                this.articleTileHeroOathPresenterFactoryProvider = ArticleTileHeroOathPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.oathPlayerObservableProvider, this.videoFocusHandlerProvider, DaggerSideScreenBaseComponent.this.provideAutoplayVideoSettingProvider);
                this.articleTileRowPresenterFactoryProvider = ArticleTileRowPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
                this.articleTileHeroImagePresenterFactoryProvider = ArticleTileHeroImagePresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.popupImageViewerPresenterFactoryProvider);
                this.articleTilePresenterFactoryProvider = ArticleTilePresenterFactory_Factory.create(this.articleTileHeroCaptionPresenterFactoryProvider, this.articleTileHeroVideoPresenterFactoryProvider, this.articleTileHeroYouTubePreviewPresenterFactoryProvider, this.articleTileHeroOathPresenterFactoryProvider, this.articleTileRowPresenterFactoryProvider, this.articleTileHeroImagePresenterFactoryProvider);
                this.followButtonHandlerFactoryProvider = FollowButtonHandlerFactory_Factory.create(this.providesTopicsModelProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.followButtonOnboardingHandlerFactoryProvider = FollowButtonOnboardingHandlerFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesSharedPreferencesModelProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.followButtonHandlerFactoryProvider2 = SingleCheck.provider(FactoryModule_FollowButtonHandlerFactoryFactory.create(DaggerSideScreenBaseComponent.this.providesPersonalizeOnboardingModeProvider, this.followButtonHandlerFactoryProvider, this.followButtonOnboardingHandlerFactoryProvider));
                this.topicItemPresenterFactoryProvider = TopicItemPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesPersonalizeOnboardingModeProvider, this.activityStarterProvider, this.followButtonHandlerFactoryProvider2, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.recommendedPresenterFactoryProvider = RecommendedPresenterFactory_Factory.create(this.providesTopicsModelProvider, this.topicItemPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.playlistItemPresenterFactoryProvider = PlaylistItemPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.relatedArticlePresenterFactoryProvider = RelatedArticlePresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
                this.articleSeedPresenterFactoryProvider = ArticleSeedPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
                this.videoSeedPresenterFactoryProvider = VideoSeedPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
                this.yelpSingleBusinessPresenterFactoryProvider = YelpSingleBusinessPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider);
                this.yelpMultipleBusinessPresenterFactoryProvider = YelpMultipleBusinessPresenterFactory_Factory.create(this.yelpSingleBusinessPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.activityStarterProvider);
                this.yelpSingleBusinessHeroPresenterFactoryProvider = YelpSingleBusinessHeroPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider);
                this.yelpPresenterFactoryProvider = YelpPresenterFactory_Factory.create(this.yelpMultipleBusinessPresenterFactoryProvider, this.yelpSingleBusinessHeroPresenterFactoryProvider);
                this.nonAdTilePresenterFactoryProvider = NonAdTilePresenterFactory_Factory.create(this.articleTilePresenterFactoryProvider, this.recommendedPresenterFactoryProvider, this.playlistItemPresenterFactoryProvider, this.relatedArticlePresenterFactoryProvider, this.articleSeedPresenterFactoryProvider, this.videoSeedPresenterFactoryProvider, this.yelpPresenterFactoryProvider);
                this.heroAdMediationItemPresenterFactoryProvider = HeroAdMediationItemPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.adUnitPoolsProvider, DaggerSideScreenBaseComponent.this.adTilePresenterFactoriesProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.rowAdMediationItemPresenterFactoryProvider = RowAdMediationItemPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.adUnitPoolsProvider, DaggerSideScreenBaseComponent.this.adTilePresenterFactoriesProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.adMediationItemPresenterFactoryProvider = AdMediationItemPresenterFactory_Factory.create(this.heroAdMediationItemPresenterFactoryProvider, this.rowAdMediationItemPresenterFactoryProvider);
                DelegateFactory.setDelegate(this.topLevelTilePresenterFactoryProvider, TopLevelTilePresenterFactory_Factory.create(this.nonAdTilePresenterFactoryProvider, this.adMediationItemPresenterFactoryProvider));
                DelegateFactory.setDelegate(this.popupImageViewerPresenterFactoryProvider, PopupImageViewerPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesLayerStackProvider, SideScreenActivitySubcomponentImpl.this.popupViewProvider2, this.topLevelTilePresenterFactoryProvider, this.activityStarterProvider, EmptyDependenciesModule_PopupListenerFactory.create()));
            }

            @Override // dagger.android.AndroidInjector
            public void inject(RelatedArticlesFragment relatedArticlesFragment) {
                injectRelatedArticlesFragment(relatedArticlesFragment);
            }

            private RelatedArticlesFragment injectRelatedArticlesFragment(RelatedArticlesFragment relatedArticlesFragment) {
                RelatedArticlesFragment_MembersInjector.injectMTopLevelTilePresenterFactory(relatedArticlesFragment, getTopLevelTilePresenterFactory());
                RelatedArticlesFragment_MembersInjector.injectMRelatedContentModel(relatedArticlesFragment, (SideScreenRelatedContentModel) DaggerSideScreenBaseComponent.this.providesSideScreenRelatedContentModelProvider.get());
                return relatedArticlesFragment;
            }
        }

        private final class RelatedVideosFragmentSubcomponentBuilder extends AbstractC0500xd45e31aa.RelatedVideosFragmentSubcomponent.Builder {
            private RelatedVideosFragment seedInstance;

            private RelatedVideosFragmentSubcomponentBuilder() {
            }

            @Override // dagger.android.AndroidInjector.Builder
            public void seedInstance(RelatedVideosFragment relatedVideosFragment) {
                this.seedInstance = (RelatedVideosFragment) Preconditions.checkNotNull(relatedVideosFragment);
            }

            @Override // dagger.android.AndroidInjector.Builder
            /* JADX INFO: renamed from: build */
            public AndroidInjector<RelatedVideosFragment> build2() {
                Preconditions.checkBuilderRequirement(this.seedInstance, RelatedVideosFragment.class);
                return new RelatedVideosFragmentSubcomponentImpl(this.seedInstance);
            }
        }

        private final class RelatedVideosFragmentSubcomponentImpl implements AbstractC0500xd45e31aa.RelatedVideosFragmentSubcomponent {
            private Provider<ActivityStarter> activityStarterProvider;
            private Provider<AdMediationItemPresenterFactory> adMediationItemPresenterFactoryProvider;
            private Provider<ArticlePopupMenuHelper> articlePopupMenuHelperProvider;
            private Provider<ArticleSeedPresenterFactory> articleSeedPresenterFactoryProvider;
            private Provider<ArticleTileHeroCaptionPresenterFactory> articleTileHeroCaptionPresenterFactoryProvider;
            private Provider<ArticleTileHeroImagePresenterFactory> articleTileHeroImagePresenterFactoryProvider;
            private Provider<ArticleTileHeroOathPresenterFactory> articleTileHeroOathPresenterFactoryProvider;
            private Provider<ArticleTileHeroVideoPresenterFactory> articleTileHeroVideoPresenterFactoryProvider;
            private Provider<ArticleTileHeroYouTubePreviewPresenterFactory> articleTileHeroYouTubePreviewPresenterFactoryProvider;
            private Provider<ArticleTilePresenterFactory> articleTilePresenterFactoryProvider;
            private Provider<ArticleTileRowPresenterFactory> articleTileRowPresenterFactoryProvider;
            private Provider<FollowButtonHandlerFactory> followButtonHandlerFactoryProvider;
            private Provider<IFollowButtonHandlerFactory> followButtonHandlerFactoryProvider2;
            private Provider<FollowButtonOnboardingHandlerFactory> followButtonOnboardingHandlerFactoryProvider;
            private Provider<HeroAdMediationItemPresenterFactory> heroAdMediationItemPresenterFactoryProvider;
            private Provider<NonAdTilePresenterFactory> nonAdTilePresenterFactoryProvider;
            private Provider<OathPlayerObservable> oathPlayerObservableProvider;
            private Provider<PlaylistItemPresenterFactory> playlistItemPresenterFactoryProvider;
            private Provider<PopupImageViewerPresenterFactory> popupImageViewerPresenterFactoryProvider;
            private Provider<PopupVideoViewerPresenterFactory> popupVideoViewerPresenterFactoryProvider;
            private Provider<SharedPreferences> providesPersonalizationSharedPreferencesProvider;
            private Provider<TopicPersonalizationStore> providesTopicPersonalizationStoreProvider;
            private Provider<TopicsModel> providesTopicsModelProvider;
            private Provider<RecommendedPresenterFactory> recommendedPresenterFactoryProvider;
            private Provider<RelatedArticlePresenterFactory> relatedArticlePresenterFactoryProvider;
            private Provider<RowAdMediationItemPresenterFactory> rowAdMediationItemPresenterFactoryProvider;
            private Provider<TopLevelTilePresenterFactory> topLevelTilePresenterFactoryProvider;
            private Provider<TopicItemPresenterFactory> topicItemPresenterFactoryProvider;
            private Provider<VideoFocusHandler> videoFocusHandlerProvider;
            private Provider<VideoSeedPresenterFactory> videoSeedPresenterFactoryProvider;
            private Provider<YelpMultipleBusinessPresenterFactory> yelpMultipleBusinessPresenterFactoryProvider;
            private Provider<YelpPresenterFactory> yelpPresenterFactoryProvider;
            private Provider<YelpSingleBusinessHeroPresenterFactory> yelpSingleBusinessHeroPresenterFactoryProvider;
            private Provider<YelpSingleBusinessPresenterFactory> yelpSingleBusinessPresenterFactoryProvider;

            private RelatedVideosFragmentSubcomponentImpl(RelatedVideosFragment relatedVideosFragment) {
                initialize(relatedVideosFragment);
            }

            private ArticleTileHeroCaptionPresenterFactory getArticleTileHeroCaptionPresenterFactory() {
                return new ArticleTileHeroCaptionPresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
            }

            private ArticleTileHeroVideoPresenterFactory getArticleTileHeroVideoPresenterFactory() {
                return new ArticleTileHeroVideoPresenterFactory(this.activityStarterProvider, SideScreenActivitySubcomponentImpl.this.exoPlayerObservableProvider, this.videoFocusHandlerProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider, this.popupVideoViewerPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.provideAutoplayVideoSettingProvider);
            }

            private ArticleTileHeroYouTubePreviewPresenterFactory getArticleTileHeroYouTubePreviewPresenterFactory() {
                return new ArticleTileHeroYouTubePreviewPresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            }

            private ArticleTileHeroOathPresenterFactory getArticleTileHeroOathPresenterFactory() {
                return new ArticleTileHeroOathPresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.oathPlayerObservableProvider, this.videoFocusHandlerProvider, DaggerSideScreenBaseComponent.this.provideAutoplayVideoSettingProvider);
            }

            private ArticleTileRowPresenterFactory getArticleTileRowPresenterFactory() {
                return new ArticleTileRowPresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
            }

            private ArticleTileHeroImagePresenterFactory getArticleTileHeroImagePresenterFactory() {
                return new ArticleTileHeroImagePresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.popupImageViewerPresenterFactoryProvider);
            }

            private ArticleTilePresenterFactory getArticleTilePresenterFactory() {
                return new ArticleTilePresenterFactory(getArticleTileHeroCaptionPresenterFactory(), getArticleTileHeroVideoPresenterFactory(), getArticleTileHeroYouTubePreviewPresenterFactory(), getArticleTileHeroOathPresenterFactory(), getArticleTileRowPresenterFactory(), getArticleTileHeroImagePresenterFactory());
            }

            private RecommendedPresenterFactory getRecommendedPresenterFactory() {
                return new RecommendedPresenterFactory(this.providesTopicsModelProvider, this.topicItemPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            }

            private PlaylistItemPresenterFactory getPlaylistItemPresenterFactory() {
                return new PlaylistItemPresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            }

            private RelatedArticlePresenterFactory getRelatedArticlePresenterFactory() {
                return new RelatedArticlePresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
            }

            private ArticleSeedPresenterFactory getArticleSeedPresenterFactory() {
                return new ArticleSeedPresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
            }

            private VideoSeedPresenterFactory getVideoSeedPresenterFactory() {
                return new VideoSeedPresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
            }

            private YelpMultipleBusinessPresenterFactory getYelpMultipleBusinessPresenterFactory() {
                return new YelpMultipleBusinessPresenterFactory(this.yelpSingleBusinessPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.activityStarterProvider);
            }

            private YelpSingleBusinessHeroPresenterFactory getYelpSingleBusinessHeroPresenterFactory() {
                return new YelpSingleBusinessHeroPresenterFactory(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider);
            }

            private YelpPresenterFactory getYelpPresenterFactory() {
                return new YelpPresenterFactory(getYelpMultipleBusinessPresenterFactory(), getYelpSingleBusinessHeroPresenterFactory());
            }

            private NonAdTilePresenterFactory getNonAdTilePresenterFactory() {
                return new NonAdTilePresenterFactory(getArticleTilePresenterFactory(), getRecommendedPresenterFactory(), getPlaylistItemPresenterFactory(), getRelatedArticlePresenterFactory(), getArticleSeedPresenterFactory(), getVideoSeedPresenterFactory(), getYelpPresenterFactory());
            }

            private HeroAdMediationItemPresenterFactory getHeroAdMediationItemPresenterFactory() {
                return new HeroAdMediationItemPresenterFactory(DaggerSideScreenBaseComponent.this.adUnitPoolsProvider, DaggerSideScreenBaseComponent.this.adTilePresenterFactoriesProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            }

            private RowAdMediationItemPresenterFactory getRowAdMediationItemPresenterFactory() {
                return new RowAdMediationItemPresenterFactory(DaggerSideScreenBaseComponent.this.adUnitPoolsProvider, DaggerSideScreenBaseComponent.this.adTilePresenterFactoriesProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            }

            private AdMediationItemPresenterFactory getAdMediationItemPresenterFactory() {
                return new AdMediationItemPresenterFactory(getHeroAdMediationItemPresenterFactory(), getRowAdMediationItemPresenterFactory());
            }

            private TopLevelTilePresenterFactory getTopLevelTilePresenterFactory() {
                return new TopLevelTilePresenterFactory(getNonAdTilePresenterFactory(), getAdMediationItemPresenterFactory());
            }

            private TopicItemPresenterFactory getTopicItemPresenterFactory() {
                return new TopicItemPresenterFactory(DaggerSideScreenBaseComponent.this.providesPersonalizeOnboardingModeProvider, this.activityStarterProvider, this.followButtonHandlerFactoryProvider2, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
            }

            private void initialize(RelatedVideosFragment relatedVideosFragment) {
                this.activityStarterProvider = SingleCheck.provider(ActivityStarter_Factory.create(DaggerSideScreenBaseComponent.this.providesContextProvider, SideScreenActivitySubcomponentImpl.this.activityProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider));
                this.providesPersonalizationSharedPreferencesProvider = SingleCheck.provider(TopicsModule_ProvidesPersonalizationSharedPreferencesFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, DaggerSideScreenBaseComponent.this.providesContextProvider));
                this.providesTopicPersonalizationStoreProvider = SingleCheck.provider(TopicsModule_ProvidesTopicPersonalizationStoreFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, this.providesPersonalizationSharedPreferencesProvider, DaggerSideScreenBaseComponent.this.gsonProvider));
                this.providesTopicsModelProvider = SingleCheck.provider(TopicsModule_ProvidesTopicsModelFactory.create(DaggerSideScreenBaseComponent.this.topicsModule, DaggerSideScreenBaseComponent.this.retrofitProvider, DaggerSideScreenBaseComponent.this.analyticsHandlerProvider, DaggerSideScreenBaseComponent.this.abTestConfigurationProvider, this.providesTopicPersonalizationStoreProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider));
                this.articlePopupMenuHelperProvider = ArticlePopupMenuHelper_Factory.create(this.providesTopicsModelProvider, DaggerSideScreenBaseComponent.this.providesSideScreenRelatedContentModelProvider, this.providesTopicPersonalizationStoreProvider, this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.popupImageViewerPresenterFactoryProvider = new DelegateFactory();
                this.articleTileHeroCaptionPresenterFactoryProvider = ArticleTileHeroCaptionPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
                this.videoFocusHandlerProvider = DoubleCheck.provider(VideoFocusHandler_Factory.create());
                this.topLevelTilePresenterFactoryProvider = new DelegateFactory();
                this.popupVideoViewerPresenterFactoryProvider = PopupVideoViewerPresenterFactory_Factory.create(SideScreenActivitySubcomponentImpl.this.exoPlayerObservableProvider, DaggerSideScreenBaseComponent.this.providesLayerStackProvider, SideScreenActivitySubcomponentImpl.this.popupViewProvider2, this.topLevelTilePresenterFactoryProvider, this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider, this.videoFocusHandlerProvider, EmptyDependenciesModule_PopupListenerFactory.create());
                this.articleTileHeroVideoPresenterFactoryProvider = ArticleTileHeroVideoPresenterFactory_Factory.create(this.activityStarterProvider, SideScreenActivitySubcomponentImpl.this.exoPlayerObservableProvider, this.videoFocusHandlerProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLifecycleCallbacksProvider, this.popupVideoViewerPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.provideAutoplayVideoSettingProvider);
                this.articleTileHeroYouTubePreviewPresenterFactoryProvider = ArticleTileHeroYouTubePreviewPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.oathPlayerObservableProvider = OathPlayerObservable_Factory.create(DaggerSideScreenBaseComponent.this.playerBuilderRequestorProvider);
                this.articleTileHeroOathPresenterFactoryProvider = ArticleTileHeroOathPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.providesContextProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.oathPlayerObservableProvider, this.videoFocusHandlerProvider, DaggerSideScreenBaseComponent.this.provideAutoplayVideoSettingProvider);
                this.articleTileRowPresenterFactoryProvider = ArticleTileRowPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
                this.articleTileHeroImagePresenterFactoryProvider = ArticleTileHeroImagePresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.popupImageViewerPresenterFactoryProvider);
                this.articleTilePresenterFactoryProvider = ArticleTilePresenterFactory_Factory.create(this.articleTileHeroCaptionPresenterFactoryProvider, this.articleTileHeroVideoPresenterFactoryProvider, this.articleTileHeroYouTubePreviewPresenterFactoryProvider, this.articleTileHeroOathPresenterFactoryProvider, this.articleTileRowPresenterFactoryProvider, this.articleTileHeroImagePresenterFactoryProvider);
                this.followButtonHandlerFactoryProvider = FollowButtonHandlerFactory_Factory.create(this.providesTopicsModelProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.followButtonOnboardingHandlerFactoryProvider = FollowButtonOnboardingHandlerFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesSharedPreferencesModelProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.followButtonHandlerFactoryProvider2 = SingleCheck.provider(FactoryModule_FollowButtonHandlerFactoryFactory.create(DaggerSideScreenBaseComponent.this.providesPersonalizeOnboardingModeProvider, this.followButtonHandlerFactoryProvider, this.followButtonOnboardingHandlerFactoryProvider));
                this.topicItemPresenterFactoryProvider = TopicItemPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesPersonalizeOnboardingModeProvider, this.activityStarterProvider, this.followButtonHandlerFactoryProvider2, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.recommendedPresenterFactoryProvider = RecommendedPresenterFactory_Factory.create(this.providesTopicsModelProvider, this.topicItemPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.playlistItemPresenterFactoryProvider = PlaylistItemPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.relatedArticlePresenterFactoryProvider = RelatedArticlePresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
                this.articleSeedPresenterFactoryProvider = ArticleSeedPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
                this.videoSeedPresenterFactoryProvider = VideoSeedPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
                this.yelpSingleBusinessPresenterFactoryProvider = YelpSingleBusinessPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider);
                this.yelpMultipleBusinessPresenterFactoryProvider = YelpMultipleBusinessPresenterFactory_Factory.create(this.yelpSingleBusinessPresenterFactoryProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, this.activityStarterProvider);
                this.yelpSingleBusinessHeroPresenterFactoryProvider = YelpSingleBusinessHeroPresenterFactory_Factory.create(this.activityStarterProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider, DaggerSideScreenBaseComponent.this.providesLocationHandlerProvider);
                this.yelpPresenterFactoryProvider = YelpPresenterFactory_Factory.create(this.yelpMultipleBusinessPresenterFactoryProvider, this.yelpSingleBusinessHeroPresenterFactoryProvider);
                this.nonAdTilePresenterFactoryProvider = NonAdTilePresenterFactory_Factory.create(this.articleTilePresenterFactoryProvider, this.recommendedPresenterFactoryProvider, this.playlistItemPresenterFactoryProvider, this.relatedArticlePresenterFactoryProvider, this.articleSeedPresenterFactoryProvider, this.videoSeedPresenterFactoryProvider, this.yelpPresenterFactoryProvider);
                this.heroAdMediationItemPresenterFactoryProvider = HeroAdMediationItemPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.adUnitPoolsProvider, DaggerSideScreenBaseComponent.this.adTilePresenterFactoriesProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.rowAdMediationItemPresenterFactoryProvider = RowAdMediationItemPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.adUnitPoolsProvider, DaggerSideScreenBaseComponent.this.adTilePresenterFactoriesProvider, DaggerSideScreenBaseComponent.this.analyticsModelProvider);
                this.adMediationItemPresenterFactoryProvider = AdMediationItemPresenterFactory_Factory.create(this.heroAdMediationItemPresenterFactoryProvider, this.rowAdMediationItemPresenterFactoryProvider);
                DelegateFactory.setDelegate(this.topLevelTilePresenterFactoryProvider, TopLevelTilePresenterFactory_Factory.create(this.nonAdTilePresenterFactoryProvider, this.adMediationItemPresenterFactoryProvider));
                DelegateFactory.setDelegate(this.popupImageViewerPresenterFactoryProvider, PopupImageViewerPresenterFactory_Factory.create(DaggerSideScreenBaseComponent.this.providesLayerStackProvider, SideScreenActivitySubcomponentImpl.this.popupViewProvider2, this.topLevelTilePresenterFactoryProvider, this.activityStarterProvider, EmptyDependenciesModule_PopupListenerFactory.create()));
            }

            @Override // dagger.android.AndroidInjector
            public void inject(RelatedVideosFragment relatedVideosFragment) {
                injectRelatedVideosFragment(relatedVideosFragment);
            }

            private RelatedVideosFragment injectRelatedVideosFragment(RelatedVideosFragment relatedVideosFragment) {
                RelatedVideosFragment_MembersInjector.injectMTopLevelTilePresenterFactory(relatedVideosFragment, getTopLevelTilePresenterFactory());
                RelatedVideosFragment_MembersInjector.injectMTopicItemPresenterFactory(relatedVideosFragment, getTopicItemPresenterFactory());
                RelatedVideosFragment_MembersInjector.injectMRelatedContentModel(relatedVideosFragment, (SideScreenRelatedContentModel) DaggerSideScreenBaseComponent.this.providesSideScreenRelatedContentModelProvider.get());
                RelatedVideosFragment_MembersInjector.injectMSideScreenSharedPreferencesModel(relatedVideosFragment, (SideScreenSharedPreferencesModel) DaggerSideScreenBaseComponent.this.providesSharedPreferencesModelProvider.get());
                return relatedVideosFragment;
            }
        }
    }
}
