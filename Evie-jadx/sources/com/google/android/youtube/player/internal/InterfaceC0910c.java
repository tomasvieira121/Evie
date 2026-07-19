package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.c */
/* JADX INFO: loaded from: classes.dex */
public interface InterfaceC0910c extends IInterface {

    /* JADX INFO: renamed from: com.google.android.youtube.player.internal.c$a */
    public static abstract class a extends Binder implements InterfaceC0910c {

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: com.google.android.youtube.player.internal.c$a$a, reason: collision with other inner class name */
        static class C1501a implements InterfaceC0910c {

            /* JADX INFO: renamed from: a */
            private IBinder f445a;

            C1501a(IBinder iBinder) {
                this.f445a = iBinder;
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0910c
            /* JADX INFO: renamed from: a */
            public final void mo402a(String str, IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IConnectionCallbacks");
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.f445a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f445a;
            }
        }

        public a() {
            attachInterface(this, "com.google.android.youtube.player.internal.IConnectionCallbacks");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.google.android.youtube.player.internal.IConnectionCallbacks");
                return true;
            }
            parcel.enforceInterface("com.google.android.youtube.player.internal.IConnectionCallbacks");
            mo402a(parcel.readString(), parcel.readStrongBinder());
            parcel2.writeNoException();
            return true;
        }
    }

    /* JADX INFO: renamed from: a */
    void mo402a(String str, IBinder iBinder) throws RemoteException;
}
