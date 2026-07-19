package com.aol.mobile.sdk.player.advertisement.vrm;

import com.aol.mobile.sdk.annotations.PrivateApi;

/* JADX INFO: loaded from: classes.dex */
@PrivateApi
public class VrmSource {
    private String adEngineType;
    private String name;
    private String ruleCompanyId;
    private String ruleId;
    private String url;
    private String vendor = "";
    private String xml;

    public String getUrl() {
        return this.url;
    }

    void setUrl(String str) {
        this.url = str;
    }

    public String getXml() {
        return this.xml;
    }

    void setXml(String str) {
        this.xml = str;
    }

    public String getAdEngineType() {
        return this.adEngineType;
    }

    void setAdEngineType(String str) {
        this.adEngineType = str;
    }

    public String getRuleId() {
        return this.ruleId;
    }

    void setRuleId(String str) {
        this.ruleId = str;
    }

    public String getRuleCompanyId() {
        return this.ruleCompanyId;
    }

    void setRuleCompanyId(String str) {
        this.ruleCompanyId = str;
    }

    public String getVendor() {
        return this.vendor;
    }

    void setVendor(String str) {
        this.vendor = str;
    }

    public String getName() {
        return this.name;
    }

    void setName(String str) {
        this.name = str;
    }
}
