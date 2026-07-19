package com.evie.models.topics.data;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
public class ListTopicsRequestOptions {
    private final HashMap<String, String> mOptions = new HashMap<>();

    public ListTopicsRequestOptions() {
    }

    public ListTopicsRequestOptions(Map<String, String> map) {
        if (map != null) {
            this.mOptions.putAll(map);
        }
    }

    public void setLimit(int i) {
        this.mOptions.put("n", String.valueOf(i));
    }

    public void setPersonalized() {
        this.mOptions.put("personalized", String.valueOf(true));
    }

    public void setSuggested() {
        this.mOptions.put("suggested", String.valueOf(true));
    }

    public void setFilterFollow() {
        this.mOptions.put("filter_follow", String.valueOf(true));
    }

    public void setIds(List<? extends Topic> list) {
        if (list == null) {
            this.mOptions.remove("ids");
        } else {
            this.mOptions.put("ids", joinIds(list));
        }
    }

    public void setSearchQuery(String str) {
        this.mOptions.put("q", str);
    }

    public HashMap<String, String> getOptions() {
        return this.mOptions;
    }

    private String joinIds(List<? extends Topic> list) {
        ArrayList arrayList = new ArrayList();
        for (Topic topic : list) {
            if (topic.getId() != null) {
                arrayList.add(topic.getId());
            }
        }
        return TextUtils.join(",", arrayList);
    }
}
