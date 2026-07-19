package com.evie.models.config;

import com.google.gson.annotations.SerializedName;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ConfigData {

    @SerializedName("tabs")
    private List<ConfigTab> configTabs;

    @SerializedName("tabs_enabled")
    private Boolean isTabsEnabled;
    private String onboardingFlow = "classic";

    protected boolean canEqual(Object obj) {
        return obj instanceof ConfigData;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConfigData)) {
            return false;
        }
        ConfigData configData = (ConfigData) obj;
        if (!configData.canEqual(this)) {
            return false;
        }
        String onboardingFlow = getOnboardingFlow();
        String onboardingFlow2 = configData.getOnboardingFlow();
        if (onboardingFlow != null ? !onboardingFlow.equals(onboardingFlow2) : onboardingFlow2 != null) {
            return false;
        }
        Boolean isTabsEnabled = getIsTabsEnabled();
        Boolean isTabsEnabled2 = configData.getIsTabsEnabled();
        if (isTabsEnabled != null ? !isTabsEnabled.equals(isTabsEnabled2) : isTabsEnabled2 != null) {
            return false;
        }
        List<ConfigTab> configTabs = getConfigTabs();
        List<ConfigTab> configTabs2 = configData.getConfigTabs();
        return configTabs != null ? configTabs.equals(configTabs2) : configTabs2 == null;
    }

    public int hashCode() {
        String onboardingFlow = getOnboardingFlow();
        int iHashCode = onboardingFlow == null ? 43 : onboardingFlow.hashCode();
        Boolean isTabsEnabled = getIsTabsEnabled();
        int iHashCode2 = ((iHashCode + 59) * 59) + (isTabsEnabled == null ? 43 : isTabsEnabled.hashCode());
        List<ConfigTab> configTabs = getConfigTabs();
        return (iHashCode2 * 59) + (configTabs != null ? configTabs.hashCode() : 43);
    }

    public String toString() {
        return "ConfigData(onboardingFlow=" + getOnboardingFlow() + ", isTabsEnabled=" + getIsTabsEnabled() + ", configTabs=" + getConfigTabs() + ")";
    }

    public String getOnboardingFlow() {
        return this.onboardingFlow;
    }

    public Boolean getIsTabsEnabled() {
        return this.isTabsEnabled;
    }

    public List<ConfigTab> getConfigTabs() {
        return this.configTabs;
    }
}
