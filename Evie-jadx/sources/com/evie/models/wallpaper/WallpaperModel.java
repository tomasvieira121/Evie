package com.evie.models.wallpaper;

import com.evie.common.data.Lce;
import io.reactivex.Observable;
import io.reactivex.schedulers.Schedulers;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperModel {
    private final WallpaperAPI mAPI;

    public WallpaperModel(WallpaperAPI wallpaperAPI) {
        this.mAPI = wallpaperAPI;
    }

    public Observable<Lce<WallpaperData>> getWallpapers() {
        return this.mAPI.getWallpapers().subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce());
    }
}
