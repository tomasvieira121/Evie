package com.voxel.simplesearchlauncher.dagger;

import android.app.Activity;
import android.app.Application;
import android.app.Service;
import android.content.Context;
import android.content.SharedPreferences;
import android.util.Pair;
import androidx.fragment.app.Fragment;
import com.evie.common.AbTestConfiguration;
import com.evie.common.AbTestConfiguration_Factory;
import com.evie.common.utils.MemoryWatcher;
import com.evie.config.LauncherConfigModel;
import com.evie.jigsaw.Jigsaw;
import com.evie.jigsaw.services.actions.ActionPreferenceStore;
import com.evie.jigsaw.services.images.ImageResolver;
import com.evie.models.PromptStoreModel;
import com.evie.models.frequentlyused.FrequentlyUsedModel;
import com.evie.models.frequentlyused.room.AppLaunchDatabase;
import com.evie.models.frequentlyused.submodels.FrequentlyUsedLocalModel;
import com.evie.models.sidescreen.SideScreenContentAPI;
import com.evie.models.sidescreen.SideScreenRelatedContentModel;
import com.evie.screen.SettingsActivity;
import com.evie.screen.SettingsActivity_MembersInjector;
import com.evie.screen.TermsAndConditionsActivity;
import com.evie.screen.TermsAndConditionsActivity_MembersInjector;
import com.evie.search.local.ContactManager;
import com.evie.sidescreen.SideScreenActivity_MembersInjector;
import com.evie.sidescreen.SideScreenSharedDependencies;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.TileSettings;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.AnalyticsModel_Factory;
import com.evie.sidescreen.dagger.C0494x2690c3a1;
import com.evie.sidescreen.dagger.C0504xa3003cff;
import com.evie.sidescreen.dagger.SideScreenContentModule;
import com.evie.sidescreen.dagger.SideScreenContentModule_ProvidesSideScreenContentAPIFactory;
import com.evie.sidescreen.dagger.SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory;
import com.evie.sidescreen.dagger.external.AbstractC0506x27f1da58;
import com.evie.sidescreen.dagger.external.AbstractC0507x7b7848c4;
import com.evie.sidescreen.dagger.external.AbstractC0508xac29a7bf;
import com.evie.sidescreen.dagger.external.AbstractC0509xdbfc55cc;
import com.evie.sidescreen.dagger.external.AbstractC0510xda0caeb8;
import com.evie.sidescreen.dagger.external.AbstractC0511xcb6e659f;
import com.evie.sidescreen.dagger.external.AbstractC0512xb17b1fd3;
import com.evie.sidescreen.dagger.external.AbstractC0513x2f9a5810;
import com.evie.sidescreen.dagger.external.AbstractC0514x27061b76;
import com.evie.sidescreen.dagger.external.ExoPlayerCacheModule_ProvidesExoPlayerCacheFactory;
import com.evie.sidescreen.dagger.external.GsonModule_ProvidesTypeAdapterFactory;
import com.evie.sidescreen.dagger.external.OathPlayerModule;
import com.evie.sidescreen.dagger.external.OathPlayerModule_ProvidesPlayerRequestorFactory;
import com.evie.sidescreen.dagger.external.PlayerBuilderRequestor;
import com.evie.sidescreen.dagger.external.SideScreenAndroidInjectorModule_ContributesTokenServiceInjector;
import com.evie.sidescreen.firebase.MessagingService;
import com.evie.sidescreen.firebase.MessagingService_MembersInjector;
import com.evie.sidescreen.firebase.TokenService;
import com.evie.sidescreen.firebase.TokenService_MembersInjector;
import com.evie.sidescreen.oathplayer.OathPlayerObservable;
import com.evie.sidescreen.oathplayer.OathPlayerObservable_Factory;
import com.evie.sidescreen.personalize.PersonalizeActivity;
import com.evie.sidescreen.personalize.PersonalizeSearchActivity;
import com.evie.sidescreen.personalize.onboarding.PersonalizeOnboardingActivity;
import com.evie.sidescreen.relatedcontent.RelatedArticlesActivity;
import com.evie.sidescreen.relatedcontent.RelatedVideosActivity;
import com.evie.sidescreen.tiles.ads.AdTilePresenterFactory;
import com.evie.sidescreen.tiles.ads.AdUnitPool;
import com.evie.sidescreen.topicdetail.TopicDetailActivity;
import com.evie.sidescreen.webviewer.RelatedTopicsActivity;
import com.evie.sidescreen.webviewer.WebViewerActivity;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.gson.Gson;
import com.google.gson.JsonDeserializer;
import com.voxel.launcher3.BaseApplication;
import com.voxel.launcher3.BaseApplication_MembersInjector;
import com.voxel.launcher3.FlavorInitializer;
import com.voxel.launcher3.FlavorInitializer_MembersInjector;
import com.voxel.launcher3.Launcher;
import com.voxel.launcher3.LauncherAppState;
import com.voxel.launcher3.LauncherAppState_MembersInjector;
import com.voxel.launcher3.LauncherModel;
import com.voxel.launcher3.LauncherModel_MembersInjector;
import com.voxel.launcher3.Launcher_MembersInjector;
import com.voxel.launcher3.fresco.HybridNetworkFetcher;
import com.voxel.launcher3.fresco.HybridNetworkFetcher_Factory;
import com.voxel.launcher3.shortcuts.DeepShortcutManager;
import com.voxel.simplesearchlauncher.activity.OnboardingActivity;
import com.voxel.simplesearchlauncher.activity.OnboardingActivity_MembersInjector;
import com.voxel.simplesearchlauncher.allapps.AllAppsFragment;
import com.voxel.simplesearchlauncher.allapps.AllAppsFragment_MembersInjector;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import com.voxel.simplesearchlauncher.appoptions.AppOptionsFragment;
import com.voxel.simplesearchlauncher.appoptions.AppOptionsFragment_MembersInjector;
import com.voxel.simplesearchlauncher.appoptions.ChangeIconFragment;
import com.voxel.simplesearchlauncher.appoptions.ChangeIconFragment_MembersInjector;
import com.voxel.simplesearchlauncher.dagger.module.AbstractC1230xa2b4dee3;
import com.voxel.simplesearchlauncher.dagger.module.AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory;
import com.voxel.simplesearchlauncher.dagger.module.AppDatabaseModule_ProvidesAppDatabaseFactory;
import com.voxel.simplesearchlauncher.dagger.module.C1231xdda70633;
import com.voxel.simplesearchlauncher.dagger.module.CommonAndroidInjectionModule_AllAppsFragment;
import com.voxel.simplesearchlauncher.dagger.module.CommonAndroidInjectionModule_SettingsActivity;
import com.voxel.simplesearchlauncher.dagger.module.CommonAndroidInjectionModule_TermsAndConditionsActivity;
import com.voxel.simplesearchlauncher.dagger.module.CommonAndroidInjectionModule_WidgetsFragment;
import com.voxel.simplesearchlauncher.dagger.module.DeepShortcutManagerModule;
import com.voxel.simplesearchlauncher.dagger.module.DeepShortcutManagerModule_ProvideDeepShortcutManagerFactory;
import com.voxel.simplesearchlauncher.dagger.module.FlavorAndroidInjectionModule_AppDrawerSettingsFragment;
import com.voxel.simplesearchlauncher.dagger.module.FlavorAndroidInjectionModule_AppOptionsFragment;
import com.voxel.simplesearchlauncher.dagger.module.FlavorAndroidInjectionModule_ChangeIconFragment;
import com.voxel.simplesearchlauncher.dagger.module.FlavorAndroidInjectionModule_CustomGestureSettingsFragment;
import com.voxel.simplesearchlauncher.dagger.module.FlavorAndroidInjectionModule_DesktopSettingsFragment;
import com.voxel.simplesearchlauncher.dagger.module.FlavorAndroidInjectionModule_DockSettingsFragment;
import com.voxel.simplesearchlauncher.dagger.module.FlavorAndroidInjectionModule_FolderSettingsFragment;
import com.voxel.simplesearchlauncher.dagger.module.FlavorAndroidInjectionModule_HideAppSettingsFragment;
import com.voxel.simplesearchlauncher.dagger.module.FlavorAndroidInjectionModule_IconPackSettingsFragment;
import com.voxel.simplesearchlauncher.dagger.module.FlavorAndroidInjectionModule_Launcher;
import com.voxel.simplesearchlauncher.dagger.module.FlavorAndroidInjectionModule_OnboardingActivity;
import com.voxel.simplesearchlauncher.dagger.module.FlavorAndroidInjectionModule_PopupFragment;
import com.voxel.simplesearchlauncher.dagger.module.FlavorAndroidInjectionModule_ResetLauncherFailureFragment;
import com.voxel.simplesearchlauncher.dagger.module.FlavorAndroidInjectionModule_ResetLauncherPromptFragment;
import com.voxel.simplesearchlauncher.dagger.module.FlavorAndroidInjectionModule_SelectAppFragment;
import com.voxel.simplesearchlauncher.dagger.module.FrequentlyUsedModule;
import com.voxel.simplesearchlauncher.dagger.module.FrequentlyUsedModule_ProvidesFrequentlyUsedLocalModelFactory;
import com.voxel.simplesearchlauncher.dagger.module.FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;
import com.voxel.simplesearchlauncher.dagger.module.HideAppsModule;
import com.voxel.simplesearchlauncher.dagger.module.HideAppsModule_ProvidesHideAppsModelFactory;
import com.voxel.simplesearchlauncher.dagger.module.InterfaceModule_ProvidesSideScreenSharedDependenciesFactory;
import com.voxel.simplesearchlauncher.dagger.module.JigsawModule;
import com.voxel.simplesearchlauncher.dagger.module.JigsawModule_ProvidesActionPreferenceStoreFactory;
import com.voxel.simplesearchlauncher.dagger.module.JigsawModule_ProvidesContactManagerFactory;
import com.voxel.simplesearchlauncher.dagger.module.JigsawModule_ProvidesImageResolverFactory;
import com.voxel.simplesearchlauncher.dagger.module.JigsawModule_ProvidesJigsawAnalyticsServiceFactory;
import com.voxel.simplesearchlauncher.dagger.module.JigsawModule_ProvidesJigsawFactory;
import com.voxel.simplesearchlauncher.dagger.module.LauncherConfigModelModule;
import com.voxel.simplesearchlauncher.dagger.module.LauncherConfigModelModule_ProvidesLauncherConfigModelFactory;
import com.voxel.simplesearchlauncher.dagger.module.MemoryRegistryModule;
import com.voxel.simplesearchlauncher.dagger.module.MemoryRegistryModule_ProvideMemoryRegistryFactory;
import com.voxel.simplesearchlauncher.dagger.module.SingletonsModule;
import com.voxel.simplesearchlauncher.dagger.module.SingletonsModule_ProvidesAnalyticsHandlerFactory;
import com.voxel.simplesearchlauncher.dagger.module.SingletonsModule_ProvidesLocationHandlerFactory;
import com.voxel.simplesearchlauncher.dagger.module.SingletonsModule_ProvidesSettingsStorageFactory;
import com.voxel.simplesearchlauncher.dagger.module.SingletonsModule_ProvidesUserProfileManagerFactory;
import com.voxel.simplesearchlauncher.dagger.module.TileSettingsModule;
import com.voxel.simplesearchlauncher.dagger.module.TileSettingsModule_ProvidesAutoplaySubjectFactory;
import com.voxel.simplesearchlauncher.dagger.module.TileSettingsModule_ProvidesSharedPreferencesFactory;
import com.voxel.simplesearchlauncher.dagger.module.TileSettingsModule_ProvidesTileSettingsFactory;
import com.voxel.simplesearchlauncher.dagger.module.http.OkHttpModule;
import com.voxel.simplesearchlauncher.dagger.module.http.OkHttpModule_ProvidesOkHttpClientFactory;
import com.voxel.simplesearchlauncher.dagger.module.http.RetrofitModule;
import com.voxel.simplesearchlauncher.dagger.module.http.RetrofitModule_ProvidesGsonFactory;
import com.voxel.simplesearchlauncher.dagger.module.http.RetrofitModule_ProvidesRetrofitFactory;
import com.voxel.simplesearchlauncher.dagger.module.http.ServerUrlModule;
import com.voxel.simplesearchlauncher.dagger.module.http.ServerUrlModule_ProvideServerUrlFactory;
import com.voxel.simplesearchlauncher.fragment.ResetLauncherFailureFragment;
import com.voxel.simplesearchlauncher.fragment.ResetLauncherFailureFragment_MembersInjector;
import com.voxel.simplesearchlauncher.fragment.ResetLauncherPromptFragment;
import com.voxel.simplesearchlauncher.fragment.ResetLauncherPromptFragment_MembersInjector;
import com.voxel.simplesearchlauncher.hideapps.HideAppsModel;
import com.voxel.simplesearchlauncher.iconpack.IconPackManager;
import com.voxel.simplesearchlauncher.iconpack.IconPackManager_Factory;
import com.voxel.simplesearchlauncher.jigsaw.JigsawAnalyticsService;
import com.voxel.simplesearchlauncher.model.AppsInfoIconFilter;
import com.voxel.simplesearchlauncher.model.AppsInfoIconFilter_Factory;
import com.voxel.simplesearchlauncher.model.AppsInfoLabelOverrideFilter;
import com.voxel.simplesearchlauncher.model.managers.BackupRestoreManager;
import com.voxel.simplesearchlauncher.model.managers.BackupRestoreManager_MembersInjector;
import com.voxel.simplesearchlauncher.model.managers.LocalAppsManager;
import com.voxel.simplesearchlauncher.model.managers.LocalAppsManager_Factory;
import com.voxel.simplesearchlauncher.model.managers.SettingsStorage;
import com.voxel.simplesearchlauncher.model.managers.UserProfileManager;
import com.voxel.simplesearchlauncher.popup.PopupFragment;
import com.voxel.simplesearchlauncher.popup.PopupFragment_MembersInjector;
import com.voxel.simplesearchlauncher.search.SearchUiHelper;
import com.voxel.simplesearchlauncher.search.SearchUiHelper_MembersInjector;
import com.voxel.simplesearchlauncher.settings.AppDrawerSettingsFragment;
import com.voxel.simplesearchlauncher.settings.AppDrawerSettingsFragment_MembersInjector;
import com.voxel.simplesearchlauncher.settings.CustomGestureSettingsFragment;
import com.voxel.simplesearchlauncher.settings.CustomGestureSettingsFragment_MembersInjector;
import com.voxel.simplesearchlauncher.settings.DesktopSettingsFragment;
import com.voxel.simplesearchlauncher.settings.DesktopSettingsFragment_MembersInjector;
import com.voxel.simplesearchlauncher.settings.DockSettingsFragment;
import com.voxel.simplesearchlauncher.settings.DockSettingsFragment_MembersInjector;
import com.voxel.simplesearchlauncher.settings.FolderSettingsFragment;
import com.voxel.simplesearchlauncher.settings.FolderSettingsFragment_MembersInjector;
import com.voxel.simplesearchlauncher.settings.HideAppsSettingsFragment;
import com.voxel.simplesearchlauncher.settings.HideAppsSettingsFragment_MembersInjector;
import com.voxel.simplesearchlauncher.settings.IconPackSettingsFragment;
import com.voxel.simplesearchlauncher.settings.IconPackSettingsFragment_MembersInjector;
import com.voxel.simplesearchlauncher.settings.LayoutSettingsManager;
import com.voxel.simplesearchlauncher.settings.LayoutSettingsManager_Factory;
import com.voxel.simplesearchlauncher.settings.gestures.SelectAppFragment;
import com.voxel.simplesearchlauncher.settings.gestures.SelectAppFragment_MembersInjector;
import com.voxel.simplesearchlauncher.shortcut.ConfirmShortcutActivity;
import com.voxel.simplesearchlauncher.shortcut.ConfirmShortcutActivity_MembersInjector;
import com.voxel.simplesearchlauncher.sidescreen.LauncherCustomContentPresenterFactory;
import com.voxel.simplesearchlauncher.utils.ConnectionPoolKiller;
import com.voxel.simplesearchlauncher.utils.ConnectionPoolKiller_Factory;
import com.voxel.simplesearchlauncher.utils.MemoryRegistry;
import com.voxel.simplesearchlauncher.widget.WidgetsFragment;
import com.voxel.simplesearchlauncher.widget.WidgetsFragment_MembersInjector;
import dagger.android.AndroidInjector;
import dagger.android.DispatchingAndroidInjector;
import dagger.android.DispatchingAndroidInjector_Factory;
import dagger.internal.DoubleCheck;
import dagger.internal.InstanceFactory;
import dagger.internal.MapBuilder;
import dagger.internal.Preconditions;
import dagger.internal.SetFactory;
import dagger.internal.SingleCheck;
import io.reactivex.subjects.BehaviorSubject;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes.dex */
public final class DaggerLauncherAppComponent extends LauncherAppComponent {
    private Provider<CommonAndroidInjectionModule_AllAppsFragment.AllAppsFragmentSubcomponent.Builder> allAppsFragmentSubcomponentBuilderProvider;
    private Provider<AnalyticsModel> analyticsModelProvider;
    private Provider<FlavorAndroidInjectionModule_AppDrawerSettingsFragment.AppDrawerSettingsFragmentSubcomponent.Builder> appDrawerSettingsFragmentSubcomponentBuilderProvider;
    private Provider<FlavorAndroidInjectionModule_AppOptionsFragment.AppOptionsFragmentSubcomponent.Builder> appOptionsFragmentSubcomponentBuilderProvider;
    private Provider<Application> applicationProvider;
    private Provider<AppsInfoIconFilter> appsInfoIconFilterProvider;
    private Provider<FlavorAndroidInjectionModule_ChangeIconFragment.ChangeIconFragmentSubcomponent.Builder> changeIconFragmentSubcomponentBuilderProvider;
    private Provider<AbstractC1230xa2b4dee3.ConfirmShortcutActivitySubcomponent.Builder> confirmShortcutActivitySubcomponentBuilderProvider;
    private Provider<ConnectionPoolKiller> connectionPoolKillerProvider;
    private final Context context;
    private Provider<Context> contextProvider;
    private Provider<FlavorAndroidInjectionModule_CustomGestureSettingsFragment.CustomGestureSettingsFragmentSubcomponent.Builder> customGestureSettingsFragmentSubcomponentBuilderProvider;
    private Provider<FlavorAndroidInjectionModule_DesktopSettingsFragment.DesktopSettingsFragmentSubcomponent.Builder> desktopSettingsFragmentSubcomponentBuilderProvider;
    private Provider<FlavorAndroidInjectionModule_DockSettingsFragment.DockSettingsFragmentSubcomponent.Builder> dockSettingsFragmentSubcomponentBuilderProvider;
    private Provider<FlavorAndroidInjectionModule_FolderSettingsFragment.FolderSettingsFragmentSubcomponent.Builder> folderSettingsFragmentSubcomponentBuilderProvider;
    private Provider<FlavorAndroidInjectionModule_HideAppSettingsFragment.HideAppsSettingsFragmentSubcomponent.Builder> hideAppsSettingsFragmentSubcomponentBuilderProvider;
    private Provider<HybridNetworkFetcher> hybridNetworkFetcherProvider;
    private Provider<IconPackManager> iconPackManagerProvider;
    private Provider<FlavorAndroidInjectionModule_IconPackSettingsFragment.IconPackSettingsFragmentSubcomponent.Builder> iconPackSettingsFragmentSubcomponentBuilderProvider;
    private Provider<LauncherAppComponent> launcherAppComponentProvider;
    private Provider<FlavorAndroidInjectionModule_Launcher.LauncherSubcomponent.Builder> launcherSubcomponentBuilderProvider;
    private Provider<LayoutSettingsManager> layoutSettingsManagerProvider;
    private Provider<LocalAppsManager> localAppsManagerProvider;
    private final MemoryWatcher memoryWatcher;
    private Provider<AbstractC0506x27f1da58.MessagingServiceSubcomponent.Builder> messagingServiceSubcomponentBuilderProvider;
    private Provider<Set<Pair<Class, JsonDeserializer>>> namedSetOfPairOfClassAndJsonDeserializerProvider;
    private Provider<FlavorAndroidInjectionModule_OnboardingActivity.OnboardingActivitySubcomponent.Builder> onboardingActivitySubcomponentBuilderProvider;
    private Provider<AbstractC0507x7b7848c4.PersonalizeActivitySubcomponent.Builder> personalizeActivitySubcomponentBuilderProvider;
    private Provider<AbstractC0508xac29a7bf.PersonalizeOnboardingActivitySubcomponent.Builder> personalizeOnboardingActivitySubcomponentBuilderProvider;
    private Provider<AbstractC0509xdbfc55cc.PersonalizeSearchActivitySubcomponent.Builder> personalizeSearchActivitySubcomponentBuilderProvider;
    private Provider<FlavorAndroidInjectionModule_PopupFragment.PopupFragmentSubcomponent.Builder> popupFragmentSubcomponentBuilderProvider;
    private Provider<DeepShortcutManager> provideDeepShortcutManagerProvider;
    private Provider<MemoryRegistry> provideMemoryRegistryProvider;
    private Provider<String> provideServerUrlProvider;
    private Provider<ActionPreferenceStore> providesActionPreferenceStoreProvider;
    private Provider<AnalyticsHandler> providesAnalyticsHandlerProvider;
    private Provider<AppLaunchDatabase> providesAppDatabaseProvider;
    private Provider<BehaviorSubject<Boolean>> providesAutoplaySubjectProvider;
    private Provider<ContactManager> providesContactManagerProvider;
    private Provider<Cache> providesExoPlayerCacheProvider;
    private Provider<FrequentlyUsedLocalModel> providesFrequentlyUsedLocalModelProvider;
    private Provider<FrequentlyUsedModel> providesFrequentlyUsedModelProvider;
    private Provider<Gson> providesGsonProvider;
    private Provider<HideAppsModel> providesHideAppsModelProvider;
    private Provider<ImageResolver> providesImageResolverProvider;
    private Provider<JigsawAnalyticsService> providesJigsawAnalyticsServiceProvider;
    private Provider<Jigsaw> providesJigsawProvider;
    private Provider<LauncherConfigModel> providesLauncherConfigModelProvider;
    private Provider<LocationHandler> providesLocationHandlerProvider;
    private Provider<OkHttpClient> providesOkHttpClientProvider;
    private Provider<SharedPreferences.OnSharedPreferenceChangeListener> providesOnSharedPreferenceChangeListenerProvider;
    private Provider<PlayerBuilderRequestor> providesPlayerRequestorProvider;
    private Provider<Retrofit> providesRetrofitProvider;
    private Provider<SettingsStorage> providesSettingsStorageProvider;
    private Provider<SideScreenSharedPreferencesModel> providesSharedPreferencesModelProvider;
    private Provider<SharedPreferences> providesSharedPreferencesProvider;
    private Provider<SideScreenContentAPI> providesSideScreenContentAPIProvider;
    private Provider<SideScreenSharedDependencies> providesSideScreenSharedDependenciesProvider;
    private Provider<UserProfileManager> providesUserProfileManagerProvider;
    private Provider<AbstractC0510xda0caeb8.RelatedArticlesActivitySubcomponent.Builder> relatedArticlesActivitySubcomponentBuilderProvider;
    private Provider<AbstractC0511xcb6e659f.RelatedTopicsActivitySubcomponent.Builder> relatedTopicsActivitySubcomponentBuilderProvider;
    private Provider<AbstractC0512xb17b1fd3.RelatedVideosActivitySubcomponent.Builder> relatedVideosActivitySubcomponentBuilderProvider;
    private Provider<FlavorAndroidInjectionModule_ResetLauncherFailureFragment.ResetLauncherFailureFragmentSubcomponent.Builder> resetLauncherFailureFragmentSubcomponentBuilderProvider;
    private Provider<FlavorAndroidInjectionModule_ResetLauncherPromptFragment.ResetLauncherPromptFragmentSubcomponent.Builder> resetLauncherPromptFragmentSubcomponentBuilderProvider;
    private Provider<FlavorAndroidInjectionModule_SelectAppFragment.SelectAppFragmentSubcomponent.Builder> selectAppFragmentSubcomponentBuilderProvider;
    private final ServerUrlModule serverUrlModule;
    private Provider<CommonAndroidInjectionModule_SettingsActivity.SettingsActivitySubcomponent.Builder> settingsActivitySubcomponentBuilderProvider;
    private final SideScreenContentModule sideScreenContentModule;
    private Provider<CommonAndroidInjectionModule_TermsAndConditionsActivity.TermsAndConditionsActivitySubcomponent.Builder> termsAndConditionsActivitySubcomponentBuilderProvider;
    private final TileSettingsModule tileSettingsModule;
    private Provider<SideScreenAndroidInjectorModule_ContributesTokenServiceInjector.TokenServiceSubcomponent.Builder> tokenServiceSubcomponentBuilderProvider;
    private Provider<AbstractC0513x2f9a5810.TopicDetailActivitySubcomponent.Builder> topicDetailActivitySubcomponentBuilderProvider;
    private Provider<AbstractC0514x27061b76.WebViewerActivitySubcomponent.Builder> webViewerActivitySubcomponentBuilderProvider;
    private Provider<CommonAndroidInjectionModule_WidgetsFragment.WidgetsFragmentSubcomponent.Builder> widgetsFragmentSubcomponentBuilderProvider;

