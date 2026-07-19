package com.evie.sidescreen;

import com.evie.sidescreen.oathplayer.OathPlayerObservable;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreenActivity_MembersInjector {
    public static void injectMSideScreenSharedDependencies(SideScreenActivity sideScreenActivity, SideScreenSharedDependencies sideScreenSharedDependencies) {
        sideScreenActivity.mSideScreenSharedDependencies = sideScreenSharedDependencies;
    }

    public static void injectMOathPlayerObservableProvider(SideScreenActivity sideScreenActivity, Provider<OathPlayerObservable> provider) {
        sideScreenActivity.mOathPlayerObservableProvider = provider;
    }
}
