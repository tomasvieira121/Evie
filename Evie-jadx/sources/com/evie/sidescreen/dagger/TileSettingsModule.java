package com.evie.sidescreen.dagger;

import com.evie.sidescreen.TileSettings;
import io.reactivex.Observable;

/* JADX INFO: loaded from: classes.dex */
public class TileSettingsModule {
    Observable<Boolean> provideAutoplayVideoSetting(TileSettings tileSettings) {
        return tileSettings.autoplayVideos();
    }
}
