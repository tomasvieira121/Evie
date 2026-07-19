package com.aol.mobile.sdk.player.telemetry.data;

import com.aol.mobile.sdk.player.model.ErrorState;

/* JADX INFO: loaded from: classes.dex */
public class PlaybackErrorData {
    public final String context;
    public final ErrorState errorState;
    public final String propsAsString;

    public PlaybackErrorData(String str, ErrorState errorState, String str2) {
        this.context = str;
        this.errorState = errorState;
        this.propsAsString = str2;
    }
}
