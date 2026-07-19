package com.voxel.simplesearchlauncher.sidescreen;

import android.content.Context;
import com.evie.sidescreen.SideScreenSharedDependencies;
import com.voxel.launcher3.Launcher;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class LauncherCustomContentPresenterFactory {
    private final Provider<AnalyticsHandler> analyticsHandlerProvider;
    private final Provider<Context> contextProvider;
    private final Provider<SideScreenSharedDependencies> sideScreenSharedDependenciesProvider;

    public LauncherCustomContentPresenterFactory(Provider<Context> provider, Provider<SideScreenSharedDependencies> provider2, Provider<AnalyticsHandler> provider3) {
        this.contextProvider = (Provider) checkNotNull(provider, 1);
        this.sideScreenSharedDependenciesProvider = (Provider) checkNotNull(provider2, 2);
        this.analyticsHandlerProvider = (Provider) checkNotNull(provider3, 3);
    }

    public LauncherCustomContentPresenter create(Launcher launcher) {
        return new LauncherCustomContentPresenter((Launcher) checkNotNull(launcher, 1), (Context) checkNotNull(this.contextProvider.get(), 2), (SideScreenSharedDependencies) checkNotNull(this.sideScreenSharedDependenciesProvider.get(), 3), (AnalyticsHandler) checkNotNull(this.analyticsHandlerProvider.get(), 4));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
