package com.evie.sidescreen;

import com.evie.sidescreen.analytics.AbTestConfigurationModel;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreen_MembersInjector {
    public static void injectMSideScreenView(SideScreen sideScreen, SideScreenView sideScreenView) {
        sideScreen.mSideScreenView = sideScreenView;
    }

    public static void injectMSideScreenPresenter(SideScreen sideScreen, SideScreenPresenter sideScreenPresenter) {
        sideScreen.mSideScreenPresenter = sideScreenPresenter;
    }

    public static void injectMActivationModel(SideScreen sideScreen, ActivationModel activationModel) {
        sideScreen.mActivationModel = activationModel;
    }

    public static void injectMLayerStack(SideScreen sideScreen, LayerStack layerStack) {
        sideScreen.mLayerStack = layerStack;
    }

    public static void injectMAbTestConfigurationModel(SideScreen sideScreen, AbTestConfigurationModel abTestConfigurationModel) {
        sideScreen.mAbTestConfigurationModel = abTestConfigurationModel;
    }

    public static void injectMSideScreenConfigurationModel(SideScreen sideScreen, SideScreenConfigurationModel sideScreenConfigurationModel) {
        sideScreen.mSideScreenConfigurationModel = sideScreenConfigurationModel;
    }
}
