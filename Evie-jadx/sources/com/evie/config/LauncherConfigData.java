package com.evie.config;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class LauncherConfigData {

    @SerializedName("sidescreen_enabled")
    private boolean sidescreenEnabled = false;

    protected boolean canEqual(Object obj) {
        return obj instanceof LauncherConfigData;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LauncherConfigData)) {
            return false;
        }
        LauncherConfigData launcherConfigData = (LauncherConfigData) obj;
        return launcherConfigData.canEqual(this) && isSidescreenEnabled() == launcherConfigData.isSidescreenEnabled();
    }

    public int hashCode() {
        return 59 + (isSidescreenEnabled() ? 79 : 97);
    }

    public String toString() {
        return "LauncherConfigData(sidescreenEnabled=" + isSidescreenEnabled() + ")";
    }

    public boolean isSidescreenEnabled() {
        return this.sidescreenEnabled;
    }
}
