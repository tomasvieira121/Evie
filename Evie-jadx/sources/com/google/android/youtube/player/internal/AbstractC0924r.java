package com.google.android.youtube.player.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.youtube.player.YouTubeApiServiceUtil;
import com.google.android.youtube.player.YouTubeInitializationResult;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.r */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0924r<T extends IInterface> implements InterfaceC0926t {

    /* JADX INFO: renamed from: a */
    final Handler f471a;

    /* JADX INFO: renamed from: b */
    private final Context f472b;

    /* JADX INFO: renamed from: c */
    private T f473c;

    /* JADX INFO: renamed from: d */
    private ArrayList<InterfaceC0926t.a> f474d;

    /* JADX INFO: renamed from: g */
    private ArrayList<InterfaceC0926t.b> f477g;

    /* JADX INFO: renamed from: j */
    private ServiceConnection f480j;

    /* JADX INFO: renamed from: e */
    private final ArrayList<InterfaceC0926t.a> f475e = new ArrayList<>();

    /* JADX INFO: renamed from: f */
    private boolean f476f = false;

    /* JADX INFO: renamed from: h */
    private boolean f478h = false;

    /* JADX INFO: renamed from: i */
    private final ArrayList<b<?>> f479i = new ArrayList<>();

    /* JADX INFO: renamed from: k */
    private boolean f481k = false;

    /* JADX INFO: renamed from: com.google.android.youtube.player.internal.r$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f482a = new int[YouTubeInitializationResult.values().length];

        static {
            try {
                f482a[YouTubeInitializationResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.youtube.player.internal.r$a */
    final class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what == 3) {
                AbstractC0924r.this.m495a((YouTubeInitializationResult) message.obj);
                return;
            }
            if (message.what == 4) {
                synchronized (AbstractC0924r.this.f474d) {
                    if (AbstractC0924r.this.f481k && AbstractC0924r.this.m498f() && AbstractC0924r.this.f474d.contains(message.obj)) {
                        ((InterfaceC0926t.a) message.obj).mo389a();
                    }
                }
                return;
            }
            if (message.what != 2 || AbstractC0924r.this.m498f()) {
                if (message.what == 2 || message.what == 1) {
                    ((b) message.obj).m503a();
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.youtube.player.internal.r$b */
    protected abstract class b<TListener> {

        /* JADX INFO: renamed from: b */
        private TListener f485b;

        public b(TListener tlistener) {
            this.f485b = tlistener;
            synchronized (AbstractC0924r.this.f479i) {
                AbstractC0924r.this.f479i.add(this);
            }
        }

        /* JADX INFO: renamed from: a */
        public final void m503a() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.f485b;
            }
            mo504a(tlistener);
        }

        /* JADX INFO: renamed from: a */
        protected abstract void mo504a(TListener tlistener);

        /* JADX INFO: renamed from: b */
        public final void m505b() {
            synchronized (this) {
                this.f485b = null;
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.youtube.player.internal.r$c */
    protected final class c extends b<Boolean> {

        /* JADX INFO: renamed from: b */
        public final YouTubeInitializationResult f486b;

        /* JADX INFO: renamed from: c */
        public final IBinder f487c;

        public c(String str, IBinder iBinder) {
            super(true);
            this.f486b = AbstractC0924r.m490b(str);
            this.f487c = iBinder;
        }

        @Override // com.google.android.youtube.player.internal.AbstractC0924r.b
        /* JADX INFO: renamed from: a */
        protected final /* synthetic */ void mo504a(Boolean bool) {
            if (bool != null) {
                if (AnonymousClass1.f482a[this.f486b.ordinal()] != 1) {
                    AbstractC0924r.this.m495a(this.f486b);
                    return;
                }
                try {
                    if (AbstractC0924r.this.mo483b().equals(this.f487c.getInterfaceDescriptor())) {
                        AbstractC0924r.this.f473c = AbstractC0924r.this.mo481a(this.f487c);
                        if (AbstractC0924r.this.f473c != null) {
                            AbstractC0924r.this.m499g();
                            return;
                        }
                    }
                } catch (RemoteException unused) {
                }
                AbstractC0924r.this.m489a();
                AbstractC0924r.this.m495a(YouTubeInitializationResult.INTERNAL_ERROR);
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.youtube.player.internal.r$d */
    protected final class d extends InterfaceC0910c.a {
        protected d() {
        }

        @Override // com.google.android.youtube.player.internal.InterfaceC0910c
        /* JADX INFO: renamed from: a */
        public final void mo402a(String str, IBinder iBinder) {
            AbstractC0924r.this.f471a.sendMessage(AbstractC0924r.this.f471a.obtainMessage(1, new c(str, iBinder)));
        }
    }

    /* JADX INFO: renamed from: com.google.android.youtube.player.internal.r$e */
    final class e implements ServiceConnection {
        e() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            AbstractC0924r.this.m496b(iBinder);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            AbstractC0924r.this.f473c = null;
            AbstractC0924r.this.m500h();
        }
    }

    protected AbstractC0924r(Context context, InterfaceC0926t.a aVar, InterfaceC0926t.b bVar) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Clients must be created on the UI thread.");
        }
        this.f472b = (Context) C0907ab.m396a(context);
        this.f474d = new ArrayList<>();
        this.f474d.add((InterfaceC0926t.a) C0907ab.m396a(aVar));
        this.f477g = new ArrayList<>();
        this.f477g.add((InterfaceC0926t.b) C0907ab.m396a(bVar));
        this.f471a = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a */
    public void m489a() {
        ServiceConnection serviceConnection = this.f480j;
        if (serviceConnection != null) {
            try {
                this.f472b.unbindService(serviceConnection);
            } catch (IllegalArgumentException e2) {
                Log.w("YouTubeClient", "Unexpected error from unbindService()", e2);
            }
        }
        this.f473c = null;
        this.f480j = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b */
    public static YouTubeInitializationResult m490b(String str) {
        try {
            return YouTubeInitializationResult.valueOf(str);
        } catch (IllegalArgumentException unused) {
            return YouTubeInitializationResult.UNKNOWN_ERROR;
        } catch (NullPointerException unused2) {
            return YouTubeInitializationResult.UNKNOWN_ERROR;
        }
    }

    /* JADX INFO: renamed from: a */
    protected abstract T mo481a(IBinder iBinder);

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX INFO: renamed from: a */
    protected final void m495a(YouTubeInitializationResult youTubeInitializationResult) {
        this.f471a.removeMessages(4);
        synchronized (this.f477g) {
            this.f478h = true;
            ArrayList<InterfaceC0926t.b> arrayList = this.f477g;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (!this.f481k) {
                    return;
                }
                if (this.f477g.contains(arrayList.get(i))) {
                    arrayList.get(i).mo391a(youTubeInitializationResult);
                }
            }
            this.f478h = false;
        }
    }

    /* JADX INFO: renamed from: a */
    protected abstract void mo482a(InterfaceC0916i interfaceC0916i, d dVar) throws RemoteException;

    /* JADX INFO: renamed from: b */
    protected abstract String mo483b();

    /* JADX INFO: renamed from: b */
    protected final void m496b(IBinder iBinder) {
        try {
            mo482a(InterfaceC0916i.a.m463a(iBinder), new d());
        } catch (RemoteException unused) {
            Log.w("YouTubeClient", "service died");
        }
    }

    /* JADX INFO: renamed from: c */
    protected abstract String mo484c();

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.youtube.player.internal.InterfaceC0926t
    /* JADX INFO: renamed from: d */
    public void mo485d() {
        m500h();
        this.f481k = false;
        synchronized (this.f479i) {
            int size = this.f479i.size();
            for (int i = 0; i < size; i++) {
                this.f479i.get(i).m505b();
            }
            this.f479i.clear();
        }
        m489a();
    }

    @Override // com.google.android.youtube.player.internal.InterfaceC0926t
    /* JADX INFO: renamed from: e */
    public final void mo497e() {
        this.f481k = true;
        YouTubeInitializationResult youTubeInitializationResultIsYouTubeApiServiceAvailable = YouTubeApiServiceUtil.isYouTubeApiServiceAvailable(this.f472b);
        if (youTubeInitializationResultIsYouTubeApiServiceAvailable != YouTubeInitializationResult.SUCCESS) {
            Handler handler = this.f471a;
            handler.sendMessage(handler.obtainMessage(3, youTubeInitializationResultIsYouTubeApiServiceAvailable));
            return;
        }
        Intent intent = new Intent(mo484c()).setPackage(C0932z.m530a(this.f472b));
        if (this.f480j != null) {
            Log.e("YouTubeClient", "Calling connect() while still connected, missing disconnect().");
            m489a();
        }
        this.f480j = new e();
        if (this.f472b.bindService(intent, this.f480j, 129)) {
            return;
        }
        Handler handler2 = this.f471a;
        handler2.sendMessage(handler2.obtainMessage(3, YouTubeInitializationResult.ERROR_CONNECTING_TO_SERVICE));
    }

    /* JADX INFO: renamed from: f */
    public final boolean m498f() {
        return this.f473c != null;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX INFO: renamed from: g */
    protected final void m499g() {
        synchronized (this.f474d) {
            boolean z = true;
            C0907ab.m399a(!this.f476f);
            this.f471a.removeMessages(4);
            this.f476f = true;
            if (this.f475e.size() != 0) {
                z = false;
            }
            C0907ab.m399a(z);
            ArrayList<InterfaceC0926t.a> arrayList = this.f474d;
            int size = arrayList.size();
            for (int i = 0; i < size && this.f481k && m498f(); i++) {
                if (!this.f475e.contains(arrayList.get(i))) {
                    arrayList.get(i).mo389a();
                }
            }
            this.f475e.clear();
            this.f476f = false;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX INFO: renamed from: h */
    protected final void m500h() {
        this.f471a.removeMessages(4);
        synchronized (this.f474d) {
            this.f476f = true;
            ArrayList<InterfaceC0926t.a> arrayList = this.f474d;
            int size = arrayList.size();
            for (int i = 0; i < size && this.f481k; i++) {
                if (this.f474d.contains(arrayList.get(i))) {
                    arrayList.get(i).mo390b();
                }
            }
            this.f476f = false;
        }
    }

    /* JADX INFO: renamed from: i */
    protected final void m501i() {
        if (!m498f()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    /* JADX INFO: renamed from: j */
    protected final T m502j() {
        m501i();
        return this.f473c;
    }
}
