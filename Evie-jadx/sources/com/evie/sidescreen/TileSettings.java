package com.evie.sidescreen;

import io.reactivex.Observable;

/* JADX INFO: loaded from: classes.dex */
public class TileSettings {
    private final Observable<Boolean> autoplayVideos;

    public static class TileSettingsBuilder {
        private Observable<Boolean> autoplayVideos = Observable.just(false);

        TileSettingsBuilder() {
        }

        public TileSettingsBuilder autoplayVideos(Observable<Boolean> observable) {
            this.autoplayVideos = observable;
            return this;
        }

        public TileSettings build() {
            return new TileSettings(this.autoplayVideos);
        }

        public String toString() {
            return "TileSettings.TileSettingsBuilder(autoplayVideos=" + this.autoplayVideos + ")";
        }
    }

    TileSettings(Observable<Boolean> observable) {
        this.autoplayVideos = observable;
    }

    public static TileSettingsBuilder builder() {
        return new TileSettingsBuilder();
    }

    public Observable<Boolean> autoplayVideos() {
        return this.autoplayVideos;
    }
}
