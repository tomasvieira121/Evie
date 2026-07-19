package com.evie.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class AbTestConfiguration {
    private final SharedPreferences mPref;

    public AbTestConfiguration(Context context) {
        this.mPref = context.getSharedPreferences("abtestconfiguration.prefs", 0);
    }

    public AbTestConfiguration setActualExperiment(String str) {
        this.mPref.edit().putString("experiment", str).apply();
        return this;
    }

    public AbTestConfiguration setActualGroup(String str) {
        this.mPref.edit().putString("group", str).apply();
        return this;
    }

    @SuppressLint({"ApplySharedPref"})
    public AbTestConfiguration setDebugExperimentOverride(String str) {
        this.mPref.edit().putString("debug-experiment", str).commit();
        return this;
    }

    @SuppressLint({"ApplySharedPref"})
    public AbTestConfiguration setDebugGroupOverride(String str) {
        this.mPref.edit().putString("debug-group", str).commit();
        return this;
    }

    public String getActualExperiment() {
        return this.mPref.getString("experiment", "");
    }

    public String getActualGroup() {
        return this.mPref.getString("group", "");
    }

    public String getExperiment() {
        String debugExperimentOverride = getDebugExperimentOverride();
        return !TextUtils.isEmpty(debugExperimentOverride) ? debugExperimentOverride : getActualExperiment();
    }

    public String getGroup() {
        String debugGroupOverride = getDebugGroupOverride();
        return !TextUtils.isEmpty(debugGroupOverride) ? debugGroupOverride : getActualGroup();
    }

    public String getDebugExperimentOverride() {
        return this.mPref.getString("debug-experiment", "");
    }

    public String getDebugGroupOverride() {
        return this.mPref.getString("debug-group", "");
    }
}
