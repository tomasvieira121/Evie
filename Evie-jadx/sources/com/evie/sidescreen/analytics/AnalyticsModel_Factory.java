package com.evie.sidescreen.analytics;

import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class AnalyticsModel_Factory implements Factory<AnalyticsModel> {
    private final Provider<AnalyticsHandler> handlerProvider;

    public AnalyticsModel_Factory(Provider<AnalyticsHandler> provider) {
        this.handlerProvider = provider;
    }

    @Override // javax.inject.Provider
    public AnalyticsModel get() {
        return new AnalyticsModel(this.handlerProvider.get());
    }

    public static AnalyticsModel_Factory create(Provider<AnalyticsHandler> provider) {
        return new AnalyticsModel_Factory(provider);
    }
}
