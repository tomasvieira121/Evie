package com.evie.models.frequentlyused.room;

import com.evie.models.frequentlyused.SpecialAppsList;

/* JADX INFO: loaded from: classes.dex */
public class AppLaunchEntry {
    private String className;

    /* JADX INFO: renamed from: id */
    private int f301id;
    private String packageName;

    protected boolean canEqual(Object obj) {
        return obj instanceof AppLaunchEntry;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AppLaunchEntry)) {
            return false;
        }
        AppLaunchEntry appLaunchEntry = (AppLaunchEntry) obj;
        if (!appLaunchEntry.canEqual(this)) {
            return false;
        }
        String packageName = getPackageName();
        String packageName2 = appLaunchEntry.getPackageName();
        if (packageName != null ? !packageName.equals(packageName2) : packageName2 != null) {
            return false;
        }
        String className = getClassName();
        String className2 = appLaunchEntry.getClassName();
        return className != null ? className.equals(className2) : className2 == null;
    }

    public int hashCode() {
        String packageName = getPackageName();
        int iHashCode = packageName == null ? 43 : packageName.hashCode();
        String className = getClassName();
        return ((iHashCode + 59) * 59) + (className != null ? className.hashCode() : 43);
    }

    public AppLaunchEntry() {
    }

    public AppLaunchEntry(int i, String str, String str2) {
        this.f301id = i;
        this.packageName = str;
        this.className = str2;
    }

    public int getId() {
        return this.f301id;
    }

    public void setId(int i) {
        this.f301id = i;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setClassName(String str) {
        this.className = str;
    }

    public String getClassName() {
        if (SpecialAppsList.ALWAYS_USE_DEFAULT.contains(getPackageName())) {
            return null;
        }
        return this.className;
    }
}
