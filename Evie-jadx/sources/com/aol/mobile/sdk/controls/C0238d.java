package com.aol.mobile.sdk.controls;

import android.view.View;
import android.view.ViewDebug;

/* JADX INFO: renamed from: com.aol.mobile.sdk.controls.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0238d<T extends View> {

    /* JADX INFO: renamed from: a */
    public final T f61a;

    /* JADX INFO: renamed from: b */
    private a f62b;

    /* JADX INFO: renamed from: com.aol.mobile.sdk.controls.d$a */
    public interface a {
    }

    public C0238d(T t) {
        this.f61a = t;
    }

    @ViewDebug.ExportedProperty(mapping = {@ViewDebug.IntToString(from = 0, to = "VISIBLE"), @ViewDebug.IntToString(from = 4, to = "INVISIBLE"), @ViewDebug.IntToString(from = 8, to = "GONE")})
    /* JADX INFO: renamed from: a */
    public int m25a() {
        return this.f61a.getVisibility();
    }

    /* JADX INFO: renamed from: a */
    public void m26a(View.OnClickListener onClickListener) {
        this.f61a.setOnClickListener(onClickListener);
    }

    /* JADX INFO: renamed from: a */
    public void m27a(a aVar) {
        this.f62b = aVar;
    }
}
