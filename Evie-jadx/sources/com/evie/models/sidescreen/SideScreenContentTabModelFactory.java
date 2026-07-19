package com.evie.models.sidescreen;

import android.content.Context;
import com.evie.common.AbTestConfiguration;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenContentTabModelFactory {
    private final Provider<AbTestConfiguration> abTestConfigurationProvider;
    private final Provider<AnalyticsHandler> analyticsHandlerProvider;
    private final Provider<SideScreenContentAPI> apiProvider;
    private final Provider<Integer> apiVersionProvider;
    private final Provider<Integer> appVersionProvider;
    private final Provider<Context> contextProvider;
    private final Provider<LocationHandler> locationHandlerProvider;

    public SideScreenContentTabModelFactory(Provider<Context> provider, Provider<SideScreenContentAPI> provider2, Provider<Integer> provider3, Provider<AbTestConfiguration> provider4, Provider<AnalyticsHandler> provider5, Provider<LocationHandler> provider6, Provider<Integer> provider7) {
        this.contextProvider = (Provider) checkNotNull(provider, 1);
        this.apiProvider = (Provider) checkNotNull(provider2, 2);
        this.apiVersionProvider = (Provider) checkNotNull(provider3, 3);
        this.abTestConfigurationProvider = (Provider) checkNotNull(provider4, 4);
        this.analyticsHandlerProvider = (Provider) checkNotNull(provider5, 5);
        this.locationHandlerProvider = (Provider) checkNotNull(provider6, 6);
        this.appVersionProvider = (Provider) checkNotNull(provider7, 7);
    }

    public SideScreenContentTabModel create(String str) {
        return new SideScreenContentTabModel((Context) checkNotNull(this.contextProvider.get(), 1), (SideScreenContentAPI) checkNotNull(this.apiProvider.get(), 2), ((Integer) checkNotNull(this.apiVersionProvider.get(), 3)).intValue(), (AbTestConfiguration) checkNotNull(this.abTestConfigurationProvider.get(), 4), (AnalyticsHandler) checkNotNull(this.analyticsHandlerProvider.get(), 5), (LocationHandler) checkNotNull(this.locationHandlerProvider.get(), 6), ((Integer) checkNotNull(this.appVersionProvider.get(), 7)).intValue(), (String) checkNotNull(str, 8));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
