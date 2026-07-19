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
import com.voxel.simplesearchlauncher.api.LocationHandler;
import java.util.HashMap;
import java.util.Map;
import org.schema.evie.yelp.LocalBusiness;
import org.schema.evie.yelp.YelpAction;
import org.schema.evie.yelp.YelpAd;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class YelpSingleBusinessPresenter extends TilePresenter<YelpSingleBusinessViewHolder> {
    private final ActivityStarter mActivityStarter;
    private final LocalBusiness mLocalBusiness;
    private final LocationHandler mLocationHandler;
    protected final YelpAd mYelpAd;

    public YelpSingleBusinessPresenter(YelpAd yelpAd, SideScreenContentTile sideScreenContentTile, ScreenInfo screenInfo, @Provided ActivityStarter activityStarter, @Provided AnalyticsModel analyticsModel, @Provided LocationHandler locationHandler) {
        this(yelpAd, yelpAd.getItems().get(0), sideScreenContentTile, screenInfo, activityStarter, analyticsModel, locationHandler);
    }

    public YelpSingleBusinessPresenter(YelpAd yelpAd, LocalBusiness localBusiness, SideScreenContentTile sideScreenContentTile, ScreenInfo screenInfo, @Provided ActivityStarter activityStarter, @Provided AnalyticsModel analyticsModel, @Provided LocationHandler locationHandler) {
        super(sideScreenContentTile, screenInfo, analyticsModel);
        this.mYelpAd = yelpAd;
        this.mLocalBusiness = localBusiness;
        this.mActivityStarter = activityStarter;
        this.mLocationHandler = locationHandler;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return YelpSingleBusinessViewHolder.ROW_ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public YelpSingleBusinessViewHolder createViewHolderInstance(View view) {
        return new YelpSingleBusinessViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(YelpSingleBusinessViewHolder yelpSingleBusinessViewHolder) {
        yelpSingleBusinessViewHolder.setTitle(this.mLocalBusiness.getName());
        yelpSingleBusinessViewHolder.setSubtitle(this.mLocalBusiness.getDescription());
        yelpSingleBusinessViewHolder.setPrice(this.mLocalBusiness.getPriceRange());
        yelpSingleBusinessViewHolder.setImageUrl(this.mLocalBusiness.getImage());
        if (this.mLocalBusiness.getGeo() != null) {
            LocalBusiness.Geo geo = this.mLocalBusiness.getGeo();
            double distanceFromHere = this.mLocationHandler.getDistanceFromHere(geo.getLatitude(), geo.getLongitude());
            if (distanceFromHere > 0.0d) {
                yelpSingleBusinessViewHolder.setDistance(distanceFromHere);
            }
        }
        if (this.mLocalBusiness.getRating() != null) {
            yelpSingleBusinessViewHolder.setRating(this.mLocalBusiness.getRating().getRatingValue(), this.mLocalBusiness.getRating().getReviewCount());
        } else {
            yelpSingleBusinessViewHolder.hideRating();
        }
    }

    public void onItemClick(View view) {
        onTapped();
        this.mAnalyticsModel.trackEvent("ev_ss_tap", getAnalyticsAttributes());
        HashMap map = new HashMap();
        map.put(WebViewerActivity.EXTRA_ANALYTICS_PROTO_KEY, (String) this.mYelpAd.getAnalytics().get("analytics_proto"));
        this.mActivityStarter.startUrl(view, this.mLocalBusiness.getUrl(), null, null, null, map, this.mYelpAd.getAndroidPackageId(), this.mLocalBusiness.getAndroidUrl(), null);
    }

    public void onActionClicked(View view) {
        onTapped();
        this.mAnalyticsModel.trackEvent("ev_ss_tap", getAnalyticsAttributes());
        HashMap map = new HashMap();
        map.put(WebViewerActivity.EXTRA_ANALYTICS_PROTO_KEY, (String) this.mYelpAd.getAnalytics().get("analytics_proto"));
        YelpAction action = this.mYelpAd.getAction();
        this.mActivityStarter.startUrl(view, action.getUrl(), null, null, null, map, this.mYelpAd.getAndroidPackageId(), action.getAndroidUrl(), null);
    }

    @Override // com.evie.sidescreen.tiles.TilePresenter
    protected Map<String, Object> getAnalyticsAttributes() {
        HashMap map = new HashMap();
        map.put("item_type", "ad");
        map.put("attribute_thing", this.mLocalBusiness);
        map.put("attribute_screen_info", this.mScreenInfo);
        map.put("ad_network", "yelp");
        return map;
    }
}
