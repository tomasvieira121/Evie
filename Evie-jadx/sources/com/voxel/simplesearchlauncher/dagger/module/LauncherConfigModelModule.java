package com.voxel.simplesearchlauncher.dagger.module;

import com.evie.config.LauncherConfigAPI;
import com.evie.config.LauncherConfigModel;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes2.dex */
public class LauncherConfigModelModule {
    public LauncherConfigModel providesLauncherConfigModel(Retrofit retrofit) {
        return new LauncherConfigModel((LauncherConfigAPI) retrofit.create(LauncherConfigAPI.class));
    }
}
