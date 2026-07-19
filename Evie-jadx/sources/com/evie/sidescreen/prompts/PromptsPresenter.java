package com.evie.sidescreen.prompts;

import android.os.SystemClock;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.mvp.MvpViewHolder;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class PromptsPresenter<VH extends MvpViewHolder> extends ItemPresenter<VH> {
    private long firstVisibleTime = -1;
    protected final AnalyticsModel mAnalyticsModel;

    public abstract Map<String, Object> getTrackableAttributes();

    public PromptsPresenter(AnalyticsModel analyticsModel) {
        this.mAnalyticsModel = analyticsModel;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onVisibilityChanged(boolean z) {
        super.onVisibilityChanged(z);
        if (z) {
            beginImpressionEvent();
        } else {
            endImpressionEvent(getTrackableAttributes());
        }
    }

    private void beginImpressionEvent() {
        this.firstVisibleTime = SystemClock.elapsedRealtime();
    }

    private void endImpressionEvent(Map<String, Object> map) {
        if (this.firstVisibleTime < 0) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.firstVisibleTime;
        if (jElapsedRealtime < 1000) {
            return;
        }
        map.put("duration", Long.valueOf(jElapsedRealtime));
        map.put("attribute_screen_info", new ScreenInfo("side_screen", null, null));
        this.mAnalyticsModel.trackEvent("ev_ss_article_impression", map);
        this.firstVisibleTime = -1L;
    }
}
