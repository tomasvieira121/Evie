package com.evie.sidescreen.analytics.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ScreenInfo implements Serializable {

    /* JADX INFO: renamed from: id */
    private String f326id;
    private String subtype;
    private String type;

    public ScreenInfo(String str, String str2, String str3) {
        this.type = str;
        this.f326id = str2;
        this.subtype = str3;
    }

    public String getType() {
        return this.type;
    }

    public String getId() {
        return this.f326id;
    }

    public String getSubtype() {
        return this.subtype;
    }
}
