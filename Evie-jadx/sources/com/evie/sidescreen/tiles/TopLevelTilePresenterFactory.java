package com.evie.sidescreen.tiles;

import android.content.Context;
import android.text.TextUtils;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.models.sidescreen.data.TileType;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.tiles.ads.AdMediationItemPresenterFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.schema.NewsArticle;
import org.schema.Thing;
import org.schema.evie.ads.AbstractC1484Ad;

/* JADX INFO: loaded from: classes.dex */
public class TopLevelTilePresenterFactory {
    private final AdMediationItemPresenterFactory mAdMediationItemPresenterFactory;
    private final NonAdTilePresenterFactory mNonAdTilePresenterFactory;

    public TopLevelTilePresenterFactory(NonAdTilePresenterFactory nonAdTilePresenterFactory, AdMediationItemPresenterFactory adMediationItemPresenterFactory) {
        this.mNonAdTilePresenterFactory = nonAdTilePresenterFactory;
        this.mAdMediationItemPresenterFactory = adMediationItemPresenterFactory;
    }

    public List<TilePresenter<?>> create(Context context, SideScreenContentTile sideScreenContentTile, Thing thing, Thing thing2, ScreenInfo screenInfo) {
        if (thing instanceof AbstractC1484Ad) {
            return this.mAdMediationItemPresenterFactory.create(context, sideScreenContentTile, thing, thing2, screenInfo);
        }
        return this.mNonAdTilePresenterFactory.create(context, sideScreenContentTile, thing, thing2, screenInfo);
    }

    public List<TilePresenter<?>> processTiles(Context context, List<Thing> list, List<SideScreenContentTile> list2, int i, TileType tileType, ScreenInfo screenInfo) {
        if (list == null || list2 == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap(list.size());
        for (Thing thing : list) {
            if (thing != null && !TextUtils.isEmpty(thing.getId())) {
                map.put(thing.getId(), thing);
            }
        }
        for (SideScreenContentTile sideScreenContentTile : list2) {
            if (i != 0) {
                sideScreenContentTile.setPositionY(sideScreenContentTile.getPositionY() + i);
            }
            String id = sideScreenContentTile.getId();
            if (id != null) {
                Thing thing2 = (Thing) map.get(id);
                if (tileType != null && (thing2 instanceof NewsArticle)) {
                    sideScreenContentTile.setType(tileType);
                }
                String fallbackId = sideScreenContentTile.getFallbackId();
                for (TilePresenter<?> tilePresenter : create(context, sideScreenContentTile, thing2, fallbackId != null ? (Thing) map.get(fallbackId) : null, screenInfo)) {
                    if (tilePresenter != null) {
                        arrayList.add(tilePresenter);
                    }
                }
            }
        }
        return arrayList;
    }
}
