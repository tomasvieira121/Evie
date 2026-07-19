package com.evie.models.sidescreen;

import android.os.Build;
import android.text.TextUtils;
import com.evie.common.AbTestConfiguration;
import com.evie.common.data.Lce;
import com.evie.models.sidescreen.data.ShortLink;
import com.evie.models.sidescreen.data.SideScreenRelatedContent;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.schedulers.Schedulers;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenRelatedContentModel {
    private final SideScreenContentAPI mAPI;
    private final AbTestConfiguration mAbTestConfiguration;
    private final AnalyticsHandler mAnalyticsHandler;
    private final int mApiVersion;
    private final LocationHandler mLocationHandler;
    private final String mPackage;
    private final int mVersion;

    public SideScreenRelatedContentModel(SideScreenContentAPI sideScreenContentAPI, int i, AbTestConfiguration abTestConfiguration, AnalyticsHandler analyticsHandler, LocationHandler locationHandler, String str, int i2) {
        this.mAPI = sideScreenContentAPI;
        this.mApiVersion = i;
        this.mAbTestConfiguration = abTestConfiguration;
        this.mAnalyticsHandler = analyticsHandler;
        this.mLocationHandler = locationHandler;
        this.mPackage = str;
        this.mVersion = i2;
    }

    public Observable<Lce<SideScreenRelatedContent>> getRelatedContent(String str, boolean z, String str2) {
        return this.mAPI.getRelatedContent(str, z, this.mAnalyticsHandler.getDistinctUserId(), this.mPackage, this.mVersion, this.mApiVersion, Build.MODEL, this.mAbTestConfiguration.getExperiment(), this.mAbTestConfiguration.getGroup()).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce(str2));
    }

    public Observable<String> getShortLink(final String str) {
        return this.mAPI.getShortLink(str, this.mAnalyticsHandler.getDistinctUserId()).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce(null)).filter(new Predicate() { // from class: com.evie.models.sidescreen.-$$Lambda$SideScreenRelatedContentModel$AyJZ6dKL71SeZtmLlE9P0XPo1Iw
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return SideScreenRelatedContentModel.lambda$getShortLink$0((Lce) obj);
            }
        }).map(new Function() { // from class: com.evie.models.sidescreen.-$$Lambda$SideScreenRelatedContentModel$hsn2hW8NKGcFHZ-11UpZz2zxKLI
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return SideScreenRelatedContentModel.lambda$getShortLink$1(str, (Lce) obj);
            }
        });
    }

    static /* synthetic */ boolean lambda$getShortLink$0(Lce lce) throws Exception {
        return !lce.isLoading();
    }

    static /* synthetic */ String lambda$getShortLink$1(String str, Lce lce) throws Exception {
        return (lce.isError() || lce.getData() == null || TextUtils.isEmpty(((ShortLink) lce.getData()).getLink())) ? str : ((ShortLink) lce.getData()).getLink();
    }

    public Observable<Lce<Void>> registerFirebaseToken(String str) {
        return this.mAPI.registerToken(this.mAnalyticsHandler.getDistinctUserId(), str).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce(null)).filter(new Predicate() { // from class: com.evie.models.sidescreen.-$$Lambda$SideScreenRelatedContentModel$h2XXN9tzs_v9svRiv7HfjvFfqEQ
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return SideScreenRelatedContentModel.lambda$registerFirebaseToken$2((Lce) obj);
            }
        });
    }

    static /* synthetic */ boolean lambda$registerFirebaseToken$2(Lce lce) throws Exception {
        return !lce.isLoading();
    }
}
