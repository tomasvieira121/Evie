package com.evie.config;

import com.evie.common.data.Lce;
import io.reactivex.Observable;

/* JADX INFO: loaded from: classes.dex */
public class LauncherConfigModel {
    private final LauncherConfigAPI mAPI;

    public LauncherConfigModel(LauncherConfigAPI launcherConfigAPI) {
        this.mAPI = launcherConfigAPI;
    }

    public Observable<Lce<LauncherConfigData>> getContent() {
        return this.mAPI.getLauncherConfig().compose(Lce.transformRequestToLce());
    }
}
