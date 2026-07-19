package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.u */
/* JADX INFO: loaded from: classes.dex */
public interface InterfaceC0927u extends IInterface {

    /* JADX INFO: renamed from: com.google.android.youtube.player.internal.u$a */
    public static abstract class a extends Binder implements InterfaceC0927u {

        /* JADX INFO: renamed from: com.google.android.youtube.player.internal.u$a$a, reason: collision with other inner class name */
        private static class C1511a implements InterfaceC0927u {

            /* JADX INFO: renamed from: a */
            private IBinder f497a;

            C1511a(IBinder iBinder) {
                this.f497a = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f497a;
            }
        }

        public a() {
            attachInterface(this, "com.google.android.youtube.player.internal.dynamic.IObjectWrapper");
        }

        /* JADX INFO: renamed from: a */
        public static InterfaceC0927u m520a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.youtube.player.internal.dynamic.IObjectWrapper");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0927u)) ? new C1511a(iBinder) : (InterfaceC0927u) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("com.google.android.youtube.player.internal.dynamic.IObjectWrapper");
            return true;
        }
    }
}
