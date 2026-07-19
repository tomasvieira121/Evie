package com.evie.models.config;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class ConfigTab {

    @SerializedName("label")
    private String label;

    @SerializedName("path")
    private String path;

    protected boolean canEqual(Object obj) {
        return obj instanceof ConfigTab;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConfigTab)) {
            return false;
        }
        ConfigTab configTab = (ConfigTab) obj;
        if (!configTab.canEqual(this)) {
            return false;
        }
        String label = getLabel();
        String label2 = configTab.getLabel();
        if (label != null ? !label.equals(label2) : label2 != null) {
            return false;
        }
        String path = getPath();
        String path2 = configTab.getPath();
        return path != null ? path.equals(path2) : path2 == null;
    }

    public int hashCode() {
        String label = getLabel();
        int iHashCode = label == null ? 43 : label.hashCode();
        String path = getPath();
        return ((iHashCode + 59) * 59) + (path != null ? path.hashCode() : 43);
    }

    public String toString() {
        return "ConfigTab(label=" + getLabel() + ", path=" + getPath() + ")";
    }

    public ConfigTab(String str, String str2) {
        this.label = str;
        this.path = str2;
    }

    public String getLabel() {
        return this.label;
    }

    public String getPath() {
        return this.path;
    }
}
