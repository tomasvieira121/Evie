package com.google.android.youtube.player.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.o */
/* JADX INFO: loaded from: classes.dex */
public final class C0922o extends AbstractC0924r<InterfaceC0919l> implements InterfaceC0909b {

    /* JADX INFO: renamed from: b */
    private final String f467b;

    /* JADX INFO: renamed from: c */
    private final String f468c;

    /* JADX INFO: renamed from: d */
    private final String f469d;

    /* JADX INFO: renamed from: e */
    private boolean f470e;

    public C0922o(Context context, String str, String str2, String str3, InterfaceC0926t.a aVar, InterfaceC0926t.b bVar) {
        super(context, aVar, bVar);
        this.f467b = (String) C0907ab.m396a(str);
        this.f468c = C0907ab.m398a(str2, (Object) "callingPackage cannot be null or empty");
        this.f469d = C0907ab.m398a(str3, (Object) "callingAppVersion cannot be null or empty");
    }

    /* JADX INFO: renamed from: k */
    private final void m480k() {
        m501i();
        if (this.f470e) {
            throw new IllegalStateException("Connection client has been released");
        }
    }

    @Override // com.google.android.youtube.player.internal.InterfaceC0909b
    /* JADX INFO: renamed from: a */
    public final IBinder mo400a() {
        m480k();
        try {
            return m502j().mo473a();
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // com.google.android.youtube.player.internal.AbstractC0924r
    /* JADX INFO: renamed from: a */
    protected final /* synthetic */ IInterface mo481a(IBinder iBinder) {
        return InterfaceC0919l.a.m476a(iBinder);
    }

    @Override // com.google.android.youtube.player.internal.AbstractC0924r
    /* JADX INFO: renamed from: a */
    protected final void mo482a(InterfaceC0916i interfaceC0916i, AbstractC0924r.d dVar) throws RemoteException {
        interfaceC0916i.mo462a(dVar, 1202, this.f468c, this.f469d, this.f467b, null);
    }

    @Override // com.google.android.youtube.player.internal.InterfaceC0909b
    /* JADX INFO: renamed from: a */
    public final void mo401a(boolean z) {
        if (m498f()) {
            try {
                m502j().mo475a(z);
            } catch (RemoteException unused) {
            }
            this.f470e = true;
        }
    }

    @Override // com.google.android.youtube.player.internal.AbstractC0924r
    /* JADX INFO: renamed from: b */
    protected final String mo483b() {
        return "com.google.android.youtube.player.internal.IYouTubeService";
    }

    @Override // com.google.android.youtube.player.internal.AbstractC0924r
    /* JADX INFO: renamed from: c */
    protected final String mo484c() {
        return "com.google.android.youtube.api.service.START";
    }

    @Override // com.google.android.youtube.player.internal.AbstractC0924r, com.google.android.youtube.player.internal.InterfaceC0926t
    /* JADX INFO: renamed from: d */
    public final void mo485d() {
        if (!this.f470e) {
            mo401a(true);
        }
        super.mo485d();
    }
}
