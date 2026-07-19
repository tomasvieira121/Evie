package com.aol.mobile.sdk.player.telemetry.data;

/* JADX INFO: loaded from: classes.dex */
public class VrmStatisticsData {
    public final long adBufferingTime;
    public final String context;
    public final long vrmProcessingTime;

    public VrmStatisticsData(String str, long j, long j2) {
        this.context = str;
        this.vrmProcessingTime = j;
        this.adBufferingTime = j2;
    }
}
