package com.evie.sidescreen.frequentlyused;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import com.evie.common.AbTestConfiguration;
import com.evie.common.HybridNetworkFetcherCommon;
import com.evie.models.frequentlyused.FrequentlyUsedModel;
import com.evie.models.frequentlyused.data.FrequentlyUsedApp;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.SideScreenDependencies;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.lifecycle.LifecycleEvent;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.schedulers.Schedulers;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FrequentlyUsedPresenter extends ItemPresenter<FrequentlyUsedViewHolder> {
    private final AbTestConfiguration mAbTestConfiguration;
    private final ActivationModel mActivationModel;
    private final SideScreenDependencies.ActivityOverrides mActivityOverrides;
    private final ActivityStarter mActivityStarter;
    private final AnalyticsHandler mAnalytics;
    private final AnalyticsModel mAnalyticsModel;
    private final Context mContext;
    private final FrequentlyUsedModel mFrequentlyUsedModel;
    private final LifecycleCallbacks mLifecycleCallbacks;

    static /* synthetic */ boolean lambda$null$3(IconText iconText) throws Exception {
        return iconText != null;
    }

    public FrequentlyUsedPresenter(Context context, ActivityStarter activityStarter, ActivationModel activationModel, LifecycleCallbacks lifecycleCallbacks, FrequentlyUsedModel frequentlyUsedModel, AnalyticsHandler analyticsHandler, AnalyticsModel analyticsModel, SideScreenDependencies.ActivityOverrides activityOverrides, AbTestConfiguration abTestConfiguration) {
        this.mContext = context;
        this.mActivityStarter = activityStarter;
        this.mActivationModel = activationModel;
        this.mLifecycleCallbacks = lifecycleCallbacks;
        this.mFrequentlyUsedModel = frequentlyUsedModel;
        this.mAnalytics = analyticsHandler;
        this.mAnalyticsModel = analyticsModel;
        this.mActivityOverrides = activityOverrides;
        this.mAbTestConfiguration = abTestConfiguration;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public int getType() {
        return FrequentlyUsedViewHolder.f330ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public FrequentlyUsedViewHolder createViewHolderInstance(View view) {
        return new FrequentlyUsedViewHolder(view);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(FrequentlyUsedViewHolder frequentlyUsedViewHolder) {
        this.mDisposables.add(this.mActivationModel.getActivationObservable().flatMap(new Function() { // from class: com.evie.sidescreen.frequentlyused.-$$Lambda$FrequentlyUsedPresenter$FLuz-0ZwoTBpUD4QptgxX98xu6U
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.SHOW).startWith(LifecycleEvent.SHOW);
            }
        }).subscribe((Consumer<? super R>) new Consumer() { // from class: com.evie.sidescreen.frequentlyused.-$$Lambda$FrequentlyUsedPresenter$6id9OlmgkfYEjb_b05RlDErF08U
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.mFrequentlyUsedModel.refresh();
            }
        }));
        this.mDisposables.add(this.mFrequentlyUsedModel.getFrequentlyUsedApps().observeOn(Schedulers.m548io()).flatMap(new Function() { // from class: com.evie.sidescreen.frequentlyused.-$$Lambda$FrequentlyUsedPresenter$HHF9d5nIxAIqdWZdSaufd4Z2-RQ
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Observable.fromIterable((List) obj).flatMap(new Function() { // from class: com.evie.sidescreen.frequentlyused.-$$Lambda$FrequentlyUsedPresenter$4jyEc7g-F7Q8yB9lXRq5eeZ4qFQ
                    @Override // io.reactivex.functions.Function
                    public final Object apply(Object obj2) {
                        return FrequentlyUsedPresenter.lambda$null$2(this.f$0, (FrequentlyUsedApp) obj2);
                    }
                }).filter(new Predicate() { // from class: com.evie.sidescreen.frequentlyused.-$$Lambda$FrequentlyUsedPresenter$v8oU-m0b8FupcHhMrJ0aCfPvbS4
                    @Override // io.reactivex.functions.Predicate
                    public final boolean test(Object obj2) {
                        return FrequentlyUsedPresenter.lambda$null$3((FrequentlyUsedPresenter.IconText) obj2);
                    }
                }).toList().toObservable();
            }
        }).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.frequentlyused.-$$Lambda$FrequentlyUsedPresenter$_uq8_M3tQ6LspzBIfFOyTMZQlb8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ((FrequentlyUsedViewHolder) this.f$0.mViewHolder).setIconTexts((List) obj);
            }
        }, new Consumer() { // from class: com.evie.sidescreen.frequentlyused.-$$Lambda$FrequentlyUsedPresenter$wi589sW9niUz1IuKib-msPufhhY
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.handleUnanticipatedException((Throwable) obj);
            }
        }));
    }

    public static /* synthetic */ ObservableSource lambda$null$2(FrequentlyUsedPresenter frequentlyUsedPresenter, FrequentlyUsedApp frequentlyUsedApp) throws Exception {
        IconText iconText = IconText.get(frequentlyUsedPresenter.mContext, frequentlyUsedApp);
        return iconText != null ? Observable.just(iconText) : Observable.empty();
    }

    void onIconTap(View view, Object obj, int i) {
        HashMap map = new HashMap();
        map.put("item_type", "frequently_used_app");
        map.put("screen_type", "side_screen");
        map.put("attribute_frequently_used_app", obj);
        map.put("item_position", Integer.valueOf(i));
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        startActivitySafely(view, (FrequentlyUsedApp) obj);
    }

    void onLinkTap() {
        HashMap map = new HashMap();
        map.put("item_type", "all_apps");
        map.put("screen_type", "side_screen");
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        SideScreenDependencies.ActivityOverrides activityOverrides = this.mActivityOverrides;
        if (activityOverrides == null || !activityOverrides.onAllAppsClick()) {
            Intent intent = new Intent();
            intent.setClassName(this.mContext, "com.evie.screen.AllAppsActivity");
            intent.addFlags(268468224);
            this.mActivityStarter.startActivity(null, intent, true);
        }
    }

    private void startActivitySafely(View view, FrequentlyUsedApp frequentlyUsedApp) {
        if ("ANY".equals(frequentlyUsedApp.className) || TextUtils.isEmpty(frequentlyUsedApp.className)) {
            startDefaultActivity(view, frequentlyUsedApp);
            return;
        }
        try {
            Intent flags = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setFlags(270532608);
            flags.setClassName(frequentlyUsedApp.packageName, frequentlyUsedApp.className);
            this.mActivityStarter.startActivity(view, flags, true, true);
            this.mAnalytics.recordAppLaunch(frequentlyUsedApp.packageName, frequentlyUsedApp.className, "frequently-used");
        } catch (Exception unused) {
            startDefaultActivity(view, frequentlyUsedApp);
        }
    }

    private void startDefaultActivity(View view, FrequentlyUsedApp frequentlyUsedApp) {
        Intent intentStartPackageId = this.mActivityStarter.startPackageId(view, frequentlyUsedApp.packageName, true);
        if (intentStartPackageId != null) {
            this.mAnalytics.recordAppLaunch(frequentlyUsedApp.packageName, intentStartPackageId.getComponent().getClassName(), "frequently-used");
        }
    }

    public static final class IconText {
        public final Uri iconUri;
        public final Object tag;
        public final CharSequence text;

        private IconText(Uri uri, CharSequence charSequence, Object obj) {
            this.iconUri = uri;
            this.text = charSequence;
            this.tag = obj;
        }

        public static IconText get(Context context, FrequentlyUsedApp frequentlyUsedApp) {
            try {
                PackageManager packageManager = context.getPackageManager();
                PackageInfo packageInfo = packageManager.getPackageInfo(frequentlyUsedApp.packageName, 0);
                if (packageInfo == null) {
                    return null;
                }
                if ("ANY".equals(frequentlyUsedApp.className)) {
                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(frequentlyUsedApp.packageName, 0);
                    if (applicationInfo == null) {
                        return null;
                    }
                    return new IconText(HybridNetworkFetcherCommon.getMagicResourceUri(frequentlyUsedApp.packageName, null, packageInfo.versionCode), packageManager.getApplicationLabel(applicationInfo), frequentlyUsedApp);
                }
                ActivityInfo activityInfo = packageManager.getActivityInfo(frequentlyUsedApp.toComponentName(), 0);
                if (activityInfo == null) {
                    return null;
                }
                return new IconText(HybridNetworkFetcherCommon.getMagicResourceUri(frequentlyUsedApp.packageName, frequentlyUsedApp.toComponentName().getClassName(), packageInfo.versionCode), activityInfo.loadLabel(packageManager), frequentlyUsedApp);
            } catch (Exception unused) {
                return null;
            }
        }
    }
}