    private DaggerLauncherAppComponent(SingletonsModule singletonsModule, LauncherConfigModelModule launcherConfigModelModule, RetrofitModule retrofitModule, OkHttpModule okHttpModule, ServerUrlModule serverUrlModule, FrequentlyUsedModule frequentlyUsedModule, TileSettingsModule tileSettingsModule, OathPlayerModule oathPlayerModule, JigsawModule jigsawModule, MemoryRegistryModule memoryRegistryModule, DeepShortcutManagerModule deepShortcutManagerModule, SideScreenContentModule sideScreenContentModule, HideAppsModule hideAppsModule, Application application, Context context, MemoryWatcher memoryWatcher) {
        this.memoryWatcher = memoryWatcher;
        this.tileSettingsModule = tileSettingsModule;
        this.context = context;
        this.serverUrlModule = serverUrlModule;
        this.sideScreenContentModule = sideScreenContentModule;
        initialize(singletonsModule, launcherConfigModelModule, retrofitModule, okHttpModule, serverUrlModule, frequentlyUsedModule, tileSettingsModule, oathPlayerModule, jigsawModule, memoryRegistryModule, deepShortcutManagerModule, sideScreenContentModule, hideAppsModule, application, context, memoryWatcher);
    }

    public static LauncherAppComponent.Builder builder() {
        return new Builder();
    }

