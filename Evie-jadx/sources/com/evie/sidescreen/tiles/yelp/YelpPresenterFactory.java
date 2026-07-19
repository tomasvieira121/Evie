package com.evie.sidescreen.tiles.yelp;

import android.text.TextUtils;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.tiles.TilePresenter;
import java.util.ArrayList;
import java.util.List;
import org.schema.evie.yelp.YelpAd;

/* JADX INFO: loaded from: classes.dex */
public class YelpPresenterFactory {
    private final YelpMultipleBusinessPresenterFactory mYelpMultipleBusinessPresenterFactory;
    private final YelpSingleBusinessHeroPresenterFactory mYelpSingleBusinessHeroPresenterFactory;

    public YelpPresenterFactory(YelpMultipleBusinessPresenterFactory yelpMultipleBusinessPresenterFactory, YelpSingleBusinessHeroPresenterFactory yelpSingleBusinessHeroPresenterFactory) {
        this.mYelpMultipleBusinessPresenterFactory = yelpMultipleBusinessPresenterFactory;
        this.mYelpSingleBusinessHeroPresenterFactory = yelpSingleBusinessHeroPresenterFactory;
    }

    public List<TilePresenter<?>> create(SideScreenContentTile sideScreenContentTile, YelpAd yelpAd, ScreenInfo screenInfo) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(yelpAd.getHeadline()) && yelpAd.getItems() != null && yelpAd.getItems().size() > 0) {
            arrayList.add(this.mYelpSingleBusinessHeroPresenterFactory.create(yelpAd, sideScreenContentTile, screenInfo));
        } else {
            arrayList.add(this.mYelpMultipleBusinessPresenterFactory.create(yelpAd, sideScreenContentTile, screenInfo));
        }
        return arrayList;
    }
}
