package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.h */
/* JADX INFO: loaded from: classes.dex */
public interface InterfaceC0915h extends IInterface {

    /* JADX INFO: renamed from: com.google.android.youtube.player.internal.h$a */
    public static abstract class a extends Binder implements InterfaceC0915h {

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: com.google.android.youtube.player.internal.h$a$a, reason: collision with other inner class name */
        static class C1506a implements InterfaceC0915h {

            /* JADX INFO: renamed from: a */
            private IBinder f450a;

            C1506a(IBinder iBinder) {
                this.f450a = iBinder;
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0915h
            /* JADX INFO: renamed from: a */
            public final void mo459a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IPlaylistEventListener");
                    this.f450a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f450a;
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0915h
            /* JADX INFO: renamed from: b */
            public final void mo460b() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IPlaylistEventListener");
                    this.f450a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0915h
            /* JADX INFO: renamed from: c */
            public final void mo461c() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IPlaylistEventListener");
                    this.f450a.transact(3, parcelObtain, parcelObtain2, 0);
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
                parcel2.writeString("com.google.android.youtube.player.internal.IPlaylistEventListener");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IPlaylistEventListener");
                    mo459a();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IPlaylistEventListener");
                    mo460b();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IPlaylistEventListener");
                    mo461c();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    void mo459a() throws RemoteException;

    /* JADX INFO: renamed from: b */
    void mo460b() throws RemoteException;

    /* JADX INFO: renamed from: c */
    void mo461c() throws RemoteException;
}
