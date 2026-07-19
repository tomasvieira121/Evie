package com.evie.sidescreen;

import com.evie.common.data.Lce;
import com.evie.models.config.ConfigData;
import com.evie.models.config.ConfigModel;
import com.evie.sidescreen.analytics.AbTestConfigurationModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.lifecycle.LifecycleEvent;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.subjects.BehaviorSubject;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenConfigurationModel implements Disposable {
    private final AbTestConfigurationModel mAbTestConfigurationModel;
    private final AnalyticsHandler mAnalyticsHandler;
    private final ConfigModel mConfigModel;
    private final String mPackageName;
    private final String mPhoneModel;
    private final SideScreenSharedPreferencesModel mPreferencesModel;
    private final SideScreenConfiguration mSideScreenConfiguration;
    private final int mVersion;
    private final BehaviorSubject<SideScreenConfiguration> mSideScreenConfigurationSubject = BehaviorSubject.create();
    private final CompositeDisposable mCompositeDisposable = new CompositeDisposable();

    public SideScreenConfigurationModel(ActivationModel activationModel, final LifecycleCallbacks lifecycleCallbacks, AbTestConfigurationModel abTestConfigurationModel, SideScreenConfiguration sideScreenConfiguration, ConfigModel configModel, AnalyticsHandler analyticsHandler, int i, String str, String str2, SideScreenSharedPreferencesModel sideScreenSharedPreferencesModel) {
        this.mAbTestConfigurationModel = abTestConfigurationModel;
        this.mSideScreenConfiguration = sideScreenConfiguration;
        this.mConfigModel = configModel;
        this.mAnalyticsHandler = analyticsHandler;
        this.mVersion = i;
        this.mPhoneModel = str;
        this.mPackageName = str2;
        this.mPreferencesModel = sideScreenSharedPreferencesModel;
        this.mSideScreenConfigurationSubject.onNext(sideScreenConfiguration);
        this.mCompositeDisposable.add(activationModel.getActivationObservable().switchMap(new Function() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenConfigurationModel$bIGYLK1ZsMZ3Q7b97Yc-gYI7RzU
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return lifecycleCallbacks.getObservableForEvent(LifecycleEvent.SHOW).startWith(LifecycleEvent.SHOW);
            }
        }).subscribe((Consumer<? super R>) new Consumer() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenConfigurationModel$pDABC3O4Dbub1U36VoRFG9BSk1Q
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.forceUpdate(false);
            }
        }));
    }

    public void forceUpdate(boolean z) {
        update(z, this.mAbTestConfigurationModel.getAbTestConfiguration().getExperiment(), this.mAbTestConfigurationModel.getAbTestConfiguration().getGroup());
    }

    private void update(boolean z, String str, String str2) {
        this.mCompositeDisposable.add(this.mConfigModel.getSidescreenConfig(this.mAnalyticsHandler.getDistinctUserId(), this.mVersion, this.mPhoneModel, this.mPackageName, Boolean.valueOf(z), str, str2, this.mPreferencesModel.getFirebaseCloudMessagingRegistrationToken()).subscribe(new Consumer() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenConfigurationModel$r_neqBPg4BFknToDL81sQnm-lnM
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                SideScreenConfigurationModel.lambda$update$2(this.f$0, (Lce) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$update$2(SideScreenConfigurationModel sideScreenConfigurationModel, Lce lce) throws Exception {
        if (lce.isLoading() || lce.isError() || lce.getData() == null) {
            return;
        }
        sideScreenConfigurationModel.mSideScreenConfiguration.setFromConfigData((ConfigData) lce.getData());
        sideScreenConfigurationModel.mSideScreenConfigurationSubject.onNext(sideScreenConfigurationModel.mSideScreenConfiguration);
    }

    public Observable<SideScreenConfiguration> observeSideScreenConfiguration() {
        return this.mSideScreenConfigurationSubject;
    }

    public SideScreenConfiguration getSideScreenConfiguration() {
        return this.mSideScreenConfiguration;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.mCompositeDisposable.dispose();
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.mCompositeDisposable.isDisposed();
    }
}
