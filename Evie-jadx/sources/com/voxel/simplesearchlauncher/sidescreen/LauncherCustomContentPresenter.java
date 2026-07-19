package com.voxel.simplesearchlauncher.sidescreen;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.common.AbTestConfiguration;
import com.evie.sidescreen.LauncherInfo;
import com.evie.sidescreen.SideScreen;
import com.evie.sidescreen.SideScreenDependencies;
import com.evie.sidescreen.SideScreenPresenter;
import com.evie.sidescreen.SideScreenSettings;
import com.evie.sidescreen.SideScreenSharedDependencies;
import com.evie.sidescreen.lifecycle.LifecycleEvent;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import com.voxel.launcher3.CellLayout;
import com.voxel.launcher3.Launcher;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.model.managers.SettingsStorage;
import io.reactivex.disposables.Disposable;
import io.reactivex.subjects.BehaviorSubject;
import is.shortcut.R;

/* JADX INFO: loaded from: classes2.dex */
@AutoFactory
public class LauncherCustomContentPresenter implements SideScreenPresenter.SideScreenScrollListener, Launcher.CustomContentCallbacks, Disposable {
    private final AnalyticsHandler mAnalyticsHandler;
    private int mCurrentTopEmptyScrollDistance;
    private final Launcher mLauncher;
    private int mMaxSearchBarElevation;
    private float mRevealProgress;
    private final SideScreen mSideScreen;
    private LauncherCustomContentViewHolder mViewHolder;
    private boolean mActivated = false;
    private boolean mDisposed = false;
    private int mSearchScrollPosition = 0;
    private float mSearchBarBackgroundColorOffset = 0.0f;
    private final SharedPreferences.OnSharedPreferenceChangeListener mPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.voxel.simplesearchlauncher.sidescreen.LauncherCustomContentPresenter.1
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if ("use_celsius".equals(str)) {
                LauncherCustomContentPresenter.this.mConvertToCelsius.onNext(Boolean.valueOf(SettingsStorage.getInstance().getUseCelsius()));
            }
        }
    };
    private final BehaviorSubject<Boolean> mConvertToCelsius = BehaviorSubject.createDefault(Boolean.valueOf(SettingsStorage.getInstance().getUseCelsius()));

    @Override // com.voxel.launcher3.Launcher.CustomContentCallbacks
    public boolean isScrollingAllowed() {
        return true;
    }

    @Override // com.evie.sidescreen.SideScreenPresenter.SideScreenScrollListener
    public void onSideScreenScrollStateChanged(RecyclerView recyclerView, int i) {
    }

    @Override // com.voxel.launcher3.Launcher.CustomContentCallbacks
    public boolean shouldIncludeInWallpaperScroll() {
        return true;
    }

    public SideScreen getSideScreen() {
        return this.mSideScreen;
    }

    public void setViewHolder(LauncherCustomContentViewHolder launcherCustomContentViewHolder) {
        this.mViewHolder = launcherCustomContentViewHolder;
    }

    public LauncherCustomContentPresenter(Launcher launcher, @Provided Context context, @Provided SideScreenSharedDependencies sideScreenSharedDependencies, @Provided AnalyticsHandler analyticsHandler) {
        this.mLauncher = launcher;
        this.mMaxSearchBarElevation = this.mLauncher.getResources().getDimensionPixelSize(R.dimen.search_bar_side_screen_elevation);
        this.mAnalyticsHandler = analyticsHandler;
        SettingsStorage.getInstance().getSharedPreferences().registerOnSharedPreferenceChangeListener(this.mPreferenceChangeListener);
        this.mSideScreen = new SideScreen(this.mLauncher, SideScreenDependencies.builder().launcherInfo(new LauncherInfo(context.getPackageName(), null)).activityOverrides(new SideScreenDependencies.ActivityOverrides() { // from class: com.voxel.simplesearchlauncher.sidescreen.LauncherCustomContentPresenter.2
            @Override // com.evie.sidescreen.SideScreenDependencies.ActivityOverrides
            public boolean onSearchBarClick() {
                LauncherCustomContentPresenter.this.mLauncher.getWorkspace().moveToDefaultScreen(false);
                LauncherCustomContentPresenter.this.mLauncher.activateSearch(Launcher.SearchInteractionMethod.TAP, true);
                return true;
            }

            @Override // com.evie.sidescreen.SideScreenDependencies.ActivityOverrides
            public boolean onSettingsClick() {
                LauncherCustomContentPresenter.this.mLauncher.onClickSettingsButton(null);
                return true;
            }

            @Override // com.evie.sidescreen.SideScreenDependencies.ActivityOverrides
            public boolean onAllAppsClick() {
                LauncherCustomContentPresenter.this.mLauncher.changeAllAppsVisibility(true, true);
                return true;
            }
        }).popupListener(new SideScreenDependencies.PopupListener() { // from class: com.voxel.simplesearchlauncher.sidescreen.-$$Lambda$LauncherCustomContentPresenter$L_NeLYk49wj-MLfjimi_Bb4H0rU
            @Override // com.evie.sidescreen.SideScreenDependencies.PopupListener
            public final boolean onPopup(float f) {
                return LauncherCustomContentPresenter.lambda$new$0(this.f$0, f);
            }
        }).abTestConfiguration(new AbTestConfiguration(context)).build(), sideScreenSharedDependencies, SideScreenSettings.builder().isRtl(false).backgroundEnabled(false).searchEnabled(false).frequentlyUsedEnabled(false).convertToCelsius(this.mConvertToCelsius).isFullscreen(true).build());
        this.mSideScreen.getSideScreenPresenter().setScrollListener(this);
    }

    public static /* synthetic */ boolean lambda$new$0(LauncherCustomContentPresenter launcherCustomContentPresenter, float f) {
        launcherCustomContentPresenter.mLauncher.getSearchDropTargetBarAlpha().putValue(launcherCustomContentPresenter, 1.0f - f);
        return true;
    }

    @Override // com.voxel.launcher3.Launcher.CustomContentCallbacks
    public void onShow(boolean z) {
        if (!this.mActivated) {
            this.mActivated = true;
            this.mSideScreen.activate();
        }
        this.mSideScreen.onLifecycleEvent(LifecycleEvent.SHOW);
        this.mAnalyticsHandler.startScreenView("side-screen", null, null, null, null);
        this.mAnalyticsHandler.logEvent("ev_ss_active");
    }

    @Override // com.voxel.launcher3.Launcher.CustomContentCallbacks
    public void onHide() {
        this.mSideScreen.onLifecycleEvent(LifecycleEvent.HIDE);
        this.mAnalyticsHandler.finishScreenView();
    }

    @Override // com.voxel.launcher3.Launcher.CustomContentCallbacks
    public void onCustomContentScrollProgressChanged(float f, float f2) {
        this.mRevealProgress = f;
        this.mViewHolder.setBackgroundAlpha(f);
        this.mSideScreen.getSideScreenPresenter().setScreenScrollXProgress(f);
        float f3 = 1.0f - f;
        ((CellLayout) this.mLauncher.getWorkspace().getPageAt(this.mLauncher.getWorkspace().numCustomPages())).setShortcutAndWidgetAlpha(f3);
        if (this.mLauncher.getHotseat() != null) {
            float f4 = f2 * 1.02f;
            this.mLauncher.getHotseat().setTranslationX(f4);
            this.mLauncher.getHotseat().getBackgroundView().setTranslationX(f4);
            this.mLauncher.getHotseatAlpha().putValue(this, f3);
        }
        if (this.mLauncher.getIndicatorContainer() != null) {
            this.mLauncher.getIndicatorContainer().setTranslationX(f2 * 1.02f);
            this.mLauncher.getIndicatorAlpha().putValue(this, f3);
        }
        if (!SettingsStorage.getInstance().getSearchBarDesktopEnabled()) {
            this.mLauncher.getQsbSearchViewScrollerModifier().put(this, 1.0f - this.mRevealProgress);
        }
        updateSearchScrollPosition();
        this.mLauncher.getQsbSearchView().setBackgroundAlternativeFactorOffset(this.mSearchBarBackgroundColorOffset * f);
    }

    private void updateSearchScrollPosition() {
        this.mLauncher.getQsbSearchViewScroller().put(this, this.mSearchScrollPosition * this.mRevealProgress);
    }

    public void onPause() {
        this.mSideScreen.onLifecycleEvent(LifecycleEvent.PAUSE);
    }

    public void onResume() {
        this.mSideScreen.onLifecycleEvent(LifecycleEvent.RESUME);
    }

    @Override // com.evie.sidescreen.SideScreenPresenter.SideScreenScrollListener
    public void onSideScreenScrolled(RecyclerView recyclerView, int i, int i2, int i3) {
        int maxSearchBarScrollPosition = getMaxSearchBarScrollPosition();
        this.mCurrentTopEmptyScrollDistance = i3;
        this.mSearchScrollPosition = (int) (this.mCurrentTopEmptyScrollDistance * 0.6666667f);
        this.mSearchScrollPosition = Math.min(0, Math.max(this.mSearchScrollPosition, maxSearchBarScrollPosition));
        updateSearchScrollPosition();
        this.mViewHolder.setFullBackgroundAlpha(Math.abs(i3 / getSideScreen().getSideScreenPresenter().getMaxTopEmptyScrollDistance()));
    }

    private int getMaxSearchBarScrollPosition() {
        return this.mLauncher.getSearchBarHiddenHeight();
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.mSideScreen.cleanup();
        SettingsStorage.getInstance().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this.mPreferenceChangeListener);
        this.mDisposed = true;
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.mDisposed;
    }
}
