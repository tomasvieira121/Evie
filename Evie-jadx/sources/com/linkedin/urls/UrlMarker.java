package com.linkedin.urls;

/* JADX INFO: loaded from: classes.dex */
public class UrlMarker {
    private String _originalUrl;
    private int _schemeIndex = -1;
    private int _usernamePasswordIndex = -1;
    private int _hostIndex = -1;
    private int _portIndex = -1;
    private int _pathIndex = -1;
    private int _queryIndex = -1;
    private int _fragmentIndex = -1;

    public Url createUrl() {
        return new Url(this);
    }

    public void setOriginalUrl(String str) {
        this._originalUrl = str;
    }

    public String getOriginalUrl() {
        return this._originalUrl;
    }

    public void setIndex(UrlPart urlPart, int i) {
        switch (urlPart) {
            case SCHEME:
                this._schemeIndex = i;
                break;
            case USERNAME_PASSWORD:
                this._usernamePasswordIndex = i;
                break;
            case HOST:
                this._hostIndex = i;
                break;
            case PORT:
                this._portIndex = i;
                break;
            case PATH:
                this._pathIndex = i;
                break;
            case QUERY:
                this._queryIndex = i;
                break;
            case FRAGMENT:
                this._fragmentIndex = i;
                break;
        }
    }

    public int indexOf(UrlPart urlPart) {
        switch (urlPart) {
            case SCHEME:
                return this._schemeIndex;
            case USERNAME_PASSWORD:
                return this._usernamePasswordIndex;
            case HOST:
                return this._hostIndex;
            case PORT:
                return this._portIndex;
            case PATH:
                return this._pathIndex;
            case QUERY:
                return this._queryIndex;
            case FRAGMENT:
                return this._fragmentIndex;
            default:
                return -1;
        }
    }

    public void unsetIndex(UrlPart urlPart) {
        setIndex(urlPart, -1);
    }
}
