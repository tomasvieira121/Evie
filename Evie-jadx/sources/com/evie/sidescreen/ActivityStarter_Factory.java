package com.evie.sidescreen;

import android.app.Activity;
import android.content.Context;
import com.evie.sidescreen.analytics.AnalyticsModel;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityStarter_Factory implements Factory<ActivityStarter> {
    private final Provider<Activity> activityProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<Context> contextProvider;

    public ActivityStarter_Factory(Provider<Context> provider, Provider<Activity> provider2, Provider<AnalyticsModel> provider3) {
        this.contextProvider = provider;
        this.activityProvider = provider2;
        this.analyticsModelProvider = provider3;
    }

    @Override // javax.inject.Provider
    public ActivityStarter get() {
        return new ActivityStarter(this.contextProvider.get(), this.activityProvider.get(), this.analyticsModelProvider.get());
    }

    public static ActivityStarter_Factory create(Provider<Context> provider, Provider<Activity> provider2, Provider<AnalyticsModel> provider3) {
        return new ActivityStarter_Factory(provider, provider2, provider3);
    }
}
