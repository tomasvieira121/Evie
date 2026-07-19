package com.evie.sidescreen.tiles.ads;

import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.tiles.TilePresenter;
import com.evie.sidescreen.tiles.ads.AdUnit;
import org.schema.Thing;

/* JADX INFO: loaded from: classes.dex */
public interface AdTilePresenterFactory<T extends AdUnit> {
    TilePresenter<?> create(T t, SideScreenContentTile sideScreenContentTile, Thing thing, ScreenInfo screenInfo);
}
