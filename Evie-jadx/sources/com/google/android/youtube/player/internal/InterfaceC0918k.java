package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.k */
/* JADX INFO: loaded from: classes.dex */
public interface InterfaceC0918k extends IInterface {

    /* JADX INFO: renamed from: com.google.android.youtube.player.internal.k$a */
    public static abstract class a extends Binder implements InterfaceC0918k {

        /* JADX INFO: renamed from: com.google.android.youtube.player.internal.k$a$a, reason: collision with other inner class name */
        private static class C1509a implements InterfaceC0918k {

            /* JADX INFO: renamed from: a */
            private IBinder f453a;

            C1509a(IBinder iBinder) {
                this.f453a = iBinder;
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0918k
            /* JADX INFO: renamed from: a */
            public final void mo466a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IThumbnailLoaderService");
                    this.f453a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0918k
            /* JADX INFO: renamed from: a */
            public final void mo467a(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IThumbnailLoaderService");
                    parcelObtain.writeString(str);
                    this.f453a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0918k
            /* JADX INFO: renamed from: a */
            public final void mo468a(String str, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IThumbnailLoaderService");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    this.f453a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f453a;
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0918k
            /* JADX INFO: renamed from: b */
            public final void mo469b() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IThumbnailLoaderService");
                    this.f453a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0918k
            /* JADX INFO: renamed from: c */
            public final void mo470c() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IThumbnailLoaderService");
                    this.f453a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0918k
            /* JADX INFO: renamed from: d */
            public final void mo471d() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IThumbnailLoaderService");
                    this.f453a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        /* JADX INFO: renamed from: a */
        public static InterfaceC0918k m472a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.youtube.player.internal.IThumbnailLoaderService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0918k)) ? new C1509a(iBinder) : (InterfaceC0918k) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.google.android.youtube.player.internal.IThumbnailLoaderService");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IThumbnailLoaderService");
                    mo467a(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IThumbnailLoaderService");
                    mo468a(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IThumbnailLoaderService");
                    mo466a();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IThumbnailLoaderService");
                    mo469b();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IThumbnailLoaderService");
                    mo470c();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IThumbnailLoaderService");
                    mo471d();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    void mo466a() throws RemoteException;

    /* JADX INFO: renamed from: a */
    void mo467a(String str) throws RemoteException;

    /* JADX INFO: renamed from: a */
    void mo468a(String str, int i) throws RemoteException;

    /* JADX INFO: renamed from: b */
    void mo469b() throws RemoteException;

    /* JADX INFO: renamed from: c */
    void mo470c() throws RemoteException;

    /* JADX INFO: renamed from: d */
    void mo471d() throws RemoteException;
}
