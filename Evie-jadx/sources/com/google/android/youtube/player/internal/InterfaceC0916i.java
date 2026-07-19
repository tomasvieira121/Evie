package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.i */
/* JADX INFO: loaded from: classes.dex */
public interface InterfaceC0916i extends IInterface {

    /* JADX INFO: renamed from: com.google.android.youtube.player.internal.i$a */
    public static abstract class a extends Binder implements InterfaceC0916i {

        /* JADX INFO: renamed from: com.google.android.youtube.player.internal.i$a$a, reason: collision with other inner class name */
        private static class C1507a implements InterfaceC0916i {

            /* JADX INFO: renamed from: a */
            private IBinder f451a;

            C1507a(IBinder iBinder) {
                this.f451a = iBinder;
            }

            @Override // com.google.android.youtube.player.internal.InterfaceC0916i
            /* JADX INFO: renamed from: a */
            public final void mo462a(InterfaceC0910c interfaceC0910c, int i, String str, String str2, String str3, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IServiceBroker");
                    parcelObtain.writeStrongBinder(interfaceC0910c != null ? interfaceC0910c.asBinder() : null);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.f451a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f451a;
            }
        }

        /* JADX INFO: renamed from: a */
        public static InterfaceC0916i m463a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.youtube.player.internal.IServiceBroker");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0916i)) ? new C1507a(iBinder) : (InterfaceC0916i) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            InterfaceC0910c c1501a;
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.google.android.youtube.player.internal.IServiceBroker");
                return true;
            }
            parcel.enforceInterface("com.google.android.youtube.player.internal.IServiceBroker");
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                c1501a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.youtube.player.internal.IConnectionCallbacks");
                c1501a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0910c)) ? new InterfaceC0910c.a.C1501a(strongBinder) : (InterfaceC0910c) iInterfaceQueryLocalInterface;
            }
            mo462a(c1501a, parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
    }

    /* JADX INFO: renamed from: a */
    void mo462a(InterfaceC0910c interfaceC0910c, int i, String str, String str2, String str3, Bundle bundle) throws RemoteException;
}
