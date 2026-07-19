package com.evie.jigsaw.services.attribution.models;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class Attribution {
    public static final Attribution NO_ATTRIBUTION = new Attribution();
    private String link;
    private String text;

    public String getText() {
        return this.text;
    }

    public String getLink() {
        return this.link;
    }

    public boolean isValid() {
        return (TextUtils.isEmpty(this.text) || TextUtils.isEmpty(this.link)) ? false : true;
    }
}
