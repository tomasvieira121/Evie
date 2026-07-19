package com.evie.sidescreen.tiles.ads;

import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.Replacer;
import com.evie.sidescreen.mvp.Unreliable;
import com.evie.sidescreen.tiles.TilePresenter;
import com.evie.sidescreen.tiles.ads.AbstractAdMediationViewHolder;
import io.reactivex.Completable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Action;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.schema.evie.ads.AbstractC1484Ad;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractAdMediationItemPresenter<VH extends AbstractAdMediationViewHolder> extends TilePresenter<VH> implements Unreliable {
    private final AbstractC1484Ad mAd;
    private String mAdProvider;
    private final Map<String, AdTilePresenterFactory> mAdTilePresenterFactories;
    private AdUnit mAdUnit;
    private final Map<String, AdUnitPool> mAdUnitPools;
    private Replacer mReplacer;
    private final ScreenInfo mScreenInfo;
    private final SideScreenContentTile mTile;

    @Override // com.evie.sidescreen.tiles.TilePresenter
    public boolean shouldReportImpressionEvent() {
        return false;
    }

    protected AbstractAdMediationItemPresenter(SideScreenContentTile sideScreenContentTile, AbstractC1484Ad abstractC1484Ad, ScreenInfo screenInfo, Map<String, AdUnitPool> map, Map<String, AdTilePresenterFactory> map2, AnalyticsModel analyticsModel) {
        super(sideScreenContentTile, screenInfo, analyticsModel);
        this.mTile = sideScreenContentTile;
        this.mAd = abstractC1484Ad;
        this.mScreenInfo = screenInfo;
        this.mAdUnitPools = map;
        this.mAdTilePresenterFactories = map2;
        for (AdUnitPool adUnitPool : this.mAdUnitPools.values()) {
            if (adUnitPool.getAlwaysPreload()) {
                adUnitPool.preload(sideScreenContentTile.getType());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(AbstractAdMediationViewHolder abstractAdMediationViewHolder) {
        if (this.mAdUnit == null) {
            final HashMap map = new HashMap();
            if (this.mAdUnitPools.isEmpty()) {
                handleAdUnits(map, true);
                return;
            }
            for (Map.Entry<String, AdUnitPool> entry : this.mAdUnitPools.entrySet()) {
                String key = entry.getKey();
                AdUnit adUnit = entry.getValue().getAdUnit(this.mTile.getType());
                map.put(key, adUnit);
                this.mDisposables.add(adUnit.getLoadCompletable().subscribeOn(AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.evie.sidescreen.tiles.ads.-$$Lambda$AbstractAdMediationItemPresenter$nzBsqMra5xqv6RBN5jV3iwQ9lSQ
                    @Override // io.reactivex.functions.Action
                    public final void run() {
                        this.f$0.handleAdUnits(map, false);
                    }
                }));
            }
            this.mDisposables.add(Completable.complete().subscribeOn(AndroidSchedulers.mainThread()).delay(3L, TimeUnit.SECONDS).subscribe(new Action() { // from class: com.evie.sidescreen.tiles.ads.-$$Lambda$AbstractAdMediationItemPresenter$0CpFxkDrr_tiVbPYd-68jRahj9M
                @Override // io.reactivex.functions.Action
                public final void run() {
                    this.f$0.handleAdUnits(map, true);
                }
            }));
            return;
        }
        bindAdUnit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAdUnits(Map<String, AdUnit> map, boolean z) {
        boolean z2;
        if (this.mAdUnit != null) {
            return;
        }
        boolean z3 = true;
        if (!z) {
            Iterator<AdUnit> it = map.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z2 = true;
                    break;
                }
                AdUnit next = it.next();
                if (!next.isReady() && !next.isLoadError()) {
                    z2 = false;
                    break;
                }
            }
            if (z2) {
                z = true;
            }
        }
        String preferredProvider = this.mAd.getPreferredProvider();
        AdUnit adUnit = map.get(preferredProvider);
        if (z && (adUnit == null || !adUnit.isReady())) {
            ArrayList<Map.Entry> arrayList = new ArrayList(map.entrySet());
            Collections.shuffle(arrayList);
            for (Map.Entry entry : arrayList) {
                String str = (String) entry.getKey();
                AdUnit adUnit2 = (AdUnit) entry.getValue();
                if (adUnit2.isReady()) {
                    adUnit = adUnit2;
                    preferredProvider = str;
                    break;
                }
            }
        }
        AdUnit adUnit3 = null;
        if (adUnit != null && adUnit.isReady()) {
            this.mAdProvider = preferredProvider;
            this.mAdUnit = adUnit;
            bindAdUnit();
            adUnit3 = adUnit;
        } else if (z) {
            bindNoAdUnit();
        } else {
            z3 = false;
        }
        if (z3) {
            this.mDisposables.clear();
            for (Map.Entry<String, AdUnit> entry2 : map.entrySet()) {
                String key = entry2.getKey();
                AdUnit value = entry2.getValue();
                if (value != adUnit3) {
                    this.mAdUnitPools.get(key).relinquishUnusedAdUnit(this.mTile.getType(), value);
                }
            }
        }
    }

    private void bindNoAdUnit() {
        Replacer replacer = this.mReplacer;
        if (replacer != null) {
            replacer.replace(this, Collections.emptyList());
        }
    }

    private void bindAdUnit() {
        if (this.mReplacer == null || this.mAdUnit == null) {
            return;
        }
        TilePresenter<?> tilePresenterCreate = this.mAdTilePresenterFactories.get(this.mAdProvider).create(this.mAdUnit, this.mTile, this.mAd, this.mScreenInfo);
        if (tilePresenterCreate != null) {
            this.mReplacer.replace(this, Collections.singletonList(tilePresenterCreate));
        } else {
            bindNoAdUnit();
        }
    }

    @Override // com.evie.sidescreen.tiles.TilePresenter
    protected Map<String, Object> getAnalyticsAttributes() {
        return new HashMap();
    }

    @Override // com.evie.sidescreen.mvp.Unreliable
    public void setReplacer(Replacer replacer) {
        this.mReplacer = replacer;
    }
}
