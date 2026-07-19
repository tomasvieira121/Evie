package com.aol.mobile.sdk.player.p002js.telemetry.data;

/* JADX INFO: loaded from: classes.dex */
public final class JsIssue {
    public final String context;
    public final String description;
    public final String text;
    public final Type type;

    public enum Type {
        SOURCE_LOADING,
        INIT,
        EXECUTION,
        PROPS_SERIALIZATION,
        DEBUG_TEXT
    }

    public JsIssue(Type type, String str, String str2, String str3) {
        this.type = type;
        this.context = str;
        this.description = str2;
        this.text = str3;
    }
}
