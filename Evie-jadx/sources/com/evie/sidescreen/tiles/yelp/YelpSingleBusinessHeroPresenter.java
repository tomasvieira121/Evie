package com.evie.sidescreen.tiles.yelp;

import android.view.View;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import java.util.HashMap;
import java.util.Map;
import org.schema.evie.yelp.YelpAd;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class YelpSingleBusinessHeroPresenter extends YelpSingleBusinessPresenter {
    public YelpSingleBusinessHeroPresenter(YelpAd yelpAd, SideScreenContentTile sideScreenContentTile, ScreenInfo screenInfo, @Provided ActivityStarter activityStarter, @Provided AnalyticsModel analyticsModel, @Provided LocationHandler locationHandler) {
        super(yelpAd, sideScreenContentTile, screenInfo, activityStarter, analyticsModel, locationHandler);
    }

    @Override // com.evie.sidescreen.tiles.yelp.YelpSingleBusinessPresenter, com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return YelpSingleBusinessViewHolder.HERO_ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.tiles.yelp.YelpSingleBusinessPresenter, com.evie.sidescreen.mvp.ItemPresenter
    public YelpSingleBusinessViewHolder createViewHolderInstance(View view) {
        return super.createViewHolderInstance(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.tiles.yelp.YelpSingleBusinessPresenter, com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(YelpSingleBusinessViewHolder yelpSingleBusinessViewHolder) {
        super.onBindViewHolder(yelpSingleBusinessViewHolder);
        yelpSingleBusinessViewHolder.setAction(this.mYelpAd.getAction());
    }

    @Override // com.evie.sidescreen.tiles.yelp.YelpSingleBusinessPresenter, com.evie.sidescreen.tiles.TilePresenter
    protected Map<String, Object> getAnalyticsAttributes() {
        HashMap map = new HashMap();
        map.put("item_type", "ad");
        map.put("attribute_thing", this.mYelpAd);
        map.put("attribute_screen_info", this.mScreenInfo);
        map.put("ad_network", "yelp");
        return map;
    }
}
