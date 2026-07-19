package com.google.ads.mediation.customevent;

import com.google.ads.mediation.MediationServerParameters;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import is.shortcut.BuildConfig;

/* JADX INFO: loaded from: classes.dex */
public final class CustomEventServerParameters extends MediationServerParameters {

    @MediationServerParameters.Parameter(name = "class_name", required = BuildConfig.IS_END_USER_BUILD)
    public String className;

    @MediationServerParameters.Parameter(name = "label", required = BuildConfig.IS_END_USER_BUILD)
    public String label;

    @MediationServerParameters.Parameter(name = MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, required = false)
    public String parameter = null;
}
