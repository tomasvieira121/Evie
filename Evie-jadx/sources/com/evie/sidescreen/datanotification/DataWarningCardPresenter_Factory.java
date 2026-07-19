package com.evie.sidescreen.datanotification;

import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.network.NetworkStatusModel;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class DataWarningCardPresenter_Factory implements Factory<DataWarningCardPresenter> {
    private final Provider<ActivationModel> activationModelProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<LifecycleCallbacks> lifecycleCallbacksProvider;
    private final Provider<NetworkStatusModel> networkStatusModelProvider;
    private final Provider<SideScreenSharedPreferencesModel> sideScreenSharedPreferencesModelProvider;

    public DataWarningCardPresenter_Factory(Provider<SideScreenSharedPreferencesModel> provider, Provider<AnalyticsModel> provider2, Provider<LifecycleCallbacks> provider3, Provider<ActivationModel> provider4, Provider<NetworkStatusModel> provider5) {
        this.sideScreenSharedPreferencesModelProvider = provider;
        this.analyticsModelProvider = provider2;
        this.lifecycleCallbacksProvider = provider3;
        this.activationModelProvider = provider4;
        this.networkStatusModelProvider = provider5;
    }

    @Override // javax.inject.Provider
    public DataWarningCardPresenter get() {
        return new DataWarningCardPresenter(this.sideScreenSharedPreferencesModelProvider.get(), this.analyticsModelProvider.get(), this.lifecycleCallbacksProvider.get(), this.activationModelProvider.get(), this.networkStatusModelProvider.get());
    }

    public static DataWarningCardPresenter_Factory create(Provider<SideScreenSharedPreferencesModel> provider, Provider<AnalyticsModel> provider2, Provider<LifecycleCallbacks> provider3, Provider<ActivationModel> provider4, Provider<NetworkStatusModel> provider5) {
        return new DataWarningCardPresenter_Factory(provider, provider2, provider3, provider4, provider5);
    }
}