    private Map<Class<?>, Provider<AndroidInjector.Factory<?>>> getMapOfClassOfAndProviderOfFactoryOf() {
        return MapBuilder.newMapBuilder(30).put(TermsAndConditionsActivity.class, this.termsAndConditionsActivitySubcomponentBuilderProvider).put(SettingsActivity.class, this.settingsActivitySubcomponentBuilderProvider).put(ConfirmShortcutActivity.class, this.confirmShortcutActivitySubcomponentBuilderProvider).put(AllAppsFragment.class, this.allAppsFragmentSubcomponentBuilderProvider).put(WidgetsFragment.class, this.widgetsFragmentSubcomponentBuilderProvider).put(OnboardingActivity.class, this.onboardingActivitySubcomponentBuilderProvider).put(Launcher.class, this.launcherSubcomponentBuilderProvider).put(SelectAppFragment.class, this.selectAppFragmentSubcomponentBuilderProvider).put(CustomGestureSettingsFragment.class, this.customGestureSettingsFragmentSubcomponentBuilderProvider).put(ResetLauncherFailureFragment.class, this.resetLauncherFailureFragmentSubcomponentBuilderProvider).put(ResetLauncherPromptFragment.class, this.resetLauncherPromptFragmentSubcomponentBuilderProvider).put(PopupFragment.class, this.popupFragmentSubcomponentBuilderProvider).put(HideAppsSettingsFragment.class, this.hideAppsSettingsFragmentSubcomponentBuilderProvider).put(AppOptionsFragment.class, this.appOptionsFragmentSubcomponentBuilderProvider).put(DesktopSettingsFragment.class, this.desktopSettingsFragmentSubcomponentBuilderProvider).put(DockSettingsFragment.class, this.dockSettingsFragmentSubcomponentBuilderProvider).put(IconPackSettingsFragment.class, this.iconPackSettingsFragmentSubcomponentBuilderProvider).put(ChangeIconFragment.class, this.changeIconFragmentSubcomponentBuilderProvider).put(AppDrawerSettingsFragment.class, this.appDrawerSettingsFragmentSubcomponentBuilderProvider).put(FolderSettingsFragment.class, this.folderSettingsFragmentSubcomponentBuilderProvider).put(TopicDetailActivity.class, this.topicDetailActivitySubcomponentBuilderProvider).put(PersonalizeActivity.class, this.personalizeActivitySubcomponentBuilderProvider).put(PersonalizeOnboardingActivity.class, this.personalizeOnboardingActivitySubcomponentBuilderProvider).put(PersonalizeSearchActivity.class, this.personalizeSearchActivitySubcomponentBuilderProvider).put(RelatedTopicsActivity.class, this.relatedTopicsActivitySubcomponentBuilderProvider).put(WebViewerActivity.class, this.webViewerActivitySubcomponentBuilderProvider).put(RelatedArticlesActivity.class, this.relatedArticlesActivitySubcomponentBuilderProvider).put(RelatedVideosActivity.class, this.relatedVideosActivitySubcomponentBuilderProvider).put(TokenService.class, this.tokenServiceSubcomponentBuilderProvider).put(MessagingService.class, this.messagingServiceSubcomponentBuilderProvider).build();
    }

    private DispatchingAndroidInjector<Activity> getDispatchingAndroidInjectorOfActivity() {
        return DispatchingAndroidInjector_Factory.newDispatchingAndroidInjector(getMapOfClassOfAndProviderOfFactoryOf(), Collections.emptyMap());
    }

    private DispatchingAndroidInjector<Fragment> getDispatchingAndroidInjectorOfFragment() {
        return DispatchingAndroidInjector_Factory.newDispatchingAndroidInjector(getMapOfClassOfAndProviderOfFactoryOf(), Collections.emptyMap());
    }

    private DispatchingAndroidInjector<Service> getDispatchingAndroidInjectorOfService() {
        return DispatchingAndroidInjector_Factory.newDispatchingAndroidInjector(getMapOfClassOfAndProviderOfFactoryOf(), Collections.emptyMap());
    }

    private AppsInfoLabelOverrideFilter getAppsInfoLabelOverrideFilter() {
        return new AppsInfoLabelOverrideFilter(this.context, this.localAppsManagerProvider.get());
    }

