package com.linkedin.urls;

/* JADX INFO: loaded from: classes.dex */
public enum UrlPart {
    FRAGMENT(null),
    QUERY(FRAGMENT),
    PATH(QUERY),
    PORT(PATH),
    HOST(PORT),
    USERNAME_PASSWORD(HOST),
    SCHEME(USERNAME_PASSWORD);

    private UrlPart _nextPart;

    UrlPart(UrlPart urlPart) {
        this._nextPart = urlPart;
    }

    public UrlPart getNextPart() {
        return this._nextPart;
    }
}
