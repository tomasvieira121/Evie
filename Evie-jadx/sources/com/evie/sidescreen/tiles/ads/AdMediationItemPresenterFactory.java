package com.evie.sidescreen.tiles.ads;

import android.content.Context;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.tiles.TilePresenter;
import java.util.ArrayList;
import java.util.List;
import org.schema.Thing;
import org.schema.evie.ads.AbstractC1484Ad;

/* JADX INFO: loaded from: classes.dex */
public class AdMediationItemPresenterFactory {
    private final HeroAdMediationItemPresenterFactory mHeroAdMediationItemPresenterFactory;
    private final RowAdMediationItemPresenterFactory mRowAdMediationItemPresenterFactory;

    public AdMediationItemPresenterFactory(HeroAdMediationItemPresenterFactory heroAdMediationItemPresenterFactory, RowAdMediationItemPresenterFactory rowAdMediationItemPresenterFactory) {
        this.mHeroAdMediationItemPresenterFactory = heroAdMediationItemPresenterFactory;
        this.mRowAdMediationItemPresenterFactory = rowAdMediationItemPresenterFactory;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public List<TilePresenter<?>> create(Context context, SideScreenContentTile sideScreenContentTile, Thing thing, Thing thing2, ScreenInfo screenInfo) {
        ArrayList arrayList = new ArrayList(2);
        if (sideScreenContentTile.getType() != null && (thing instanceof AbstractC1484Ad)) {
            switch (sideScreenContentTile.getType()) {
                case HERO:
                    arrayList.add(this.mHeroAdMediationItemPresenterFactory.create(sideScreenContentTile, (AbstractC1484Ad) thing, screenInfo));
                    break;
                case ROW:
                    arrayList.add(this.mRowAdMediationItemPresenterFactory.create(sideScreenContentTile, (AbstractC1484Ad) thing, screenInfo));
                    break;
            }
        }
        return arrayList;
    }
}
