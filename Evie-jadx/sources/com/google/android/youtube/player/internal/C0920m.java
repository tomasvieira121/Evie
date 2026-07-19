package com.google.android.youtube.player.internal;

import android.content.Context;
import android.content.res.Resources;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.m */
/* JADX INFO: loaded from: classes.dex */
public final class C0920m {

    /* JADX INFO: renamed from: a */
    public final String f455a;

    /* JADX INFO: renamed from: b */
    public final String f456b;

    /* JADX INFO: renamed from: c */
    public final String f457c;

    /* JADX INFO: renamed from: d */
    public final String f458d;

    /* JADX INFO: renamed from: e */
    public final String f459e;

    /* JADX INFO: renamed from: f */
    public final String f460f;

    /* JADX INFO: renamed from: g */
    public final String f461g;

    /* JADX INFO: renamed from: h */
    public final String f462h;

    /* JADX INFO: renamed from: i */
    public final String f463i;

    /* JADX INFO: renamed from: j */
    public final String f464j;

    public C0920m(Context context) {
        Resources resources = context.getResources();
        Map<String, String> mapM526a = C0930x.m526a((resources == null || resources.getConfiguration() == null || resources.getConfiguration().locale == null) ? Locale.getDefault() : resources.getConfiguration().locale);
        this.f455a = mapM526a.get("error_initializing_player");
        this.f456b = mapM526a.get("get_youtube_app_title");
        this.f457c = mapM526a.get("get_youtube_app_text");
        this.f458d = mapM526a.get("get_youtube_app_action");
        this.f459e = mapM526a.get("enable_youtube_app_title");
        this.f460f = mapM526a.get("enable_youtube_app_text");
        this.f461g = mapM526a.get("enable_youtube_app_action");
        this.f462h = mapM526a.get("update_youtube_app_title");
        this.f463i = mapM526a.get("update_youtube_app_text");
        this.f464j = mapM526a.get("update_youtube_app_action");
    }
}
