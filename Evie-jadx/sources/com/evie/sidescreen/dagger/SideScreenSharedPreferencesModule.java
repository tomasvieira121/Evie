package com.evie.sidescreen.dagger;

import android.content.Context;
import android.content.SharedPreferences;
import com.evie.models.PromptStoreModel;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.google.gson.Gson;

/* JADX INFO: loaded from: classes.dex */
public abstract class SideScreenSharedPreferencesModule {
    static SideScreenSharedPreferencesModel providesSharedPreferencesModel(Context context, Gson gson) {
        return new SideScreenSharedPreferencesModel(context.getSharedPreferences("com.evie.sidescreen.prefs", 0), gson);
    }

    static SharedPreferences configSharedPreferences(Context context) {
        return context.getSharedPreferences("com.evie.sidescreen.config.prefs", 0);
    }

    static PromptStoreModel providesPromptStore(Context context, Gson gson) {
        return new PromptStoreModel(context.getSharedPreferences("com.evie.sidescreen.prompts.store.prefs", 0), gson);
    }
}
