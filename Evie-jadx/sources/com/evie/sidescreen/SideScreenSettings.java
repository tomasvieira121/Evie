package com.evie.sidescreen;

import io.reactivex.Observable;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenSettings {
    private final boolean backgroundEnabled;
    private final Observable<Boolean> convertToCelsius;
    private final Observable<Boolean> debugDataUsage;
    private final Observable<Boolean> debugTilesRefresh;
    private final boolean frequentlyUsedEnabled;
    private final boolean isFullscreen;
    private final boolean isPersonalizeOnboarding;
    private final boolean isRtl;
    private final boolean searchEnabled;
    private final boolean topHeaderEnabled;

    public static class SideScreenSettingsBuilder {
        private boolean isRtl = false;
        private boolean backgroundEnabled = true;
        private boolean searchEnabled = true;
        private boolean frequentlyUsedEnabled = true;
        private boolean topHeaderEnabled = true;
        private boolean isPersonalizeOnboarding = false;
        private Observable<Boolean> debugDataUsage = Observable.just(Boolean.FALSE);
        private Observable<Boolean> debugTilesRefresh = Observable.just(Boolean.FALSE);
        private boolean isFullscreen = false;
        private Observable<Boolean> convertToCelsius = Observable.just(Boolean.FALSE);

        SideScreenSettingsBuilder() {
        }

        public SideScreenSettingsBuilder backgroundEnabled(boolean z) {
            this.backgroundEnabled = z;
            return this;
        }

        public SideScreenSettings build() {
            return new SideScreenSettings(this.isRtl, this.backgroundEnabled, this.searchEnabled, this.frequentlyUsedEnabled, this.topHeaderEnabled, this.isPersonalizeOnboarding, this.debugDataUsage, this.debugTilesRefresh, this.isFullscreen, this.convertToCelsius);
        }

        public SideScreenSettingsBuilder convertToCelsius(Observable<Boolean> observable) {
            this.convertToCelsius = observable;
            return this;
        }

        public SideScreenSettingsBuilder frequentlyUsedEnabled(boolean z) {
            this.frequentlyUsedEnabled = z;
            return this;
        }

        public SideScreenSettingsBuilder isFullscreen(boolean z) {
            this.isFullscreen = z;
            return this;
        }

        public SideScreenSettingsBuilder isPersonalizeOnboarding(boolean z) {
            this.isPersonalizeOnboarding = z;
            return this;
        }

        public SideScreenSettingsBuilder isRtl(boolean z) {
            this.isRtl = z;
            return this;
        }

        public SideScreenSettingsBuilder searchEnabled(boolean z) {
            this.searchEnabled = z;
            return this;
        }

        public String toString() {
            return "SideScreenSettings.SideScreenSettingsBuilder(isRtl=" + this.isRtl + ", backgroundEnabled=" + this.backgroundEnabled + ", searchEnabled=" + this.searchEnabled + ", frequentlyUsedEnabled=" + this.frequentlyUsedEnabled + ", topHeaderEnabled=" + this.topHeaderEnabled + ", isPersonalizeOnboarding=" + this.isPersonalizeOnboarding + ", debugDataUsage=" + this.debugDataUsage + ", debugTilesRefresh=" + this.debugTilesRefresh + ", isFullscreen=" + this.isFullscreen + ", convertToCelsius=" + this.convertToCelsius + ")";
        }
    }

    SideScreenSettings(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, Observable<Boolean> observable, Observable<Boolean> observable2, boolean z7, Observable<Boolean> observable3) {
        this.isRtl = z;
        this.backgroundEnabled = z2;
        this.searchEnabled = z3;
        this.frequentlyUsedEnabled = z4;
        this.topHeaderEnabled = z5;
        this.isPersonalizeOnboarding = z6;
        this.debugDataUsage = observable;
        this.debugTilesRefresh = observable2;
        this.isFullscreen = z7;
        this.convertToCelsius = observable3;
    }

    public static SideScreenSettingsBuilder builder() {
        return new SideScreenSettingsBuilder();
    }

    public boolean isRtl() {
        return this.isRtl;
    }

    public boolean backgroundEnabled() {
        return this.backgroundEnabled;
    }

    public boolean searchEnabled() {
        return this.searchEnabled;
    }

    public boolean frequentlyUsedEnabled() {
        return this.frequentlyUsedEnabled;
    }

    public boolean topHeaderEnabled() {
        return this.topHeaderEnabled;
    }

    public boolean isPersonalizeOnboarding() {
        return this.isPersonalizeOnboarding;
    }

    public Observable<Boolean> debugDataUsage() {
        return this.debugDataUsage;
    }

    public Observable<Boolean> debugTilesRefresh() {
        return this.debugTilesRefresh;
    }

    public boolean isFullscreen() {
        return this.isFullscreen;
    }

    public Observable<Boolean> convertToCelsius() {
        return this.convertToCelsius;
    }
}
