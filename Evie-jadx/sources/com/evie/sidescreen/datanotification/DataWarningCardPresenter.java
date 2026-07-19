package com.evie.sidescreen.datanotification;

import android.os.SystemClock;
import android.view.View;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.lifecycle.LifecycleEvent;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.network.NetworkStatusModel;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class DataWarningCardPresenter extends ItemPresenter<DataWarningCardViewHolder> {
    private ActivationModel mActivationModel;
    private AnalyticsModel mAnalyticsModel;
    private LifecycleCallbacks mLifecycleCallbacks;
    private NetworkStatusModel mNetworkStatusModel;
    private SideScreenSharedPreferencesModel mSideScreenSharedPreferencesModel;
    private boolean mAlreadyDisplayed = false;
    private boolean mAlreadyDismissed = false;
    private boolean mSideScreenVisible = false;
    private long mFirstVisibleTime = -1;
    private boolean mWasOnWiFiWhenSideScreenShown = false;

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onUnbindViewHolder() {
    }

    public DataWarningCardPresenter(SideScreenSharedPreferencesModel sideScreenSharedPreferencesModel, AnalyticsModel analyticsModel, LifecycleCallbacks lifecycleCallbacks, ActivationModel activationModel, NetworkStatusModel networkStatusModel) {
        this.mSideScreenSharedPreferencesModel = sideScreenSharedPreferencesModel;
        this.mAnalyticsModel = analyticsModel;
        this.mLifecycleCallbacks = lifecycleCallbacks;
        this.mActivationModel = activationModel;
        this.mNetworkStatusModel = networkStatusModel;
        this.mDisposables.add(this.mActivationModel.getActivationObservable().flatMap(new Function() { // from class: com.evie.sidescreen.datanotification.-$$Lambda$DataWarningCardPresenter$efGZ1lFc-bd6ukTn0ysphIr-Wnk
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.SHOW);
            }
        }).subscribeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.datanotification.-$$Lambda$DataWarningCardPresenter$2AeH55hDd2OGVofbzGLEjfS0i4A
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.showSideScreen();
            }
        }));
        this.mDisposables.add(this.mActivationModel.getActivationObservable().flatMap(new Function() { // from class: com.evie.sidescreen.datanotification.-$$Lambda$DataWarningCardPresenter$F9DriSuvnQp7j_TBXvBtieVHmhs
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.HIDE);
            }
        }).subscribeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.datanotification.-$$Lambda$DataWarningCardPresenter$n_uj5HhvtGXq5Zkeu2sHvCRo1gY
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.hideSideScreen();
            }
        }));
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public int getType() {
        return DataWarningCardViewHolder.f328ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public DataWarningCardViewHolder createViewHolderInstance(View view) {
        return new DataWarningCardViewHolder(view);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(DataWarningCardViewHolder dataWarningCardViewHolder) {
        if (this.mSideScreenVisible) {
            updateViewHolder();
        }
    }

    private void updateViewHolder() {
        if (this.mWasOnWiFiWhenSideScreenShown || this.mAlreadyDismissed) {
            ((DataWarningCardViewHolder) this.mViewHolder).hide();
            return;
        }
        ((DataWarningCardViewHolder) this.mViewHolder).show();
        this.mSideScreenSharedPreferencesModel.setDataWarningCardDismissed(true);
        this.mAlreadyDisplayed = true;
        beginImpressionEvent();
    }

    public void onManualDismiss() {
        HashMap map = new HashMap();
        map.put("item_type", "freebee_data_warning");
        map.put("screen_type", "side_screen");
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        this.mAlreadyDismissed = true;
        endImpressionEvent();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showSideScreen() {
        this.mSideScreenVisible = true;
        if (this.mAlreadyDisplayed) {
            return;
        }
        this.mWasOnWiFiWhenSideScreenShown = this.mNetworkStatusModel.isOnWiFi();
        if (this.mViewHolder != 0) {
            updateViewHolder();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void hideSideScreen() {
        this.mSideScreenVisible = false;
        if (this.mAlreadyDisplayed) {
            this.mAlreadyDismissed = true;
        }
        if (this.mViewHolder != 0) {
            ((DataWarningCardViewHolder) this.mViewHolder).hide();
        }
        endImpressionEvent();
    }

    private void beginImpressionEvent() {
        this.mFirstVisibleTime = SystemClock.elapsedRealtime();
    }

    private void endImpressionEvent() {
        if (this.mFirstVisibleTime == -1) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.mFirstVisibleTime;
        HashMap map = new HashMap();
        map.put("item_type", "freebee_data_warning");
        map.put("attribute_screen_info", new ScreenInfo("side_screen", null, null));
        map.put("duration", Long.valueOf(jElapsedRealtime));
        this.mAnalyticsModel.trackEvent("ev_ss_article_impression", map);
        this.mFirstVisibleTime = -1L;
    }
}
