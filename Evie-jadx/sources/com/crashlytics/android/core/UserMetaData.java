package com.crashlytics.android.core;

/* JADX INFO: loaded from: classes.dex */
public class UserMetaData {
    public static final UserMetaData EMPTY = new UserMetaData();
    public final String email;

    /* JADX INFO: renamed from: id */
    public final String f294id;
    public final String name;

    public UserMetaData() {
        this(null, null, null);
    }

    public UserMetaData(String str, String str2, String str3) {
        this.f294id = str;
        this.name = str2;
        this.email = str3;
    }

    public boolean isEmpty() {
        return this.f294id == null && this.name == null && this.email == null;
    }
}
