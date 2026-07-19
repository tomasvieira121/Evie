package com.google.android.youtube.player.internal;

import android.app.Activity;
import android.content.Context;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.aa */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0906aa {

    /* JADX INFO: renamed from: a */
    private static final AbstractC0906aa f444a = m393b();

    /* JADX INFO: renamed from: a */
    public static AbstractC0906aa m392a() {
        return f444a;
    }

    /* JADX INFO: renamed from: b */
    private static AbstractC0906aa m393b() {
        try {
            try {
                return (AbstractC0906aa) Class.forName("com.google.android.youtube.api.locallylinked.LocallyLinkedFactory").asSubclass(AbstractC0906aa.class).newInstance();
            } catch (IllegalAccessException e) {
                throw new IllegalStateException(e);
            } catch (InstantiationException e2) {
                throw new IllegalStateException(e2);
            }
        } catch (ClassNotFoundException unused) {
            return new C0908ac();
        }
    }

    /* JADX INFO: renamed from: a */
    public abstract InterfaceC0909b mo394a(Context context, String str, InterfaceC0926t.a aVar, InterfaceC0926t.b bVar);

    /* JADX INFO: renamed from: a */
    public abstract InterfaceC0911d mo395a(Activity activity, InterfaceC0909b interfaceC0909b, boolean z) throws C0929w.a;
}
