package com.evie.models.sidescreen;

import android.content.Context;
import android.location.Location;
import android.os.Build;
import com.evie.common.AbTestConfiguration;
import com.evie.common.data.Lce;
import com.evie.models.sidescreen.data.SideScreenContent;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.BehaviorSubject;
import io.reactivex.subjects.Subject;
import is.shortcut.BuildConfig;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory(allowSubclasses = BuildConfig.IS_END_USER_BUILD)
public class SideScreenContentTabModel implements SideScreenContentModelInterface {
    private final AbTestConfiguration mAbTestConfiguration;
    private final AnalyticsHandler mAnalyticsHandler;
    private final SideScreenContentAPI mApi;
    private final int mApiVersion;
    private final int mAppVersion;
    private final Subject<Lce<SideScreenContent>> mContentSubject = BehaviorSubject.create();
    private final LocationHandler mLocationHandler;
    private final String mPackageName;
    private final String mTabPath;

    public SideScreenContentTabModel(@Provided Context context, @Provided SideScreenContentAPI sideScreenContentAPI, @Provided int i, @Provided AbTestConfiguration abTestConfiguration, @Provided AnalyticsHandler analyticsHandler, @Provided LocationHandler locationHandler, @Provided int i2, String str) {
        this.mApi = sideScreenContentAPI;
        this.mAbTestConfiguration = abTestConfiguration;
        this.mAnalyticsHandler = analyticsHandler;
        this.mLocationHandler = locationHandler;
        this.mAppVersion = i2;
        this.mPackageName = context.getPackageName();
        this.mTabPath = str;
        this.mApiVersion = i;
    }

    @Override // com.evie.models.sidescreen.SideScreenContentModelInterface
    public Disposable refreshContent(String str) {
        Double d;
        Double dValueOf;
        String distinctUserId = this.mAnalyticsHandler.getDistinctUserId();
        String experiment = this.mAbTestConfiguration.getExperiment();
        String group = this.mAbTestConfiguration.getGroup();
        Location currentLocation = this.mLocationHandler.getCurrentLocation();
        if (currentLocation != null) {
            Double dValueOf2 = Double.valueOf(currentLocation.getLatitude());
            dValueOf = Double.valueOf(currentLocation.getLongitude());
            d = dValueOf2;
        } else {
            d = null;
            dValueOf = null;
        }
        Observable<R> observableCompose = this.mApi.getTabContent(this.mTabPath, distinctUserId, this.mPackageName, this.mAppVersion, this.mApiVersion, Build.MODEL, experiment, group, d, dValueOf).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce(str));
        final Subject<Lce<SideScreenContent>> subject = this.mContentSubject;
        subject.getClass();
        return observableCompose.subscribe((Consumer<? super R>) new Consumer() { // from class: com.evie.models.sidescreen.-$$Lambda$soRhY3yobnQxHc8WoNYF5Z1a8_A
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                subject.onNext((Lce) obj);
            }
        });
    }

    @Override // com.evie.models.sidescreen.SideScreenContentModelInterface
    public Observable<Lce<SideScreenContent>> getObservable() {
        return this.mContentSubject;
    }

    @Override // com.evie.models.sidescreen.SideScreenContentModelInterface
    public String getPath() {
        return this.mTabPath;
    }
}
