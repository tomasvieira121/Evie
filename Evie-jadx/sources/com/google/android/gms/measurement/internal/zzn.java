package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class zzn extends zzco {
    private Boolean zzahf;
    private zzp zzahg;
    private Boolean zzyk;

    zzn(zzbt zzbtVar) {
        super(zzbtVar);
        this.zzahg = zzo.zzahh;
        zzaf.zza(zzbtVar);
    }

    final void zza(zzp zzpVar) {
        this.zzahg = zzpVar;
    }

    static String zzht() {
        return zzaf.zzajd.get();
    }

    public final int zzat(String str) {
        return zzb(str, zzaf.zzajr);
    }

    public final long zzhc() {
        zzgr();
        return 13001L;
    }

    public final boolean zzdw() {
        if (this.zzyk == null) {
            synchronized (this) {
                if (this.zzyk == null) {
                    ApplicationInfo applicationInfo = getContext().getApplicationInfo();
                    String myProcessName = ProcessUtils.getMyProcessName();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.zzyk = Boolean.valueOf(str != null && str.equals(myProcessName));
                    }
                    if (this.zzyk == null) {
                        this.zzyk = Boolean.TRUE;
                        zzgo().zzjd().zzbx("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.zzyk.booleanValue();
    }

    public final long zza(String str, zzaf.zza<Long> zzaVar) {
        if (str == null) {
            return zzaVar.get().longValue();
        }
        String strZzf = this.zzahg.zzf(str, zzaVar.getKey());
        if (TextUtils.isEmpty(strZzf)) {
            return zzaVar.get().longValue();
        }
        try {
            return zzaVar.get(Long.valueOf(Long.parseLong(strZzf))).longValue();
        } catch (NumberFormatException unused) {
            return zzaVar.get().longValue();
        }
    }

    public final int zzb(String str, zzaf.zza<Integer> zzaVar) {
        if (str == null) {
            return zzaVar.get().intValue();
        }
        String strZzf = this.zzahg.zzf(str, zzaVar.getKey());
        if (TextUtils.isEmpty(strZzf)) {
            return zzaVar.get().intValue();
        }
        try {
            return zzaVar.get(Integer.valueOf(Integer.parseInt(strZzf))).intValue();
        } catch (NumberFormatException unused) {
            return zzaVar.get().intValue();
        }
    }

    public final boolean zzd(String str, zzaf.zza<Boolean> zzaVar) {
        if (str == null) {
            return zzaVar.get().booleanValue();
        }
        String strZzf = this.zzahg.zzf(str, zzaVar.getKey());
        if (TextUtils.isEmpty(strZzf)) {
            return zzaVar.get().booleanValue();
        }
        return zzaVar.get(Boolean.valueOf(Boolean.parseBoolean(strZzf))).booleanValue();
    }

    public final boolean zze(String str, zzaf.zza<Boolean> zzaVar) {
        return zzd(str, zzaVar);
    }

    public final boolean zza(zzaf.zza<Boolean> zzaVar) {
        return zzd(null, zzaVar);
    }

    final Boolean zzau(String str) {
        Preconditions.checkNotEmpty(str);
        try {
            if (getContext().getPackageManager() == null) {
                zzgo().zzjd().zzbx("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = Wrappers.packageManager(getContext()).getApplicationInfo(getContext().getPackageName(), 128);
            if (applicationInfo == null) {
                zzgo().zzjd().zzbx("Failed to load metadata: ApplicationInfo is null");
                return null;
            }
            if (applicationInfo.metaData == null) {
                zzgo().zzjd().zzbx("Failed to load metadata: Metadata bundle is null");
                return null;
            }
            if (applicationInfo.metaData.containsKey(str)) {
                return Boolean.valueOf(applicationInfo.metaData.getBoolean(str));
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            zzgo().zzjd().zzg("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    public final boolean zzhu() {
        zzgr();
        Boolean boolZzau = zzau("firebase_analytics_collection_deactivated");
        return boolZzau != null && boolZzau.booleanValue();
    }

    public final Boolean zzhv() {
        zzgr();
        return zzau("firebase_analytics_collection_enabled");
    }

    public static long zzhw() {
        return zzaf.zzakg.get().longValue();
    }

    public static long zzhx() {
        return zzaf.zzajg.get().longValue();
    }

    public final String zzhy() {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, "debug.firebase.analytics.app", "");
        } catch (ClassNotFoundException e) {
            zzgo().zzjd().zzg("Could not find SystemProperties class", e);
            return "";
        } catch (IllegalAccessException e2) {
            zzgo().zzjd().zzg("Could not access SystemProperties.get()", e2);
            return "";
        } catch (NoSuchMethodException e3) {
            zzgo().zzjd().zzg("Could not find SystemProperties.get() method", e3);
            return "";
        } catch (InvocationTargetException e4) {
            zzgo().zzjd().zzg("SystemProperties.get() threw an exception", e4);
            return "";
        }
    }

    public static boolean zzhz() {
        return zzaf.zzajc.get().booleanValue();
    }

    public final boolean zzav(String str) {
        return "1".equals(this.zzahg.zzf(str, "gaia_collection_enabled"));
    }

    public final boolean zzaw(String str) {
        return "1".equals(this.zzahg.zzf(str, "measurement.event_sampling_enabled"));
    }

    final boolean zzax(String str) {
        return zzd(str, zzaf.zzakp);
    }

    final boolean zzay(String str) {
        return zzd(str, zzaf.zzakr);
    }

    final boolean zzaz(String str) {
        return zzd(str, zzaf.zzaks);
    }

    final boolean zzba(String str) {
        return zzd(str, zzaf.zzakk);
    }

    final boolean zzbc(String str) {
        return zzd(str, zzaf.zzakt);
    }

    final boolean zzbd(String str) {
        return zzd(str, zzaf.zzaku);
    }

    final boolean zzbe(String str) {
        return zzd(str, zzaf.zzakx);
    }

    final boolean zzbf(String str) {
        return zzd(str, zzaf.zzaky);
    }

    final boolean zzbg(String str) {
        return zzd(str, zzaf.zzala);
    }

    static boolean zzia() {
        return zzaf.zzalb.get().booleanValue();
    }

    final boolean zzib() {
        if (this.zzahf == null) {
            this.zzahf = zzau("app_measurement_lite");
            if (this.zzahf == null) {
                this.zzahf = false;
            }
        }
        return this.zzahf.booleanValue() || !this.zzadj.zzkn();
    }

    final boolean zzbh(String str) {
        return zzd(str, zzaf.zzakz);
    }

    static boolean zzic() {
        return zzaf.zzald.get().booleanValue();
    }

    final boolean zzbi(String str) {
        return zzd(str, zzaf.zzale);
    }

    final boolean zzbj(String str) {
        return zzd(str, zzaf.zzalf);
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzga() {
        super.zzga();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgb() {
        super.zzgb();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgc() {
        super.zzgc();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzx zzgk() {
        return super.zzgk();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzan zzgl() {
        return super.zzgl();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzfk zzgm() {
        return super.zzgm();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzbo zzgn() {
        return super.zzgn();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzap zzgo() {
        return super.zzgo();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzba zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzn zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzk zzgr() {
        return super.zzgr();
    }
}
