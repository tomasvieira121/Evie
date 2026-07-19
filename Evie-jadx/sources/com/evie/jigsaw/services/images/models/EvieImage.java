package com.evie.jigsaw.services.images.models;

import com.evie.jigsaw.services.attribution.models.Attribution;
import com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class EvieImage implements Image {
    private String app;

    @SerializedName("base_url")
    private String baseUrl;
    private Rounding rounding;
    private List<String> versions = Collections.emptyList();

    @SerializedName("aspect_ratio")
    private float aspectRatio = 1.0f;
    private Attribution attribution = Attribution.NO_ATTRIBUTION;

    public EvieImage setAspectRatio(float f) {
        this.aspectRatio = f;
        return this;
    }

    public EvieImage setBaseUrl(String str) {
        this.baseUrl = str;
        return this;
    }

    public EvieImage setRounding(Rounding rounding) {
        this.rounding = rounding;
        return this;
    }

    @Override // com.evie.jigsaw.services.images.models.Image
    public String getApp() {
        return this.app;
    }

    @Override // com.evie.jigsaw.services.images.models.Image
    public Rounding getRounding() {
        return this.rounding;
    }

    public float getAspectRatio() {
        return this.aspectRatio;
    }

    public Attribution getAttribution() {
        return this.attribution;
    }

    @Override // com.evie.jigsaw.services.images.models.Image
    public String getUrl(int i) {
        String str = this.baseUrl;
        if (str == null) {
            return null;
        }
        List<String> list = this.versions;
        if (list == null || list.isEmpty()) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.baseUrl);
        List<String> list2 = this.versions;
        sb.append(list2.get(list2.size() - 1));
        String string = sb.toString();
        for (String str2 : this.versions) {
            if (str2.startsWith("w") && Integer.parseInt(str2.substring(1)) > i) {
                return this.baseUrl + str2;
            }
        }
        return string;
    }
}
