package com.evie.sidescreen.tiles.yelp;

import android.view.View;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.tiles.TilePresenter;
import com.evie.sidescreen.webviewer.WebViewerActivity;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.schema.evie.yelp.LocalBusiness;
import org.schema.evie.yelp.YelpAction;
import org.schema.evie.yelp.YelpAd;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class YelpMultipleBusinessPresenter extends TilePresenter<YelpMultipleBusinessViewHolder> {
    private final ActivityStarter mActivityStarter;
    private final YelpSingleBusinessPresenterFactory mPresenterFactory;
    private final YelpAd mYelpAd;

    public YelpMultipleBusinessPresenter(YelpAd yelpAd, SideScreenContentTile sideScreenContentTile, ScreenInfo screenInfo, @Provided YelpSingleBusinessPresenterFactory yelpSingleBusinessPresenterFactory, @Provided AnalyticsModel analyticsModel, @Provided ActivityStarter activityStarter) {
        super(sideScreenContentTile, screenInfo, analyticsModel);
        this.mPresenterFactory = yelpSingleBusinessPresenterFactory;
        this.mActivityStarter = activityStarter;
        this.mYelpAd = yelpAd;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return YelpMultipleBusinessViewHolder.f373ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public YelpMultipleBusinessViewHolder createViewHolderInstance(View view) {
        return new YelpMultipleBusinessViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(YelpMultipleBusinessViewHolder yelpMultipleBusinessViewHolder) {
        yelpMultipleBusinessViewHolder.setHeadline(this.mYelpAd.getHeadline());
        yelpMultipleBusinessViewHolder.setDescription(this.mYelpAd.getDescription());
        ArrayList arrayList = new ArrayList();
        Iterator<LocalBusiness> it = this.mYelpAd.getItems().iterator();
        while (it.hasNext()) {
            arrayList.add(this.mPresenterFactory.create(this.mYelpAd, it.next(), this.mTile, this.mScreenInfo));
        }
        yelpMultipleBusinessViewHolder.setItemPresenters(arrayList);
        yelpMultipleBusinessViewHolder.setAction(this.mYelpAd.getAction());
    }

    public void onActionClicked(View view) {
        onTapped();
        this.mAnalyticsModel.trackEvent("ev_ss_tap", getAnalyticsAttributes());
        YelpAction action = this.mYelpAd.getAction();
        HashMap map = new HashMap();
        map.put(WebViewerActivity.EXTRA_ANALYTICS_PROTO_KEY, (String) this.mYelpAd.getAnalytics().get("analytics_proto"));
        this.mActivityStarter.startUrl(view, action.getAndroidUrl(), null, null, null, map, this.mYelpAd.getAndroidPackageId(), action.getAndroidUrl(), null);
    }

    @Override // com.evie.sidescreen.tiles.TilePresenter
    protected Map<String, Object> getAnalyticsAttributes() {
        HashMap map = new HashMap();
        map.put("item_type", "ad");
        map.put("attribute_thing", this.mYelpAd);
        map.put("attribute_screen_info", this.mScreenInfo);
        map.put("ad_network", "yelp");
        return map;
    }
}
