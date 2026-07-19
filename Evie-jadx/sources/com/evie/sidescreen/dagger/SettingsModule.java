package com.evie.sidescreen.dagger;

import com.evie.sidescreen.SideScreenSettings;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes.dex */
public class SettingsModule {
    private final SideScreenSettings mSideScreenSettings;

    public SettingsModule(SideScreenSettings sideScreenSettings) {
        this.mSideScreenSettings = sideScreenSettings;
    }

    public boolean providesIsRtl() {
        return this.mSideScreenSettings.isRtl();
    }

    public boolean providesBackgroundEnabledSetting() {
        return this.mSideScreenSettings.backgroundEnabled();
    }

    public boolean providesSearchEnabledSetting() {
        return this.mSideScreenSettings.searchEnabled();
    }

    public boolean providesTopHeaderEnabled() {
        return this.mSideScreenSettings.topHeaderEnabled();
    }

    public boolean providesFullscreenSetting() {
        return this.mSideScreenSettings.isFullscreen();
    }

    public boolean providesFrequentlyUsedEnabled() {
        return this.mSideScreenSettings.frequentlyUsedEnabled();
    }

    public boolean providesPersonalizeOnboardingMode() {
        return this.mSideScreenSettings.isPersonalizeOnboarding();
    }

    public Observable<Boolean> providesDataUsageDebugEnabled() {
        return this.mSideScreenSettings.debugDataUsage();
    }

    public Observable<Long> providesTilesSectionRefreshTimeLimit() {
        return this.mSideScreenSettings.debugTilesRefresh().flatMap(new Function() { // from class: com.evie.sidescreen.dagger.-$$Lambda$SettingsModule$YWB3ztEsOaYF2B9Et3p27N5CNXk
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return SettingsModule.lambda$providesTilesSectionRefreshTimeLimit$0((Boolean) obj);
            }
        });
    }

    static /* synthetic */ ObservableSource lambda$providesTilesSectionRefreshTimeLimit$0(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            return Observable.just(5000L);
        }
        return Observable.just(900000L);
    }

    public Observable<Boolean> providesConvertToCelsius() {
        return this.mSideScreenSettings.convertToCelsius();
    }
}
