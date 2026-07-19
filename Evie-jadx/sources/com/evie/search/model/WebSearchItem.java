package com.evie.search.model;

import com.linkedin.urls.Url;
import com.linkedin.urls.detection.UrlDetector;
import com.linkedin.urls.detection.UrlDetectorOptions;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WebSearchItem {
    private boolean first;
    private String label;
    private String link = null;

    public boolean isFirst() {
        return this.first;
    }

    public String getLabel() {
        return this.label;
    }

    public WebSearchItem(boolean z, String str) {
        this.first = z;
        this.label = str;
    }

    public String getLink() {
        if (this.link == null) {
            List<Url> listDetect = new UrlDetector(this.label, UrlDetectorOptions.Default).detect();
            if (listDetect.size() == 1 && listDetect.get(0).getFullUrl().contains(this.label)) {
                this.link = listDetect.get(0).getFullUrl();
            } else {
                try {
                    this.link = "websearch:" + this.label.replace("#", "%23");
                } catch (Exception unused) {
                    this.link = "websearch:" + this.label;
                }
            }
        }
        return this.link;
    }

    public boolean isSearchQuery() {
        return getLink().startsWith("websearch");
    }
}
