package com.evie.sidescreen.analytics;

import com.evie.common.AbTestConfiguration;
import com.evie.common.data.Lce;
import com.evie.models.config.ConfigModel;
import com.evie.models.config.ExperimentData;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.lifecycle.LifecycleEvent;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.BehaviorSubject;
import io.reactivex.subjects.PublishSubject;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class AbTestConfigurationModel {
    private final AbTestConfiguration mAbTestConfiguration;
    private final ActivationModel mActivationModel;
    private final AnalyticsHandler mAnalyticsHandler;
    private final ConfigModel mConfigModel;
    private final LifecycleCallbacks mLifecycleCallbacks;
    private final String mPackageName;
    private final String mPhoneModel;
    private final int mVersion;
    private final BehaviorSubject<AbTestConfiguration> mBehaviorSubject = BehaviorSubject.create();
    private final PublishSubject<Boolean> mForceUpdateSubject = PublishSubject.create();

    public AbTestConfigurationModel(AbTestConfiguration abTestConfiguration, ConfigModel configModel, ActivationModel activationModel, LifecycleCallbacks lifecycleCallbacks, AnalyticsHandler analyticsHandler, int i, String str, String str2) {
        this.mAbTestConfiguration = abTestConfiguration;
        this.mConfigModel = configModel;
        this.mActivationModel = activationModel;
        this.mLifecycleCallbacks = lifecycleCallbacks;
        this.mAnalyticsHandler = analyticsHandler;
        this.mVersion = i;
        this.mPhoneModel = str;
        this.mPackageName = str2;
        Observable.merge(this.mForceUpdateSubject, this.mActivationModel.getActivationObservable().flatMap(new Function() { // from class: com.evie.sidescreen.analytics.-$$Lambda$AbTestConfigurationModel$P_1oRcJlhbjiEfMx3S2vTEiAmGI
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.SHOW).startWith(LifecycleEvent.SHOW);
            }
        }).map(new Function() { // from class: com.evie.sidescreen.analytics.-$$Lambda$AbTestConfigurationModel$d_On8bPxd3qDZP5YtGl6NbFkG9g
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return AbTestConfigurationModel.lambda$new$1((LifecycleEvent) obj);
            }
        })).observeOn(Schedulers.m548io()).flatMap(new Function() { // from class: com.evie.sidescreen.analytics.-$$Lambda$AbTestConfigurationModel$aE3s8s64G-vGpYrX0wWeS4aadpc
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                AbTestConfigurationModel abTestConfigurationModel = this.f$0;
                return abTestConfigurationModel.mConfigModel.getExperiment(abTestConfigurationModel.mAnalyticsHandler.getDistinctUserId(), abTestConfigurationModel.mVersion, abTestConfigurationModel.mPhoneModel, abTestConfigurationModel.mPackageName, (Boolean) obj);
            }
        }).subscribe(new Consumer() { // from class: com.evie.sidescreen.analytics.-$$Lambda$AbTestConfigurationModel$JJa_pyGv-L17aMNTfAfnwZvZEYE
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                AbTestConfigurationModel.lambda$new$3(this.f$0, (Lce) obj);
            }
        });
    }

    static /* synthetic */ Boolean lambda$new$1(LifecycleEvent lifecycleEvent) throws Exception {
        return false;
    }

    public static /* synthetic */ void lambda$new$3(AbTestConfigurationModel abTestConfigurationModel, Lce lce) throws Exception {
        if (lce.isLoading() || lce.isError() || lce.getData() == null) {
            return;
        }
        ExperimentData experimentData = (ExperimentData) lce.getData();
        boolean z = false;
        if (!Objects.equals(abTestConfigurationModel.mAbTestConfiguration.getActualGroup(), experimentData.getGroupId())) {
            abTestConfigurationModel.mAbTestConfiguration.setActualGroup(experimentData.getGroupId());
            z = true;
        }
        if (!Objects.equals(abTestConfigurationModel.mAbTestConfiguration.getActualExperiment(), experimentData.getExperimentId())) {
            abTestConfigurationModel.mAbTestConfiguration.setActualExperiment(experimentData.getExperimentId());
            z = true;
        }
        if (z) {
            abTestConfigurationModel.mBehaviorSubject.onNext(abTestConfigurationModel.mAbTestConfiguration);
        }
    }

    public Observable<AbTestConfiguration> getObservable() {
        return this.mBehaviorSubject;
    }

    public AbTestConfiguration getAbTestConfiguration() {
        return this.mAbTestConfiguration;
    }
}
