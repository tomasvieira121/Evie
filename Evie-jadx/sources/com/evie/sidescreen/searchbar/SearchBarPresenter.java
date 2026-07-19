package com.evie.sidescreen.searchbar;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.LauncherInfo;
import com.evie.sidescreen.SideScreenDependencies;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import io.reactivex.functions.Consumer;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class SearchBarPresenter extends ItemPresenter<SearchBarViewHolder> {
    private final SideScreenDependencies.ActivityOverrides mActivityOverrides;
    private final ActivityStarter mActivityStarter;
    private final AnalyticsModel mAnalyticsModel;
    private final Context mContext;
    private final LauncherInfo mLauncherInfo;
    private final SearchBarBackgroundModel mSearchBarBackgroundModel;

    public SearchBarPresenter(@Provided Context context, @Provided ActivityStarter activityStarter, @Provided LauncherInfo launcherInfo, @Provided SideScreenDependencies.ActivityOverrides activityOverrides, @Provided AnalyticsModel analyticsModel, SearchBarBackgroundModel searchBarBackgroundModel) {
        this.mContext = context;
        this.mActivityStarter = activityStarter;
        this.mLauncherInfo = launcherInfo;
        this.mActivityOverrides = activityOverrides;
        this.mAnalyticsModel = analyticsModel;
        this.mSearchBarBackgroundModel = searchBarBackgroundModel;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return SearchBarViewHolder.f347ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public SearchBarViewHolder createViewHolderInstance(View view) {
        return new SearchBarViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(SearchBarViewHolder searchBarViewHolder) {
        this.mDisposables.add(this.mSearchBarBackgroundModel.getObservable().subscribe(new Consumer() { // from class: com.evie.sidescreen.searchbar.-$$Lambda$SearchBarPresenter$wCsZwgTFm6vp6DD4TnIaw9Pmhbs
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                SearchBarPresenter.lambda$onBindViewHolder$0(this.f$0, (SearchBarBackgroundModel.SearchBarBackground) obj);
            }
        }, new Consumer() { // from class: com.evie.sidescreen.searchbar.-$$Lambda$SearchBarPresenter$jh80x7dFDQOL43ysr7Eq5hZfpn0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.handleUnanticipatedException((Throwable) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$onBindViewHolder$0(SearchBarPresenter searchBarPresenter, SearchBarBackgroundModel.SearchBarBackground searchBarBackground) throws Exception {
        if (!((SearchBarViewHolder) searchBarPresenter.mViewHolder).hasShown()) {
            ((SearchBarViewHolder) searchBarPresenter.mViewHolder).show();
        }
        ((SearchBarViewHolder) searchBarPresenter.mViewHolder).setBackground(searchBarBackground.mDrawable);
        ((SearchBarViewHolder) searchBarPresenter.mViewHolder).setShouldInvert(searchBarBackground.mShouldInvert);
    }

    public void onSearchBarClick(View view) {
        HashMap map = new HashMap();
        map.put("item_type", "search");
        map.put("screen_type", "side_screen");
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        SideScreenDependencies.ActivityOverrides activityOverrides = this.mActivityOverrides;
        if (activityOverrides == null || !activityOverrides.onSearchBarClick()) {
            Intent intent = new Intent();
            intent.setClassName(this.mContext, "com.evie.screen.SearchActivity");
            intent.addFlags(268468224);
            this.mActivityStarter.startActivity(null, intent, true);
        }
    }

    public void onSettingsClick(View view) {
        HashMap map = new HashMap();
        map.put("item_type", "settings");
        map.put("screen_type", "side_screen");
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        SideScreenDependencies.ActivityOverrides activityOverrides = this.mActivityOverrides;
        if (activityOverrides == null || !activityOverrides.onSettingsClick()) {
            Intent intent = new Intent();
            intent.setClassName(this.mContext, "com.evie.screen.SettingsActivity");
            intent.putExtra("EXTRA_LAUNCHER_PACKAGE_NAME", this.mLauncherInfo.getPackageName());
            intent.putExtra("EXTRA_SETTINGS_ACTIVITY_LAUNCH_INTENT", this.mLauncherInfo.getSettingsActivityLaunchIntent());
            intent.addFlags(268468224);
            this.mActivityStarter.startActivity(null, intent, true);
        }
    }
}
