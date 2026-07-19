package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.e */
/* JADX INFO: loaded from: classes.dex */
public interface InterfaceC0912e extends IInterface {

    /* JADX INFO: renamed from: com.google.android.youtube.player.internal.e$a */
    public static abstract class a extends Binder implements InterfaceC0912e {

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: com.google.android.youtube.player.internal.e$a$a, reason: collision with other inner class name */
        static class C1503a implements InterfaceC0912e {

            /* JADX INFO: renamed from: a */
            private IBinder f447a;

            C1503a(IBinder iBinder) {
                this.f447a = iBinder;
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0912e
            /* JADX INFO: renamed from: a */
            public final void mo447a(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IOnFullscreenListener");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f447a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f447a;
            }
        }

        public a() {
            attachInterface(this, "com.google.android.youtube.player.internal.IOnFullscreenListener");
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
                parcel2.writeString("com.google.android.youtube.player.internal.IOnFullscreenListener");
                return true;
            }
            parcel.enforceInterface("com.google.android.youtube.player.internal.IOnFullscreenListener");
            mo447a(parcel.readInt() != 0);
            parcel2.writeNoException();
            return true;
        }
    }

    /* JADX INFO: renamed from: a */
    void mo447a(boolean z) throws RemoteException;
}
