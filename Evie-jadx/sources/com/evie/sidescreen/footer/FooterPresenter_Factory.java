package com.evie.sidescreen.footer;

import android.content.Context;
import com.evie.sidescreen.analytics.AnalyticsModel;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class FooterPresenter_Factory implements Factory<FooterPresenter> {
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<Context> contextProvider;

    public FooterPresenter_Factory(Provider<Context> provider, Provider<AnalyticsModel> provider2) {
        this.contextProvider = provider;
        this.analyticsModelProvider = provider2;
    }

    @Override // javax.inject.Provider
    public FooterPresenter get() {
        return new FooterPresenter(this.contextProvider.get(), this.analyticsModelProvider.get());
    }

    public static FooterPresenter_Factory create(Provider<Context> provider, Provider<AnalyticsModel> provider2) {
        return new FooterPresenter_Factory(provider, provider2);
    }
}