    private String getNamedString() {
        return ServerUrlModule_ProvideServerUrlFactory.proxyProvideServerUrl(this.serverUrlModule, this.context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SideScreenSharedDependencies getSideScreenSharedDependencies() {
        return InterfaceModule_ProvidesSideScreenSharedDependenciesFactory.proxyProvidesSideScreenSharedDependencies(this);
    }

    private void initialize(SingletonsModule singletonsModule, LauncherConfigModelModule launcherConfigModelModule, RetrofitModule retrofitModule, OkHttpModule okHttpModule, ServerUrlModule serverUrlModule, FrequentlyUsedModule frequentlyUsedModule, TileSettingsModule tileSettingsModule, OathPlayerModule oathPlayerModule, JigsawModule jigsawModule, MemoryRegistryModule memoryRegistryModule, DeepShortcutManagerModule deepShortcutManagerModule, SideScreenContentModule sideScreenContentModule, HideAppsModule hideAppsModule, Application application, Context context, MemoryWatcher memoryWatcher) {
        this.contextProvider = InstanceFactory.create(context);
        this.localAppsManagerProvider = DoubleCheck.provider(LocalAppsManager_Factory.create(this.contextProvider));
        this.namedSetOfPairOfClassAndJsonDeserializerProvider = SetFactory.builder(1, 0).addProvider(GsonModule_ProvidesTypeAdapterFactory.create()).build();
        this.providesGsonProvider = DoubleCheck.provider(RetrofitModule_ProvidesGsonFactory.create(retrofitModule, this.namedSetOfPairOfClassAndJsonDeserializerProvider));
        this.providesOkHttpClientProvider = DoubleCheck.provider(OkHttpModule_ProvidesOkHttpClientFactory.create(okHttpModule));
        this.provideServerUrlProvider = ServerUrlModule_ProvideServerUrlFactory.create(serverUrlModule, this.contextProvider);
        this.providesRetrofitProvider = DoubleCheck.provider(RetrofitModule_ProvidesRetrofitFactory.create(retrofitModule, this.providesGsonProvider, this.providesOkHttpClientProvider, this.provideServerUrlProvider));
        this.providesLauncherConfigModelProvider = DoubleCheck.provider(LauncherConfigModelModule_ProvidesLauncherConfigModelFactory.create(launcherConfigModelModule, this.providesRetrofitProvider));
        this.providesSettingsStorageProvider = DoubleCheck.provider(SingletonsModule_ProvidesSettingsStorageFactory.create(singletonsModule, this.contextProvider, this.providesLauncherConfigModelProvider));
        this.providesAnalyticsHandlerProvider = DoubleCheck.provider(SingletonsModule_ProvidesAnalyticsHandlerFactory.create(singletonsModule));
        this.providesAppDatabaseProvider = DoubleCheck.provider(AppDatabaseModule_ProvidesAppDatabaseFactory.create(this.contextProvider));
        this.providesFrequentlyUsedLocalModelProvider = DoubleCheck.provider(FrequentlyUsedModule_ProvidesFrequentlyUsedLocalModelFactory.create(frequentlyUsedModule, this.providesAppDatabaseProvider));
        this.providesFrequentlyUsedModelProvider = DoubleCheck.provider(FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory.create(frequentlyUsedModule, this.contextProvider, this.providesOkHttpClientProvider, this.providesAnalyticsHandlerProvider, this.providesRetrofitProvider, this.providesFrequentlyUsedLocalModelProvider));
        this.providesExoPlayerCacheProvider = DoubleCheck.provider(ExoPlayerCacheModule_ProvidesExoPlayerCacheFactory.create(this.contextProvider));
        this.providesSharedPreferencesProvider = DoubleCheck.provider(TileSettingsModule_ProvidesSharedPreferencesFactory.create(tileSettingsModule, this.contextProvider));
        this.providesAutoplaySubjectProvider = DoubleCheck.provider(TileSettingsModule_ProvidesAutoplaySubjectFactory.create(tileSettingsModule, this.providesSharedPreferencesProvider));
        this.providesOnSharedPreferenceChangeListenerProvider = DoubleCheck.provider(C1231xdda70633.create(tileSettingsModule, this.providesSharedPreferencesProvider, this.providesAutoplaySubjectProvider));
        this.providesPlayerRequestorProvider = DoubleCheck.provider(OathPlayerModule_ProvidesPlayerRequestorFactory.create(oathPlayerModule, this.contextProvider));
        this.applicationProvider = InstanceFactory.create(application);
        this.providesImageResolverProvider = DoubleCheck.provider(JigsawModule_ProvidesImageResolverFactory.create(jigsawModule, this.localAppsManagerProvider));
        this.providesUserProfileManagerProvider = DoubleCheck.provider(SingletonsModule_ProvidesUserProfileManagerFactory.create(singletonsModule));
        this.providesActionPreferenceStoreProvider = DoubleCheck.provider(JigsawModule_ProvidesActionPreferenceStoreFactory.create(jigsawModule, this.providesUserProfileManagerProvider));
        this.providesContactManagerProvider = DoubleCheck.provider(JigsawModule_ProvidesContactManagerFactory.create(jigsawModule, this.contextProvider));
        this.providesJigsawAnalyticsServiceProvider = DoubleCheck.provider(JigsawModule_ProvidesJigsawAnalyticsServiceFactory.create(jigsawModule, this.applicationProvider, this.providesAnalyticsHandlerProvider, this.providesActionPreferenceStoreProvider));
        this.providesJigsawProvider = DoubleCheck.provider(JigsawModule_ProvidesJigsawFactory.create(jigsawModule, this.applicationProvider, this.providesImageResolverProvider, this.providesActionPreferenceStoreProvider, this.providesContactManagerProvider, this.providesJigsawAnalyticsServiceProvider));
        this.provideMemoryRegistryProvider = DoubleCheck.provider(MemoryRegistryModule_ProvideMemoryRegistryFactory.create(memoryRegistryModule));
        this.hybridNetworkFetcherProvider = HybridNetworkFetcher_Factory.create(this.contextProvider, this.providesOkHttpClientProvider);
        this.iconPackManagerProvider = DoubleCheck.provider(IconPackManager_Factory.create(this.contextProvider, this.localAppsManagerProvider));
        this.appsInfoIconFilterProvider = AppsInfoIconFilter_Factory.create(this.contextProvider, this.localAppsManagerProvider);
        this.termsAndConditionsActivitySubcomponentBuilderProvider = new Provider<CommonAndroidInjectionModule_TermsAndConditionsActivity.TermsAndConditionsActivitySubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public CommonAndroidInjectionModule_TermsAndConditionsActivity.TermsAndConditionsActivitySubcomponent.Builder get() {
                return new TermsAndConditionsActivitySubcomponentBuilder();
            }
        };
        this.settingsActivitySubcomponentBuilderProvider = new Provider<CommonAndroidInjectionModule_SettingsActivity.SettingsActivitySubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public CommonAndroidInjectionModule_SettingsActivity.SettingsActivitySubcomponent.Builder get() {
                return new SettingsActivitySubcomponentBuilder();
            }
        };
        this.confirmShortcutActivitySubcomponentBuilderProvider = new Provider<AbstractC1230xa2b4dee3.ConfirmShortcutActivitySubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public AbstractC1230xa2b4dee3.ConfirmShortcutActivitySubcomponent.Builder get() {
                return new ConfirmShortcutActivitySubcomponentBuilder();
            }
        };
        this.allAppsFragmentSubcomponentBuilderProvider = new Provider<CommonAndroidInjectionModule_AllAppsFragment.AllAppsFragmentSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public CommonAndroidInjectionModule_AllAppsFragment.AllAppsFragmentSubcomponent.Builder get() {
                return new AllAppsFragmentSubcomponentBuilder();
            }
        };
        this.widgetsFragmentSubcomponentBuilderProvider = new Provider<CommonAndroidInjectionModule_WidgetsFragment.WidgetsFragmentSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public CommonAndroidInjectionModule_WidgetsFragment.WidgetsFragmentSubcomponent.Builder get() {
                return new WidgetsFragmentSubcomponentBuilder();
            }
        };
        this.onboardingActivitySubcomponentBuilderProvider = new Provider<FlavorAndroidInjectionModule_OnboardingActivity.OnboardingActivitySubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public FlavorAndroidInjectionModule_OnboardingActivity.OnboardingActivitySubcomponent.Builder get() {
                return new OnboardingActivitySubcomponentBuilder();
            }
        };
        this.launcherSubcomponentBuilderProvider = new Provider<FlavorAndroidInjectionModule_Launcher.LauncherSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public FlavorAndroidInjectionModule_Launcher.LauncherSubcomponent.Builder get() {
                return new LauncherSubcomponentBuilder();
            }
        };
        this.selectAppFragmentSubcomponentBuilderProvider = new Provider<FlavorAndroidInjectionModule_SelectAppFragment.SelectAppFragmentSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public FlavorAndroidInjectionModule_SelectAppFragment.SelectAppFragmentSubcomponent.Builder get() {
                return new SelectAppFragmentSubcomponentBuilder();
            }
        };
        this.customGestureSettingsFragmentSubcomponentBuilderProvider = new Provider<FlavorAndroidInjectionModule_CustomGestureSettingsFragment.CustomGestureSettingsFragmentSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.9
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public FlavorAndroidInjectionModule_CustomGestureSettingsFragment.CustomGestureSettingsFragmentSubcomponent.Builder get() {
                return new CustomGestureSettingsFragmentSubcomponentBuilder();
            }
        };
        this.resetLauncherFailureFragmentSubcomponentBuilderProvider = new Provider<FlavorAndroidInjectionModule_ResetLauncherFailureFragment.ResetLauncherFailureFragmentSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public FlavorAndroidInjectionModule_ResetLauncherFailureFragment.ResetLauncherFailureFragmentSubcomponent.Builder get() {
                return new ResetLauncherFailureFragmentSubcomponentBuilder();
            }
        };
        this.resetLauncherPromptFragmentSubcomponentBuilderProvider = new Provider<FlavorAndroidInjectionModule_ResetLauncherPromptFragment.ResetLauncherPromptFragmentSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public FlavorAndroidInjectionModule_ResetLauncherPromptFragment.ResetLauncherPromptFragmentSubcomponent.Builder get() {
                return new ResetLauncherPromptFragmentSubcomponentBuilder();
            }
        };
        this.popupFragmentSubcomponentBuilderProvider = new Provider<FlavorAndroidInjectionModule_PopupFragment.PopupFragmentSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.12
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public FlavorAndroidInjectionModule_PopupFragment.PopupFragmentSubcomponent.Builder get() {
                return new PopupFragmentSubcomponentBuilder();
            }
        };
        this.hideAppsSettingsFragmentSubcomponentBuilderProvider = new Provider<FlavorAndroidInjectionModule_HideAppSettingsFragment.HideAppsSettingsFragmentSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.13
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public FlavorAndroidInjectionModule_HideAppSettingsFragment.HideAppsSettingsFragmentSubcomponent.Builder get() {
                return new HideAppsSettingsFragmentSubcomponentBuilder();
            }
        };
        this.appOptionsFragmentSubcomponentBuilderProvider = new Provider<FlavorAndroidInjectionModule_AppOptionsFragment.AppOptionsFragmentSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.14
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public FlavorAndroidInjectionModule_AppOptionsFragment.AppOptionsFragmentSubcomponent.Builder get() {
                return new AppOptionsFragmentSubcomponentBuilder();
            }
        };
        this.desktopSettingsFragmentSubcomponentBuilderProvider = new Provider<FlavorAndroidInjectionModule_DesktopSettingsFragment.DesktopSettingsFragmentSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.15
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public FlavorAndroidInjectionModule_DesktopSettingsFragment.DesktopSettingsFragmentSubcomponent.Builder get() {
                return new DesktopSettingsFragmentSubcomponentBuilder();
            }
        };
        this.dockSettingsFragmentSubcomponentBuilderProvider = new Provider<FlavorAndroidInjectionModule_DockSettingsFragment.DockSettingsFragmentSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.16
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public FlavorAndroidInjectionModule_DockSettingsFragment.DockSettingsFragmentSubcomponent.Builder get() {
                return new DockSettingsFragmentSubcomponentBuilder();
            }
        };
        this.iconPackSettingsFragmentSubcomponentBuilderProvider = new Provider<FlavorAndroidInjectionModule_IconPackSettingsFragment.IconPackSettingsFragmentSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.17
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public FlavorAndroidInjectionModule_IconPackSettingsFragment.IconPackSettingsFragmentSubcomponent.Builder get() {
                return new IconPackSettingsFragmentSubcomponentBuilder();
            }
        };
        this.changeIconFragmentSubcomponentBuilderProvider = new Provider<FlavorAndroidInjectionModule_ChangeIconFragment.ChangeIconFragmentSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.18
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public FlavorAndroidInjectionModule_ChangeIconFragment.ChangeIconFragmentSubcomponent.Builder get() {
                return new ChangeIconFragmentSubcomponentBuilder();
            }
        };
        this.appDrawerSettingsFragmentSubcomponentBuilderProvider = new Provider<FlavorAndroidInjectionModule_AppDrawerSettingsFragment.AppDrawerSettingsFragmentSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.19
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public FlavorAndroidInjectionModule_AppDrawerSettingsFragment.AppDrawerSettingsFragmentSubcomponent.Builder get() {
                return new AppDrawerSettingsFragmentSubcomponentBuilder();
            }
        };
        this.folderSettingsFragmentSubcomponentBuilderProvider = new Provider<FlavorAndroidInjectionModule_FolderSettingsFragment.FolderSettingsFragmentSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.20
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public FlavorAndroidInjectionModule_FolderSettingsFragment.FolderSettingsFragmentSubcomponent.Builder get() {
                return new FolderSettingsFragmentSubcomponentBuilder();
            }
        };
        this.topicDetailActivitySubcomponentBuilderProvider = new Provider<AbstractC0513x2f9a5810.TopicDetailActivitySubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.21
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public AbstractC0513x2f9a5810.TopicDetailActivitySubcomponent.Builder get() {
                return new TopicDetailActivitySubcomponentBuilder();
            }
        };
        this.personalizeActivitySubcomponentBuilderProvider = new Provider<AbstractC0507x7b7848c4.PersonalizeActivitySubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.22
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public AbstractC0507x7b7848c4.PersonalizeActivitySubcomponent.Builder get() {
                return new PersonalizeActivitySubcomponentBuilder();
            }
        };
        this.personalizeOnboardingActivitySubcomponentBuilderProvider = new Provider<AbstractC0508xac29a7bf.PersonalizeOnboardingActivitySubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.23
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public AbstractC0508xac29a7bf.PersonalizeOnboardingActivitySubcomponent.Builder get() {
                return new PersonalizeOnboardingActivitySubcomponentBuilder();
            }
        };
        this.personalizeSearchActivitySubcomponentBuilderProvider = new Provider<AbstractC0509xdbfc55cc.PersonalizeSearchActivitySubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.24
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public AbstractC0509xdbfc55cc.PersonalizeSearchActivitySubcomponent.Builder get() {
                return new PersonalizeSearchActivitySubcomponentBuilder();
            }
        };
        this.relatedTopicsActivitySubcomponentBuilderProvider = new Provider<AbstractC0511xcb6e659f.RelatedTopicsActivitySubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.25
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public AbstractC0511xcb6e659f.RelatedTopicsActivitySubcomponent.Builder get() {
                return new RelatedTopicsActivitySubcomponentBuilder();
            }
        };
        this.webViewerActivitySubcomponentBuilderProvider = new Provider<AbstractC0514x27061b76.WebViewerActivitySubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.26
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public AbstractC0514x27061b76.WebViewerActivitySubcomponent.Builder get() {
                return new WebViewerActivitySubcomponentBuilder();
            }
        };
        this.relatedArticlesActivitySubcomponentBuilderProvider = new Provider<AbstractC0510xda0caeb8.RelatedArticlesActivitySubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.27
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public AbstractC0510xda0caeb8.RelatedArticlesActivitySubcomponent.Builder get() {
                return new RelatedArticlesActivitySubcomponentBuilder();
            }
        };
        this.relatedVideosActivitySubcomponentBuilderProvider = new Provider<AbstractC0512xb17b1fd3.RelatedVideosActivitySubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.28
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public AbstractC0512xb17b1fd3.RelatedVideosActivitySubcomponent.Builder get() {
                return new RelatedVideosActivitySubcomponentBuilder();
            }
        };
        this.tokenServiceSubcomponentBuilderProvider = new Provider<SideScreenAndroidInjectorModule_ContributesTokenServiceInjector.TokenServiceSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.29
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public SideScreenAndroidInjectorModule_ContributesTokenServiceInjector.TokenServiceSubcomponent.Builder get() {
                return new TokenServiceSubcomponentBuilder();
            }
        };
        this.messagingServiceSubcomponentBuilderProvider = new Provider<AbstractC0506x27f1da58.MessagingServiceSubcomponent.Builder>() { // from class: com.voxel.simplesearchlauncher.dagger.DaggerLauncherAppComponent.30
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // javax.inject.Provider
            public AbstractC0506x27f1da58.MessagingServiceSubcomponent.Builder get() {
                return new MessagingServiceSubcomponentBuilder();
            }
        };
        this.provideDeepShortcutManagerProvider = DoubleCheck.provider(DeepShortcutManagerModule_ProvideDeepShortcutManagerFactory.create(deepShortcutManagerModule, this.contextProvider));
        this.layoutSettingsManagerProvider = DoubleCheck.provider(LayoutSettingsManager_Factory.create(this.contextProvider));
        this.connectionPoolKillerProvider = DoubleCheck.provider(ConnectionPoolKiller_Factory.create(this.contextProvider, this.providesOkHttpClientProvider));
        this.analyticsModelProvider = DoubleCheck.provider(AnalyticsModel_Factory.create(this.providesAnalyticsHandlerProvider));
        this.providesSideScreenContentAPIProvider = DoubleCheck.provider(SideScreenContentModule_ProvidesSideScreenContentAPIFactory.create(sideScreenContentModule, this.providesOkHttpClientProvider, this.providesRetrofitProvider));
        this.providesLocationHandlerProvider = DoubleCheck.provider(SingletonsModule_ProvidesLocationHandlerFactory.create(singletonsModule));
        this.providesSharedPreferencesModelProvider = DoubleCheck.provider(C0504xa3003cff.create(this.contextProvider, this.providesGsonProvider));
        this.providesHideAppsModelProvider = DoubleCheck.provider(HideAppsModule_ProvidesHideAppsModelFactory.create(hideAppsModule, this.contextProvider));
        this.launcherAppComponentProvider = InstanceFactory.create(this);
        this.providesSideScreenSharedDependenciesProvider = InterfaceModule_ProvidesSideScreenSharedDependenciesFactory.create(this.launcherAppComponentProvider);
    }

    @Override // com.evie.sidescreen.dagger.SideScreenSharedDependenciesExcludingContext
    public Integer appVersionCode() {
        return AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory.proxyProvidesAppVersionCodeForSideScreen();
    }

    @Override // com.evie.sidescreen.dagger.SideScreenSharedDependenciesExcludingContext
    public Gson gson() {
        return this.providesGsonProvider.get();
    }

    @Override // com.evie.sidescreen.dagger.SideScreenSharedDependenciesExcludingContext
    public Retrofit retrofit() {
        return this.providesRetrofitProvider.get();
    }

    @Override // com.evie.sidescreen.dagger.SideScreenSharedDependenciesExcludingContext
    public OkHttpClient okHttpClient() {
        return this.providesOkHttpClientProvider.get();
    }

    @Override // com.evie.sidescreen.dagger.SideScreenSharedDependenciesExcludingContext
    public FrequentlyUsedModel frequentlyUsedModel() {
        return this.providesFrequentlyUsedModelProvider.get();
    }

    @Override // com.evie.sidescreen.dagger.SideScreenSharedDependenciesExcludingContext
    public AnalyticsHandler analyticsHandler() {
        return this.providesAnalyticsHandlerProvider.get();
    }

    @Override // com.evie.sidescreen.dagger.SideScreenSharedDependenciesExcludingContext
    public MemoryWatcher memoryWatcher() {
        return this.memoryWatcher;
    }

    @Override // com.evie.sidescreen.dagger.SideScreenSharedDependenciesExcludingContext
    public Cache exoplayerCache() {
        return this.providesExoPlayerCacheProvider.get();
    }

    @Override // com.evie.sidescreen.dagger.SideScreenSharedDependenciesExcludingContext
    public Map<String, AdTilePresenterFactory> adTilePresenterFactories() {
        return Collections.emptyMap();
    }

    @Override // com.evie.sidescreen.dagger.SideScreenSharedDependenciesExcludingContext
    public Map<String, AdUnitPool> adUnitPools() {
        return Collections.emptyMap();
    }

    @Override // com.evie.sidescreen.dagger.SideScreenSharedDependenciesExcludingContext
    public TileSettings tileSettings() {
        return TileSettingsModule_ProvidesTileSettingsFactory.proxyProvidesTileSettings(this.tileSettingsModule, this.providesAutoplaySubjectProvider.get(), this.providesOnSharedPreferenceChangeListenerProvider.get());
    }

    @Override // com.evie.sidescreen.dagger.SideScreenSharedDependenciesExcludingContext
    public PlayerBuilderRequestor playerBuilderRequestor() {
        return this.providesPlayerRequestorProvider.get();
    }

    @Override // com.evie.sidescreen.SideScreenSharedDependencies
    public Context context() {
        return this.context;
    }

    @Override // com.voxel.simplesearchlauncher.dagger.LauncherAppComponent
    public void inject(BaseApplication baseApplication) {
        injectBaseApplication(baseApplication);
    }

    @Override // com.voxel.simplesearchlauncher.dagger.LauncherAppComponent
    public void inject(LauncherModel launcherModel) {
        injectLauncherModel(launcherModel);
    }

    @Override // com.voxel.simplesearchlauncher.dagger.LauncherAppComponent
    public void inject(LauncherAppState launcherAppState) {
        injectLauncherAppState(launcherAppState);
    }

    @Override // com.voxel.simplesearchlauncher.dagger.LauncherAppComponent
    public void inject(FlavorInitializer flavorInitializer) {
        injectFlavorInitializer(flavorInitializer);
    }

    @Override // com.voxel.simplesearchlauncher.dagger.LauncherAppComponent
    public void inject(SearchUiHelper searchUiHelper) {
        injectSearchUiHelper(searchUiHelper);
    }

    @Override // com.voxel.simplesearchlauncher.dagger.LauncherAppComponent
    public void inject(BackupRestoreManager backupRestoreManager) {
        injectBackupRestoreManager(backupRestoreManager);
    }

    private BaseApplication injectBaseApplication(BaseApplication baseApplication) {
        BaseApplication_MembersInjector.injectMAnalyticsHandler(baseApplication, this.providesAnalyticsHandlerProvider.get());
        BaseApplication_MembersInjector.injectMJigsaw(baseApplication, this.providesJigsawProvider.get());
        BaseApplication_MembersInjector.injectMMemoryRegistry(baseApplication, this.provideMemoryRegistryProvider.get());
        BaseApplication_MembersInjector.injectMSettingsStorage(baseApplication, this.providesSettingsStorageProvider.get());
        BaseApplication_MembersInjector.injectMHybridNetworkFetcherProvider(baseApplication, this.hybridNetworkFetcherProvider);
        BaseApplication_MembersInjector.injectMIconPackManager(baseApplication, this.iconPackManagerProvider.get());
        BaseApplication_MembersInjector.injectMIconFilterProvider(baseApplication, this.appsInfoIconFilterProvider);
        BaseApplication_MembersInjector.injectMActivityInjector(baseApplication, getDispatchingAndroidInjectorOfActivity());
        BaseApplication_MembersInjector.injectMSupportFragmentInjector(baseApplication, getDispatchingAndroidInjectorOfFragment());
        BaseApplication_MembersInjector.injectMServiceInjector(baseApplication, getDispatchingAndroidInjectorOfService());
        return baseApplication;
    }

    private LauncherModel injectLauncherModel(LauncherModel launcherModel) {
        LauncherModel_MembersInjector.injectMDeepShortcutManager(launcherModel, this.provideDeepShortcutManagerProvider.get());
        LauncherModel_MembersInjector.injectMAppsInfoLabelOverrideFilter(launcherModel, getAppsInfoLabelOverrideFilter());
        return launcherModel;
    }

    private LauncherAppState injectLauncherAppState(LauncherAppState launcherAppState) {
        LauncherAppState_MembersInjector.injectMLayoutSettingsManager(launcherAppState, this.layoutSettingsManagerProvider.get());
        return launcherAppState;
    }

    private FlavorInitializer injectFlavorInitializer(FlavorInitializer flavorInitializer) {
        FlavorInitializer_MembersInjector.injectMLauncherAppComponent(flavorInitializer, this);
        FlavorInitializer_MembersInjector.injectMSettingsStorage(flavorInitializer, this.providesSettingsStorageProvider.get());
        FlavorInitializer_MembersInjector.injectMOkHttpClient(flavorInitializer, this.providesOkHttpClientProvider.get());
        FlavorInitializer_MembersInjector.injectMIconPackManager(flavorInitializer, this.iconPackManagerProvider.get());
        FlavorInitializer_MembersInjector.injectMIconFilterProvider(flavorInitializer, this.appsInfoIconFilterProvider);
        FlavorInitializer_MembersInjector.injectMFrequentlyUsedModel(flavorInitializer, this.providesFrequentlyUsedModelProvider.get());
        FlavorInitializer_MembersInjector.injectMKiller(flavorInitializer, this.connectionPoolKillerProvider.get());
        FlavorInitializer_MembersInjector.injectMAnalyticsModel(flavorInitializer, this.analyticsModelProvider.get());
        return flavorInitializer;
    }

    private SearchUiHelper injectSearchUiHelper(SearchUiHelper searchUiHelper) {
        SearchUiHelper_MembersInjector.injectMServerUrl(searchUiHelper, getNamedString());
        return searchUiHelper;
    }

    private BackupRestoreManager injectBackupRestoreManager(BackupRestoreManager backupRestoreManager) {
        BackupRestoreManager_MembersInjector.injectMLayoutSettingsManager(backupRestoreManager, this.layoutSettingsManagerProvider.get());
        BackupRestoreManager_MembersInjector.injectMIconPackManager(backupRestoreManager, this.iconPackManagerProvider.get());
        BackupRestoreManager_MembersInjector.injectMSettingsStorage(backupRestoreManager, this.providesSettingsStorageProvider.get());
        BackupRestoreManager_MembersInjector.injectMLocalAppsManager(backupRestoreManager, this.localAppsManagerProvider.get());
        return backupRestoreManager;
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static final class Builder implements LauncherAppComponent.Builder {
        private Application application;
        private Context context;
        private DeepShortcutManagerModule deepShortcutManagerModule;
        private FrequentlyUsedModule frequentlyUsedModule;
        private HideAppsModule hideAppsModule;
        private JigsawModule jigsawModule;
        private LauncherConfigModelModule launcherConfigModelModule;
        private MemoryRegistryModule memoryRegistryModule;
        private MemoryWatcher memoryWatcher;
        private OathPlayerModule oathPlayerModule;
        private OkHttpModule okHttpModule;
        private RetrofitModule retrofitModule;
        private ServerUrlModule serverUrlModule;
        private SideScreenContentModule sideScreenContentModule;
        private SingletonsModule singletonsModule;
        private TileSettingsModule tileSettingsModule;

        private Builder() {
        }

        @Override // com.voxel.simplesearchlauncher.dagger.LauncherAppComponent.Builder
        public Builder application(Application application) {
            this.application = (Application) Preconditions.checkNotNull(application);
            return this;
        }

        @Override // com.voxel.simplesearchlauncher.dagger.LauncherAppComponent.Builder
        public Builder context(Context context) {
            this.context = (Context) Preconditions.checkNotNull(context);
            return this;
        }

        @Override // com.voxel.simplesearchlauncher.dagger.LauncherAppComponent.Builder
        public Builder memoryWatcher(MemoryWatcher memoryWatcher) {
            this.memoryWatcher = (MemoryWatcher) Preconditions.checkNotNull(memoryWatcher);
            return this;
        }

        @Override // com.voxel.simplesearchlauncher.dagger.LauncherAppComponent.Builder
        public LauncherAppComponent build() {
            if (this.singletonsModule == null) {
                this.singletonsModule = new SingletonsModule();
            }
            if (this.launcherConfigModelModule == null) {
                this.launcherConfigModelModule = new LauncherConfigModelModule();
            }
            if (this.retrofitModule == null) {
                this.retrofitModule = new RetrofitModule();
            }
            if (this.okHttpModule == null) {
                this.okHttpModule = new OkHttpModule();
            }
            if (this.serverUrlModule == null) {
                this.serverUrlModule = new ServerUrlModule();
            }
            if (this.frequentlyUsedModule == null) {
                this.frequentlyUsedModule = new FrequentlyUsedModule();
            }
            if (this.tileSettingsModule == null) {
                this.tileSettingsModule = new TileSettingsModule();
            }
            if (this.oathPlayerModule == null) {
                this.oathPlayerModule = new OathPlayerModule();
            }
            if (this.jigsawModule == null) {
                this.jigsawModule = new JigsawModule();
            }
            if (this.memoryRegistryModule == null) {
                this.memoryRegistryModule = new MemoryRegistryModule();
            }
            if (this.deepShortcutManagerModule == null) {
                this.deepShortcutManagerModule = new DeepShortcutManagerModule();
            }
            if (this.sideScreenContentModule == null) {
                this.sideScreenContentModule = new SideScreenContentModule();
            }
            if (this.hideAppsModule == null) {
                this.hideAppsModule = new HideAppsModule();
            }
            Preconditions.checkBuilderRequirement(this.application, Application.class);
            Preconditions.checkBuilderRequirement(this.context, Context.class);
            Preconditions.checkBuilderRequirement(this.memoryWatcher, MemoryWatcher.class);
            return new DaggerLauncherAppComponent(this.singletonsModule, this.launcherConfigModelModule, this.retrofitModule, this.okHttpModule, this.serverUrlModule, this.frequentlyUsedModule, this.tileSettingsModule, this.oathPlayerModule, this.jigsawModule, this.memoryRegistryModule, this.deepShortcutManagerModule, this.sideScreenContentModule, this.hideAppsModule, this.application, this.context, this.memoryWatcher);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class TermsAndConditionsActivitySubcomponentBuilder extends CommonAndroidInjectionModule_TermsAndConditionsActivity.TermsAndConditionsActivitySubcomponent.Builder {
        private TermsAndConditionsActivity seedInstance;

        private TermsAndConditionsActivitySubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(TermsAndConditionsActivity termsAndConditionsActivity) {
            this.seedInstance = (TermsAndConditionsActivity) Preconditions.checkNotNull(termsAndConditionsActivity);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<TermsAndConditionsActivity> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, TermsAndConditionsActivity.class);
            return new TermsAndConditionsActivitySubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class TermsAndConditionsActivitySubcomponentImpl implements CommonAndroidInjectionModule_TermsAndConditionsActivity.TermsAndConditionsActivitySubcomponent {
        private TermsAndConditionsActivitySubcomponentImpl(TermsAndConditionsActivity termsAndConditionsActivity) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(TermsAndConditionsActivity termsAndConditionsActivity) {
            injectTermsAndConditionsActivity(termsAndConditionsActivity);
        }

        private TermsAndConditionsActivity injectTermsAndConditionsActivity(TermsAndConditionsActivity termsAndConditionsActivity) {
            TermsAndConditionsActivity_MembersInjector.injectMClient(termsAndConditionsActivity, (OkHttpClient) DaggerLauncherAppComponent.this.providesOkHttpClientProvider.get());
            return termsAndConditionsActivity;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class SettingsActivitySubcomponentBuilder extends CommonAndroidInjectionModule_SettingsActivity.SettingsActivitySubcomponent.Builder {
        private SettingsActivity seedInstance;

        private SettingsActivitySubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(SettingsActivity settingsActivity) {
            this.seedInstance = (SettingsActivity) Preconditions.checkNotNull(settingsActivity);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<SettingsActivity> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, SettingsActivity.class);
            return new SettingsActivitySubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class SettingsActivitySubcomponentImpl implements CommonAndroidInjectionModule_SettingsActivity.SettingsActivitySubcomponent {
        private Provider<AbTestConfiguration> abTestConfigurationProvider;
        private Provider<SideScreenRelatedContentModel> providesSideScreenRelatedContentModelProvider;

        private SettingsActivitySubcomponentImpl(SettingsActivity settingsActivity) {
            initialize(settingsActivity);
        }

        private void initialize(SettingsActivity settingsActivity) {
            this.abTestConfigurationProvider = SingleCheck.provider(AbTestConfiguration_Factory.create(DaggerLauncherAppComponent.this.contextProvider));
            this.providesSideScreenRelatedContentModelProvider = SingleCheck.provider(C0494x2690c3a1.create(DaggerLauncherAppComponent.this.sideScreenContentModule, DaggerLauncherAppComponent.this.contextProvider, DaggerLauncherAppComponent.this.providesSideScreenContentAPIProvider, AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory.create(), this.abTestConfigurationProvider, DaggerLauncherAppComponent.this.providesAnalyticsHandlerProvider, DaggerLauncherAppComponent.this.providesLocationHandlerProvider));
        }

        @Override // dagger.android.AndroidInjector
        public void inject(SettingsActivity settingsActivity) {
            injectSettingsActivity(settingsActivity);
        }

        private SettingsActivity injectSettingsActivity(SettingsActivity settingsActivity) {
            SettingsActivity_MembersInjector.injectMAnalyticsHandler(settingsActivity, (AnalyticsHandler) DaggerLauncherAppComponent.this.providesAnalyticsHandlerProvider.get());
            SettingsActivity_MembersInjector.injectMSideScreenRelatedContentModel(settingsActivity, this.providesSideScreenRelatedContentModelProvider.get());
            SettingsActivity_MembersInjector.injectMSideScreenSharedPreferencesModel(settingsActivity, (SideScreenSharedPreferencesModel) DaggerLauncherAppComponent.this.providesSharedPreferencesModelProvider.get());
            return settingsActivity;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class ConfirmShortcutActivitySubcomponentBuilder extends AbstractC1230xa2b4dee3.ConfirmShortcutActivitySubcomponent.Builder {
        private ConfirmShortcutActivity seedInstance;

        private ConfirmShortcutActivitySubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(ConfirmShortcutActivity confirmShortcutActivity) {
            this.seedInstance = (ConfirmShortcutActivity) Preconditions.checkNotNull(confirmShortcutActivity);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<ConfirmShortcutActivity> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, ConfirmShortcutActivity.class);
            return new ConfirmShortcutActivitySubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class ConfirmShortcutActivitySubcomponentImpl implements AbstractC1230xa2b4dee3.ConfirmShortcutActivitySubcomponent {
        private ConfirmShortcutActivitySubcomponentImpl(ConfirmShortcutActivity confirmShortcutActivity) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(ConfirmShortcutActivity confirmShortcutActivity) {
            injectConfirmShortcutActivity(confirmShortcutActivity);
        }

        private ConfirmShortcutActivity injectConfirmShortcutActivity(ConfirmShortcutActivity confirmShortcutActivity) {
            ConfirmShortcutActivity_MembersInjector.injectMDeepShortcutManager(confirmShortcutActivity, (DeepShortcutManager) DaggerLauncherAppComponent.this.provideDeepShortcutManagerProvider.get());
            ConfirmShortcutActivity_MembersInjector.injectMSettingsStorage(confirmShortcutActivity, (SettingsStorage) DaggerLauncherAppComponent.this.providesSettingsStorageProvider.get());
            return confirmShortcutActivity;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class AllAppsFragmentSubcomponentBuilder extends CommonAndroidInjectionModule_AllAppsFragment.AllAppsFragmentSubcomponent.Builder {
        private AllAppsFragment seedInstance;

        private AllAppsFragmentSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(AllAppsFragment allAppsFragment) {
            this.seedInstance = (AllAppsFragment) Preconditions.checkNotNull(allAppsFragment);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<AllAppsFragment> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, AllAppsFragment.class);
            return new AllAppsFragmentSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class AllAppsFragmentSubcomponentImpl implements CommonAndroidInjectionModule_AllAppsFragment.AllAppsFragmentSubcomponent {
        private AllAppsFragmentSubcomponentImpl(AllAppsFragment allAppsFragment) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(AllAppsFragment allAppsFragment) {
            injectAllAppsFragment(allAppsFragment);
        }

        private AllAppsFragment injectAllAppsFragment(AllAppsFragment allAppsFragment) {
            AllAppsFragment_MembersInjector.injectLocalAppsManager(allAppsFragment, (LocalAppsManager) DaggerLauncherAppComponent.this.localAppsManagerProvider.get());
            AllAppsFragment_MembersInjector.injectMIconPackManager(allAppsFragment, (IconPackManager) DaggerLauncherAppComponent.this.iconPackManagerProvider.get());
            AllAppsFragment_MembersInjector.injectMLayoutSettingsManager(allAppsFragment, (LayoutSettingsManager) DaggerLauncherAppComponent.this.layoutSettingsManagerProvider.get());
            AllAppsFragment_MembersInjector.injectMAnalyticsHandler(allAppsFragment, (AnalyticsHandler) DaggerLauncherAppComponent.this.providesAnalyticsHandlerProvider.get());
            return allAppsFragment;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class WidgetsFragmentSubcomponentBuilder extends CommonAndroidInjectionModule_WidgetsFragment.WidgetsFragmentSubcomponent.Builder {
        private WidgetsFragment seedInstance;

        private WidgetsFragmentSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(WidgetsFragment widgetsFragment) {
            this.seedInstance = (WidgetsFragment) Preconditions.checkNotNull(widgetsFragment);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<WidgetsFragment> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, WidgetsFragment.class);
            return new WidgetsFragmentSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class WidgetsFragmentSubcomponentImpl implements CommonAndroidInjectionModule_WidgetsFragment.WidgetsFragmentSubcomponent {
        private WidgetsFragmentSubcomponentImpl(WidgetsFragment widgetsFragment) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(WidgetsFragment widgetsFragment) {
            injectWidgetsFragment(widgetsFragment);
        }

        private WidgetsFragment injectWidgetsFragment(WidgetsFragment widgetsFragment) {
            WidgetsFragment_MembersInjector.injectMIconPackManager(widgetsFragment, (IconPackManager) DaggerLauncherAppComponent.this.iconPackManagerProvider.get());
            return widgetsFragment;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class OnboardingActivitySubcomponentBuilder extends FlavorAndroidInjectionModule_OnboardingActivity.OnboardingActivitySubcomponent.Builder {
        private OnboardingActivity seedInstance;

        private OnboardingActivitySubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(OnboardingActivity onboardingActivity) {
            this.seedInstance = (OnboardingActivity) Preconditions.checkNotNull(onboardingActivity);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<OnboardingActivity> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, OnboardingActivity.class);
            return new OnboardingActivitySubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class OnboardingActivitySubcomponentImpl implements FlavorAndroidInjectionModule_OnboardingActivity.OnboardingActivitySubcomponent {
        private OnboardingActivitySubcomponentImpl(OnboardingActivity onboardingActivity) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(OnboardingActivity onboardingActivity) {
            injectOnboardingActivity(onboardingActivity);
        }

        private OnboardingActivity injectOnboardingActivity(OnboardingActivity onboardingActivity) {
            OnboardingActivity_MembersInjector.injectMLayoutSettingsManager(onboardingActivity, (LayoutSettingsManager) DaggerLauncherAppComponent.this.layoutSettingsManagerProvider.get());
            return onboardingActivity;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class LauncherSubcomponentBuilder extends FlavorAndroidInjectionModule_Launcher.LauncherSubcomponent.Builder {
        private Launcher seedInstance;

        private LauncherSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(Launcher launcher) {
            this.seedInstance = (Launcher) Preconditions.checkNotNull(launcher);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<Launcher> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, Launcher.class);
            return new LauncherSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class LauncherSubcomponentImpl implements FlavorAndroidInjectionModule_Launcher.LauncherSubcomponent {
        private LauncherSubcomponentImpl(Launcher launcher) {
        }

        private LauncherCustomContentPresenterFactory getLauncherCustomContentPresenterFactory() {
            return new LauncherCustomContentPresenterFactory(DaggerLauncherAppComponent.this.contextProvider, DaggerLauncherAppComponent.this.providesSideScreenSharedDependenciesProvider, DaggerLauncherAppComponent.this.providesAnalyticsHandlerProvider);
        }

        @Override // dagger.android.AndroidInjector
        public void inject(Launcher launcher) {
            injectLauncher(launcher);
        }

        private Launcher injectLauncher(Launcher launcher) {
            Launcher_MembersInjector.injectLocalAppsManager(launcher, (LocalAppsManager) DaggerLauncherAppComponent.this.localAppsManagerProvider.get());
            Launcher_MembersInjector.injectMDeepShortcutManager(launcher, (DeepShortcutManager) DaggerLauncherAppComponent.this.provideDeepShortcutManagerProvider.get());
            Launcher_MembersInjector.injectMFrequentlyUsedModel(launcher, (FrequentlyUsedModel) DaggerLauncherAppComponent.this.providesFrequentlyUsedModelProvider.get());
            Launcher_MembersInjector.injectMHideAppsModel(launcher, (HideAppsModel) DaggerLauncherAppComponent.this.providesHideAppsModelProvider.get());
            Launcher_MembersInjector.injectMLocationHandler(launcher, (LocationHandler) DaggerLauncherAppComponent.this.providesLocationHandlerProvider.get());
            Launcher_MembersInjector.injectMAnalyticsHandler(launcher, (AnalyticsHandler) DaggerLauncherAppComponent.this.providesAnalyticsHandlerProvider.get());
            Launcher_MembersInjector.injectMLauncherCustomContentPresenterFactory(launcher, getLauncherCustomContentPresenterFactory());
            return launcher;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class SelectAppFragmentSubcomponentBuilder extends FlavorAndroidInjectionModule_SelectAppFragment.SelectAppFragmentSubcomponent.Builder {
        private SelectAppFragment seedInstance;

        private SelectAppFragmentSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(SelectAppFragment selectAppFragment) {
            this.seedInstance = (SelectAppFragment) Preconditions.checkNotNull(selectAppFragment);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<SelectAppFragment> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, SelectAppFragment.class);
            return new SelectAppFragmentSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class SelectAppFragmentSubcomponentImpl implements FlavorAndroidInjectionModule_SelectAppFragment.SelectAppFragmentSubcomponent {
        private SelectAppFragmentSubcomponentImpl(SelectAppFragment selectAppFragment) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(SelectAppFragment selectAppFragment) {
            injectSelectAppFragment(selectAppFragment);
        }

        private SelectAppFragment injectSelectAppFragment(SelectAppFragment selectAppFragment) {
            SelectAppFragment_MembersInjector.injectMLocalAppsManager(selectAppFragment, (LocalAppsManager) DaggerLauncherAppComponent.this.localAppsManagerProvider.get());
            return selectAppFragment;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class CustomGestureSettingsFragmentSubcomponentBuilder extends FlavorAndroidInjectionModule_CustomGestureSettingsFragment.CustomGestureSettingsFragmentSubcomponent.Builder {
        private CustomGestureSettingsFragment seedInstance;

        private CustomGestureSettingsFragmentSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(CustomGestureSettingsFragment customGestureSettingsFragment) {
            this.seedInstance = (CustomGestureSettingsFragment) Preconditions.checkNotNull(customGestureSettingsFragment);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<CustomGestureSettingsFragment> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, CustomGestureSettingsFragment.class);
            return new CustomGestureSettingsFragmentSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class CustomGestureSettingsFragmentSubcomponentImpl implements FlavorAndroidInjectionModule_CustomGestureSettingsFragment.CustomGestureSettingsFragmentSubcomponent {
        private CustomGestureSettingsFragmentSubcomponentImpl(CustomGestureSettingsFragment customGestureSettingsFragment) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(CustomGestureSettingsFragment customGestureSettingsFragment) {
            injectCustomGestureSettingsFragment(customGestureSettingsFragment);
        }

        private CustomGestureSettingsFragment injectCustomGestureSettingsFragment(CustomGestureSettingsFragment customGestureSettingsFragment) {
            CustomGestureSettingsFragment_MembersInjector.injectLocalAppsManager(customGestureSettingsFragment, (LocalAppsManager) DaggerLauncherAppComponent.this.localAppsManagerProvider.get());
            return customGestureSettingsFragment;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class ResetLauncherFailureFragmentSubcomponentBuilder extends FlavorAndroidInjectionModule_ResetLauncherFailureFragment.ResetLauncherFailureFragmentSubcomponent.Builder {
        private ResetLauncherFailureFragment seedInstance;

        private ResetLauncherFailureFragmentSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(ResetLauncherFailureFragment resetLauncherFailureFragment) {
            this.seedInstance = (ResetLauncherFailureFragment) Preconditions.checkNotNull(resetLauncherFailureFragment);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<ResetLauncherFailureFragment> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, ResetLauncherFailureFragment.class);
            return new ResetLauncherFailureFragmentSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class ResetLauncherFailureFragmentSubcomponentImpl implements FlavorAndroidInjectionModule_ResetLauncherFailureFragment.ResetLauncherFailureFragmentSubcomponent {
        private ResetLauncherFailureFragmentSubcomponentImpl(ResetLauncherFailureFragment resetLauncherFailureFragment) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(ResetLauncherFailureFragment resetLauncherFailureFragment) {
            injectResetLauncherFailureFragment(resetLauncherFailureFragment);
        }

        private ResetLauncherFailureFragment injectResetLauncherFailureFragment(ResetLauncherFailureFragment resetLauncherFailureFragment) {
            ResetLauncherFailureFragment_MembersInjector.injectMAnalyticsHandler(resetLauncherFailureFragment, (AnalyticsHandler) DaggerLauncherAppComponent.this.providesAnalyticsHandlerProvider.get());
            return resetLauncherFailureFragment;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class ResetLauncherPromptFragmentSubcomponentBuilder extends FlavorAndroidInjectionModule_ResetLauncherPromptFragment.ResetLauncherPromptFragmentSubcomponent.Builder {
        private ResetLauncherPromptFragment seedInstance;

        private ResetLauncherPromptFragmentSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(ResetLauncherPromptFragment resetLauncherPromptFragment) {
            this.seedInstance = (ResetLauncherPromptFragment) Preconditions.checkNotNull(resetLauncherPromptFragment);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<ResetLauncherPromptFragment> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, ResetLauncherPromptFragment.class);
            return new ResetLauncherPromptFragmentSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class ResetLauncherPromptFragmentSubcomponentImpl implements FlavorAndroidInjectionModule_ResetLauncherPromptFragment.ResetLauncherPromptFragmentSubcomponent {
        private ResetLauncherPromptFragmentSubcomponentImpl(ResetLauncherPromptFragment resetLauncherPromptFragment) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(ResetLauncherPromptFragment resetLauncherPromptFragment) {
            injectResetLauncherPromptFragment(resetLauncherPromptFragment);
        }

        private ResetLauncherPromptFragment injectResetLauncherPromptFragment(ResetLauncherPromptFragment resetLauncherPromptFragment) {
            ResetLauncherPromptFragment_MembersInjector.injectMAnalyticsHandler(resetLauncherPromptFragment, (AnalyticsHandler) DaggerLauncherAppComponent.this.providesAnalyticsHandlerProvider.get());
            return resetLauncherPromptFragment;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class PopupFragmentSubcomponentBuilder extends FlavorAndroidInjectionModule_PopupFragment.PopupFragmentSubcomponent.Builder {
        private PopupFragment seedInstance;

        private PopupFragmentSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(PopupFragment popupFragment) {
            this.seedInstance = (PopupFragment) Preconditions.checkNotNull(popupFragment);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<PopupFragment> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, PopupFragment.class);
            return new PopupFragmentSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class PopupFragmentSubcomponentImpl implements FlavorAndroidInjectionModule_PopupFragment.PopupFragmentSubcomponent {
        private PopupFragmentSubcomponentImpl(PopupFragment popupFragment) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(PopupFragment popupFragment) {
            injectPopupFragment(popupFragment);
        }

        private PopupFragment injectPopupFragment(PopupFragment popupFragment) {
            PopupFragment_MembersInjector.injectMDeepShortcutManager(popupFragment, (DeepShortcutManager) DaggerLauncherAppComponent.this.provideDeepShortcutManagerProvider.get());
            return popupFragment;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class HideAppsSettingsFragmentSubcomponentBuilder extends FlavorAndroidInjectionModule_HideAppSettingsFragment.HideAppsSettingsFragmentSubcomponent.Builder {
        private HideAppsSettingsFragment seedInstance;

        private HideAppsSettingsFragmentSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(HideAppsSettingsFragment hideAppsSettingsFragment) {
            this.seedInstance = (HideAppsSettingsFragment) Preconditions.checkNotNull(hideAppsSettingsFragment);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<HideAppsSettingsFragment> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, HideAppsSettingsFragment.class);
            return new HideAppsSettingsFragmentSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class HideAppsSettingsFragmentSubcomponentImpl implements FlavorAndroidInjectionModule_HideAppSettingsFragment.HideAppsSettingsFragmentSubcomponent {
        private HideAppsSettingsFragmentSubcomponentImpl(HideAppsSettingsFragment hideAppsSettingsFragment) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(HideAppsSettingsFragment hideAppsSettingsFragment) {
            injectHideAppsSettingsFragment(hideAppsSettingsFragment);
        }

        private HideAppsSettingsFragment injectHideAppsSettingsFragment(HideAppsSettingsFragment hideAppsSettingsFragment) {
            HideAppsSettingsFragment_MembersInjector.injectMHideAppsModel(hideAppsSettingsFragment, (HideAppsModel) DaggerLauncherAppComponent.this.providesHideAppsModelProvider.get());
            return hideAppsSettingsFragment;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class AppOptionsFragmentSubcomponentBuilder extends FlavorAndroidInjectionModule_AppOptionsFragment.AppOptionsFragmentSubcomponent.Builder {
        private AppOptionsFragment seedInstance;

        private AppOptionsFragmentSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(AppOptionsFragment appOptionsFragment) {
            this.seedInstance = (AppOptionsFragment) Preconditions.checkNotNull(appOptionsFragment);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<AppOptionsFragment> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, AppOptionsFragment.class);
            return new AppOptionsFragmentSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class AppOptionsFragmentSubcomponentImpl implements FlavorAndroidInjectionModule_AppOptionsFragment.AppOptionsFragmentSubcomponent {
        private AppOptionsFragmentSubcomponentImpl(AppOptionsFragment appOptionsFragment) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(AppOptionsFragment appOptionsFragment) {
            injectAppOptionsFragment(appOptionsFragment);
        }

        private AppOptionsFragment injectAppOptionsFragment(AppOptionsFragment appOptionsFragment) {
            AppOptionsFragment_MembersInjector.injectMLocalAppsManager(appOptionsFragment, (LocalAppsManager) DaggerLauncherAppComponent.this.localAppsManagerProvider.get());
            return appOptionsFragment;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class DesktopSettingsFragmentSubcomponentBuilder extends FlavorAndroidInjectionModule_DesktopSettingsFragment.DesktopSettingsFragmentSubcomponent.Builder {
        private DesktopSettingsFragment seedInstance;

        private DesktopSettingsFragmentSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(DesktopSettingsFragment desktopSettingsFragment) {
            this.seedInstance = (DesktopSettingsFragment) Preconditions.checkNotNull(desktopSettingsFragment);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<DesktopSettingsFragment> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, DesktopSettingsFragment.class);
            return new DesktopSettingsFragmentSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class DesktopSettingsFragmentSubcomponentImpl implements FlavorAndroidInjectionModule_DesktopSettingsFragment.DesktopSettingsFragmentSubcomponent {
        private DesktopSettingsFragmentSubcomponentImpl(DesktopSettingsFragment desktopSettingsFragment) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(DesktopSettingsFragment desktopSettingsFragment) {
            injectDesktopSettingsFragment(desktopSettingsFragment);
        }

        private DesktopSettingsFragment injectDesktopSettingsFragment(DesktopSettingsFragment desktopSettingsFragment) {
            DesktopSettingsFragment_MembersInjector.injectMLayoutSettingsManager(desktopSettingsFragment, (LayoutSettingsManager) DaggerLauncherAppComponent.this.layoutSettingsManagerProvider.get());
            return desktopSettingsFragment;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class DockSettingsFragmentSubcomponentBuilder extends FlavorAndroidInjectionModule_DockSettingsFragment.DockSettingsFragmentSubcomponent.Builder {
        private DockSettingsFragment seedInstance;

        private DockSettingsFragmentSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(DockSettingsFragment dockSettingsFragment) {
            this.seedInstance = (DockSettingsFragment) Preconditions.checkNotNull(dockSettingsFragment);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<DockSettingsFragment> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, DockSettingsFragment.class);
            return new DockSettingsFragmentSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class DockSettingsFragmentSubcomponentImpl implements FlavorAndroidInjectionModule_DockSettingsFragment.DockSettingsFragmentSubcomponent {
        private DockSettingsFragmentSubcomponentImpl(DockSettingsFragment dockSettingsFragment) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(DockSettingsFragment dockSettingsFragment) {
            injectDockSettingsFragment(dockSettingsFragment);
        }

        private DockSettingsFragment injectDockSettingsFragment(DockSettingsFragment dockSettingsFragment) {
            DockSettingsFragment_MembersInjector.injectMLayoutSettingsManager(dockSettingsFragment, (LayoutSettingsManager) DaggerLauncherAppComponent.this.layoutSettingsManagerProvider.get());
            return dockSettingsFragment;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class IconPackSettingsFragmentSubcomponentBuilder extends FlavorAndroidInjectionModule_IconPackSettingsFragment.IconPackSettingsFragmentSubcomponent.Builder {
        private IconPackSettingsFragment seedInstance;

        private IconPackSettingsFragmentSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(IconPackSettingsFragment iconPackSettingsFragment) {
            this.seedInstance = (IconPackSettingsFragment) Preconditions.checkNotNull(iconPackSettingsFragment);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<IconPackSettingsFragment> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, IconPackSettingsFragment.class);
            return new IconPackSettingsFragmentSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class IconPackSettingsFragmentSubcomponentImpl implements FlavorAndroidInjectionModule_IconPackSettingsFragment.IconPackSettingsFragmentSubcomponent {
        private IconPackSettingsFragmentSubcomponentImpl(IconPackSettingsFragment iconPackSettingsFragment) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(IconPackSettingsFragment iconPackSettingsFragment) {
            injectIconPackSettingsFragment(iconPackSettingsFragment);
        }

        private IconPackSettingsFragment injectIconPackSettingsFragment(IconPackSettingsFragment iconPackSettingsFragment) {
            IconPackSettingsFragment_MembersInjector.injectMLocalAppsManager(iconPackSettingsFragment, (LocalAppsManager) DaggerLauncherAppComponent.this.localAppsManagerProvider.get());
            IconPackSettingsFragment_MembersInjector.injectMIconPackManager(iconPackSettingsFragment, (IconPackManager) DaggerLauncherAppComponent.this.iconPackManagerProvider.get());
            return iconPackSettingsFragment;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class ChangeIconFragmentSubcomponentBuilder extends FlavorAndroidInjectionModule_ChangeIconFragment.ChangeIconFragmentSubcomponent.Builder {
        private ChangeIconFragment seedInstance;

        private ChangeIconFragmentSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(ChangeIconFragment changeIconFragment) {
            this.seedInstance = (ChangeIconFragment) Preconditions.checkNotNull(changeIconFragment);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<ChangeIconFragment> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, ChangeIconFragment.class);
            return new ChangeIconFragmentSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class ChangeIconFragmentSubcomponentImpl implements FlavorAndroidInjectionModule_ChangeIconFragment.ChangeIconFragmentSubcomponent {
        private ChangeIconFragmentSubcomponentImpl(ChangeIconFragment changeIconFragment) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(ChangeIconFragment changeIconFragment) {
            injectChangeIconFragment(changeIconFragment);
        }

        private ChangeIconFragment injectChangeIconFragment(ChangeIconFragment changeIconFragment) {
            ChangeIconFragment_MembersInjector.injectMLocalAppsManager(changeIconFragment, (LocalAppsManager) DaggerLauncherAppComponent.this.localAppsManagerProvider.get());
            ChangeIconFragment_MembersInjector.injectMIconPackManager(changeIconFragment, (IconPackManager) DaggerLauncherAppComponent.this.iconPackManagerProvider.get());
            return changeIconFragment;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class AppDrawerSettingsFragmentSubcomponentBuilder extends FlavorAndroidInjectionModule_AppDrawerSettingsFragment.AppDrawerSettingsFragmentSubcomponent.Builder {
        private AppDrawerSettingsFragment seedInstance;

        private AppDrawerSettingsFragmentSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(AppDrawerSettingsFragment appDrawerSettingsFragment) {
            this.seedInstance = (AppDrawerSettingsFragment) Preconditions.checkNotNull(appDrawerSettingsFragment);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<AppDrawerSettingsFragment> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, AppDrawerSettingsFragment.class);
            return new AppDrawerSettingsFragmentSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class AppDrawerSettingsFragmentSubcomponentImpl implements FlavorAndroidInjectionModule_AppDrawerSettingsFragment.AppDrawerSettingsFragmentSubcomponent {
        private AppDrawerSettingsFragmentSubcomponentImpl(AppDrawerSettingsFragment appDrawerSettingsFragment) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(AppDrawerSettingsFragment appDrawerSettingsFragment) {
            injectAppDrawerSettingsFragment(appDrawerSettingsFragment);
        }

        private AppDrawerSettingsFragment injectAppDrawerSettingsFragment(AppDrawerSettingsFragment appDrawerSettingsFragment) {
            AppDrawerSettingsFragment_MembersInjector.injectMLayoutSettingsManager(appDrawerSettingsFragment, (LayoutSettingsManager) DaggerLauncherAppComponent.this.layoutSettingsManagerProvider.get());
            return appDrawerSettingsFragment;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class FolderSettingsFragmentSubcomponentBuilder extends FlavorAndroidInjectionModule_FolderSettingsFragment.FolderSettingsFragmentSubcomponent.Builder {
        private FolderSettingsFragment seedInstance;

        private FolderSettingsFragmentSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(FolderSettingsFragment folderSettingsFragment) {
            this.seedInstance = (FolderSettingsFragment) Preconditions.checkNotNull(folderSettingsFragment);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<FolderSettingsFragment> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, FolderSettingsFragment.class);
            return new FolderSettingsFragmentSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class FolderSettingsFragmentSubcomponentImpl implements FlavorAndroidInjectionModule_FolderSettingsFragment.FolderSettingsFragmentSubcomponent {
        private FolderSettingsFragmentSubcomponentImpl(FolderSettingsFragment folderSettingsFragment) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(FolderSettingsFragment folderSettingsFragment) {
            injectFolderSettingsFragment(folderSettingsFragment);
        }

        private FolderSettingsFragment injectFolderSettingsFragment(FolderSettingsFragment folderSettingsFragment) {
            FolderSettingsFragment_MembersInjector.injectMLocalAppsManager(folderSettingsFragment, (LocalAppsManager) DaggerLauncherAppComponent.this.localAppsManagerProvider.get());
            FolderSettingsFragment_MembersInjector.injectMLayoutSettingsManager(folderSettingsFragment, (LayoutSettingsManager) DaggerLauncherAppComponent.this.layoutSettingsManagerProvider.get());
            return folderSettingsFragment;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class TopicDetailActivitySubcomponentBuilder extends AbstractC0513x2f9a5810.TopicDetailActivitySubcomponent.Builder {
        private TopicDetailActivity seedInstance;

        private TopicDetailActivitySubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(TopicDetailActivity topicDetailActivity) {
            this.seedInstance = (TopicDetailActivity) Preconditions.checkNotNull(topicDetailActivity);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<TopicDetailActivity> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, TopicDetailActivity.class);
            return new TopicDetailActivitySubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class TopicDetailActivitySubcomponentImpl implements AbstractC0513x2f9a5810.TopicDetailActivitySubcomponent {
        private Provider<OathPlayerObservable> oathPlayerObservableProvider;

        private TopicDetailActivitySubcomponentImpl(TopicDetailActivity topicDetailActivity) {
            initialize(topicDetailActivity);
        }

        private void initialize(TopicDetailActivity topicDetailActivity) {
            this.oathPlayerObservableProvider = OathPlayerObservable_Factory.create(DaggerLauncherAppComponent.this.providesPlayerRequestorProvider);
        }

        @Override // dagger.android.AndroidInjector
        public void inject(TopicDetailActivity topicDetailActivity) {
            injectTopicDetailActivity(topicDetailActivity);
        }

        private TopicDetailActivity injectTopicDetailActivity(TopicDetailActivity topicDetailActivity) {
            SideScreenActivity_MembersInjector.injectMSideScreenSharedDependencies(topicDetailActivity, DaggerLauncherAppComponent.this.getSideScreenSharedDependencies());
            SideScreenActivity_MembersInjector.injectMOathPlayerObservableProvider(topicDetailActivity, this.oathPlayerObservableProvider);
            return topicDetailActivity;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class PersonalizeActivitySubcomponentBuilder extends AbstractC0507x7b7848c4.PersonalizeActivitySubcomponent.Builder {
        private PersonalizeActivity seedInstance;

        private PersonalizeActivitySubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(PersonalizeActivity personalizeActivity) {
            this.seedInstance = (PersonalizeActivity) Preconditions.checkNotNull(personalizeActivity);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<PersonalizeActivity> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, PersonalizeActivity.class);
            return new PersonalizeActivitySubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class PersonalizeActivitySubcomponentImpl implements AbstractC0507x7b7848c4.PersonalizeActivitySubcomponent {
        private Provider<OathPlayerObservable> oathPlayerObservableProvider;

        private PersonalizeActivitySubcomponentImpl(PersonalizeActivity personalizeActivity) {
            initialize(personalizeActivity);
        }

        private void initialize(PersonalizeActivity personalizeActivity) {
            this.oathPlayerObservableProvider = OathPlayerObservable_Factory.create(DaggerLauncherAppComponent.this.providesPlayerRequestorProvider);
        }

        @Override // dagger.android.AndroidInjector
        public void inject(PersonalizeActivity personalizeActivity) {
            injectPersonalizeActivity(personalizeActivity);
        }

        private PersonalizeActivity injectPersonalizeActivity(PersonalizeActivity personalizeActivity) {
            SideScreenActivity_MembersInjector.injectMSideScreenSharedDependencies(personalizeActivity, DaggerLauncherAppComponent.this.getSideScreenSharedDependencies());
            SideScreenActivity_MembersInjector.injectMOathPlayerObservableProvider(personalizeActivity, this.oathPlayerObservableProvider);
            return personalizeActivity;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class PersonalizeOnboardingActivitySubcomponentBuilder extends AbstractC0508xac29a7bf.PersonalizeOnboardingActivitySubcomponent.Builder {
        private PersonalizeOnboardingActivity seedInstance;

        private PersonalizeOnboardingActivitySubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(PersonalizeOnboardingActivity personalizeOnboardingActivity) {
            this.seedInstance = (PersonalizeOnboardingActivity) Preconditions.checkNotNull(personalizeOnboardingActivity);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<PersonalizeOnboardingActivity> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, PersonalizeOnboardingActivity.class);
            return new PersonalizeOnboardingActivitySubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class PersonalizeOnboardingActivitySubcomponentImpl implements AbstractC0508xac29a7bf.PersonalizeOnboardingActivitySubcomponent {
        private Provider<OathPlayerObservable> oathPlayerObservableProvider;

        private PersonalizeOnboardingActivitySubcomponentImpl(PersonalizeOnboardingActivity personalizeOnboardingActivity) {
            initialize(personalizeOnboardingActivity);
        }

        private void initialize(PersonalizeOnboardingActivity personalizeOnboardingActivity) {
            this.oathPlayerObservableProvider = OathPlayerObservable_Factory.create(DaggerLauncherAppComponent.this.providesPlayerRequestorProvider);
        }

        @Override // dagger.android.AndroidInjector
        public void inject(PersonalizeOnboardingActivity personalizeOnboardingActivity) {
            injectPersonalizeOnboardingActivity(personalizeOnboardingActivity);
        }

        private PersonalizeOnboardingActivity injectPersonalizeOnboardingActivity(PersonalizeOnboardingActivity personalizeOnboardingActivity) {
            SideScreenActivity_MembersInjector.injectMSideScreenSharedDependencies(personalizeOnboardingActivity, DaggerLauncherAppComponent.this.getSideScreenSharedDependencies());
            SideScreenActivity_MembersInjector.injectMOathPlayerObservableProvider(personalizeOnboardingActivity, this.oathPlayerObservableProvider);
            return personalizeOnboardingActivity;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class PersonalizeSearchActivitySubcomponentBuilder extends AbstractC0509xdbfc55cc.PersonalizeSearchActivitySubcomponent.Builder {
        private PersonalizeSearchActivity seedInstance;

        private PersonalizeSearchActivitySubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(PersonalizeSearchActivity personalizeSearchActivity) {
            this.seedInstance = (PersonalizeSearchActivity) Preconditions.checkNotNull(personalizeSearchActivity);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<PersonalizeSearchActivity> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, PersonalizeSearchActivity.class);
            return new PersonalizeSearchActivitySubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class PersonalizeSearchActivitySubcomponentImpl implements AbstractC0509xdbfc55cc.PersonalizeSearchActivitySubcomponent {
        private Provider<OathPlayerObservable> oathPlayerObservableProvider;

        private PersonalizeSearchActivitySubcomponentImpl(PersonalizeSearchActivity personalizeSearchActivity) {
            initialize(personalizeSearchActivity);
        }

        private void initialize(PersonalizeSearchActivity personalizeSearchActivity) {
            this.oathPlayerObservableProvider = OathPlayerObservable_Factory.create(DaggerLauncherAppComponent.this.providesPlayerRequestorProvider);
        }

        @Override // dagger.android.AndroidInjector
        public void inject(PersonalizeSearchActivity personalizeSearchActivity) {
            injectPersonalizeSearchActivity(personalizeSearchActivity);
        }

        private PersonalizeSearchActivity injectPersonalizeSearchActivity(PersonalizeSearchActivity personalizeSearchActivity) {
            SideScreenActivity_MembersInjector.injectMSideScreenSharedDependencies(personalizeSearchActivity, DaggerLauncherAppComponent.this.getSideScreenSharedDependencies());
            SideScreenActivity_MembersInjector.injectMOathPlayerObservableProvider(personalizeSearchActivity, this.oathPlayerObservableProvider);
            return personalizeSearchActivity;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class RelatedTopicsActivitySubcomponentBuilder extends AbstractC0511xcb6e659f.RelatedTopicsActivitySubcomponent.Builder {
        private RelatedTopicsActivity seedInstance;

        private RelatedTopicsActivitySubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(RelatedTopicsActivity relatedTopicsActivity) {
            this.seedInstance = (RelatedTopicsActivity) Preconditions.checkNotNull(relatedTopicsActivity);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<RelatedTopicsActivity> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, RelatedTopicsActivity.class);
            return new RelatedTopicsActivitySubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class RelatedTopicsActivitySubcomponentImpl implements AbstractC0511xcb6e659f.RelatedTopicsActivitySubcomponent {
        private Provider<OathPlayerObservable> oathPlayerObservableProvider;

        private RelatedTopicsActivitySubcomponentImpl(RelatedTopicsActivity relatedTopicsActivity) {
            initialize(relatedTopicsActivity);
        }

        private void initialize(RelatedTopicsActivity relatedTopicsActivity) {
            this.oathPlayerObservableProvider = OathPlayerObservable_Factory.create(DaggerLauncherAppComponent.this.providesPlayerRequestorProvider);
        }

        @Override // dagger.android.AndroidInjector
        public void inject(RelatedTopicsActivity relatedTopicsActivity) {
            injectRelatedTopicsActivity(relatedTopicsActivity);
        }

        private RelatedTopicsActivity injectRelatedTopicsActivity(RelatedTopicsActivity relatedTopicsActivity) {
            SideScreenActivity_MembersInjector.injectMSideScreenSharedDependencies(relatedTopicsActivity, DaggerLauncherAppComponent.this.getSideScreenSharedDependencies());
            SideScreenActivity_MembersInjector.injectMOathPlayerObservableProvider(relatedTopicsActivity, this.oathPlayerObservableProvider);
            return relatedTopicsActivity;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class WebViewerActivitySubcomponentBuilder extends AbstractC0514x27061b76.WebViewerActivitySubcomponent.Builder {
        private WebViewerActivity seedInstance;

        private WebViewerActivitySubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(WebViewerActivity webViewerActivity) {
            this.seedInstance = (WebViewerActivity) Preconditions.checkNotNull(webViewerActivity);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<WebViewerActivity> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, WebViewerActivity.class);
            return new WebViewerActivitySubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class WebViewerActivitySubcomponentImpl implements AbstractC0514x27061b76.WebViewerActivitySubcomponent {
        private Provider<OathPlayerObservable> oathPlayerObservableProvider;

        private WebViewerActivitySubcomponentImpl(WebViewerActivity webViewerActivity) {
            initialize(webViewerActivity);
        }

        private void initialize(WebViewerActivity webViewerActivity) {
            this.oathPlayerObservableProvider = OathPlayerObservable_Factory.create(DaggerLauncherAppComponent.this.providesPlayerRequestorProvider);
        }

        @Override // dagger.android.AndroidInjector
        public void inject(WebViewerActivity webViewerActivity) {
            injectWebViewerActivity(webViewerActivity);
        }

        private WebViewerActivity injectWebViewerActivity(WebViewerActivity webViewerActivity) {
            SideScreenActivity_MembersInjector.injectMSideScreenSharedDependencies(webViewerActivity, DaggerLauncherAppComponent.this.getSideScreenSharedDependencies());
            SideScreenActivity_MembersInjector.injectMOathPlayerObservableProvider(webViewerActivity, this.oathPlayerObservableProvider);
            return webViewerActivity;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class RelatedArticlesActivitySubcomponentBuilder extends AbstractC0510xda0caeb8.RelatedArticlesActivitySubcomponent.Builder {
        private RelatedArticlesActivity seedInstance;

        private RelatedArticlesActivitySubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(RelatedArticlesActivity relatedArticlesActivity) {
            this.seedInstance = (RelatedArticlesActivity) Preconditions.checkNotNull(relatedArticlesActivity);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<RelatedArticlesActivity> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, RelatedArticlesActivity.class);
            return new RelatedArticlesActivitySubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class RelatedArticlesActivitySubcomponentImpl implements AbstractC0510xda0caeb8.RelatedArticlesActivitySubcomponent {
        private Provider<OathPlayerObservable> oathPlayerObservableProvider;

        private RelatedArticlesActivitySubcomponentImpl(RelatedArticlesActivity relatedArticlesActivity) {
            initialize(relatedArticlesActivity);
        }

        private void initialize(RelatedArticlesActivity relatedArticlesActivity) {
            this.oathPlayerObservableProvider = OathPlayerObservable_Factory.create(DaggerLauncherAppComponent.this.providesPlayerRequestorProvider);
        }

        @Override // dagger.android.AndroidInjector
        public void inject(RelatedArticlesActivity relatedArticlesActivity) {
            injectRelatedArticlesActivity(relatedArticlesActivity);
        }

        private RelatedArticlesActivity injectRelatedArticlesActivity(RelatedArticlesActivity relatedArticlesActivity) {
            SideScreenActivity_MembersInjector.injectMSideScreenSharedDependencies(relatedArticlesActivity, DaggerLauncherAppComponent.this.getSideScreenSharedDependencies());
            SideScreenActivity_MembersInjector.injectMOathPlayerObservableProvider(relatedArticlesActivity, this.oathPlayerObservableProvider);
            return relatedArticlesActivity;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class RelatedVideosActivitySubcomponentBuilder extends AbstractC0512xb17b1fd3.RelatedVideosActivitySubcomponent.Builder {
        private RelatedVideosActivity seedInstance;

        private RelatedVideosActivitySubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(RelatedVideosActivity relatedVideosActivity) {
            this.seedInstance = (RelatedVideosActivity) Preconditions.checkNotNull(relatedVideosActivity);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<RelatedVideosActivity> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, RelatedVideosActivity.class);
            return new RelatedVideosActivitySubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class RelatedVideosActivitySubcomponentImpl implements AbstractC0512xb17b1fd3.RelatedVideosActivitySubcomponent {
        private Provider<OathPlayerObservable> oathPlayerObservableProvider;

        private RelatedVideosActivitySubcomponentImpl(RelatedVideosActivity relatedVideosActivity) {
            initialize(relatedVideosActivity);
        }

        private void initialize(RelatedVideosActivity relatedVideosActivity) {
            this.oathPlayerObservableProvider = OathPlayerObservable_Factory.create(DaggerLauncherAppComponent.this.providesPlayerRequestorProvider);
        }

        @Override // dagger.android.AndroidInjector
        public void inject(RelatedVideosActivity relatedVideosActivity) {
            injectRelatedVideosActivity(relatedVideosActivity);
        }

        private RelatedVideosActivity injectRelatedVideosActivity(RelatedVideosActivity relatedVideosActivity) {
            SideScreenActivity_MembersInjector.injectMSideScreenSharedDependencies(relatedVideosActivity, DaggerLauncherAppComponent.this.getSideScreenSharedDependencies());
            SideScreenActivity_MembersInjector.injectMOathPlayerObservableProvider(relatedVideosActivity, this.oathPlayerObservableProvider);
            return relatedVideosActivity;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class TokenServiceSubcomponentBuilder extends SideScreenAndroidInjectorModule_ContributesTokenServiceInjector.TokenServiceSubcomponent.Builder {
        private TokenService seedInstance;

        private TokenServiceSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(TokenService tokenService) {
            this.seedInstance = (TokenService) Preconditions.checkNotNull(tokenService);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<TokenService> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, TokenService.class);
            return new TokenServiceSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class TokenServiceSubcomponentImpl implements SideScreenAndroidInjectorModule_ContributesTokenServiceInjector.TokenServiceSubcomponent {
        private TokenServiceSubcomponentImpl(TokenService tokenService) {
        }

        @Override // dagger.android.AndroidInjector
        public void inject(TokenService tokenService) {
            injectTokenService(tokenService);
        }

        private TokenService injectTokenService(TokenService tokenService) {
            TokenService_MembersInjector.injectMSideScreenSharedDependencies(tokenService, DaggerLauncherAppComponent.this.getSideScreenSharedDependencies());
            return tokenService;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class MessagingServiceSubcomponentBuilder extends AbstractC0506x27f1da58.MessagingServiceSubcomponent.Builder {
        private MessagingService seedInstance;

        private MessagingServiceSubcomponentBuilder() {
        }

        @Override // dagger.android.AndroidInjector.Builder
        public void seedInstance(MessagingService messagingService) {
            this.seedInstance = (MessagingService) Preconditions.checkNotNull(messagingService);
        }

        @Override // dagger.android.AndroidInjector.Builder
        /* JADX INFO: renamed from: build */
        public AndroidInjector<MessagingService> build2() {
            Preconditions.checkBuilderRequirement(this.seedInstance, MessagingService.class);
            return new MessagingServiceSubcomponentImpl(this.seedInstance);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private final class MessagingServiceSubcomponentImpl implements AbstractC0506x27f1da58.MessagingServiceSubcomponent {
        private Provider<PromptStoreModel> providesPromptStoreProvider;

        private MessagingServiceSubcomponentImpl(MessagingService messagingService) {
            initialize(messagingService);
        }

        private void initialize(MessagingService messagingService) {
            this.providesPromptStoreProvider = SingleCheck.provider(SideScreenSharedPreferencesModule_ProvidesPromptStoreFactory.create(DaggerLauncherAppComponent.this.contextProvider, DaggerLauncherAppComponent.this.providesGsonProvider));
        }

        @Override // dagger.android.AndroidInjector
        public void inject(MessagingService messagingService) {
            injectMessagingService(messagingService);
        }

        private MessagingService injectMessagingService(MessagingService messagingService) {
            MessagingService_MembersInjector.injectMSideScreenSharedDependencies(messagingService, DaggerLauncherAppComponent.this.getSideScreenSharedDependencies());
            MessagingService_MembersInjector.injectMPromptStoreModel(messagingService, this.providesPromptStoreProvider.get());
            return messagingService;
        }
    }
}
