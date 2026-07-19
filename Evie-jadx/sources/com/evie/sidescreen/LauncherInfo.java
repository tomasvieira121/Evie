package com.evie.sidescreen;

import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class LauncherInfo {
    private final String mPackageName;
    private final Intent mSettingsActivityLaunchIntent;

    public LauncherInfo(String str, Intent intent) {
        this.mPackageName = str;
        this.mSettingsActivityLaunchIntent = intent;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public Intent getSettingsActivityLaunchIntent() {
        return this.mSettingsActivityLaunchIntent;
    }
}
