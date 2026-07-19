package com.evie.models.sidescreen;

import android.content.Context;
import com.evie.common.AbTestConfiguration;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreenContentTabModelFactory_Factory implements Factory<SideScreenContentTabModelFactory> {
    private final Provider<Context> arg0Provider;
    private final Provider<SideScreenContentAPI> arg1Provider;
    private final Provider<Integer> arg2Provider;
    private final Provider<AbTestConfiguration> arg3Provider;
    private final Provider<AnalyticsHandler> arg4Provider;
    private final Provider<LocationHandler> arg5Provider;
    private final Provider<Integer> arg6Provider;

    public SideScreenContentTabModelFactory_Factory(Provider<Context> provider, Provider<SideScreenContentAPI> provider2, Provider<Integer> provider3, Provider<AbTestConfiguration> provider4, Provider<AnalyticsHandler> provider5, Provider<LocationHandler> provider6, Provider<Integer> provider7) {
        this.arg0Provider = provider;
        this.arg1Provider = provider2;
        this.arg2Provider = provider3;
        this.arg3Provider = provider4;
        this.arg4Provider = provider5;
        this.arg5Provider = provider6;
        this.arg6Provider = provider7;
    }

    @Override // javax.inject.Provider
    public SideScreenContentTabModelFactory get() {
        return new SideScreenContentTabModelFactory(this.arg0Provider, this.arg1Provider, this.arg2Provider, this.arg3Provider, this.arg4Provider, this.arg5Provider, this.arg6Provider);
    }

    public static SideScreenContentTabModelFactory_Factory create(Provider<Context> provider, Provider<SideScreenContentAPI> provider2, Provider<Integer> provider3, Provider<AbTestConfiguration> provider4, Provider<AnalyticsHandler> provider5, Provider<LocationHandler> provider6, Provider<Integer> provider7) {
        return new SideScreenContentTabModelFactory_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }
}
