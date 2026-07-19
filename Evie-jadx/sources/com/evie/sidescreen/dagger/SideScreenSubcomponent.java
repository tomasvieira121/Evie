package com.evie.sidescreen.dagger;

import android.app.Activity;
import com.evie.common.utils.MemoryWatcher;
import com.evie.sidescreen.SideScreen;
import io.reactivex.disposables.CompositeDisposable;

/* JADX INFO: loaded from: classes.dex */
public interface SideScreenSubcomponent {

    public interface Builder {
        Builder activity(Activity activity);

        SideScreenSubcomponent build();

        Builder sideScreenDependenciesModule(SideScreenDependenciesModule sideScreenDependenciesModule);
    }

    CompositeDisposable disposables();

    void inject(SideScreen sideScreen);

    MemoryWatcher memoryWatcher();
}
