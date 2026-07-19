package com.evie.sidescreen.firebase;

import android.os.Handler;
import android.os.Looper;
import com.evie.common.data.Lce;
import com.evie.models.sidescreen.SideScreenRelatedContentModel;
import com.evie.sidescreen.SideScreenSettings;
import com.evie.sidescreen.SideScreenSharedDependencies;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.dagger.ContextModule;
import com.evie.sidescreen.dagger.DaggerSideScreenBaseComponent;
import com.evie.sidescreen.dagger.LifecycleCallbacksModule;
import com.evie.sidescreen.dagger.NetworkStatusModule;
import com.evie.sidescreen.dagger.SettingsModule;
import com.evie.sidescreen.dagger.SideScreenBaseComponent;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.FirebaseInstanceIdService;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import dagger.android.AndroidInjection;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class TokenService extends FirebaseInstanceIdService {
    AnalyticsHandler mAnalyticsHandler;
    private CompositeDisposable mDisposables;
    Handler mHandler;
    SideScreenRelatedContentModel mSideScreenRelatedContentModel;
    SideScreenSharedDependencies mSideScreenSharedDependencies;
    SideScreenSharedPreferencesModel mSideScreenSharedPreferencesModel;

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        AndroidInjection.inject(this);
        this.mDisposables = new CompositeDisposable();
        SideScreenBaseComponent sideScreenBaseComponentBuild = DaggerSideScreenBaseComponent.builder().lifecycleCallbacksModule(new LifecycleCallbacksModule(new LifecycleCallbacks())).settingsModule(new SettingsModule(SideScreenSettings.builder().build())).contextModule(new ContextModule(this.mSideScreenSharedDependencies.context())).networkStatusModule(new NetworkStatusModule(this.mSideScreenSharedDependencies.context())).sideScreenSharedDependenciesExcludingContext(this.mSideScreenSharedDependencies).build();
        this.mSideScreenRelatedContentModel = sideScreenBaseComponentBuild.sideScreenRelatedContentModel();
        this.mSideScreenSharedPreferencesModel = sideScreenBaseComponentBuild.sideScreenSharedPreferencesModel();
        this.mAnalyticsHandler = this.mSideScreenSharedDependencies.analyticsHandler();
        this.mHandler = new Handler(Looper.getMainLooper());
    }

    @Override // com.google.firebase.iid.FirebaseInstanceIdService
    public void onTokenRefresh() {
        String token;
        if (!getSharedPreferences("com.voxel.launcher3.prefs", 0).getBoolean("com.evie.screen.WelcomeScreenController.PREFERENCE_CONDITIONS_ACCEPTED", false) || (token = FirebaseInstanceId.getInstance().getToken()) == null) {
            return;
        }
        registerFirebaseToken(token, 1);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.mDisposables.dispose();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerFirebaseToken(final String str, final int i) {
        this.mDisposables.add(this.mSideScreenRelatedContentModel.registerFirebaseToken(str).subscribe(new Consumer() { // from class: com.evie.sidescreen.firebase.-$$Lambda$TokenService$_5NjR3NC0O9muxefa2-4G1h1p7I
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                TokenService.lambda$registerFirebaseToken$0(this.f$0, i, str, (Lce) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$registerFirebaseToken$0(TokenService tokenService, final int i, final String str, Lce lce) throws Exception {
        if (lce.isError()) {
            Timber.m553e("Error reporting token, %s", lce.getErrorData().getMessage());
            if (i < 10) {
                tokenService.mHandler.postDelayed(new Runnable() { // from class: com.evie.sidescreen.firebase.TokenService.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TokenService.this.registerFirebaseToken(str, i + 1);
                    }
                }, (1 << i) * 5000);
                return;
            }
            return;
        }
        Timber.m553e("Success", new Object[0]);
        tokenService.mSideScreenSharedPreferencesModel.setFirebaseCloudMessagingRegistrationToken(str);
    }
}
