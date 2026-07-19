package com.evie.sidescreen;

import android.app.Activity;
import com.evie.common.utils.MemoryWatcher;
import com.evie.sidescreen.analytics.AbTestConfigurationModel;
import com.evie.sidescreen.dagger.ContextModule;
import com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent;
import com.evie.sidescreen.dagger.LifecycleCallbacksModule;
import com.evie.sidescreen.dagger.NetworkStatusModule;
import com.evie.sidescreen.dagger.SettingsModule;
import com.evie.sidescreen.dagger.SideScreenDependenciesModule;
import com.evie.sidescreen.dagger.SideScreenSubcomponent;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.lifecycle.LifecycleEvent;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class SideScreen {
    AbTestConfigurationModel mAbTestConfigurationModel;
    ActivationModel mActivationModel;
    LayerStack mLayerStack;
    private final LifecycleCallbacks mLifecycleCallbacks = new LifecycleCallbacks();
    SideScreenConfigurationModel mSideScreenConfigurationModel;
    SideScreenPresenter mSideScreenPresenter;
    private final SideScreenSubcomponent mSideScreenSubcomponent;
    SideScreenView mSideScreenView;

    public SideScreen(Activity activity, SideScreenDependencies sideScreenDependencies, SideScreenSharedDependencies sideScreenSharedDependencies, SideScreenSettings sideScreenSettings) {
        this.mSideScreenSubcomponent = DaggerSideScreenBaseComponent.builder().lifecycleCallbacksModule(new LifecycleCallbacksModule(this.mLifecycleCallbacks)).settingsModule(new SettingsModule(sideScreenSettings)).contextModule(new ContextModule(sideScreenSharedDependencies.context())).networkStatusModule(new NetworkStatusModule(sideScreenSharedDependencies.context())).sideScreenSharedDependenciesExcludingContext(sideScreenSharedDependencies).build().sideScreenSubcomponentBuilder().sideScreenDependenciesModule(new SideScreenDependenciesModule(sideScreenDependencies)).activity(activity).build();
        this.mSideScreenSubcomponent.inject(this);
        this.mSideScreenPresenter.bindSideScreenView(this.mSideScreenView);
    }

    public void activate() {
        this.mActivationModel.activate();
    }

    public SideScreenPresenter getSideScreenPresenter() {
        return this.mSideScreenPresenter;
    }

    public SideScreenView getSideScreenView() {
        return this.mSideScreenView;
    }

    public void cleanup() {
        MemoryWatcher memoryWatcher = this.mSideScreenSubcomponent.memoryWatcher();
        memoryWatcher.watch(this.mSideScreenPresenter);
        memoryWatcher.watch(this.mSideScreenView);
        this.mSideScreenPresenter.dispose();
        this.mSideScreenView.dispose();
        this.mSideScreenSubcomponent.disposables().dispose();
    }

    public void onLifecycleEvent(LifecycleEvent lifecycleEvent) {
        this.mLifecycleCallbacks.onLifecycleEvent(lifecycleEvent);
    }

    public boolean onBack() {
        Iterator<StackLayer> it = this.mLayerStack.iterator();
        while (it.hasNext()) {
            if (it.next().onBackPressed()) {
                return true;
            }
        }
        return false;
    }
}
