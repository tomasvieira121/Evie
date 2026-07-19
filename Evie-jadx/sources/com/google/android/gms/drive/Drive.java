package com.google.android.gms.drive;

import android.os.Bundle;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.drive.zzaf;
import com.google.android.gms.internal.drive.zzaw;
import com.google.android.gms.internal.drive.zzbr;
import com.google.android.gms.internal.drive.zzcb;
import com.google.android.gms.internal.drive.zzeb;

/* JADX INFO: loaded from: classes.dex */
public final class Drive {
    public static final Api.ClientKey<zzaw> CLIENT_KEY = new Api.ClientKey<>();
    private static final Api.AbstractClientBuilder<zzaw, Object> CLIENT_BUILDER = new zze();
    private static final Api.AbstractClientBuilder<zzaw, zzb> zzq = new zzf();
    private static final Api.AbstractClientBuilder<zzaw, zza> zzr = new zzg();
    public static final Scope SCOPE_FILE = new Scope("https://www.googleapis.com/auth/drive.file");
    public static final Scope SCOPE_APPFOLDER = new Scope("https://www.googleapis.com/auth/drive.appdata");
    private static final Scope zzs = new Scope("https://www.googleapis.com/auth/drive");
    private static final Scope zzt = new Scope("https://www.googleapis.com/auth/drive.apps");

    @Deprecated
    public static final Api<Object> API = new Api<>("Drive.API", CLIENT_BUILDER, CLIENT_KEY);
    private static final Api<zzb> INTERNAL_API = new Api<>("Drive.INTERNAL_API", zzq, CLIENT_KEY);
    public static final Api<zza> zzu = new Api<>("Drive.API_CONNECTIONLESS", zzr, CLIENT_KEY);

    @Deprecated
    public static final DriveApi DriveApi = new zzaf();

    @Deprecated
    private static final zzj zzv = new zzbr();
    private static final zzl zzw = new zzeb();

    @Deprecated
    public static final DrivePreferencesApi DrivePreferencesApi = new zzcb();

    public static class zza implements Api.ApiOptions.HasGoogleSignInAccountOptions {
        private final Bundle zzx;
        private final GoogleSignInAccount zzy;

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj != null && obj.getClass() == getClass()) {
                zza zzaVar = (zza) obj;
                if (!Objects.equal(this.zzy, zzaVar.getGoogleSignInAccount())) {
                    return false;
                }
                String string = this.zzx.getString("method_trace_filename");
                String string2 = zzaVar.zzx.getString("method_trace_filename");
                if (((string == null && string2 == null) || (string != null && string2 != null && string.equals(string2))) && this.zzx.getBoolean("bypass_initial_sync") == zzaVar.zzx.getBoolean("bypass_initial_sync") && this.zzx.getInt("proxy_type") == zzaVar.zzx.getInt("proxy_type")) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.android.gms.common.api.Api.ApiOptions.HasGoogleSignInAccountOptions
        public final GoogleSignInAccount getGoogleSignInAccount() {
            return this.zzy;
        }

        public final int hashCode() {
            return Objects.hashCode(this.zzy, this.zzx.getString("method_trace_filename", ""), Integer.valueOf(this.zzx.getInt("proxy_type")), Boolean.valueOf(this.zzx.getBoolean("bypass_initial_sync")));
        }

        public final Bundle zzg() {
            return this.zzx;
        }
    }

    public static class zzb implements Api.ApiOptions.Optional {
    }
}
