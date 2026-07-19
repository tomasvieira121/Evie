package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.l */
/* JADX INFO: loaded from: classes.dex */
public interface InterfaceC0919l extends IInterface {

    /* JADX INFO: renamed from: com.google.android.youtube.player.internal.l$a */
    public static abstract class a extends Binder implements InterfaceC0919l {

        /* JADX INFO: renamed from: com.google.android.youtube.player.internal.l$a$a, reason: collision with other inner class name */
        private static class C1510a implements InterfaceC0919l {

            /* JADX INFO: renamed from: a */
            private IBinder f454a;

            C1510a(IBinder iBinder) {
                this.f454a = iBinder;
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0919l
            /* JADX INFO: renamed from: a */
            public final IBinder mo473a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IYouTubeService");
                    this.f454a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0919l
            /* JADX INFO: renamed from: a */
            public final InterfaceC0918k mo474a(InterfaceC0917j interfaceC0917j) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IYouTubeService");
                    parcelObtain.writeStrongBinder(interfaceC0917j != null ? interfaceC0917j.asBinder() : null);
                    this.f454a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return InterfaceC0918k.a.m472a(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0919l
            /* JADX INFO: renamed from: a */
            public final void mo475a(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IYouTubeService");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f454a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f454a;
            }
        }

        /* JADX INFO: renamed from: a */
        public static InterfaceC0919l m476a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.youtube.player.internal.IYouTubeService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0919l)) ? new C1510a(iBinder) : (InterfaceC0919l) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            InterfaceC0917j c1508a;
            if (i == 1598968902) {
                parcel2.writeString("com.google.android.youtube.player.internal.IYouTubeService");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IYouTubeService");
                    IBinder iBinderA = mo473a();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iBinderA);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IYouTubeService");
                    IBinder strongBinder = parcel.readStrongBinder();
                    if (strongBinder == null) {
                        c1508a = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.youtube.player.internal.IThumbnailLoaderClient");
                        c1508a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0917j)) ? new InterfaceC0917j.a.C1508a(strongBinder) : (InterfaceC0917j) iInterfaceQueryLocalInterface;
                    }
                    InterfaceC0918k interfaceC0918kA = mo474a(c1508a);
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(interfaceC0918kA != null ? interfaceC0918kA.asBinder() : null);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IYouTubeService");
                    mo475a(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    IBinder mo473a() throws RemoteException;

    /* JADX INFO: renamed from: a */
    InterfaceC0918k mo474a(InterfaceC0917j interfaceC0917j) throws RemoteException;

    /* JADX INFO: renamed from: a */
    void mo475a(boolean z) throws RemoteException;
}
