package com.evie.sidescreen.footer;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import androidx.browser.customtabs.CustomTabsIntent;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.mvp.ItemPresenter;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class FooterPresenter extends ItemPresenter<FooterViewHolder> {
    private final AnalyticsModel mAnalyticsModel;
    private final Context mContext;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(FooterViewHolder footerViewHolder) {
    }

    public FooterPresenter(Context context, AnalyticsModel analyticsModel) {
        this.mContext = context;
        this.mAnalyticsModel = analyticsModel;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return FooterViewHolder.f329ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public FooterViewHolder createViewHolderInstance(View view) {
        return new FooterViewHolder(view);
    }

    void onPoweredByClick(View view) {
        HashMap map = new HashMap();
        map.put("item_type", "powered_by_evie");
        map.put("screen_type", "side_screen");
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        new CustomTabsIntent.Builder().build().launchUrl(this.mContext, Uri.parse("http://evie.com/"));
        this.mAnalyticsModel.startScreenView("web", "powered-by-evie", null, "http://evie.com/", null);
    }
}
