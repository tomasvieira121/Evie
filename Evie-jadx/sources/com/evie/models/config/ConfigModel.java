package com.evie.models.config;

import com.evie.common.data.Lce;
import io.reactivex.Observable;
import io.reactivex.schedulers.Schedulers;

/* JADX INFO: loaded from: classes.dex */
public class ConfigModel {
    private final ConfigAPI mAPI;

    public ConfigModel(ConfigAPI configAPI) {
        this.mAPI = configAPI;
    }

    public Observable<Lce<ConfigData>> getSidescreenConfig(String str, int i, String str2, String str3, Boolean bool, String str4, String str5, String str6) {
        return this.mAPI.getSidescreenConfig(str, i, str2, str3, bool, str4, str5, str6).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce());
    }

    public Observable<Lce<ExperimentData>> getExperiment(String str, int i, String str2, String str3, Boolean bool) {
        return this.mAPI.getExperiment(str, i, str2, str3, bool).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce());
    }
}
