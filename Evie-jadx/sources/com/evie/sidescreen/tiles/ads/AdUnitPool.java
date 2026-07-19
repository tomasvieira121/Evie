package com.evie.sidescreen.tiles.ads;

import com.evie.models.sidescreen.data.TileType;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class AdUnitPool {
    private final Map<String, Set<AdUnit>> mPreloads = new HashMap();
    private boolean mAlwaysPreload = false;
    private boolean mTestMode = false;

    protected abstract AdUnit generateNewAdUnit(String str);

    public synchronized void preload(TileType tileType) {
        String strTranslateAdType = translateAdType(tileType);
        Set<AdUnit> adUnitSet = getAdUnitSet(strTranslateAdType);
        if (adUnitSet.size() == 0) {
            AdUnit adUnitGenerateNewAdUnit = generateNewAdUnit(strTranslateAdType);
            adUnitGenerateNewAdUnit.setTestMode(this.mTestMode);
            adUnitGenerateNewAdUnit.load();
            adUnitSet.add(adUnitGenerateNewAdUnit);
        }
    }

    private synchronized Set<AdUnit> getAdUnitSet(String str) {
        Set<AdUnit> hashSet;
        hashSet = this.mPreloads.get(str);
        if (hashSet == null) {
            hashSet = new HashSet<>();
            this.mPreloads.put(str, hashSet);
        }
        return hashSet;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public synchronized AdUnit getAdUnit(TileType tileType) {
        AdUnit next;
        Set<AdUnit> adUnitSet = getAdUnitSet(translateAdType(tileType));
        next = null;
        if (adUnitSet.size() == 0) {
            preload(tileType);
        }
        for (AdUnit adUnit : adUnitSet) {
            if (adUnit.isReady()) {
                next = adUnit;
                break;
            }
        }
        if (next == null) {
            next = adUnitSet.iterator().next();
        }
        adUnitSet.remove(next);
        if (this.mAlwaysPreload && adUnitSet.isEmpty()) {
            preload(tileType);
        }
        return next;
    }

    public synchronized void relinquishUnusedAdUnit(TileType tileType, AdUnit adUnit) {
        if (adUnit.isLoadError()) {
            return;
        }
        getAdUnitSet(translateAdType(tileType)).add(adUnit);
    }

    protected String translateAdType(TileType tileType) {
        return tileType.name();
    }

    public boolean getAlwaysPreload() {
        return this.mAlwaysPreload;
    }
}
