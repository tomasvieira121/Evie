package com.evie.sidescreen.tiles.ads;

import android.view.View;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import java.util.Map;
import org.schema.evie.ads.AbstractC1484Ad;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class HeroAdMediationItemPresenter extends AbstractAdMediationItemPresenter<HeroAdMediationViewHolder> {
    protected HeroAdMediationItemPresenter(SideScreenContentTile sideScreenContentTile, AbstractC1484Ad abstractC1484Ad, ScreenInfo screenInfo, @Provided Map<String, AdUnitPool> map, @Provided Map<String, AdTilePresenterFactory> map2, @Provided AnalyticsModel analyticsModel) {
        super(sideScreenContentTile, abstractC1484Ad, screenInfo, map, map2, analyticsModel);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return HeroAdMediationViewHolder.f348ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public HeroAdMediationViewHolder createViewHolderInstance(View view) {
        return new HeroAdMediationViewHolder(view);
    }
}
