package com.evie.sidescreen;

import com.evie.common.AbTestConfiguration;
import com.evie.sidescreen.dagger.ExternalPresenterFactory;
import com.evie.sidescreen.mvp.ItemPresenter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenDependencies {
    private final AbTestConfiguration mAbTestConfiguration;
    private final ActivityOverrides mActivityOverrides;
    private final List<ExternalPresenterFactory> mCustomMainTabPresenterFactories;
    private final LauncherInfo mLauncherInfo;
    private final PopupListener mPopupListener;
    private final List<ItemPresenter> mUnactivatedTilesSectionOverride;

    public interface ActivityOverrides {
        boolean onAllAppsClick();

        boolean onSearchBarClick();

        boolean onSettingsClick();
    }

    public interface PopupListener {
        boolean onPopup(float f);
    }

    public static class SideScreenDependenciesBuilder {
        private AbTestConfiguration abTestConfiguration;
        private ActivityOverrides activityOverrides;
        private List<ExternalPresenterFactory> customMainTabPresenterFactories;
        private LauncherInfo launcherInfo;
        private boolean launcherInfo$set;
        private PopupListener popupListener;
        private List<ItemPresenter> unactivatedTilesSectionOverride;

        SideScreenDependenciesBuilder() {
        }

        public SideScreenDependenciesBuilder abTestConfiguration(AbTestConfiguration abTestConfiguration) {
            this.abTestConfiguration = abTestConfiguration;
            return this;
        }

        public SideScreenDependenciesBuilder activityOverrides(ActivityOverrides activityOverrides) {
            this.activityOverrides = activityOverrides;
            return this;
        }

        public SideScreenDependencies build() {
            LauncherInfo launcherInfo$default$launcherInfo = this.launcherInfo;
            if (!this.launcherInfo$set) {
                launcherInfo$default$launcherInfo = SideScreenDependencies.$default$launcherInfo();
            }
            return new SideScreenDependencies(launcherInfo$default$launcherInfo, this.activityOverrides, this.unactivatedTilesSectionOverride, this.popupListener, this.abTestConfiguration, this.customMainTabPresenterFactories);
        }

        public SideScreenDependenciesBuilder launcherInfo(LauncherInfo launcherInfo) {
            this.launcherInfo = launcherInfo;
            this.launcherInfo$set = true;
            return this;
        }

        public SideScreenDependenciesBuilder popupListener(PopupListener popupListener) {
            this.popupListener = popupListener;
            return this;
        }

        public String toString() {
            return "SideScreenDependencies.SideScreenDependenciesBuilder(launcherInfo=" + this.launcherInfo + ", activityOverrides=" + this.activityOverrides + ", unactivatedTilesSectionOverride=" + this.unactivatedTilesSectionOverride + ", popupListener=" + this.popupListener + ", abTestConfiguration=" + this.abTestConfiguration + ", customMainTabPresenterFactories=" + this.customMainTabPresenterFactories + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static LauncherInfo $default$launcherInfo() {
        return new LauncherInfo(null, null);
    }

    public static SideScreenDependenciesBuilder builder() {
        return new SideScreenDependenciesBuilder();
    }

    public SideScreenDependencies(LauncherInfo launcherInfo, ActivityOverrides activityOverrides, List<ItemPresenter> list, PopupListener popupListener, AbTestConfiguration abTestConfiguration, List<ExternalPresenterFactory> list2) {
        this.mLauncherInfo = launcherInfo;
        this.mActivityOverrides = activityOverrides;
        this.mUnactivatedTilesSectionOverride = list;
        this.mPopupListener = popupListener;
        this.mAbTestConfiguration = abTestConfiguration;
        this.mCustomMainTabPresenterFactories = list2;
    }

    public LauncherInfo getLauncherInfo() {
        return this.mLauncherInfo;
    }

    public ActivityOverrides getActivityOverrides() {
        return this.mActivityOverrides;
    }

    public List<ItemPresenter> getUnactivatedTilesSectionOverride() {
        return this.mUnactivatedTilesSectionOverride;
    }

    public PopupListener getPopupListener() {
        return this.mPopupListener;
    }

    public AbTestConfiguration getAbTestConfiguration() {
        return this.mAbTestConfiguration;
    }

    public List<ExternalPresenterFactory> getCustomMainTabPresenterFactories() {
        return this.mCustomMainTabPresenterFactories;
    }
}
