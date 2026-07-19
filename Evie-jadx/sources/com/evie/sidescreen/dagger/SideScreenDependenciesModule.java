package com.evie.sidescreen.dagger;

import com.evie.common.AbTestConfiguration;
import com.evie.sidescreen.LauncherInfo;
import com.evie.sidescreen.SideScreenDependencies;
import com.evie.sidescreen.mvp.ItemPresenter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenDependenciesModule {
    private final SideScreenDependencies mSideScreenDependencies;

    public SideScreenDependenciesModule(SideScreenDependencies sideScreenDependencies) {
        this.mSideScreenDependencies = sideScreenDependencies;
    }

    LauncherInfo providesLauncherInfo() {
        return this.mSideScreenDependencies.getLauncherInfo();
    }

    SideScreenDependencies.ActivityOverrides providesSearchBarOverrides() {
        if (this.mSideScreenDependencies.getActivityOverrides() == null) {
            return new SideScreenDependencies.ActivityOverrides() { // from class: com.evie.sidescreen.dagger.SideScreenDependenciesModule.1
                @Override // com.evie.sidescreen.SideScreenDependencies.ActivityOverrides
                public boolean onAllAppsClick() {
                    return false;
                }

                @Override // com.evie.sidescreen.SideScreenDependencies.ActivityOverrides
                public boolean onSearchBarClick() {
                    return false;
                }

                @Override // com.evie.sidescreen.SideScreenDependencies.ActivityOverrides
                public boolean onSettingsClick() {
                    return false;
                }
            };
        }
        return this.mSideScreenDependencies.getActivityOverrides();
    }

    List<ItemPresenter> providesUnactivatedTilesSectionOverride() {
        return this.mSideScreenDependencies.getUnactivatedTilesSectionOverride();
    }

    public List<ItemPresenter> providesCustomMainTabPresenters(SideScreenSubcomponent sideScreenSubcomponent) {
        List<ExternalPresenterFactory> customMainTabPresenterFactories = this.mSideScreenDependencies.getCustomMainTabPresenterFactories();
        if (customMainTabPresenterFactories == null || customMainTabPresenterFactories.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<ExternalPresenterFactory> it = customMainTabPresenterFactories.iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().create(sideScreenSubcomponent));
        }
        return arrayList;
    }

    SideScreenDependencies.PopupListener providesImagePopupListener() {
        if (this.mSideScreenDependencies.getPopupListener() == null) {
            return new SideScreenDependencies.PopupListener() { // from class: com.evie.sidescreen.dagger.SideScreenDependenciesModule.2
                @Override // com.evie.sidescreen.SideScreenDependencies.PopupListener
                public boolean onPopup(float f) {
                    return false;
                }
            };
        }
        return this.mSideScreenDependencies.getPopupListener();
    }

    AbTestConfiguration providesAbTestConfiguration() {
        return this.mSideScreenDependencies.getAbTestConfiguration();
    }
}
