package com.google.android.youtube.player.internal;

import android.app.Activity;
import android.content.Context;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.ac */
/* JADX INFO: loaded from: classes.dex */
public final class C0908ac extends AbstractC0906aa {
    @Override // com.google.android.youtube.player.internal.AbstractC0906aa
    /* JADX INFO: renamed from: a */
    public final InterfaceC0909b mo394a(Context context, String str, InterfaceC0926t.a aVar, InterfaceC0926t.b bVar) {
        return new C0922o(context, str, context.getPackageName(), C0932z.m534d(context), aVar, bVar);
    }

    @Override // com.google.android.youtube.player.internal.AbstractC0906aa
    /* JADX INFO: renamed from: a */
    public final InterfaceC0911d mo395a(Activity activity, InterfaceC0909b interfaceC0909b, boolean z) throws C0929w.a {
        return C0929w.m525a(activity, interfaceC0909b.mo400a(), z);
    }
}
