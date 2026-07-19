package com.evie.sidescreen;

import android.content.SharedPreferences;
import com.evie.models.config.ConfigData;
import com.evie.models.config.ConfigTab;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenConfiguration {
    private final Gson mGson;
    private final SharedPreferences mPref;

    public SideScreenConfiguration(SharedPreferences sharedPreferences, Gson gson) {
        this.mPref = sharedPreferences;
        this.mGson = gson;
    }

    public void setFromConfigData(ConfigData configData) {
        setOnboardingFlow(configData.getOnboardingFlow());
        setTabsEnabled(configData.getIsTabsEnabled());
        setTabLabels(configData.getConfigTabs());
    }

    public String getOnboardingFlow() {
        return this.mPref.getString("sidescreenconfiguration.onboarding_flow", "classic");
    }

    public boolean isTabsEnabled() {
        return this.mPref.getBoolean("sidescreenconfiguration.tabs_enabled", false);
    }

    public void setOnboardingFlow(String str) {
        this.mPref.edit().putString("sidescreenconfiguration.onboarding_flow", str).apply();
    }

    public void setTabsEnabled(Boolean bool) {
        this.mPref.edit().putBoolean("sidescreenconfiguration.tabs_enabled", bool == null ? false : bool.booleanValue()).apply();
    }

    public void setTabLabels(List<ConfigTab> list) {
        if (list != null && list.size() > 0) {
            this.mPref.edit().putString("sidescreenconfiguration.tab_labels", this.mGson.toJson(list)).apply();
        } else {
            this.mPref.edit().remove("sidescreenconfiguration.tab_labels").apply();
        }
    }

    public List<ConfigTab> getConfigTabs() {
        List<ConfigTab> list = (List) this.mGson.fromJson(this.mPref.getString("sidescreenconfiguration.tab_labels", ""), new TypeToken<List<ConfigTab>>() { // from class: com.evie.sidescreen.SideScreenConfiguration.1
        }.getType());
        return list == null ? Collections.emptyList() : list;
    }
}
