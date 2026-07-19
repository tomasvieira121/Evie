package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.f */
/* JADX INFO: loaded from: classes.dex */
public interface InterfaceC0913f extends IInterface {

    /* JADX INFO: renamed from: com.google.android.youtube.player.internal.f$a */
    public static abstract class a extends Binder implements InterfaceC0913f {

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: com.google.android.youtube.player.internal.f$a$a, reason: collision with other inner class name */
        static class C1504a implements InterfaceC0913f {

            /* JADX INFO: renamed from: a */
            private IBinder f448a;

            C1504a(IBinder iBinder) {
                this.f448a = iBinder;
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0913f
            /* JADX INFO: renamed from: a */
            public final void mo448a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IPlaybackEventListener");
                    this.f448a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0913f
            /* JADX INFO: renamed from: a */
            public final void mo449a(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IPlaybackEventListener");
                    parcelObtain.writeInt(i);
                    this.f448a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0913f
            /* JADX INFO: renamed from: a */
            public final void mo450a(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IPlaybackEventListener");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f448a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f448a;
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0913f
            /* JADX INFO: renamed from: b */
            public final void mo451b() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IPlaybackEventListener");
                    this.f448a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0913f
            /* JADX INFO: renamed from: c */
            public final void mo452c() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IPlaybackEventListener");
                    this.f448a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.google.android.youtube.player.internal.IPlaybackEventListener");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IPlaybackEventListener");
                    mo448a();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IPlaybackEventListener");
                    mo451b();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IPlaybackEventListener");
                    mo452c();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IPlaybackEventListener");
                    mo450a(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IPlaybackEventListener");
                    mo449a(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    void mo448a() throws RemoteException;

    /* JADX INFO: renamed from: a */
    void mo449a(int i) throws RemoteException;

    /* JADX INFO: renamed from: a */
    void mo450a(boolean z) throws RemoteException;

    /* JADX INFO: renamed from: b */
    void mo451b() throws RemoteException;

    /* JADX INFO: renamed from: c */
    void mo452c() throws RemoteException;
}
