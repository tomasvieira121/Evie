package com.google.android.gms.internal.drive;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.drive.DriveId;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public final class zzaw extends GmsClient<zzeo> {
    private final String zzdz;
    protected final boolean zzea;
    private volatile DriveId zzeb;
    private volatile DriveId zzec;
    private volatile boolean zzed;

    @GuardedBy("changeEventCallbackMap")
    private final Map<DriveId, Map<Object, Object>> zzee;

    @GuardedBy("changesAvailableEventCallbackMap")
    private final Map<Object, Object> zzef;

    @GuardedBy("uploadProgressEventCallbackMap")
    private final Map<DriveId, Map<Object, Object>> zzeg;

    @GuardedBy("pinnedDownloadProgressEventCallbackMap")
    private final Map<DriveId, Map<Object, Object>> zzeh;
    private final Bundle zzx;

    public zzaw(Context context, Looper looper, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, Bundle bundle) {
        super(context, looper, 11, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.zzed = false;
        this.zzee = new HashMap();
        this.zzef = new HashMap();
        this.zzeg = new HashMap();
        this.zzeh = new HashMap();
        this.zzdz = clientSettings.getRealClientPackageName();
        this.zzx = bundle;
        Intent intent = new Intent("com.google.android.gms.drive.events.HANDLE_EVENT");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        switch (listQueryIntentServices.size()) {
            case 0:
                this.zzea = false;
                return;
            case 1:
                ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
                if (serviceInfo.exported) {
                    this.zzea = true;
                    return;
                }
                String str = serviceInfo.name;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 60);
                sb.append("Drive event service ");
                sb.append(str);
                sb.append(" must be exported in AndroidManifest.xml");
                throw new IllegalStateException(sb.toString());
            default:
                String action = intent.getAction();
                StringBuilder sb2 = new StringBuilder(String.valueOf(action).length() + 72);
                sb2.append("AndroidManifest.xml can only define one service that handles the ");
                sb2.append(action);
                sb2.append(" action");
                throw new IllegalStateException(sb2.toString());
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.internal.IDriveService");
        return iInterfaceQueryLocalInterface instanceof zzeo ? (zzeo) iInterfaceQueryLocalInterface : new zzep(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final void disconnect() {
        if (isConnected()) {
            try {
                ((zzeo) getService()).zza(new zzad());
            } catch (RemoteException unused) {
            }
        }
        super.disconnect();
        synchronized (this.zzee) {
            this.zzee.clear();
        }
        synchronized (this.zzef) {
            this.zzef.clear();
        }
        synchronized (this.zzeg) {
            this.zzeg.clear();
        }
        synchronized (this.zzeh) {
            this.zzeh.clear();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final Bundle getGetServiceRequestExtraArgs() {
        String packageName = getContext().getPackageName();
        Preconditions.checkNotNull(packageName);
        Preconditions.checkState(!getClientSettings().getAllRequestedScopes().isEmpty());
        Bundle bundle = new Bundle();
        if (!packageName.equals(this.zzdz)) {
            bundle.putString("proxy_package_name", this.zzdz);
        }
        bundle.putAll(this.zzx);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.GmsClient, com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String getServiceDescriptor() {
        return "com.google.android.gms.drive.internal.IDriveService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String getStartServiceAction() {
        return "com.google.android.gms.drive.ApiService.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (bundle != null) {
            bundle.setClassLoader(getClass().getClassLoader());
            this.zzeb = (DriveId) bundle.getParcelable("com.google.android.gms.drive.root_id");
            this.zzec = (DriveId) bundle.getParcelable("com.google.android.gms.drive.appdata_id");
            this.zzed = true;
        }
        super.onPostInitHandler(i, iBinder, bundle, i2);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final boolean requiresAccount() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final boolean requiresSignIn() {
        return (getContext().getPackageName().equals(this.zzdz) && UidVerifier.isGooglePlayServicesUid(getContext(), Process.myUid())) ? false : true;
    }

    public final DriveId zzae() {
        return this.zzec;
    }

    public final boolean zzaf() {
        return this.zzed;
    }

    public final boolean zzag() {
        return this.zzea;
    }
}
