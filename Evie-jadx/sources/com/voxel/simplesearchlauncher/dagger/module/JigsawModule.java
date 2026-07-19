package com.voxel.simplesearchlauncher.dagger.module;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.evie.jigsaw.Jigsaw;
import com.evie.jigsaw.JigsawSettings;
import com.evie.jigsaw.services.actions.ActionPreferenceStore;
import com.evie.jigsaw.services.images.ImageResolver;
import com.evie.jigsaw.services.images.models.Image;
import com.evie.search.local.ContactManager;
import com.voxel.launcher3.LauncherAppState;
import com.voxel.launcher3.fresco.HybridNetworkFetcher;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.jigsaw.CustomJigsawSettings;
import com.voxel.simplesearchlauncher.jigsaw.JigsawAnalyticsService;
import com.voxel.simplesearchlauncher.jigsaw.JigsawEventReceiver;
import com.voxel.simplesearchlauncher.jigsaw.layouts.ContactLayoutService;
import com.voxel.simplesearchlauncher.model.itemdata.LocalAppData;
import com.voxel.simplesearchlauncher.model.managers.LocalAppsManager;
import com.voxel.simplesearchlauncher.model.managers.UserProfileManager;
import is.shortcut.BuildConfig;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class JigsawModule {
    ActionPreferenceStore providesActionPreferenceStore(UserProfileManager userProfileManager) {
        return new LauncherActionPreferenceStore(userProfileManager);
    }

    ContactManager providesContactManager(Context context) {
        return ContactManager.getInstance(context);
    }

    ImageResolver providesImageResolver(LocalAppsManager localAppsManager) {
        return new LauncherImageResolver(localAppsManager);
    }

    public JigsawAnalyticsService providesJigsawAnalyticsService(Application application, AnalyticsHandler analyticsHandler, ActionPreferenceStore actionPreferenceStore) {
        return new JigsawAnalyticsService(application, analyticsHandler, actionPreferenceStore);
    }

    public Jigsaw providesJigsaw(Application application, ImageResolver imageResolver, ActionPreferenceStore actionPreferenceStore, ContactManager contactManager, JigsawAnalyticsService jigsawAnalyticsService) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ContactLayoutService(contactManager));
        JigsawSettings.JigsawSettingsBuilder jigsawSettingsBuilderStreamingEnabled = JigsawSettings.builder().application(application).imageResolver(imageResolver).actionPreferenceStore(actionPreferenceStore).analyticsService(jigsawAnalyticsService).pack4ge(BuildConfig.APPLICATION_ID).version(BuildConfig.VERSION_CODE).apiUrl(getApiUrl(application)).layoutServices(arrayList).streamingEnabled(false);
        CustomJigsawSettings.apply(jigsawSettingsBuilderStreamingEnabled);
        Jigsaw jigsaw = new Jigsaw(jigsawSettingsBuilderStreamingEnabled.build());
        jigsaw.events().register(new JigsawEventReceiver());
        return jigsaw;
    }

    private String getApiUrl(Application application) {
        return application.getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0).getBoolean("com.voxel.simplesearchlauncher.dagger.module.JigsawModule.PREF_ENABLE_CONTENT_STAGING", false) ? "https://api-staging.evie.com/" : "https://api2.evie.com";
    }

    private static final class LauncherActionPreferenceStore implements ActionPreferenceStore {
        private final UserProfileManager manager;

        public LauncherActionPreferenceStore(UserProfileManager userProfileManager) {
            this.manager = userProfileManager;
        }

        @Override // com.evie.jigsaw.services.actions.ActionPreferenceStore
        public void clear(String str) {
            this.manager.clearDefaultActionItem(str);
        }

        @Override // com.evie.jigsaw.services.actions.ActionPreferenceStore
        public void save(String str, String str2) {
            this.manager.setDefaultActionItem(str, str2);
        }

        @Override // com.evie.jigsaw.services.actions.ActionPreferenceStore
        public String get(String str) {
            return this.manager.getDefaultActionItem(str);
        }
    }

    private static final class LauncherImageResolver implements ImageResolver {
        private final LocalAppsManager manager;

        public LauncherImageResolver(LocalAppsManager localAppsManager) {
            this.manager = localAppsManager;
        }

        @Override // com.evie.jigsaw.services.images.ImageResolver
        public Uri resolve(Image image, int i) {
            LocalAppData defaultAppForAction;
            if (TextUtils.isEmpty(image.getApp()) || !TextUtils.isEmpty(image.getUrl(-1)) || (defaultAppForAction = this.manager.getDefaultAppForAction(image.getApp())) == null) {
                return null;
            }
            return HybridNetworkFetcher.getMagicResourceUri(defaultAppForAction);
        }
    }
}
