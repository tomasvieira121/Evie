package com.voxel.simplesearchlauncher.analytics;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsFilterChain extends AnalyticsFilter {
    private final List<AnalyticsFilter> mFilters = new ArrayList();

    @Override // com.voxel.simplesearchlauncher.analytics.AnalyticsFilter
    public boolean allowLocation() {
        if (this.mFilters.size() > 0) {
            boolean zAllowLocation = true;
            Iterator<AnalyticsFilter> it = this.mFilters.iterator();
            while (it.hasNext()) {
                zAllowLocation &= it.next().allowLocation();
            }
            return zAllowLocation;
        }
        return super.allowLocation();
    }

    @Override // com.voxel.simplesearchlauncher.analytics.AnalyticsFilter
    public boolean isLocationUSGeolimited() {
        if (this.mFilters.size() > 0) {
            boolean zIsLocationUSGeolimited = false;
            Iterator<AnalyticsFilter> it = this.mFilters.iterator();
            while (it.hasNext()) {
                zIsLocationUSGeolimited |= it.next().isLocationUSGeolimited();
            }
            return zIsLocationUSGeolimited;
        }
        return super.isLocationUSGeolimited();
    }

    @Override // com.voxel.simplesearchlauncher.analytics.AnalyticsFilter
    public JSONObject filter(JSONObject jSONObject) {
        if (this.mFilters.size() > 0) {
            Iterator<AnalyticsFilter> it = this.mFilters.iterator();
            while (it.hasNext() && (jSONObject = it.next().filter(jSONObject)) != null) {
            }
            return jSONObject;
        }
        return super.filter(jSONObject);
    }

    public void addFilter(AnalyticsFilter analyticsFilter) {
        this.mFilters.add(analyticsFilter);
    }
}
