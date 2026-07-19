package com.evie.sidescreen.dagger;

import android.content.Context;
import com.evie.models.wallpaper.WallpaperAPI;
import com.evie.models.wallpaper.WallpaperModel;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.background.BackgroundModel;
import com.evie.sidescreen.background.BackgroundModelDisabled;
import com.evie.sidescreen.background.BackgroundModelImpl;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes.dex */
public class BackgroundModule {
    public WallpaperModel providesWallpaperModel(Retrofit retrofit) {
        return new WallpaperModel((WallpaperAPI) retrofit.newBuilder().build().create(WallpaperAPI.class));
    }

    public BackgroundModel providesBackgroundModel(boolean z, Context context, LifecycleCallbacks lifecycleCallbacks, ActivationModel activationModel, WallpaperModel wallpaperModel, OkHttpClient okHttpClient) {
        if (z) {
            return new BackgroundModelImpl(context, context.getSharedPreferences("com.evie.sidescreen.background.prefs", 0), context.getResources().getDisplayMetrics().densityDpi, lifecycleCallbacks, activationModel, wallpaperModel, okHttpClient);
        }
        return new BackgroundModelDisabled();
    }
}
