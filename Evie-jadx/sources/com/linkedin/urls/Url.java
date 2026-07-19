package com.linkedin.urls;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes.dex */
public class Url {
    private static final Map<String, Integer> SCHEME_PORT_MAP = new HashMap();
    private String _fragment;
    private String _host;
    private String _originalUrl;
    private String _password;
    private String _path;
    private int _port = 0;
    private String _query;
    private String _scheme;
    private UrlMarker _urlMarker;
    private String _username;

    static {
        SCHEME_PORT_MAP.put("http", 80);
        SCHEME_PORT_MAP.put("https", 443);
        SCHEME_PORT_MAP.put("ftp", 21);
    }

    protected Url(UrlMarker urlMarker) {
        this._urlMarker = urlMarker;
        this._originalUrl = urlMarker.getOriginalUrl();
    }

    public String toString() {
        return getFullUrl();
    }

    public String getFullUrl() {
        return getFullUrlWithoutFragment() + StringUtils.defaultString(getFragment());
    }

    public String getFullUrlWithoutFragment() {
        StringBuilder sb = new StringBuilder();
        if (!StringUtils.isEmpty(getScheme())) {
            sb.append(getScheme());
            sb.append(":");
        }
        sb.append("//");
        if (!StringUtils.isEmpty(getUsername())) {
            sb.append(getUsername());
            if (!StringUtils.isEmpty(getPassword())) {
                sb.append(":");
                sb.append(getPassword());
            }
            sb.append("@");
        }
        sb.append(getHost());
        if (getPort() > 0 && getPort() != SCHEME_PORT_MAP.get(getScheme()).intValue()) {
            sb.append(":");
            sb.append(getPort());
        }
        sb.append(getPath());
        sb.append(getQuery());
        return sb.toString();
    }

    public String getScheme() {
        if (this._scheme == null) {
            if (exists(UrlPart.SCHEME)) {
                this._scheme = getPart(UrlPart.SCHEME);
                int iIndexOf = this._scheme.indexOf(":");
                if (iIndexOf != -1) {
                    this._scheme = this._scheme.substring(0, iIndexOf);
                }
            } else if (!this._originalUrl.startsWith("//")) {
                this._scheme = "http";
            }
        }
        return StringUtils.defaultString(this._scheme);
    }

    public String getUsername() {
        if (this._username == null) {
            populateUsernamePassword();
        }
        return StringUtils.defaultString(this._username);
    }

    public String getPassword() {
        if (this._password == null) {
            populateUsernamePassword();
        }
        return StringUtils.defaultString(this._password);
    }

    public String getHost() {
        if (this._host == null) {
            this._host = getPart(UrlPart.HOST);
            if (exists(UrlPart.PORT)) {
                String str = this._host;
                this._host = str.substring(0, str.length() - 1);
            }
        }
        return this._host;
    }

    public int getPort() {
        if (this._port == 0) {
            String part = getPart(UrlPart.PORT);
            if (part != null && !part.isEmpty()) {
                try {
                    this._port = Integer.parseInt(part);
                } catch (NumberFormatException unused) {
                    this._port = -1;
                }
            } else if (SCHEME_PORT_MAP.containsKey(getScheme())) {
                this._port = SCHEME_PORT_MAP.get(getScheme()).intValue();
            } else {
                this._port = -1;
            }
        }
        return this._port;
    }

    public String getPath() {
        if (this._path == null) {
            this._path = exists(UrlPart.PATH) ? getPart(UrlPart.PATH) : "/";
        }
        return this._path;
    }

    public String getQuery() {
        if (this._query == null) {
            this._query = getPart(UrlPart.QUERY);
        }
        return StringUtils.defaultString(this._query);
    }

    public String getFragment() {
        if (this._fragment == null) {
            this._fragment = getPart(UrlPart.FRAGMENT);
        }
        return StringUtils.defaultString(this._fragment);
    }

    private void populateUsernamePassword() {
        if (exists(UrlPart.USERNAME_PASSWORD)) {
            String part = getPart(UrlPart.USERNAME_PASSWORD);
            String[] strArrSplit = part.substring(0, part.length() - 1).split(":");
            if (strArrSplit.length == 1) {
                this._username = strArrSplit[0];
            } else if (strArrSplit.length == 2) {
                this._username = strArrSplit[0];
                this._password = strArrSplit[1];
            }
        }
    }

    private boolean exists(UrlPart urlPart) {
        return urlPart != null && this._urlMarker.indexOf(urlPart) >= 0;
    }

    private UrlPart nextExistingPart(UrlPart urlPart) {
        UrlPart nextPart = urlPart.getNextPart();
        if (exists(nextPart)) {
            return nextPart;
        }
        if (nextPart == null) {
            return null;
        }
        return nextExistingPart(nextPart);
    }

    private String getPart(UrlPart urlPart) {
        if (!exists(urlPart)) {
            return null;
        }
        UrlPart urlPartNextExistingPart = nextExistingPart(urlPart);
        if (urlPartNextExistingPart == null) {
            return this._originalUrl.substring(this._urlMarker.indexOf(urlPart));
        }
        return this._originalUrl.substring(this._urlMarker.indexOf(urlPart), this._urlMarker.indexOf(urlPartNextExistingPart));
    }
}
