package com.google.android.gms.location;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.location.zzaf;
import com.google.android.gms.internal.location.zzaz;
import com.google.android.gms.internal.location.zzbk;
import com.google.android.gms.internal.location.zzq;

/* JADX INFO: loaded from: classes.dex */
public class LocationServices {
    private static final Api.ClientKey<zzaz> CLIENT_KEY = new Api.ClientKey<>();
    private static final Api.AbstractClientBuilder<zzaz, Object> CLIENT_BUILDER = new zzad();
    public static final Api<Object> API = new Api<>("LocationServices.API", CLIENT_BUILDER, CLIENT_KEY);

    @Deprecated
    public static final FusedLocationProviderApi FusedLocationApi = new zzq();

    @Deprecated
    public static final GeofencingApi GeofencingApi = new zzaf();

    @Deprecated
    public static final SettingsApi SettingsApi = new zzbk();

    public static abstract class zza<R extends Result> extends BaseImplementation.ApiMethodImpl<R, zzaz> {
        public zza(GoogleApiClient googleApiClient) {
            super((Api<?>) LocationServices.API, googleApiClient);
        }
    }

    public static zzaz zza(GoogleApiClient googleApiClient) {
        Preconditions.checkArgument(googleApiClient != null, "GoogleApiClient parameter is required.");
        zzaz zzazVar = (zzaz) googleApiClient.getClient(CLIENT_KEY);
        Preconditions.checkState(zzazVar != null, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
        return zzazVar;
    }
}
