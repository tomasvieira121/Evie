package com.aol.mobile.sdk.player.http.model;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class LocalConfig {
    public final Client client;
    public final Device device;
    public final JSONObject extra;
    public final Sdk sdk;

    public LocalConfig(Client client, Device device, Sdk sdk, JSONObject jSONObject) {
        this.client = client;
        this.device = device;
        this.sdk = sdk;
        this.extra = jSONObject;
    }
}
