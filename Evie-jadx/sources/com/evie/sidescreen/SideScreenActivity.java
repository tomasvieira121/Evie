package com.evie.sidescreen;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import com.evie.models.sidescreen.SideScreenRelatedContentModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.dagger.ContextModule;
import com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent;
import com.evie.sidescreen.dagger.LifecycleCallbacksModule;
import com.evie.sidescreen.dagger.NetworkStatusModule;
import com.evie.sidescreen.dagger.SettingsModule;
import com.evie.sidescreen.dagger.SideScreenActivitySubcomponent;
import com.evie.sidescreen.exoplayer.ExoPlayerObservable;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.lifecycle.LifecycleEvent;
import com.evie.sidescreen.oathplayer.OathPlayerObservable;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.utils.AudioServiceActivityLeak;
import dagger.android.AndroidInjection;
import dagger.android.DispatchingAndroidInjector;
import io.reactivex.disposables.CompositeDisposable;
import java.util.Iterator;
import javax.inject.Provider;
import uk.p007co.chrisjenx.calligraphy.CalligraphyContextWrapper;

/* JADX INFO: loaded from: classes.dex */
public abstract class SideScreenActivity extends AppCompatActivity {
    private ActivationModel mActivationModel;
    protected AnalyticsHandler mAnalyticsHandler;
    protected AnalyticsModel mAnalyticsModel;
    protected CompositeDisposable mDisposables;
    protected Provider<ExoPlayerObservable> mExoPlayerObservableProvider;
    private LayerStack mLayerStack;
    private LifecycleCallbacks mLifecycleCallbacks;
    protected Provider<OathPlayerObservable> mOathPlayerObservableProvider;
    protected SideScreenRelatedContentModel mSideScreenRelatedContentModel;
    SideScreenSharedDependencies mSideScreenSharedDependencies;
    protected SideScreenSharedPreferencesModel mSideScreenSharedPreferencesModel;
    private DispatchingAndroidInjector<Fragment> mSupportFragmentInjector;
    private boolean useNavigationBarColorHack = false;
    private boolean hasSavedNavigationBarColor = false;
    private int navigationBarColor = 0;

    public abstract PopupViewProvider getPopupViewProvider();

    protected abstract String getScreenViewMetaData();

    protected abstract String getScreenViewProtobuf();

    protected abstract String getScreenViewSubType();

    protected abstract String getScreenViewTitle();

    protected abstract String getScreenViewType();

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(AudioServiceActivityLeak.preventLeakOf(CalligraphyContextWrapper.wrap(context)));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void setContentView(int i) {
        super.setContentView(i);
        handleNavigationBarColor();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        handleNavigationBarColor();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        handleNavigationBarColor();
    }

    private void handleNavigationBarColor() {
        TypedArray typedArrayObtainStyledAttributes = getTheme().obtainStyledAttributes(new int[]{R.attr.ss_navigationBarColor});
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            this.hasSavedNavigationBarColor = true;
            this.navigationBarColor = typedArrayObtainStyledAttributes.getColor(0, -16777216);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!this.hasSavedNavigationBarColor || Build.VERSION.SDK_INT < 21) {
            return;
        }
        getWindow().setNavigationBarColor(this.navigationBarColor);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.useNavigationBarColorHack = getIntent().getBooleanExtra("com.evie.sidescreen.SideScreenActivity.enable_activity_navigation_bar_hack", false);
    }

    public void onCreateInject() {
        AndroidInjection.inject(this);
        SideScreenActivitySubcomponent sideScreenActivitySubcomponentBuild = DaggerSideScreenBaseComponent.builder().lifecycleCallbacksModule(new LifecycleCallbacksModule(new LifecycleCallbacks())).settingsModule(new SettingsModule(SideScreenSettings.builder().isPersonalizeOnboarding(getIntent().getBooleanExtra("com.evie.sidescreen.ActivityStarter.personalize_onboarding", false)).build())).contextModule(new ContextModule(this.mSideScreenSharedDependencies.context())).networkStatusModule(new NetworkStatusModule(this.mSideScreenSharedDependencies.context())).sideScreenSharedDependenciesExcludingContext(this.mSideScreenSharedDependencies).build().activitySubcomponentBuilder().popupViewProvider(getPopupViewProvider()).activity(this).build();
        this.mActivationModel = sideScreenActivitySubcomponentBuild.activationModel();
        this.mLifecycleCallbacks = sideScreenActivitySubcomponentBuild.lifecycleCallbacks();
        this.mLayerStack = sideScreenActivitySubcomponentBuild.layerStack();
        this.mSupportFragmentInjector = sideScreenActivitySubcomponentBuild.supportFragmentInjector();
        this.mDisposables = sideScreenActivitySubcomponentBuild.disposables();
        this.mSideScreenRelatedContentModel = sideScreenActivitySubcomponentBuild.sideScreenRelatedContentModel();
        this.mExoPlayerObservableProvider = sideScreenActivitySubcomponentBuild.exoPlayerObservableProvider();
        this.mSideScreenSharedPreferencesModel = sideScreenActivitySubcomponentBuild.sideScreenSharedPreferencesModel();
        this.mAnalyticsModel = sideScreenActivitySubcomponentBuild.analyticsModel();
        this.mAnalyticsHandler = this.mSideScreenSharedDependencies.analyticsHandler();
        this.mActivationModel.activate();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.useNavigationBarColorHack && !this.hasSavedNavigationBarColor && Build.VERSION.SDK_INT >= 21) {
            this.navigationBarColor = getWindow().getNavigationBarColor();
            this.hasSavedNavigationBarColor = true;
        }
        if (this.useNavigationBarColorHack && this.hasSavedNavigationBarColor && Build.VERSION.SDK_INT >= 21) {
            getWindow().setNavigationBarColor(this.navigationBarColor);
        }
        this.mAnalyticsHandler.startScreenView(getScreenViewType(), getScreenViewSubType(), getScreenViewTitle(), getScreenViewMetaData(), getScreenViewProtobuf());
        this.mLifecycleCallbacks.onLifecycleEvent(LifecycleEvent.RESUME);
        this.mLifecycleCallbacks.onLifecycleEvent(LifecycleEvent.SHOW);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.useNavigationBarColorHack && this.hasSavedNavigationBarColor && Build.VERSION.SDK_INT >= 21) {
            getWindow().setNavigationBarColor(0);
        }
        this.mAnalyticsHandler.finishScreenView();
        this.mLifecycleCallbacks.onLifecycleEvent(LifecycleEvent.HIDE);
        this.mLifecycleCallbacks.onLifecycleEvent(LifecycleEvent.PAUSE);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.mDisposables.dispose();
        super.onDestroy();
    }

    public DispatchingAndroidInjector<Fragment> getSupportFragmentInjector() {
        return this.mSupportFragmentInjector;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        Iterator<StackLayer> it = this.mLayerStack.iterator();
        while (it.hasNext()) {
            if (it.next().onBackPressed()) {
                return;
            }
        }
        super.onBackPressed();
    }
}
