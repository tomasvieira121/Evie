package com.evie.sidescreen.tiles.header;

import android.net.TrafficStats;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.view.View;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.SideScreenConfiguration;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.personalize.PersonalizeActivity;
import com.evie.sidescreen.personalize.onboarding.PersonalizeOnboardingActivity;
import com.evie.sidescreen.tiles.TileBackgroundItemDecoration;
import com.evie.sidescreen.tiles.TileRowDividerItemDecoration;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class PersonalizeTileHeaderPresenter extends TileHeaderPresenter<PersonalizeTilesHeaderViewHolder> implements TileBackgroundItemDecoration.TileBackgroundContractor, TileRowDividerItemDecoration.TileRowDividerContractor {
    private final ActivityStarter mActivityStarter;
    private final AnalyticsModel mAnalyticsModel;
    private final Observable<Boolean> mEnableDataDebug;
    private Disposable mEnableDataDebugDisposable;
    private final SideScreenSharedPreferencesModel mSharedPreferencesModel;
    private final SideScreenConfiguration mSideScreenConfiguration;
    private boolean mDebugDataUsageEnabled = false;
    private Handler mHandler = new Handler(Looper.getMainLooper());
    private Runnable mDebugDataUsage = new Runnable() { // from class: com.evie.sidescreen.tiles.header.PersonalizeTileHeaderPresenter.1
        @Override // java.lang.Runnable
        public void run() {
            if (PersonalizeTileHeaderPresenter.this.mViewHolder != null) {
                double uidRxBytes = TrafficStats.getUidRxBytes(Process.myUid());
                Double.isNaN(uidRxBytes);
                ((PersonalizeTilesHeaderViewHolder) PersonalizeTileHeaderPresenter.this.mViewHolder).setTitle(String.format("%.2f", Double.valueOf((uidRxBytes / 1024.0d) / 1024.0d)));
                PersonalizeTileHeaderPresenter.this.mHandler.postDelayed(PersonalizeTileHeaderPresenter.this.mDebugDataUsage, 1000L);
            }
        }
    };

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean backgroundReliesOnAlpha() {
        return false;
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean backgroundReliesOnPrevAlpha() {
        return false;
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean shouldFillInBackground() {
        return true;
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean shouldRoundBottomCorners() {
        return false;
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean shouldRoundTopCorners() {
        return true;
    }

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowBottomTileDivider() {
        return true;
    }

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowTopTileDivider() {
        return true;
    }

    public PersonalizeTileHeaderPresenter(Observable<Boolean> observable, @Provided AnalyticsModel analyticsModel, @Provided ActivityStarter activityStarter, @Provided SideScreenSharedPreferencesModel sideScreenSharedPreferencesModel, @Provided SideScreenConfiguration sideScreenConfiguration) {
        this.mEnableDataDebug = observable;
        this.mAnalyticsModel = analyticsModel;
        this.mActivityStarter = activityStarter;
        this.mSharedPreferencesModel = sideScreenSharedPreferencesModel;
        this.mSideScreenConfiguration = sideScreenConfiguration;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return PersonalizeTilesHeaderViewHolder.f361ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public PersonalizeTilesHeaderViewHolder createViewHolderInstance(View view) {
        return new PersonalizeTilesHeaderViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(PersonalizeTilesHeaderViewHolder personalizeTilesHeaderViewHolder) {
        this.mEnableDataDebugDisposable = this.mEnableDataDebug.subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.header.-$$Lambda$PersonalizeTileHeaderPresenter$PR2Q7lhTW4lOb2C9HvNZLkF5Vsg
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                PersonalizeTileHeaderPresenter.lambda$onBindViewHolder$0(this.f$0, (Boolean) obj);
            }
        });
    }

    public static /* synthetic */ void lambda$onBindViewHolder$0(PersonalizeTileHeaderPresenter personalizeTileHeaderPresenter, Boolean bool) throws Exception {
        personalizeTileHeaderPresenter.mDebugDataUsageEnabled = bool.booleanValue();
        if (bool.booleanValue() || personalizeTileHeaderPresenter.mViewHolder == 0) {
            return;
        }
        ((PersonalizeTilesHeaderViewHolder) personalizeTileHeaderPresenter.mViewHolder).setDefaultTitle();
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected void onUnbindViewHolder() {
        super.onUnbindViewHolder();
        Disposable disposable = this.mEnableDataDebugDisposable;
        if (disposable == null || !disposable.isDisposed()) {
            return;
        }
        this.mEnableDataDebugDisposable.dispose();
        this.mEnableDataDebugDisposable = null;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onVisibilityChanged(boolean z) {
        super.onVisibilityChanged(z);
        if (this.mDebugDataUsageEnabled) {
            if (z) {
                this.mDebugDataUsage.run();
            } else {
                this.mHandler.removeCallbacks(this.mDebugDataUsage);
            }
        }
    }

    public void onClickPersonalizeLink() {
        HashMap map = new HashMap();
        map.put("item_type", "personalize");
        map.put("screen_type", "side_screen");
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        if ("bottom_bar".equals(this.mSideScreenConfiguration.getOnboardingFlow()) && !this.mSharedPreferencesModel.getHasFinishedPersonalizeOnboarding()) {
            this.mActivityStarter.startActivity(null, this.mActivityStarter.getLocalActivityIntent(PersonalizeOnboardingActivity.class), false);
        } else {
            ActivityStarter activityStarter = this.mActivityStarter;
            activityStarter.startActivity(null, activityStarter.getLocalActivityIntent(PersonalizeActivity.class), true);
            this.mSharedPreferencesModel.setHasOpenedPersonalize(true);
        }
    }
}
