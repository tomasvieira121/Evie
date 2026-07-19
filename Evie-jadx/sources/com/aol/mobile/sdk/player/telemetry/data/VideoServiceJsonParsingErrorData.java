package com.aol.mobile.sdk.player.telemetry.data;

/* JADX INFO: loaded from: classes.dex */
public class VideoServiceJsonParsingErrorData {
    public final String context;
    public final String message;
    public final String responseJson;

    public VideoServiceJsonParsingErrorData(String str, String str2, String str3) {
        this.context = str;
        this.responseJson = str2;
        this.message = str3;
    }
}
