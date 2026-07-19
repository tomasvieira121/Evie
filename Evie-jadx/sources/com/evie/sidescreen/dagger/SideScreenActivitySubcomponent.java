package com.evie.sidescreen.dagger;

import android.app.Activity;
import androidx.fragment.app.Fragment;
import com.evie.models.sidescreen.SideScreenRelatedContentModel;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.LayerStack;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.exoplayer.ExoPlayerObservable;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import dagger.android.DispatchingAndroidInjector;
import io.reactivex.disposables.CompositeDisposable;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public interface SideScreenActivitySubcomponent {

    public interface Builder {
        Builder activity(Activity activity);

        SideScreenActivitySubcomponent build();

        Builder popupViewProvider(PopupViewProvider popupViewProvider);
    }

    ActivationModel activationModel();

    AnalyticsModel analyticsModel();

    CompositeDisposable disposables();

    Provider<ExoPlayerObservable> exoPlayerObservableProvider();

    LayerStack layerStack();

    LifecycleCallbacks lifecycleCallbacks();

    SideScreenRelatedContentModel sideScreenRelatedContentModel();

    SideScreenSharedPreferencesModel sideScreenSharedPreferencesModel();

    DispatchingAndroidInjector<Fragment> supportFragmentInjector();
}
