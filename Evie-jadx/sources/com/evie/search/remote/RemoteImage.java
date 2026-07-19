package com.evie.search.remote;

import com.google.gson.annotations.SerializedName;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RemoteImage {

    @SerializedName("base_url")
    private String baseUrl;
    private List<String> versions;

    public void setBaseUrl(String str) {
        this.baseUrl = str;
    }

    public String getImageUrl(int i) {
        List<String> list;
        if (this.baseUrl == null || (list = this.versions) == null || list.isEmpty()) {
            return null;
        }
        for (String str : this.versions) {
            if (str.startsWith("icon_w") && Integer.parseInt(str.substring(6)) > i) {
                return this.baseUrl + str;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.baseUrl);
        List<String> list2 = this.versions;
        sb.append(list2.get(list2.size() - 1));
        return sb.toString();
    }
}
