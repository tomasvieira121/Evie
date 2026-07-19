package com.linkedin.urls.detection;

/* JADX INFO: loaded from: classes.dex */
public enum UrlDetectorOptions {
    Default(0),
    QUOTE_MATCH(1),
    SINGLE_QUOTE_MATCH(2),
    BRACKET_MATCH(4),
    JSON(5),
    JAVASCRIPT(7),
    XML(9),
    HTML(27),
    ALLOW_SINGLE_LEVEL_DOMAIN(32);

    private int _value;

    UrlDetectorOptions(int i) {
        this._value = i;
    }

    public boolean hasFlag(UrlDetectorOptions urlDetectorOptions) {
        int i = this._value;
        int i2 = urlDetectorOptions._value;
        return (i & i2) == i2;
    }
}
