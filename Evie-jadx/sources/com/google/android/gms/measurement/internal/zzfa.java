package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Pair;
import androidx.collection.ArrayMap;
import com.aol.mobile.sdk.player.advertisement.vrm.VrmAdFetcher;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzgb;
import com.google.android.gms.internal.measurement.zzgd;
import com.google.android.gms.internal.measurement.zzgf;
import com.google.android.gms.internal.measurement.zzgg;
import com.google.android.gms.internal.measurement.zzgh;
import com.google.android.gms.internal.measurement.zzgi;
import com.google.android.gms.internal.measurement.zzgl;
import com.google.android.gms.internal.measurement.zzyx;
import com.google.android.gms.internal.measurement.zzyy;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class zzfa implements zzcq {
    private static volatile zzfa zzatc;
    private final zzbt zzadj;
    private zzbn zzatd;
    private zzat zzate;
    private zzq zzatf;
    private zzay zzatg;
    private zzew zzath;
    private zzj zzati;
    private final zzfg zzatj;
    private boolean zzatk;
    private long zzatl;
    private List<Runnable> zzatm;
    private int zzatn;
    private int zzato;
    private boolean zzatp;
    private boolean zzatq;
    private boolean zzatr;
    private FileLock zzats;
    private FileChannel zzatt;
    private List<Long> zzatu;
    private List<Long> zzatv;
    private long zzatw;
    private boolean zzvz;

    class zza implements zzs {
        zzgi zzaua;
        List<Long> zzaub;
        List<zzgf> zzauc;
        private long zzaud;

        private zza() {
        }

        @Override // com.google.android.gms.measurement.internal.zzs
        public final void zzb(zzgi zzgiVar) {
            Preconditions.checkNotNull(zzgiVar);
            this.zzaua = zzgiVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzs
        public final boolean zza(long j, zzgf zzgfVar) {
            Preconditions.checkNotNull(zzgfVar);
            if (this.zzauc == null) {
                this.zzauc = new ArrayList();
            }
            if (this.zzaub == null) {
                this.zzaub = new ArrayList();
            }
            if (this.zzauc.size() > 0 && zza(this.zzauc.get(0)) != zza(zzgfVar)) {
                return false;
            }
            long jZzvu = this.zzaud + ((long) zzgfVar.zzvu());
            if (jZzvu >= Math.max(0, zzaf.zzajl.get().intValue())) {
                return false;
            }
            this.zzaud = jZzvu;
            this.zzauc.add(zzgfVar);
            this.zzaub.add(Long.valueOf(j));
            return this.zzauc.size() < Math.max(1, zzaf.zzajm.get().intValue());
        }

        private static long zza(zzgf zzgfVar) {
            return ((zzgfVar.zzawu.longValue() / 1000) / 60) / 60;
        }

        /* synthetic */ zza(zzfa zzfaVar, zzfb zzfbVar) {
            this();
        }
    }

    public static zzfa zzm(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzatc == null) {
            synchronized (zzfa.class) {
                if (zzatc == null) {
                    zzatc = new zzfa(new zzff(context));
                }
            }
        }
        return zzatc;
    }

    private zzfa(zzff zzffVar) {
        this(zzffVar, null);
    }

    private zzfa(zzff zzffVar, zzbt zzbtVar) {
        this.zzvz = false;
        Preconditions.checkNotNull(zzffVar);
        this.zzadj = zzbt.zza(zzffVar.zzri, (zzak) null);
        this.zzatw = -1L;
        zzfg zzfgVar = new zzfg(this);
        zzfgVar.zzq();
        this.zzatj = zzfgVar;
        zzat zzatVar = new zzat(this);
        zzatVar.zzq();
        this.zzate = zzatVar;
        zzbn zzbnVar = new zzbn(this);
        zzbnVar.zzq();
        this.zzatd = zzbnVar;
        this.zzadj.zzgn().zzc(new zzfb(this, zzffVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzff zzffVar) {
        this.zzadj.zzgn().zzaf();
        zzq zzqVar = new zzq(this);
        zzqVar.zzq();
        this.zzatf = zzqVar;
        this.zzadj.zzgq().zza(this.zzatd);
        zzj zzjVar = new zzj(this);
        zzjVar.zzq();
        this.zzati = zzjVar;
        zzew zzewVar = new zzew(this);
        zzewVar.zzq();
        this.zzath = zzewVar;
        this.zzatg = new zzay(this);
        if (this.zzatn != this.zzato) {
            this.zzadj.zzgo().zzjd().zze("Not all upload components initialized", Integer.valueOf(this.zzatn), Integer.valueOf(this.zzato));
        }
        this.zzvz = true;
    }

    protected final void start() {
        this.zzadj.zzgn().zzaf();
        zzjq().zzif();
        if (this.zzadj.zzgp().zzane.get() == 0) {
            this.zzadj.zzgp().zzane.set(this.zzadj.zzbx().currentTimeMillis());
        }
        zzlv();
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public final zzk zzgr() {
        return this.zzadj.zzgr();
    }

    public final zzn zzgq() {
        return this.zzadj.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public final zzap zzgo() {
        return this.zzadj.zzgo();
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public final zzbo zzgn() {
        return this.zzadj.zzgn();
    }

    private final zzbn zzln() {
        zza(this.zzatd);
        return this.zzatd;
    }

    public final zzat zzlo() {
        zza(this.zzate);
        return this.zzate;
    }

    public final zzq zzjq() {
        zza(this.zzatf);
        return this.zzatf;
    }

    private final zzay zzlp() {
        zzay zzayVar = this.zzatg;
        if (zzayVar != null) {
            return zzayVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    private final zzew zzlq() {
        zza(this.zzath);
        return this.zzath;
    }

    public final zzj zzjp() {
        zza(this.zzati);
        return this.zzati;
    }

    public final zzfg zzjo() {
        zza(this.zzatj);
        return this.zzatj;
    }

    public final zzan zzgl() {
        return this.zzadj.zzgl();
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public final Context getContext() {
        return this.zzadj.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public final Clock zzbx() {
        return this.zzadj.zzbx();
    }

    public final zzfk zzgm() {
        return this.zzadj.zzgm();
    }

    private final void zzaf() {
        this.zzadj.zzgn().zzaf();
    }

    final void zzlr() {
        if (!this.zzvz) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    private static void zza(zzez zzezVar) {
        if (zzezVar == null) {
            throw new IllegalStateException("Upload Component not created");
        }
        if (zzezVar.isInitialized()) {
            return;
        }
        String strValueOf = String.valueOf(zzezVar.getClass());
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 27);
        sb.append("Component not initialized: ");
        sb.append(strValueOf);
        throw new IllegalStateException(sb.toString());
    }

    final void zze(zzh zzhVar) {
        zzaf();
        zzlr();
        Preconditions.checkNotEmpty(zzhVar.packageName);
        zzg(zzhVar);
    }

    private final long zzls() {
        long jCurrentTimeMillis = this.zzadj.zzbx().currentTimeMillis();
        zzba zzbaVarZzgp = this.zzadj.zzgp();
        zzbaVarZzgp.zzcl();
        zzbaVarZzgp.zzaf();
        long jNextInt = zzbaVarZzgp.zzani.get();
        if (jNextInt == 0) {
            jNextInt = 1 + ((long) zzbaVarZzgp.zzgm().zzmd().nextInt(86400000));
            zzbaVarZzgp.zzani.set(jNextInt);
        }
        return ((((jCurrentTimeMillis + jNextInt) / 1000) / 60) / 60) / 24;
    }

    final void zzc(zzad zzadVar, String str) {
        zzg zzgVarZzbl = zzjq().zzbl(str);
        if (zzgVarZzbl == null || TextUtils.isEmpty(zzgVarZzbl.zzak())) {
            this.zzadj.zzgo().zzjk().zzg("No app data available; dropping event", str);
            return;
        }
        Boolean boolZzc = zzc(zzgVarZzbl);
        if (boolZzc == null) {
            if (!"_ui".equals(zzadVar.name)) {
                this.zzadj.zzgo().zzjg().zzg("Could not find package. appId", zzap.zzbv(str));
            }
        } else if (!boolZzc.booleanValue()) {
            this.zzadj.zzgo().zzjd().zzg("App version does not match; dropping event. appId", zzap.zzbv(str));
            return;
        }
        zzc(zzadVar, new zzh(str, zzgVarZzbl.getGmpAppId(), zzgVarZzbl.zzak(), zzgVarZzbl.zzha(), zzgVarZzbl.zzhb(), zzgVarZzbl.zzhc(), zzgVarZzbl.zzhd(), (String) null, zzgVarZzbl.isMeasurementEnabled(), false, zzgVarZzbl.getFirebaseInstanceId(), zzgVarZzbl.zzhq(), 0L, 0, zzgVarZzbl.zzhr(), zzgVarZzbl.zzhs(), false, zzgVarZzbl.zzgw()));
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    final void zzc(zzad zzadVar, zzh zzhVar) {
        List<zzl> listZzb;
        List<zzl> listZzb2;
        List<zzl> listZzb3;
        Preconditions.checkNotNull(zzhVar);
        Preconditions.checkNotEmpty(zzhVar.packageName);
        zzaf();
        zzlr();
        String str = zzhVar.packageName;
        long j = zzadVar.zzaip;
        if (zzjo().zze(zzadVar, zzhVar)) {
            if (!zzhVar.zzagg) {
                zzg(zzhVar);
                return;
            }
            zzjq().beginTransaction();
            try {
                zzq zzqVarZzjq = zzjq();
                Preconditions.checkNotEmpty(str);
                zzqVarZzjq.zzaf();
                zzqVarZzjq.zzcl();
                if (j < 0) {
                    zzqVarZzjq.zzgo().zzjg().zze("Invalid time querying timed out conditional properties", zzap.zzbv(str), Long.valueOf(j));
                    listZzb = Collections.emptyList();
                } else {
                    listZzb = zzqVarZzjq.zzb("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j)});
                }
                for (zzl zzlVar : listZzb) {
                    if (zzlVar != null) {
                        this.zzadj.zzgo().zzjk().zzd("User property timed out", zzlVar.packageName, this.zzadj.zzgl().zzbu(zzlVar.zzahb.name), zzlVar.zzahb.getValue());
                        if (zzlVar.zzahc != null) {
                            zzd(new zzad(zzlVar.zzahc, j), zzhVar);
                        }
                        zzjq().zzk(str, zzlVar.zzahb.name);
                    }
                }
                zzq zzqVarZzjq2 = zzjq();
                Preconditions.checkNotEmpty(str);
                zzqVarZzjq2.zzaf();
                zzqVarZzjq2.zzcl();
                if (j < 0) {
                    zzqVarZzjq2.zzgo().zzjg().zze("Invalid time querying expired conditional properties", zzap.zzbv(str), Long.valueOf(j));
                    listZzb2 = Collections.emptyList();
                } else {
                    listZzb2 = zzqVarZzjq2.zzb("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j)});
                }
                ArrayList arrayList = new ArrayList(listZzb2.size());
                for (zzl zzlVar2 : listZzb2) {
                    if (zzlVar2 != null) {
                        this.zzadj.zzgo().zzjk().zzd("User property expired", zzlVar2.packageName, this.zzadj.zzgl().zzbu(zzlVar2.zzahb.name), zzlVar2.zzahb.getValue());
                        zzjq().zzh(str, zzlVar2.zzahb.name);
                        if (zzlVar2.zzahe != null) {
                            arrayList.add(zzlVar2.zzahe);
                        }
                        zzjq().zzk(str, zzlVar2.zzahb.name);
                    }
                }
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    zzd(new zzad((zzad) obj, j), zzhVar);
                }
                zzq zzqVarZzjq3 = zzjq();
                String str2 = zzadVar.name;
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotEmpty(str2);
                zzqVarZzjq3.zzaf();
                zzqVarZzjq3.zzcl();
                if (j < 0) {
                    zzqVarZzjq3.zzgo().zzjg().zzd("Invalid time querying triggered conditional properties", zzap.zzbv(str), zzqVarZzjq3.zzgl().zzbs(str2), Long.valueOf(j));
                    listZzb3 = Collections.emptyList();
                } else {
                    listZzb3 = zzqVarZzjq3.zzb("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j)});
                }
                ArrayList arrayList3 = new ArrayList(listZzb3.size());
                for (zzl zzlVar3 : listZzb3) {
                    if (zzlVar3 != null) {
                        zzfh zzfhVar = zzlVar3.zzahb;
                        zzfj zzfjVar = new zzfj(zzlVar3.packageName, zzlVar3.origin, zzfhVar.name, j, zzfhVar.getValue());
                        if (zzjq().zza(zzfjVar)) {
                            this.zzadj.zzgo().zzjk().zzd("User property triggered", zzlVar3.packageName, this.zzadj.zzgl().zzbu(zzfjVar.name), zzfjVar.value);
                        } else {
                            this.zzadj.zzgo().zzjd().zzd("Too many active user properties, ignoring", zzap.zzbv(zzlVar3.packageName), this.zzadj.zzgl().zzbu(zzfjVar.name), zzfjVar.value);
                        }
                        if (zzlVar3.zzahd != null) {
                            arrayList3.add(zzlVar3.zzahd);
                        }
                        zzlVar3.zzahb = new zzfh(zzfjVar);
                        zzlVar3.active = true;
                        zzjq().zza(zzlVar3);
                    }
                }
                zzd(zzadVar, zzhVar);
                ArrayList arrayList4 = arrayList3;
                int size2 = arrayList4.size();
                int i2 = 0;
                while (i2 < size2) {
                    Object obj2 = arrayList4.get(i2);
                    i2++;
                    zzd(new zzad((zzad) obj2, j), zzhVar);
                }
                zzjq().setTransactionSuccessful();
            } finally {
                zzjq().endTransaction();
            }
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private final void zzd(zzad zzadVar, zzh zzhVar) {
        zzz zzzVarZzai;
        zzg zzgVarZzbl;
        Preconditions.checkNotNull(zzhVar);
        Preconditions.checkNotEmpty(zzhVar.packageName);
        long jNanoTime = System.nanoTime();
        zzaf();
        zzlr();
        String str = zzhVar.packageName;
        if (zzjo().zze(zzadVar, zzhVar)) {
            if (!zzhVar.zzagg) {
                zzg(zzhVar);
                return;
            }
            if (zzln().zzo(str, zzadVar.name)) {
                this.zzadj.zzgo().zzjg().zze("Dropping blacklisted event. appId", zzap.zzbv(str), this.zzadj.zzgl().zzbs(zzadVar.name));
                boolean z = zzln().zzck(str) || zzln().zzcl(str);
                if (!z && !"_err".equals(zzadVar.name)) {
                    this.zzadj.zzgm().zza(str, 11, "_ev", zzadVar.name, 0);
                }
                if (!z || (zzgVarZzbl = zzjq().zzbl(str)) == null) {
                    return;
                }
                if (Math.abs(this.zzadj.zzbx().currentTimeMillis() - Math.max(zzgVarZzbl.zzhg(), zzgVarZzbl.zzhf())) > zzaf.zzakc.get().longValue()) {
                    this.zzadj.zzgo().zzjk().zzbx("Fetching config for blacklisted app");
                    zzb(zzgVarZzbl);
                    return;
                }
                return;
            }
            if (this.zzadj.zzgo().isLoggable(2)) {
                this.zzadj.zzgo().zzjl().zzg("Logging event", this.zzadj.zzgl().zzb(zzadVar));
            }
            zzjq().beginTransaction();
            try {
                zzg(zzhVar);
                if (("_iap".equals(zzadVar.name) || "ecommerce_purchase".equals(zzadVar.name)) && !zza(str, zzadVar)) {
                    zzjq().setTransactionSuccessful();
                    zzjq().endTransaction();
                    return;
                }
                boolean zZzcq = zzfk.zzcq(zzadVar.name);
                boolean zEquals = "_err".equals(zzadVar.name);
                zzr zzrVarZza = zzjq().zza(zzls(), str, true, zZzcq, false, zEquals, false);
                long jIntValue = zzrVarZza.zzahr - ((long) zzaf.zzajn.get().intValue());
                if (jIntValue > 0) {
                    if (jIntValue % 1000 == 1) {
                        this.zzadj.zzgo().zzjd().zze("Data loss. Too many events logged. appId, count", zzap.zzbv(str), Long.valueOf(zzrVarZza.zzahr));
                    }
                    zzjq().setTransactionSuccessful();
                    zzjq().endTransaction();
                    return;
                }
                if (zZzcq) {
                    long jIntValue2 = zzrVarZza.zzahq - ((long) zzaf.zzajp.get().intValue());
                    if (jIntValue2 > 0) {
                        if (jIntValue2 % 1000 == 1) {
                            this.zzadj.zzgo().zzjd().zze("Data loss. Too many public events logged. appId, count", zzap.zzbv(str), Long.valueOf(zzrVarZza.zzahq));
                        }
                        this.zzadj.zzgm().zza(str, 16, "_ev", zzadVar.name, 0);
                        zzjq().setTransactionSuccessful();
                        zzjq().endTransaction();
                        return;
                    }
                }
                if (zEquals) {
                    long jMax = zzrVarZza.zzaht - ((long) Math.max(0, Math.min(1000000, this.zzadj.zzgq().zzb(zzhVar.packageName, zzaf.zzajo))));
                    if (jMax > 0) {
                        if (jMax == 1) {
                            this.zzadj.zzgo().zzjd().zze("Too many error events logged. appId, count", zzap.zzbv(str), Long.valueOf(zzrVarZza.zzaht));
                        }
                        zzjq().setTransactionSuccessful();
                        zzjq().endTransaction();
                        return;
                    }
                }
                Bundle bundleZziv = zzadVar.zzaid.zziv();
                this.zzadj.zzgm().zza(bundleZziv, "_o", zzadVar.origin);
                if (this.zzadj.zzgm().zzcw(str)) {
                    this.zzadj.zzgm().zza(bundleZziv, "_dbg", (Object) 1L);
                    this.zzadj.zzgm().zza(bundleZziv, "_r", (Object) 1L);
                }
                long jZzbm = zzjq().zzbm(str);
                if (jZzbm > 0) {
                    this.zzadj.zzgo().zzjg().zze("Data lost. Too many events stored on disk, deleted. appId", zzap.zzbv(str), Long.valueOf(jZzbm));
                }
                zzy zzyVar = zzyVar;
                boolean z2 = false;
                zzy zzyVar2 = new zzy(this.zzadj, zzadVar.origin, str, zzadVar.name, zzadVar.zzaip, 0L, bundleZziv);
                zzz zzzVarZzg = zzjq().zzg(str, zzyVar.name);
                if (zzzVarZzg == null) {
                    if (zzjq().zzbp(str) >= 500 && zZzcq) {
                        this.zzadj.zzgo().zzjd().zzd("Too many event names used, ignoring event. appId, name, supported count", zzap.zzbv(str), this.zzadj.zzgl().zzbs(zzyVar.name), Integer.valueOf(VrmAdFetcher.TIMEOUT));
                        this.zzadj.zzgm().zza(str, 8, (String) null, (String) null, 0);
                        zzjq().endTransaction();
                        return;
                    }
                    zzzVarZzai = new zzz(str, zzyVar.name, 0L, 0L, zzyVar.timestamp, 0L, null, null, null, null);
                } else {
                    zzy zzyVarZza = zzyVar.zza(this.zzadj, zzzVarZzg.zzaig);
                    zzzVarZzai = zzzVarZzg.zzai(zzyVarZza.timestamp);
                    zzyVar = zzyVarZza;
                }
                zzjq().zza(zzzVarZzai);
                zzaf();
                zzlr();
                Preconditions.checkNotNull(zzyVar);
                Preconditions.checkNotNull(zzhVar);
                Preconditions.checkNotEmpty(zzyVar.zztt);
                Preconditions.checkArgument(zzyVar.zztt.equals(zzhVar.packageName));
                zzgi zzgiVar = new zzgi();
                zzgiVar.zzaxa = 1;
                zzgiVar.zzaxi = AbstractSpiCall.ANDROID_CLIENT_TYPE;
                zzgiVar.zztt = zzhVar.packageName;
                zzgiVar.zzage = zzhVar.zzage;
                zzgiVar.zzts = zzhVar.zzts;
                zzgiVar.zzaxu = zzhVar.zzagd == -2147483648L ? null : Integer.valueOf((int) zzhVar.zzagd);
                zzgiVar.zzaxm = Long.valueOf(zzhVar.zzadt);
                zzgiVar.zzafx = zzhVar.zzafx;
                zzgiVar.zzawj = zzhVar.zzagk;
                zzgiVar.zzaxq = zzhVar.zzagf == 0 ? null : Long.valueOf(zzhVar.zzagf);
                Pair<String, Boolean> pairZzby = this.zzadj.zzgp().zzby(zzhVar.packageName);
                if (pairZzby != null && !TextUtils.isEmpty((CharSequence) pairZzby.first)) {
                    if (zzhVar.zzagi) {
                        zzgiVar.zzaxo = (String) pairZzby.first;
                        zzgiVar.zzaxp = (Boolean) pairZzby.second;
                    }
                } else if (!this.zzadj.zzgk().zzl(this.zzadj.getContext()) && zzhVar.zzagj) {
                    String string = Settings.Secure.getString(this.zzadj.getContext().getContentResolver(), "android_id");
                    if (string == null) {
                        this.zzadj.zzgo().zzjg().zzg("null secure ID. appId", zzap.zzbv(zzgiVar.zztt));
                        string = "null";
                    } else if (string.isEmpty()) {
                        this.zzadj.zzgo().zzjg().zzg("empty secure ID. appId", zzap.zzbv(zzgiVar.zztt));
                    }
                    zzgiVar.zzaxx = string;
                }
                this.zzadj.zzgk().zzcl();
                zzgiVar.zzaxk = Build.MODEL;
                this.zzadj.zzgk().zzcl();
                zzgiVar.zzaxj = Build.VERSION.RELEASE;
                zzgiVar.zzaxl = Integer.valueOf((int) this.zzadj.zzgk().zzis());
                zzgiVar.zzaia = this.zzadj.zzgk().zzit();
                zzgiVar.zzaxn = null;
                zzgiVar.zzaxd = null;
                zzgiVar.zzaxe = null;
                zzgiVar.zzaxf = null;
                zzgiVar.zzaxz = Long.valueOf(zzhVar.zzagh);
                if (this.zzadj.isEnabled() && zzn.zzhz()) {
                    zzgiVar.zzaya = null;
                }
                zzg zzgVarZzbl2 = zzjq().zzbl(zzhVar.packageName);
                if (zzgVarZzbl2 == null) {
                    zzgVarZzbl2 = new zzg(this.zzadj, zzhVar.packageName);
                    zzgVarZzbl2.zzam(this.zzadj.zzgm().zzmf());
                    zzgVarZzbl2.zzaq(zzhVar.zzafz);
                    zzgVarZzbl2.zzan(zzhVar.zzafx);
                    zzgVarZzbl2.zzap(this.zzadj.zzgp().zzbz(zzhVar.packageName));
                    zzgVarZzbl2.zzx(0L);
                    zzgVarZzbl2.zzs(0L);
                    zzgVarZzbl2.zzt(0L);
                    zzgVarZzbl2.setAppVersion(zzhVar.zzts);
                    zzgVarZzbl2.zzu(zzhVar.zzagd);
                    zzgVarZzbl2.zzar(zzhVar.zzage);
                    zzgVarZzbl2.zzv(zzhVar.zzadt);
                    zzgVarZzbl2.zzw(zzhVar.zzagf);
                    zzgVarZzbl2.setMeasurementEnabled(zzhVar.zzagg);
                    zzgVarZzbl2.zzag(zzhVar.zzagh);
                    zzjq().zza(zzgVarZzbl2);
                }
                zzgiVar.zzafw = zzgVarZzbl2.getAppInstanceId();
                zzgiVar.zzafz = zzgVarZzbl2.getFirebaseInstanceId();
                List<zzfj> listZzbk = zzjq().zzbk(zzhVar.packageName);
                zzgiVar.zzaxc = new zzgl[listZzbk.size()];
                for (int i = 0; i < listZzbk.size(); i++) {
                    zzgl zzglVar = new zzgl();
                    zzgiVar.zzaxc[i] = zzglVar;
                    zzglVar.name = listZzbk.get(i).name;
                    zzglVar.zzayl = Long.valueOf(listZzbk.get(i).zzaue);
                    zzjo().zza(zzglVar, listZzbk.get(i).value);
                }
                try {
                    long jZza = zzjq().zza(zzgiVar);
                    zzq zzqVarZzjq = zzjq();
                    if (zzyVar.zzaid != null) {
                        Iterator<String> it = zzyVar.zzaid.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if ("_r".equals(it.next())) {
                                    z2 = true;
                                    break;
                                }
                            } else {
                                boolean zZzp = zzln().zzp(zzyVar.zztt, zzyVar.name);
                                zzr zzrVarZza2 = zzjq().zza(zzls(), zzyVar.zztt, false, false, false, false, false);
                                if (zZzp && zzrVarZza2.zzahu < this.zzadj.zzgq().zzat(zzyVar.zztt)) {
                                    z2 = true;
                                    break;
                                } else {
                                    break;
                                    break;
                                }
                            }
                        }
                    }
                    if (zzqVarZzjq.zza(zzyVar, jZza, z2)) {
                        this.zzatl = 0L;
                    }
                } catch (IOException e) {
                    this.zzadj.zzgo().zzjd().zze("Data loss. Failed to insert raw event metadata. appId", zzap.zzbv(zzgiVar.zztt), e);
                }
                zzjq().setTransactionSuccessful();
                if (this.zzadj.zzgo().isLoggable(2)) {
                    this.zzadj.zzgo().zzjl().zzg("Event recorded", this.zzadj.zzgl().zza(zzyVar));
                }
                zzjq().endTransaction();
                zzlv();
                this.zzadj.zzgo().zzjl().zzg("Background event processing time, ms", Long.valueOf(((System.nanoTime() - jNanoTime) + 500000) / 1000000));
            } catch (Throwable th) {
                zzjq().endTransaction();
                throw th;
            }
        }
    }

    private final boolean zza(String str, zzad zzadVar) {
        long jLongValue;
        zzfj zzfjVar;
        String string = zzadVar.zzaid.getString("currency");
        if ("ecommerce_purchase".equals(zzadVar.name)) {
            double dDoubleValue = zzadVar.zzaid.zzbq("value").doubleValue() * 1000000.0d;
            if (dDoubleValue == 0.0d) {
                double dLongValue = zzadVar.zzaid.getLong("value").longValue();
                Double.isNaN(dLongValue);
                dDoubleValue = dLongValue * 1000000.0d;
            }
            if (dDoubleValue <= 9.223372036854776E18d && dDoubleValue >= -9.223372036854776E18d) {
                jLongValue = Math.round(dDoubleValue);
            } else {
                this.zzadj.zzgo().zzjg().zze("Data lost. Currency value is too big. appId", zzap.zzbv(str), Double.valueOf(dDoubleValue));
                return false;
            }
        } else {
            jLongValue = zzadVar.zzaid.getLong("value").longValue();
        }
        if (!TextUtils.isEmpty(string)) {
            String upperCase = string.toUpperCase(Locale.US);
            if (upperCase.matches("[A-Z]{3}")) {
                String strValueOf = String.valueOf("_ltv_");
                String strValueOf2 = String.valueOf(upperCase);
                String strConcat = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
                zzfj zzfjVarZzi = zzjq().zzi(str, strConcat);
                if (zzfjVarZzi == null || !(zzfjVarZzi.value instanceof Long)) {
                    zzq zzqVarZzjq = zzjq();
                    int iZzb = this.zzadj.zzgq().zzb(str, zzaf.zzakh) - 1;
                    Preconditions.checkNotEmpty(str);
                    zzqVarZzjq.zzaf();
                    zzqVarZzjq.zzcl();
                    try {
                        zzqVarZzjq.getWritableDatabase().execSQL("delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by set_timestamp desc limit ?,10);", new String[]{str, str, String.valueOf(iZzb)});
                    } catch (SQLiteException e) {
                        zzqVarZzjq.zzgo().zzjd().zze("Error pruning currencies. appId", zzap.zzbv(str), e);
                    }
                    zzfjVar = new zzfj(str, zzadVar.origin, strConcat, this.zzadj.zzbx().currentTimeMillis(), Long.valueOf(jLongValue));
                } else {
                    zzfjVar = new zzfj(str, zzadVar.origin, strConcat, this.zzadj.zzbx().currentTimeMillis(), Long.valueOf(((Long) zzfjVarZzi.value).longValue() + jLongValue));
                }
                if (!zzjq().zza(zzfjVar)) {
                    this.zzadj.zzgo().zzjd().zzd("Too many unique user properties are set. Ignoring user property. appId", zzap.zzbv(str), this.zzadj.zzgl().zzbu(zzfjVar.name), zzfjVar.value);
                    this.zzadj.zzgm().zza(str, 9, (String) null, (String) null, 0);
                }
            }
        }
        return true;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    final void zzlt() {
        zzg zzgVarZzbl;
        String str;
        zzaf();
        zzlr();
        this.zzatr = true;
        try {
            this.zzadj.zzgr();
            Boolean boolZzle = this.zzadj.zzgg().zzle();
            if (boolZzle == null) {
                this.zzadj.zzgo().zzjg().zzbx("Upload data called on the client side before use of service was decided");
                this.zzatr = false;
                zzlw();
                return;
            }
            if (boolZzle.booleanValue()) {
                this.zzadj.zzgo().zzjd().zzbx("Upload called in the client side when service should be used");
                this.zzatr = false;
                zzlw();
                return;
            }
            if (this.zzatl > 0) {
                zzlv();
                this.zzatr = false;
                zzlw();
                return;
            }
            zzaf();
            if (this.zzatu != null) {
                this.zzadj.zzgo().zzjl().zzbx("Uploading requested multiple times");
                this.zzatr = false;
                zzlw();
                return;
            }
            if (!zzlo().zzfb()) {
                this.zzadj.zzgo().zzjl().zzbx("Network not connected, ignoring upload request");
                zzlv();
                this.zzatr = false;
                zzlw();
                return;
            }
            long jCurrentTimeMillis = this.zzadj.zzbx().currentTimeMillis();
            zzd((String) null, jCurrentTimeMillis - zzn.zzhx());
            long j = this.zzadj.zzgp().zzane.get();
            if (j != 0) {
                this.zzadj.zzgo().zzjk().zzg("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(jCurrentTimeMillis - j)));
            }
            String strZzid = zzjq().zzid();
            if (!TextUtils.isEmpty(strZzid)) {
                if (this.zzatw == -1) {
                    this.zzatw = zzjq().zzik();
                }
                List<Pair<zzgi, Long>> listZzb = zzjq().zzb(strZzid, this.zzadj.zzgq().zzb(strZzid, zzaf.zzajj), Math.max(0, this.zzadj.zzgq().zzb(strZzid, zzaf.zzajk)));
                if (!listZzb.isEmpty()) {
                    Iterator<Pair<zzgi, Long>> it = listZzb.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            str = null;
                            break;
                        }
                        zzgi zzgiVar = (zzgi) it.next().first;
                        if (!TextUtils.isEmpty(zzgiVar.zzaxo)) {
                            str = zzgiVar.zzaxo;
                            break;
                        }
                    }
                    if (str != null) {
                        for (int i = 0; i < listZzb.size(); i++) {
                            zzgi zzgiVar2 = (zzgi) listZzb.get(i).first;
                            if (!TextUtils.isEmpty(zzgiVar2.zzaxo) && !zzgiVar2.zzaxo.equals(str)) {
                                listZzb = listZzb.subList(0, i);
                                break;
                            }
                        }
                    }
                    zzgh zzghVar = new zzgh();
                    zzghVar.zzawy = new zzgi[listZzb.size()];
                    ArrayList arrayList = new ArrayList(listZzb.size());
                    boolean z = zzn.zzhz() && this.zzadj.zzgq().zzav(strZzid);
                    for (int i2 = 0; i2 < zzghVar.zzawy.length; i2++) {
                        zzghVar.zzawy[i2] = (zzgi) listZzb.get(i2).first;
                        arrayList.add((Long) listZzb.get(i2).second);
                        zzghVar.zzawy[i2].zzaxn = Long.valueOf(this.zzadj.zzgq().zzhc());
                        zzghVar.zzawy[i2].zzaxd = Long.valueOf(jCurrentTimeMillis);
                        zzgi zzgiVar3 = zzghVar.zzawy[i2];
                        this.zzadj.zzgr();
                        zzgiVar3.zzaxs = false;
                        if (!z) {
                            zzghVar.zzawy[i2].zzaya = null;
                        }
                    }
                    String strZzb = this.zzadj.zzgo().isLoggable(2) ? zzjo().zzb(zzghVar) : null;
                    byte[] bArrZza = zzjo().zza(zzghVar);
                    String str2 = zzaf.zzajt.get();
                    try {
                        URL url = new URL(str2);
                        Preconditions.checkArgument(!arrayList.isEmpty());
                        if (this.zzatu != null) {
                            this.zzadj.zzgo().zzjd().zzbx("Set uploading progress before finishing the previous upload");
                        } else {
                            this.zzatu = new ArrayList(arrayList);
                        }
                        this.zzadj.zzgp().zzanf.set(jCurrentTimeMillis);
                        this.zzadj.zzgo().zzjl().zzd("Uploading data. app, uncompressed size, data", zzghVar.zzawy.length > 0 ? zzghVar.zzawy[0].zztt : "?", Integer.valueOf(bArrZza.length), strZzb);
                        this.zzatq = true;
                        zzat zzatVarZzlo = zzlo();
                        zzfc zzfcVar = new zzfc(this, strZzid);
                        zzatVarZzlo.zzaf();
                        zzatVarZzlo.zzcl();
                        Preconditions.checkNotNull(url);
                        Preconditions.checkNotNull(bArrZza);
                        Preconditions.checkNotNull(zzfcVar);
                        zzatVarZzlo.zzgn().zzd(new zzax(zzatVarZzlo, strZzid, url, bArrZza, null, zzfcVar));
                    } catch (MalformedURLException unused) {
                        this.zzadj.zzgo().zzjd().zze("Failed to parse upload URL. Not uploading. appId", zzap.zzbv(strZzid), str2);
                    }
                }
            } else {
                this.zzatw = -1L;
                String strZzah = zzjq().zzah(jCurrentTimeMillis - zzn.zzhx());
                if (!TextUtils.isEmpty(strZzah) && (zzgVarZzbl = zzjq().zzbl(strZzah)) != null) {
                    zzb(zzgVarZzbl);
                }
            }
            this.zzatr = false;
            zzlw();
        } catch (Throwable th) {
            this.zzatr = false;
            zzlw();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:129:0x0294 A[Catch: all -> 0x0cdc, TRY_ENTER, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x029b A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:138:0x02a9 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x02d0 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:143:0x02e8 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:145:0x0319 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:149:0x032a  */
    /* JADX WARN: Code duplicated, block: B:151:0x032d A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:155:0x0355 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:157:0x0365 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:159:0x0376  */
    /* JADX WARN: Code duplicated, block: B:161:0x037b  */
    /* JADX WARN: Code duplicated, block: B:163:0x0380 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:164:0x0381 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:167:0x038b A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:169:0x0393  */
    /* JADX WARN: Code duplicated, block: B:170:0x0395 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:172:0x039d  */
    /* JADX WARN: Code duplicated, block: B:173:0x039f  */
    /* JADX WARN: Code duplicated, block: B:175:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:176:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:178:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:179:0x03a9  */
    /* JADX WARN: Code duplicated, block: B:180:0x03ad A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:182:0x03b1 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:185:0x03c0 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:187:0x03d0 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:188:0x03d9 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:190:0x03e3 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:193:0x03f4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:196:0x0436 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:199:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:202:0x04ad A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:206:0x04c4 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:209:0x04cd A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:211:0x04d9 A[Catch: all -> 0x0cdc, LOOP:4: B:200:0x04a8->B:211:0x04d9, LOOP_END, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:213:0x04df  */
    /* JADX WARN: Code duplicated, block: B:216:0x04e8 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:236:0x05a7  */
    /* JADX WARN: Code duplicated, block: B:240:0x05bd A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:280:0x0670  */
    /* JADX WARN: Code duplicated, block: B:282:0x0673 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:286:0x0681 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:293:0x06b2 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:298:0x06e1 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:300:0x06ed A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:302:0x06fb A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:306:0x0726 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:310:0x0768 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:313:0x077c A[Catch: all -> 0x0cdc, LOOP:6: B:308:0x0763->B:313:0x077c, LOOP_END, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:316:0x0782 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:317:0x079f  */
    /* JADX WARN: Code duplicated, block: B:320:0x07a5 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:325:0x07f4 A[Catch: all -> 0x0aee, TRY_LEAVE, TryCatch #9 {all -> 0x0aee, blocks: (B:323:0x07d9, B:325:0x07f4, B:429:0x0aad, B:343:0x087b, B:375:0x092a, B:380:0x097e, B:384:0x098e, B:398:0x09bb, B:406:0x09fd, B:408:0x0a0d, B:422:0x0a50, B:424:0x0a7d, B:425:0x0a8b, B:426:0x0a9c, B:428:0x0aa2, B:412:0x0a1a, B:417:0x0a35, B:430:0x0abd, B:432:0x0ac4, B:433:0x0acc, B:434:0x0ad4, B:436:0x0ada, B:445:0x0b0f, B:447:0x0b23, B:448:0x0b27, B:450:0x0b37), top: B:528:0x07d9 }] */
    /* JADX WARN: Code duplicated, block: B:327:0x0800 A[Catch: all -> 0x0cdc, TRY_ENTER, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:329:0x0813 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:332:0x0826 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:334:0x0830 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:337:0x0843 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:342:0x086e  */
    /* JADX WARN: Code duplicated, block: B:343:0x087b A[Catch: all -> 0x0aee, TRY_ENTER, TRY_LEAVE, TryCatch #9 {all -> 0x0aee, blocks: (B:323:0x07d9, B:325:0x07f4, B:429:0x0aad, B:343:0x087b, B:375:0x092a, B:380:0x097e, B:384:0x098e, B:398:0x09bb, B:406:0x09fd, B:408:0x0a0d, B:422:0x0a50, B:424:0x0a7d, B:425:0x0a8b, B:426:0x0a9c, B:428:0x0aa2, B:412:0x0a1a, B:417:0x0a35, B:430:0x0abd, B:432:0x0ac4, B:433:0x0acc, B:434:0x0ad4, B:436:0x0ada, B:445:0x0b0f, B:447:0x0b23, B:448:0x0b27, B:450:0x0b37), top: B:528:0x07d9 }] */
    /* JADX WARN: Code duplicated, block: B:345:0x08a6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:368:0x08f0  */
    /* JADX WARN: Code duplicated, block: B:370:0x08f9 A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:371:0x0908  */
    /* JADX WARN: Code duplicated, block: B:373:0x090b A[Catch: all -> 0x0cdc, TRY_LEAVE, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:375:0x092a A[Catch: all -> 0x0aee, TRY_ENTER, TRY_LEAVE, TryCatch #9 {all -> 0x0aee, blocks: (B:323:0x07d9, B:325:0x07f4, B:429:0x0aad, B:343:0x087b, B:375:0x092a, B:380:0x097e, B:384:0x098e, B:398:0x09bb, B:406:0x09fd, B:408:0x0a0d, B:422:0x0a50, B:424:0x0a7d, B:425:0x0a8b, B:426:0x0a9c, B:428:0x0aa2, B:412:0x0a1a, B:417:0x0a35, B:430:0x0abd, B:432:0x0ac4, B:433:0x0acc, B:434:0x0ad4, B:436:0x0ada, B:445:0x0b0f, B:447:0x0b23, B:448:0x0b27, B:450:0x0b37), top: B:528:0x07d9 }] */
    /* JADX WARN: Code duplicated, block: B:377:0x0934 A[Catch: all -> 0x0cdc, TRY_ENTER, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:382:0x098b  */
    /* JADX WARN: Code duplicated, block: B:383:0x098d  */
    /* JADX WARN: Code duplicated, block: B:387:0x0995  */
    /* JADX WARN: Code duplicated, block: B:390:0x099f A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:398:0x09bb A[Catch: all -> 0x0aee, TRY_ENTER, TRY_LEAVE, TryCatch #9 {all -> 0x0aee, blocks: (B:323:0x07d9, B:325:0x07f4, B:429:0x0aad, B:343:0x087b, B:375:0x092a, B:380:0x097e, B:384:0x098e, B:398:0x09bb, B:406:0x09fd, B:408:0x0a0d, B:422:0x0a50, B:424:0x0a7d, B:425:0x0a8b, B:426:0x0a9c, B:428:0x0aa2, B:412:0x0a1a, B:417:0x0a35, B:430:0x0abd, B:432:0x0ac4, B:433:0x0acc, B:434:0x0ad4, B:436:0x0ada, B:445:0x0b0f, B:447:0x0b23, B:448:0x0b27, B:450:0x0b37), top: B:528:0x07d9 }] */
    /* JADX WARN: Code duplicated, block: B:400:0x09c1 A[Catch: all -> 0x0cdc, TRY_ENTER, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:402:0x09df A[Catch: all -> 0x0cdc, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:405:0x09fb  */
    /* JADX WARN: Code duplicated, block: B:408:0x0a0d A[Catch: all -> 0x0aee, TRY_LEAVE, TryCatch #9 {all -> 0x0aee, blocks: (B:323:0x07d9, B:325:0x07f4, B:429:0x0aad, B:343:0x087b, B:375:0x092a, B:380:0x097e, B:384:0x098e, B:398:0x09bb, B:406:0x09fd, B:408:0x0a0d, B:422:0x0a50, B:424:0x0a7d, B:425:0x0a8b, B:426:0x0a9c, B:428:0x0aa2, B:412:0x0a1a, B:417:0x0a35, B:430:0x0abd, B:432:0x0ac4, B:433:0x0acc, B:434:0x0ad4, B:436:0x0ada, B:445:0x0b0f, B:447:0x0b23, B:448:0x0b27, B:450:0x0b37), top: B:528:0x07d9 }] */
    /* JADX WARN: Code duplicated, block: B:410:0x0a11 A[Catch: all -> 0x0cdc, TRY_ENTER, TRY_LEAVE, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:412:0x0a1a A[Catch: all -> 0x0aee, TRY_ENTER, TryCatch #9 {all -> 0x0aee, blocks: (B:323:0x07d9, B:325:0x07f4, B:429:0x0aad, B:343:0x087b, B:375:0x092a, B:380:0x097e, B:384:0x098e, B:398:0x09bb, B:406:0x09fd, B:408:0x0a0d, B:422:0x0a50, B:424:0x0a7d, B:425:0x0a8b, B:426:0x0a9c, B:428:0x0aa2, B:412:0x0a1a, B:417:0x0a35, B:430:0x0abd, B:432:0x0ac4, B:433:0x0acc, B:434:0x0ad4, B:436:0x0ada, B:445:0x0b0f, B:447:0x0b23, B:448:0x0b27, B:450:0x0b37), top: B:528:0x07d9 }] */
    /* JADX WARN: Code duplicated, block: B:415:0x0a31  */
    /* JADX WARN: Code duplicated, block: B:416:0x0a33  */
    /* JADX WARN: Code duplicated, block: B:417:0x0a35 A[Catch: all -> 0x0aee, TryCatch #9 {all -> 0x0aee, blocks: (B:323:0x07d9, B:325:0x07f4, B:429:0x0aad, B:343:0x087b, B:375:0x092a, B:380:0x097e, B:384:0x098e, B:398:0x09bb, B:406:0x09fd, B:408:0x0a0d, B:422:0x0a50, B:424:0x0a7d, B:425:0x0a8b, B:426:0x0a9c, B:428:0x0aa2, B:412:0x0a1a, B:417:0x0a35, B:430:0x0abd, B:432:0x0ac4, B:433:0x0acc, B:434:0x0ad4, B:436:0x0ada, B:445:0x0b0f, B:447:0x0b23, B:448:0x0b27, B:450:0x0b37), top: B:528:0x07d9 }] */
    /* JADX WARN: Code duplicated, block: B:419:0x0a4b  */
    /* JADX WARN: Code duplicated, block: B:420:0x0a4d  */
    /* JADX WARN: Code duplicated, block: B:422:0x0a50 A[Catch: all -> 0x0aee, TryCatch #9 {all -> 0x0aee, blocks: (B:323:0x07d9, B:325:0x07f4, B:429:0x0aad, B:343:0x087b, B:375:0x092a, B:380:0x097e, B:384:0x098e, B:398:0x09bb, B:406:0x09fd, B:408:0x0a0d, B:422:0x0a50, B:424:0x0a7d, B:425:0x0a8b, B:426:0x0a9c, B:428:0x0aa2, B:412:0x0a1a, B:417:0x0a35, B:430:0x0abd, B:432:0x0ac4, B:433:0x0acc, B:434:0x0ad4, B:436:0x0ada, B:445:0x0b0f, B:447:0x0b23, B:448:0x0b27, B:450:0x0b37), top: B:528:0x07d9 }] */
    /* JADX WARN: Code duplicated, block: B:424:0x0a7d A[Catch: all -> 0x0aee, TryCatch #9 {all -> 0x0aee, blocks: (B:323:0x07d9, B:325:0x07f4, B:429:0x0aad, B:343:0x087b, B:375:0x092a, B:380:0x097e, B:384:0x098e, B:398:0x09bb, B:406:0x09fd, B:408:0x0a0d, B:422:0x0a50, B:424:0x0a7d, B:425:0x0a8b, B:426:0x0a9c, B:428:0x0aa2, B:412:0x0a1a, B:417:0x0a35, B:430:0x0abd, B:432:0x0ac4, B:433:0x0acc, B:434:0x0ad4, B:436:0x0ada, B:445:0x0b0f, B:447:0x0b23, B:448:0x0b27, B:450:0x0b37), top: B:528:0x07d9 }] */
    /* JADX WARN: Code duplicated, block: B:426:0x0a9c A[Catch: all -> 0x0aee, TryCatch #9 {all -> 0x0aee, blocks: (B:323:0x07d9, B:325:0x07f4, B:429:0x0aad, B:343:0x087b, B:375:0x092a, B:380:0x097e, B:384:0x098e, B:398:0x09bb, B:406:0x09fd, B:408:0x0a0d, B:422:0x0a50, B:424:0x0a7d, B:425:0x0a8b, B:426:0x0a9c, B:428:0x0aa2, B:412:0x0a1a, B:417:0x0a35, B:430:0x0abd, B:432:0x0ac4, B:433:0x0acc, B:434:0x0ad4, B:436:0x0ada, B:445:0x0b0f, B:447:0x0b23, B:448:0x0b27, B:450:0x0b37), top: B:528:0x07d9 }] */
    /* JADX WARN: Code duplicated, block: B:428:0x0aa2 A[Catch: all -> 0x0aee, TryCatch #9 {all -> 0x0aee, blocks: (B:323:0x07d9, B:325:0x07f4, B:429:0x0aad, B:343:0x087b, B:375:0x092a, B:380:0x097e, B:384:0x098e, B:398:0x09bb, B:406:0x09fd, B:408:0x0a0d, B:422:0x0a50, B:424:0x0a7d, B:425:0x0a8b, B:426:0x0a9c, B:428:0x0aa2, B:412:0x0a1a, B:417:0x0a35, B:430:0x0abd, B:432:0x0ac4, B:433:0x0acc, B:434:0x0ad4, B:436:0x0ada, B:445:0x0b0f, B:447:0x0b23, B:448:0x0b27, B:450:0x0b37), top: B:528:0x07d9 }] */
    /* JADX WARN: Code duplicated, block: B:432:0x0ac4 A[Catch: all -> 0x0aee, TryCatch #9 {all -> 0x0aee, blocks: (B:323:0x07d9, B:325:0x07f4, B:429:0x0aad, B:343:0x087b, B:375:0x092a, B:380:0x097e, B:384:0x098e, B:398:0x09bb, B:406:0x09fd, B:408:0x0a0d, B:422:0x0a50, B:424:0x0a7d, B:425:0x0a8b, B:426:0x0a9c, B:428:0x0aa2, B:412:0x0a1a, B:417:0x0a35, B:430:0x0abd, B:432:0x0ac4, B:433:0x0acc, B:434:0x0ad4, B:436:0x0ada, B:445:0x0b0f, B:447:0x0b23, B:448:0x0b27, B:450:0x0b37), top: B:528:0x07d9 }] */
    /* JADX WARN: Code duplicated, block: B:436:0x0ada A[Catch: all -> 0x0aee, LOOP:11: B:434:0x0ad4->B:436:0x0ada, LOOP_END, TRY_LEAVE, TryCatch #9 {all -> 0x0aee, blocks: (B:323:0x07d9, B:325:0x07f4, B:429:0x0aad, B:343:0x087b, B:375:0x092a, B:380:0x097e, B:384:0x098e, B:398:0x09bb, B:406:0x09fd, B:408:0x0a0d, B:422:0x0a50, B:424:0x0a7d, B:425:0x0a8b, B:426:0x0a9c, B:428:0x0aa2, B:412:0x0a1a, B:417:0x0a35, B:430:0x0abd, B:432:0x0ac4, B:433:0x0acc, B:434:0x0ad4, B:436:0x0ada, B:445:0x0b0f, B:447:0x0b23, B:448:0x0b27, B:450:0x0b37), top: B:528:0x07d9 }] */
    /* JADX WARN: Code duplicated, block: B:440:0x0af4  */
    /* JADX WARN: Code duplicated, block: B:445:0x0b0f A[Catch: all -> 0x0aee, TRY_ENTER, TryCatch #9 {all -> 0x0aee, blocks: (B:323:0x07d9, B:325:0x07f4, B:429:0x0aad, B:343:0x087b, B:375:0x092a, B:380:0x097e, B:384:0x098e, B:398:0x09bb, B:406:0x09fd, B:408:0x0a0d, B:422:0x0a50, B:424:0x0a7d, B:425:0x0a8b, B:426:0x0a9c, B:428:0x0aa2, B:412:0x0a1a, B:417:0x0a35, B:430:0x0abd, B:432:0x0ac4, B:433:0x0acc, B:434:0x0ad4, B:436:0x0ada, B:445:0x0b0f, B:447:0x0b23, B:448:0x0b27, B:450:0x0b37), top: B:528:0x07d9 }] */
    /* JADX WARN: Code duplicated, block: B:447:0x0b23 A[Catch: all -> 0x0aee, TryCatch #9 {all -> 0x0aee, blocks: (B:323:0x07d9, B:325:0x07f4, B:429:0x0aad, B:343:0x087b, B:375:0x092a, B:380:0x097e, B:384:0x098e, B:398:0x09bb, B:406:0x09fd, B:408:0x0a0d, B:422:0x0a50, B:424:0x0a7d, B:425:0x0a8b, B:426:0x0a9c, B:428:0x0aa2, B:412:0x0a1a, B:417:0x0a35, B:430:0x0abd, B:432:0x0ac4, B:433:0x0acc, B:434:0x0ad4, B:436:0x0ada, B:445:0x0b0f, B:447:0x0b23, B:448:0x0b27, B:450:0x0b37), top: B:528:0x07d9 }] */
    /* JADX WARN: Code duplicated, block: B:450:0x0b37 A[Catch: all -> 0x0aee, TRY_LEAVE, TryCatch #9 {all -> 0x0aee, blocks: (B:323:0x07d9, B:325:0x07f4, B:429:0x0aad, B:343:0x087b, B:375:0x092a, B:380:0x097e, B:384:0x098e, B:398:0x09bb, B:406:0x09fd, B:408:0x0a0d, B:422:0x0a50, B:424:0x0a7d, B:425:0x0a8b, B:426:0x0a9c, B:428:0x0aa2, B:412:0x0a1a, B:417:0x0a35, B:430:0x0abd, B:432:0x0ac4, B:433:0x0acc, B:434:0x0ad4, B:436:0x0ada, B:445:0x0b0f, B:447:0x0b23, B:448:0x0b27, B:450:0x0b37), top: B:528:0x07d9 }] */
    /* JADX WARN: Code duplicated, block: B:454:0x0b4c  */
    /* JADX WARN: Code duplicated, block: B:456:0x0b66 A[Catch: all -> 0x0cda, TryCatch #17 {all -> 0x0cda, blocks: (B:455:0x0b4e, B:471:0x0bc4, B:473:0x0bc9, B:475:0x0bdc, B:478:0x0be1, B:483:0x0c10, B:479:0x0be6, B:481:0x0bf0, B:482:0x0bf9, B:484:0x0c19, B:485:0x0c30, B:488:0x0c38, B:489:0x0c3d, B:490:0x0c4d, B:492:0x0c67, B:493:0x0c80, B:494:0x0c88, B:499:0x0caa, B:498:0x0c99, B:456:0x0b66, B:458:0x0b6d, B:460:0x0b77, B:462:0x0b7d, B:468:0x0b8f, B:470:0x0b95, B:505:0x0cbf, B:511:0x0cd6, B:512:0x0cd9), top: B:534:0x0023, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:458:0x0b6d A[Catch: all -> 0x0cda, TryCatch #17 {all -> 0x0cda, blocks: (B:455:0x0b4e, B:471:0x0bc4, B:473:0x0bc9, B:475:0x0bdc, B:478:0x0be1, B:483:0x0c10, B:479:0x0be6, B:481:0x0bf0, B:482:0x0bf9, B:484:0x0c19, B:485:0x0c30, B:488:0x0c38, B:489:0x0c3d, B:490:0x0c4d, B:492:0x0c67, B:493:0x0c80, B:494:0x0c88, B:499:0x0caa, B:498:0x0c99, B:456:0x0b66, B:458:0x0b6d, B:460:0x0b77, B:462:0x0b7d, B:468:0x0b8f, B:470:0x0b95, B:505:0x0cbf, B:511:0x0cd6, B:512:0x0cd9), top: B:534:0x0023, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:460:0x0b77 A[Catch: all -> 0x0cda, TryCatch #17 {all -> 0x0cda, blocks: (B:455:0x0b4e, B:471:0x0bc4, B:473:0x0bc9, B:475:0x0bdc, B:478:0x0be1, B:483:0x0c10, B:479:0x0be6, B:481:0x0bf0, B:482:0x0bf9, B:484:0x0c19, B:485:0x0c30, B:488:0x0c38, B:489:0x0c3d, B:490:0x0c4d, B:492:0x0c67, B:493:0x0c80, B:494:0x0c88, B:499:0x0caa, B:498:0x0c99, B:456:0x0b66, B:458:0x0b6d, B:460:0x0b77, B:462:0x0b7d, B:468:0x0b8f, B:470:0x0b95, B:505:0x0cbf, B:511:0x0cd6, B:512:0x0cd9), top: B:534:0x0023, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:461:0x0b7c  */
    /* JADX WARN: Code duplicated, block: B:464:0x0b89  */
    /* JADX WARN: Code duplicated, block: B:465:0x0b8a  */
    /* JADX WARN: Code duplicated, block: B:468:0x0b8f A[Catch: all -> 0x0cda, TryCatch #17 {all -> 0x0cda, blocks: (B:455:0x0b4e, B:471:0x0bc4, B:473:0x0bc9, B:475:0x0bdc, B:478:0x0be1, B:483:0x0c10, B:479:0x0be6, B:481:0x0bf0, B:482:0x0bf9, B:484:0x0c19, B:485:0x0c30, B:488:0x0c38, B:489:0x0c3d, B:490:0x0c4d, B:492:0x0c67, B:493:0x0c80, B:494:0x0c88, B:499:0x0caa, B:498:0x0c99, B:456:0x0b66, B:458:0x0b6d, B:460:0x0b77, B:462:0x0b7d, B:468:0x0b8f, B:470:0x0b95, B:505:0x0cbf, B:511:0x0cd6, B:512:0x0cd9), top: B:534:0x0023, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:469:0x0b94  */
    /* JADX WARN: Code duplicated, block: B:473:0x0bc9 A[Catch: all -> 0x0cda, TryCatch #17 {all -> 0x0cda, blocks: (B:455:0x0b4e, B:471:0x0bc4, B:473:0x0bc9, B:475:0x0bdc, B:478:0x0be1, B:483:0x0c10, B:479:0x0be6, B:481:0x0bf0, B:482:0x0bf9, B:484:0x0c19, B:485:0x0c30, B:488:0x0c38, B:489:0x0c3d, B:490:0x0c4d, B:492:0x0c67, B:493:0x0c80, B:494:0x0c88, B:499:0x0caa, B:498:0x0c99, B:456:0x0b66, B:458:0x0b6d, B:460:0x0b77, B:462:0x0b7d, B:468:0x0b8f, B:470:0x0b95, B:505:0x0cbf, B:511:0x0cd6, B:512:0x0cd9), top: B:534:0x0023, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:475:0x0bdc A[Catch: all -> 0x0cda, TryCatch #17 {all -> 0x0cda, blocks: (B:455:0x0b4e, B:471:0x0bc4, B:473:0x0bc9, B:475:0x0bdc, B:478:0x0be1, B:483:0x0c10, B:479:0x0be6, B:481:0x0bf0, B:482:0x0bf9, B:484:0x0c19, B:485:0x0c30, B:488:0x0c38, B:489:0x0c3d, B:490:0x0c4d, B:492:0x0c67, B:493:0x0c80, B:494:0x0c88, B:499:0x0caa, B:498:0x0c99, B:456:0x0b66, B:458:0x0b6d, B:460:0x0b77, B:462:0x0b7d, B:468:0x0b8f, B:470:0x0b95, B:505:0x0cbf, B:511:0x0cd6, B:512:0x0cd9), top: B:534:0x0023, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:479:0x0be6 A[Catch: all -> 0x0cda, TryCatch #17 {all -> 0x0cda, blocks: (B:455:0x0b4e, B:471:0x0bc4, B:473:0x0bc9, B:475:0x0bdc, B:478:0x0be1, B:483:0x0c10, B:479:0x0be6, B:481:0x0bf0, B:482:0x0bf9, B:484:0x0c19, B:485:0x0c30, B:488:0x0c38, B:489:0x0c3d, B:490:0x0c4d, B:492:0x0c67, B:493:0x0c80, B:494:0x0c88, B:499:0x0caa, B:498:0x0c99, B:456:0x0b66, B:458:0x0b6d, B:460:0x0b77, B:462:0x0b7d, B:468:0x0b8f, B:470:0x0b95, B:505:0x0cbf, B:511:0x0cd6, B:512:0x0cd9), top: B:534:0x0023, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:481:0x0bf0 A[Catch: all -> 0x0cda, TryCatch #17 {all -> 0x0cda, blocks: (B:455:0x0b4e, B:471:0x0bc4, B:473:0x0bc9, B:475:0x0bdc, B:478:0x0be1, B:483:0x0c10, B:479:0x0be6, B:481:0x0bf0, B:482:0x0bf9, B:484:0x0c19, B:485:0x0c30, B:488:0x0c38, B:489:0x0c3d, B:490:0x0c4d, B:492:0x0c67, B:493:0x0c80, B:494:0x0c88, B:499:0x0caa, B:498:0x0c99, B:456:0x0b66, B:458:0x0b6d, B:460:0x0b77, B:462:0x0b7d, B:468:0x0b8f, B:470:0x0b95, B:505:0x0cbf, B:511:0x0cd6, B:512:0x0cd9), top: B:534:0x0023, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:482:0x0bf9 A[Catch: all -> 0x0cda, TryCatch #17 {all -> 0x0cda, blocks: (B:455:0x0b4e, B:471:0x0bc4, B:473:0x0bc9, B:475:0x0bdc, B:478:0x0be1, B:483:0x0c10, B:479:0x0be6, B:481:0x0bf0, B:482:0x0bf9, B:484:0x0c19, B:485:0x0c30, B:488:0x0c38, B:489:0x0c3d, B:490:0x0c4d, B:492:0x0c67, B:493:0x0c80, B:494:0x0c88, B:499:0x0caa, B:498:0x0c99, B:456:0x0b66, B:458:0x0b6d, B:460:0x0b77, B:462:0x0b7d, B:468:0x0b8f, B:470:0x0b95, B:505:0x0cbf, B:511:0x0cd6, B:512:0x0cd9), top: B:534:0x0023, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:487:0x0c36 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:488:0x0c38 A[Catch: all -> 0x0cda, TryCatch #17 {all -> 0x0cda, blocks: (B:455:0x0b4e, B:471:0x0bc4, B:473:0x0bc9, B:475:0x0bdc, B:478:0x0be1, B:483:0x0c10, B:479:0x0be6, B:481:0x0bf0, B:482:0x0bf9, B:484:0x0c19, B:485:0x0c30, B:488:0x0c38, B:489:0x0c3d, B:490:0x0c4d, B:492:0x0c67, B:493:0x0c80, B:494:0x0c88, B:499:0x0caa, B:498:0x0c99, B:456:0x0b66, B:458:0x0b6d, B:460:0x0b77, B:462:0x0b7d, B:468:0x0b8f, B:470:0x0b95, B:505:0x0cbf, B:511:0x0cd6, B:512:0x0cd9), top: B:534:0x0023, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:492:0x0c67 A[Catch: all -> 0x0cda, TryCatch #17 {all -> 0x0cda, blocks: (B:455:0x0b4e, B:471:0x0bc4, B:473:0x0bc9, B:475:0x0bdc, B:478:0x0be1, B:483:0x0c10, B:479:0x0be6, B:481:0x0bf0, B:482:0x0bf9, B:484:0x0c19, B:485:0x0c30, B:488:0x0c38, B:489:0x0c3d, B:490:0x0c4d, B:492:0x0c67, B:493:0x0c80, B:494:0x0c88, B:499:0x0caa, B:498:0x0c99, B:456:0x0b66, B:458:0x0b6d, B:460:0x0b77, B:462:0x0b7d, B:468:0x0b8f, B:470:0x0b95, B:505:0x0cbf, B:511:0x0cd6, B:512:0x0cd9), top: B:534:0x0023, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:504:0x0cbe  */
    /* JADX WARN: Code duplicated, block: B:511:0x0cd6 A[Catch: all -> 0x0cda, TRY_ENTER, TryCatch #17 {all -> 0x0cda, blocks: (B:455:0x0b4e, B:471:0x0bc4, B:473:0x0bc9, B:475:0x0bdc, B:478:0x0be1, B:483:0x0c10, B:479:0x0be6, B:481:0x0bf0, B:482:0x0bf9, B:484:0x0c19, B:485:0x0c30, B:488:0x0c38, B:489:0x0c3d, B:490:0x0c4d, B:492:0x0c67, B:493:0x0c80, B:494:0x0c88, B:499:0x0caa, B:498:0x0c99, B:456:0x0b66, B:458:0x0b6d, B:460:0x0b77, B:462:0x0b7d, B:468:0x0b8f, B:470:0x0b95, B:505:0x0cbf, B:511:0x0cd6, B:512:0x0cd9), top: B:534:0x0023, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:528:0x07d9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x0129 A[Catch: all -> 0x0141, SQLiteException -> 0x0147, TRY_ENTER, TRY_LEAVE, TryCatch #23 {SQLiteException -> 0x0147, all -> 0x0141, blocks: (B:52:0x0129, B:64:0x0163, B:68:0x017e), top: B:543:0x0127 }] */
    /* JADX WARN: Code duplicated, block: B:545:0x014c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x013c A[Catch: all -> 0x0cdc, TRY_ENTER, TRY_LEAVE, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:562:0x03eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:564:0x04bb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:569:0x077f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:570:0x0776 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:573:0x0b3b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:576:0x0c3d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:585:0x0aad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:589:0x020c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:590:0x022c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:591:? A[LOOP:12: B:80:0x01de->B:591:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:592:? A[Catch: all -> 0x0cda, SYNTHETIC, TRY_LEAVE, TryCatch #17 {all -> 0x0cda, blocks: (B:455:0x0b4e, B:471:0x0bc4, B:473:0x0bc9, B:475:0x0bdc, B:478:0x0be1, B:483:0x0c10, B:479:0x0be6, B:481:0x0bf0, B:482:0x0bf9, B:484:0x0c19, B:485:0x0c30, B:488:0x0c38, B:489:0x0c3d, B:490:0x0c4d, B:492:0x0c67, B:493:0x0c80, B:494:0x0c88, B:499:0x0caa, B:498:0x0c99, B:456:0x0b66, B:458:0x0b6d, B:460:0x0b77, B:462:0x0b7d, B:468:0x0b8f, B:470:0x0b95, B:505:0x0cbf, B:511:0x0cd6, B:512:0x0cd9), top: B:534:0x0023, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0163 A[Catch: all -> 0x0141, SQLiteException -> 0x0147, TRY_ENTER, TRY_LEAVE, TryCatch #23 {SQLiteException -> 0x0147, all -> 0x0141, blocks: (B:52:0x0129, B:64:0x0163, B:68:0x017e), top: B:543:0x0127 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x017e A[Catch: all -> 0x0141, SQLiteException -> 0x0147, TRY_ENTER, TRY_LEAVE, TryCatch #23 {SQLiteException -> 0x0147, all -> 0x0141, blocks: (B:52:0x0129, B:64:0x0163, B:68:0x017e), top: B:543:0x0127 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0194 A[Catch: all -> 0x025b, SQLiteException -> 0x0261, TRY_ENTER, TryCatch #20 {SQLiteException -> 0x0261, all -> 0x025b, blocks: (B:50:0x0123, B:60:0x014c, B:61:0x015a, B:62:0x015d, B:65:0x0174, B:71:0x01a2, B:70:0x0194), top: B:548:0x0123 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x01c6 A[Catch: all -> 0x0233, SQLiteException -> 0x0238, TRY_LEAVE, TryCatch #24 {SQLiteException -> 0x0238, all -> 0x0233, blocks: (B:74:0x01c0, B:76:0x01c6, B:80:0x01de, B:81:0x01f1, B:83:0x01f5, B:91:0x0226, B:90:0x0215), top: B:542:0x01c0 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x01d9 A[Catch: all -> 0x0cdc, TRY_ENTER, TRY_LEAVE, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x01de A[Catch: all -> 0x0233, SQLiteException -> 0x0238, LOOP:12: B:80:0x01de->B:591:?, LOOP_START, TRY_ENTER, TRY_LEAVE, TryCatch #24 {SQLiteException -> 0x0238, all -> 0x0233, blocks: (B:74:0x01c0, B:76:0x01c6, B:80:0x01de, B:81:0x01f1, B:83:0x01f5, B:91:0x0226, B:90:0x0215), top: B:542:0x01c0 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x020e A[Catch: all -> 0x0cdc, EDGE_INSN: B:86:0x020e->B:544:0x0297 BREAK  A[LOOP:12: B:80:0x01de->B:591:?], TRY_ENTER, TRY_LEAVE, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0226 A[Catch: all -> 0x0233, SQLiteException -> 0x0238, TRY_LEAVE, TryCatch #24 {SQLiteException -> 0x0238, all -> 0x0233, blocks: (B:74:0x01c0, B:76:0x01c6, B:80:0x01de, B:81:0x01f1, B:83:0x01f5, B:91:0x0226, B:90:0x0215), top: B:542:0x01c0 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x022e A[Catch: all -> 0x0cdc, EDGE_INSN: B:94:0x022e->B:544:0x0297 BREAK  A[LOOP:12: B:80:0x01de->B:591:?], TRY_ENTER, TRY_LEAVE, TryCatch #22 {all -> 0x0cdc, blocks: (B:3:0x0009, B:26:0x0089, B:130:0x0297, B:132:0x029b, B:138:0x02a9, B:139:0x02c6, B:141:0x02d0, B:143:0x02e8, B:145:0x0319, B:151:0x032d, B:153:0x0337, B:295:0x06d0, B:155:0x0355, B:157:0x0365, B:174:0x03a0, B:238:0x05ad, B:241:0x05bf, B:242:0x05c4, B:244:0x05c7, B:250:0x05e2, B:247:0x05d5, B:253:0x05e8, B:255:0x05ee, B:257:0x05f4, B:279:0x066d, B:282:0x0673, B:284:0x067d, B:286:0x0681, B:289:0x0687, B:291:0x0694, B:292:0x06ac, B:293:0x06b2, B:294:0x06c9, B:277:0x064a, B:261:0x061d, B:263:0x0623, B:267:0x062c, B:269:0x0632, B:272:0x063e, B:164:0x0381, B:167:0x038b, B:170:0x0395, B:180:0x03ad, B:182:0x03b1, B:183:0x03b6, B:185:0x03c0, B:187:0x03d0, B:191:0x03eb, B:188:0x03d9, B:190:0x03e3, B:194:0x03f6, B:196:0x0436, B:197:0x0474, B:200:0x04a8, B:202:0x04ad, B:204:0x04bb, B:206:0x04c4, B:207:0x04ca, B:209:0x04cd, B:210:0x04d6, B:211:0x04d9, B:214:0x04e0, B:217:0x04ea, B:219:0x051f, B:221:0x053e, B:227:0x055d, B:224:0x0552, B:231:0x056c, B:233:0x057f, B:234:0x058c, B:296:0x06d7, B:298:0x06e1, B:300:0x06ed, B:302:0x06fb, B:305:0x0700, B:307:0x0743, B:308:0x0763, B:310:0x0768, B:312:0x0776, B:316:0x0782, B:320:0x07a5, B:313:0x077c, B:306:0x0726, B:321:0x07bd, B:327:0x0800, B:329:0x0813, B:330:0x0822, B:332:0x0826, B:334:0x0830, B:335:0x083f, B:337:0x0843, B:339:0x084b, B:340:0x085c, B:348:0x08ab, B:350:0x08b5, B:352:0x08c1, B:354:0x08c5, B:370:0x08f9, B:373:0x090b, B:377:0x0934, B:379:0x0944, B:388:0x0997, B:390:0x099f, B:392:0x09a3, B:394:0x09a7, B:396:0x09ab, B:400:0x09c1, B:402:0x09df, B:403:0x09e8, B:410:0x0a11, B:356:0x08cd, B:358:0x08d1, B:360:0x08d9, B:362:0x08dd, B:366:0x08e9, B:54:0x013c, B:78:0x01d9, B:86:0x020e, B:94:0x022e, B:129:0x0294, B:104:0x0253, B:45:0x00ec, B:61:0x015a), top: B:540:0x0009, inners: #21 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:157:0x0365, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Type inference failed for: r22v6 */
    /* JADX WARN: Type inference failed for: r22v7 */
    /* JADX WARN: Type inference failed for: r22v8 */
    /* JADX WARN: Type inference failed for: r22v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r6v166 */
    /* JADX WARN: Type inference failed for: r6v167 */
    /* JADX WARN: Type inference failed for: r6v168 */
    /* JADX WARN: Type inference failed for: r6v169 */
    /* JADX WARN: Type inference failed for: r6v170 */
    /* JADX WARN: Type inference failed for: r6v171 */
    /* JADX WARN: Type inference failed for: r6v172 */
    /* JADX WARN: Type inference failed for: r6v173 */
    /* JADX WARN: Type inference failed for: r6v176, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r6v177 */
    /* JADX WARN: Type inference failed for: r6v182 */
    /* JADX WARN: Type inference failed for: r6v186, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v187, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v189, types: [com.google.android.gms.measurement.internal.zzar] */
    /* JADX WARN: Type inference failed for: r6v192 */
    /* JADX WARN: Type inference failed for: r6v193 */
    /* JADX WARN: Type inference failed for: r6v194 */
    /* JADX WARN: Type inference failed for: r6v195 */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private final boolean zzd(String str, long j) throws Throwable {
        Throwable th;
        ?? r22;
        SQLiteException sQLiteException;
        ?? r6;
        String string;
        Throwable th2;
        ?? r23;
        boolean z;
        zzgi zzgiVar;
        boolean zZzax;
        int i;
        int i2;
        boolean z2;
        long jLongValue;
        boolean z3;
        HashMap map;
        zzgf[] zzgfVarArr;
        SecureRandom secureRandomZzmd;
        zzgf[] zzgfVarArr2;
        int length;
        int i3;
        int i4;
        zza zzaVar;
        zzgi zzgiVar2;
        Iterator it;
        zzgf zzgfVar;
        long jZzcj;
        long jZzc;
        zzgf[] zzgfVarArr3;
        int i5;
        zzgi zzgiVar3;
        int i6;
        long j2;
        boolean z4;
        int iZzq;
        zzz zzzVarZza;
        Long l;
        boolean z5;
        Boolean boolValueOf;
        SecureRandom secureRandom;
        boolean z6;
        long j3;
        long jZzc2;
        long j4;
        String str2;
        zzz zzzVarZzg;
        int i7;
        String str3;
        zzg zzgVarZzbl;
        zzfa zzfaVar;
        long jZzgz;
        Long lValueOf;
        long jZzgy;
        Long lValueOf2;
        zzq zzqVarZzjq;
        List<Long> list;
        StringBuilder sb;
        int i8;
        int iDelete;
        zzq zzqVarZzjq2;
        zzgb zzgbVarZzcf;
        zzgf zzgfVar2;
        zzfj zzfjVarZzi;
        zzfj zzfjVar;
        zzgl zzglVar;
        int i9;
        boolean z7;
        long j5;
        zzgf zzgfVar3;
        boolean zZzp;
        zzgg[] zzggVarArr;
        int length2;
        int i10;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        int i11;
        boolean z12;
        int i12;
        zzgg[] zzggVarArr2;
        zzgg zzggVar;
        boolean z13;
        String str4;
        boolean z14;
        boolean z15;
        ?? r7;
        String[] strArr;
        Cursor cursor;
        String str5;
        Cursor cursorQuery;
        ?? MoveToNext;
        String str6;
        String[] strArr2;
        Cursor cursorQuery2;
        String[] strArr3;
        zzfa zzfaVar2 = this;
        zzjq().beginTransaction();
        try {
            String str7 = null;
            zza zzaVar2 = new zza(zzfaVar2, false ? 1 : 0);
            zzq zzqVarZzjq3 = zzjq();
            long j6 = zzfaVar2.zzatw;
            Preconditions.checkNotNull(zzaVar2);
            zzqVarZzjq3.zzaf();
            zzqVarZzjq3.zzcl();
            try {
                try {
                    SQLiteDatabase writableDatabase = zzqVarZzjq3.getWritableDatabase();
                    try {
                        try {
                            if (TextUtils.isEmpty(null)) {
                                if (j6 != -1) {
                                    try {
                                        strArr3 = new String[]{String.valueOf(j6), String.valueOf(j)};
                                    } catch (SQLiteException e) {
                                        e = e;
                                        r7 = 0;
                                        string = null;
                                        sQLiteException = e;
                                        r6 = r7;
                                        try {
                                            zzqVarZzjq3.zzgo().zzjd().zze("Data loss. Error selecting raw event. appId", zzap.zzbv(string), sQLiteException);
                                            if (r6 != 0) {
                                                r6.close();
                                            }
                                            if (zzaVar2.zzauc != null) {
                                                z = true;
                                            } else {
                                                z = true;
                                            }
                                            if (!z) {
                                                zzgiVar = zzaVar2.zzaua;
                                                zzgiVar.zzaxb = new zzgf[zzaVar2.zzauc.size()];
                                                zZzax = zzfaVar2.zzadj.zzgq().zzax(zzgiVar.zztt);
                                                i = 0;
                                                i2 = 0;
                                                z2 = false;
                                                jLongValue = 0;
                                                while (i < zzaVar2.zzauc.size()) {
                                                    zzgfVar3 = zzaVar2.zzauc.get(i);
                                                    if (zzln().zzo(zzaVar2.zzaua.zztt, zzgfVar3.name)) {
                                                        zzfaVar2.zzadj.zzgo().zzjg().zze("Dropping blacklisted raw event. appId", zzap.zzbv(zzaVar2.zzaua.zztt), zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                                        if (zzln().zzck(zzaVar2.zzaua.zztt)) {
                                                            z15 = true;
                                                        } else {
                                                            z15 = true;
                                                        }
                                                        if (!z15) {
                                                            zzfaVar2.zzadj.zzgm().zza(zzaVar2.zzaua.zztt, 11, "_ev", zzgfVar3.name, 0);
                                                        }
                                                        i11 = i;
                                                    } else {
                                                        zZzp = zzln().zzp(zzaVar2.zzaua.zztt, zzgfVar3.name);
                                                        if (!zZzp) {
                                                            zzjo();
                                                            str4 = zzgfVar3.name;
                                                            Preconditions.checkNotEmpty(str4);
                                                            switch (str4) {
                                                                case "_in":
                                                                case "_ui":
                                                                case "_ug":
                                                                    z14 = true;
                                                                    break;
                                                                default:
                                                                    z14 = false;
                                                                    break;
                                                            }
                                                            if (z14) {
                                                                if (zzgfVar3.zzawt == null) {
                                                                    zzgfVar3.zzawt = new zzgg[0];
                                                                }
                                                                zzggVarArr = zzgfVar3.zzawt;
                                                                length2 = zzggVarArr.length;
                                                                i10 = 0;
                                                                z8 = false;
                                                                z9 = false;
                                                                while (i10 < length2) {
                                                                    zzggVar = zzggVarArr[i10];
                                                                    zzgg[] zzggVarArr3 = zzggVarArr;
                                                                    int i13 = length2;
                                                                    if ("_c".equals(zzggVar.name)) {
                                                                        zzggVar.zzawx = 1L;
                                                                        z8 = true;
                                                                    } else if ("_r".equals(zzggVar.name)) {
                                                                        zzggVar.zzawx = 1L;
                                                                        z9 = true;
                                                                    }
                                                                    i10++;
                                                                    zzggVarArr = zzggVarArr3;
                                                                    length2 = i13;
                                                                }
                                                                if (!z8) {
                                                                    zzfaVar2.zzadj.zzgo().zzjl().zzg("Marking event as conversion", zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                                                    zzgg[] zzggVarArr4 = (zzgg[]) Arrays.copyOf(zzgfVar3.zzawt, zzgfVar3.zzawt.length + 1);
                                                                    zzgg zzggVar2 = new zzgg();
                                                                    zzggVar2.name = "_c";
                                                                    zzggVar2.zzawx = 1L;
                                                                    zzggVarArr4[zzggVarArr4.length - 1] = zzggVar2;
                                                                    zzgfVar3.zzawt = zzggVarArr4;
                                                                }
                                                                if (!z9) {
                                                                    zzfaVar2.zzadj.zzgo().zzjl().zzg("Marking event as real-time", zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                                                    zzgg[] zzggVarArr5 = (zzgg[]) Arrays.copyOf(zzgfVar3.zzawt, zzgfVar3.zzawt.length + 1);
                                                                    zzgg zzggVar3 = new zzgg();
                                                                    zzggVar3.name = "_r";
                                                                    zzggVar3.zzawx = 1L;
                                                                    zzggVarArr5[zzggVarArr5.length - 1] = zzggVar3;
                                                                    zzgfVar3.zzawt = zzggVarArr5;
                                                                }
                                                                z10 = z2;
                                                                if (zzjq().zza(zzls(), zzaVar2.zzaua.zztt, false, false, false, false, true).zzahu > zzfaVar2.zzadj.zzgq().zzat(zzaVar2.zzaua.zztt)) {
                                                                    for (i12 = 0; i12 < zzgfVar3.zzawt.length; i12++) {
                                                                        if ("_r".equals(zzgfVar3.zzawt[i12].name)) {
                                                                            zzggVarArr2 = new zzgg[zzgfVar3.zzawt.length - 1];
                                                                            if (i12 > 0) {
                                                                                System.arraycopy(zzgfVar3.zzawt, 0, zzggVarArr2, 0, i12);
                                                                            }
                                                                            if (i12 < zzggVarArr2.length) {
                                                                                System.arraycopy(zzgfVar3.zzawt, i12 + 1, zzggVarArr2, i12, zzggVarArr2.length - i12);
                                                                            }
                                                                            zzgfVar3.zzawt = zzggVarArr2;
                                                                            z11 = z10;
                                                                        }
                                                                    }
                                                                    z11 = z10;
                                                                } else {
                                                                    z11 = true;
                                                                }
                                                                if (zzfk.zzcq(zzgfVar3.name)) {
                                                                    i11 = i;
                                                                    z12 = z11;
                                                                } else {
                                                                    i11 = i;
                                                                    z12 = z11;
                                                                }
                                                                z2 = z12;
                                                            } else {
                                                                i11 = i;
                                                            }
                                                        } else {
                                                            if (zzgfVar3.zzawt == null) {
                                                                zzgfVar3.zzawt = new zzgg[0];
                                                            }
                                                            zzggVarArr = zzgfVar3.zzawt;
                                                            length2 = zzggVarArr.length;
                                                            i10 = 0;
                                                            z8 = false;
                                                            z9 = false;
                                                            while (i10 < length2) {
                                                                zzggVar = zzggVarArr[i10];
                                                                zzgg[] zzggVarArr6 = zzggVarArr;
                                                                int i14 = length2;
                                                                if ("_c".equals(zzggVar.name)) {
                                                                    zzggVar.zzawx = 1L;
                                                                    z8 = true;
                                                                } else if ("_r".equals(zzggVar.name)) {
                                                                    zzggVar.zzawx = 1L;
                                                                    z9 = true;
                                                                }
                                                                i10++;
                                                                zzggVarArr = zzggVarArr6;
                                                                length2 = i14;
                                                            }
                                                            if (!z8) {
                                                                zzfaVar2.zzadj.zzgo().zzjl().zzg("Marking event as conversion", zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                                                zzgg[] zzggVarArr7 = (zzgg[]) Arrays.copyOf(zzgfVar3.zzawt, zzgfVar3.zzawt.length + 1);
                                                                zzgg zzggVar4 = new zzgg();
                                                                zzggVar4.name = "_c";
                                                                zzggVar4.zzawx = 1L;
                                                                zzggVarArr7[zzggVarArr7.length - 1] = zzggVar4;
                                                                zzgfVar3.zzawt = zzggVarArr7;
                                                            }
                                                            if (!z9) {
                                                                zzfaVar2.zzadj.zzgo().zzjl().zzg("Marking event as real-time", zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                                                zzgg[] zzggVarArr8 = (zzgg[]) Arrays.copyOf(zzgfVar3.zzawt, zzgfVar3.zzawt.length + 1);
                                                                zzgg zzggVar5 = new zzgg();
                                                                zzggVar5.name = "_r";
                                                                zzggVar5.zzawx = 1L;
                                                                zzggVarArr8[zzggVarArr8.length - 1] = zzggVar5;
                                                                zzgfVar3.zzawt = zzggVarArr8;
                                                            }
                                                            z10 = z2;
                                                            if (zzjq().zza(zzls(), zzaVar2.zzaua.zztt, false, false, false, false, true).zzahu > zzfaVar2.zzadj.zzgq().zzat(zzaVar2.zzaua.zztt)) {
                                                                while (i12 < zzgfVar3.zzawt.length) {
                                                                    if ("_r".equals(zzgfVar3.zzawt[i12].name)) {
                                                                        zzggVarArr2 = new zzgg[zzgfVar3.zzawt.length - 1];
                                                                        if (i12 > 0) {
                                                                            System.arraycopy(zzgfVar3.zzawt, 0, zzggVarArr2, 0, i12);
                                                                        }
                                                                        if (i12 < zzggVarArr2.length) {
                                                                            System.arraycopy(zzgfVar3.zzawt, i12 + 1, zzggVarArr2, i12, zzggVarArr2.length - i12);
                                                                        }
                                                                        zzgfVar3.zzawt = zzggVarArr2;
                                                                        z11 = z10;
                                                                    }
                                                                }
                                                                z11 = z10;
                                                            } else {
                                                                z11 = true;
                                                            }
                                                            if (zzfk.zzcq(zzgfVar3.name)) {
                                                                i11 = i;
                                                                z12 = z11;
                                                            } else {
                                                                i11 = i;
                                                                z12 = z11;
                                                            }
                                                            z2 = z12;
                                                        }
                                                        if (!zzfaVar2.zzadj.zzgq().zzbf(zzaVar2.zzaua.zztt)) {
                                                        }
                                                        if (zZzax) {
                                                            if (zzgfVar3.zzawt != null) {
                                                                zzfaVar2.zzadj.zzgo().zzjg().zzg("Engagement event does not contain any parameters. appId", zzap.zzbv(zzaVar2.zzaua.zztt));
                                                            } else {
                                                                zzfaVar2.zzadj.zzgo().zzjg().zzg("Engagement event does not contain any parameters. appId", zzap.zzbv(zzaVar2.zzaua.zztt));
                                                            }
                                                        }
                                                        zzgiVar.zzaxb[i2] = zzgfVar3;
                                                        i2++;
                                                    }
                                                    i = i11 + 1;
                                                }
                                                z3 = z2;
                                                if (i2 < zzaVar2.zzauc.size()) {
                                                    zzgiVar.zzaxb = (zzgf[]) Arrays.copyOf(zzgiVar.zzaxb, i2);
                                                }
                                                if (zZzax) {
                                                    zzfjVarZzi = zzjq().zzi(zzgiVar.zztt, "_lte");
                                                    if (zzfjVarZzi != null) {
                                                        zzfjVar = new zzfj(zzgiVar.zztt, "auto", "_lte", zzfaVar2.zzadj.zzbx().currentTimeMillis(), Long.valueOf(jLongValue));
                                                    } else {
                                                        zzfjVar = new zzfj(zzgiVar.zztt, "auto", "_lte", zzfaVar2.zzadj.zzbx().currentTimeMillis(), Long.valueOf(jLongValue));
                                                    }
                                                    zzglVar = new zzgl();
                                                    zzglVar.name = "_lte";
                                                    zzglVar.zzayl = Long.valueOf(zzfaVar2.zzadj.zzbx().currentTimeMillis());
                                                    zzglVar.zzawx = (Long) zzfjVar.value;
                                                    i9 = 0;
                                                    while (true) {
                                                        if (i9 < zzgiVar.zzaxc.length) {
                                                            z7 = false;
                                                        } else if ("_lte".equals(zzgiVar.zzaxc[i9].name)) {
                                                            zzgiVar.zzaxc[i9] = zzglVar;
                                                            z7 = true;
                                                        } else {
                                                            i9++;
                                                        }
                                                    }
                                                    if (z7) {
                                                        j5 = 0;
                                                    } else {
                                                        zzgiVar.zzaxc = (zzgl[]) Arrays.copyOf(zzgiVar.zzaxc, zzgiVar.zzaxc.length + 1);
                                                        zzgiVar.zzaxc[zzaVar2.zzaua.zzaxc.length - 1] = zzglVar;
                                                        j5 = 0;
                                                    }
                                                    if (jLongValue > j5) {
                                                        zzjq().zza(zzfjVar);
                                                        zzfaVar2.zzadj.zzgo().zzjk().zzg("Updated lifetime engagement user property with value. Value", zzfjVar.value);
                                                    }
                                                }
                                                zzgiVar.zzaxt = zzfaVar2.zza(zzgiVar.zztt, zzgiVar.zzaxc, zzgiVar.zzaxb);
                                                if (zzfaVar2.zzadj.zzgq().zzaw(zzaVar2.zzaua.zztt)) {
                                                    try {
                                                        map = new HashMap();
                                                        zzgfVarArr = new zzgf[zzgiVar.zzaxb.length];
                                                        secureRandomZzmd = zzfaVar2.zzadj.zzgm().zzmd();
                                                        zzgfVarArr2 = zzgiVar.zzaxb;
                                                        length = zzgfVarArr2.length;
                                                        i3 = 0;
                                                        i4 = 0;
                                                        while (i3 < length) {
                                                            zzgfVar = zzgfVarArr2[i3];
                                                            if (zzgfVar.name.equals("_ep")) {
                                                                zzjo();
                                                                str2 = (String) zzfg.zzb(zzgfVar, "_en");
                                                                zzzVarZzg = (zzz) map.get(str2);
                                                                if (zzzVarZzg == null) {
                                                                    zzzVarZzg = zzjq().zzg(zzaVar2.zzaua.zztt, str2);
                                                                    map.put(str2, zzzVarZzg);
                                                                }
                                                                if (zzzVarZzg.zzaij == null) {
                                                                    if (zzzVarZzg.zzaik.longValue() > 1) {
                                                                        zzjo();
                                                                        zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_sr", zzzVarZzg.zzaik);
                                                                    }
                                                                    if (zzzVarZzg.zzail != null) {
                                                                        zzjo();
                                                                        zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_efs", (Object) 1L);
                                                                    }
                                                                    int i15 = i4 + 1;
                                                                    zzgfVarArr[i4] = zzgfVar;
                                                                    zzgiVar3 = zzgiVar;
                                                                    secureRandom = secureRandomZzmd;
                                                                    zzgfVarArr3 = zzgfVarArr2;
                                                                    i5 = length;
                                                                    i6 = i3;
                                                                    i4 = i15;
                                                                    zzaVar2 = zzaVar2;
                                                                } else {
                                                                    zzgiVar3 = zzgiVar;
                                                                    secureRandom = secureRandomZzmd;
                                                                    zzgfVarArr3 = zzgfVarArr2;
                                                                    i5 = length;
                                                                    i6 = i3;
                                                                    zzaVar2 = zzaVar2;
                                                                }
                                                            } else {
                                                                jZzcj = zzln().zzcj(zzaVar2.zzaua.zztt);
                                                                zzfaVar2.zzadj.zzgm();
                                                                jZzc = zzfk.zzc(zzgfVar.zzawu.longValue(), jZzcj);
                                                                zzgfVarArr3 = zzgfVarArr2;
                                                                i5 = length;
                                                                Long l2 = 1L;
                                                                if (TextUtils.isEmpty("_dbg")) {
                                                                    zzgiVar3 = zzgiVar;
                                                                    i6 = i3;
                                                                    j2 = jZzcj;
                                                                    z4 = false;
                                                                } else {
                                                                    zzgiVar3 = zzgiVar;
                                                                    i6 = i3;
                                                                    j2 = jZzcj;
                                                                    z4 = false;
                                                                }
                                                                if (z4) {
                                                                    iZzq = 1;
                                                                } else {
                                                                    iZzq = zzln().zzq(zzaVar2.zzaua.zztt, zzgfVar.name);
                                                                }
                                                                if (iZzq <= 0) {
                                                                    zzfaVar2.zzadj.zzgo().zzjg().zze("Sample rate must be positive. event, rate", zzgfVar.name, Integer.valueOf(iZzq));
                                                                    int i16 = i4 + 1;
                                                                    zzgfVarArr[i4] = zzgfVar;
                                                                    zzaVar2 = zzaVar2;
                                                                    i4 = i16;
                                                                    secureRandom = secureRandomZzmd;
                                                                } else {
                                                                    zzzVarZza = (zzz) map.get(zzgfVar.name);
                                                                    if (zzzVarZza == null) {
                                                                        zzfaVar2.zzadj.zzgo().zzjg().zze("Event being bundled has no eventAggregate. appId, eventName", zzaVar2.zzaua.zztt, zzgfVar.name);
                                                                        zzzVarZza = new zzz(zzaVar2.zzaua.zztt, zzgfVar.name, 1L, 1L, zzgfVar.zzawu.longValue(), 0L, null, null, null, null);
                                                                    }
                                                                    zzjo();
                                                                    l = (Long) zzfg.zzb(zzgfVar, "_eid");
                                                                    if (l != null) {
                                                                        z5 = true;
                                                                    } else {
                                                                        z5 = false;
                                                                    }
                                                                    boolValueOf = Boolean.valueOf(z5);
                                                                    if (iZzq == 1) {
                                                                        int i17 = i4 + 1;
                                                                        zzgfVarArr[i4] = zzgfVar;
                                                                        if (boolValueOf.booleanValue()) {
                                                                            map.put(zzgfVar.name, zzzVarZza.zza(null, null, null));
                                                                        }
                                                                        zzaVar2 = zzaVar2;
                                                                        secureRandom = secureRandomZzmd;
                                                                        i4 = i17;
                                                                    } else if (secureRandomZzmd.nextInt(iZzq) == 0) {
                                                                        zzjo();
                                                                        j4 = iZzq;
                                                                        secureRandom = secureRandomZzmd;
                                                                        zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_sr", Long.valueOf(j4));
                                                                        int i18 = i4 + 1;
                                                                        zzgfVarArr[i4] = zzgfVar;
                                                                        if (boolValueOf.booleanValue()) {
                                                                            zzzVarZza = zzzVarZza.zza(null, Long.valueOf(j4), null);
                                                                        }
                                                                        map.put(zzgfVar.name, zzzVarZza.zza(zzgfVar.zzawu.longValue(), jZzc));
                                                                        zzaVar2 = zzaVar2;
                                                                        i4 = i18;
                                                                    } else {
                                                                        secureRandom = secureRandomZzmd;
                                                                        if (zzfaVar2.zzadj.zzgq().zzbh(zzaVar2.zzaua.zztt)) {
                                                                            if (zzzVarZza.zzaii != null) {
                                                                                jZzc2 = zzzVarZza.zzaii.longValue();
                                                                            } else {
                                                                                zzfaVar2.zzadj.zzgm();
                                                                                jZzc2 = zzfk.zzc(zzgfVar.zzawv.longValue(), j2);
                                                                            }
                                                                            if (jZzc2 != jZzc) {
                                                                                z6 = true;
                                                                            } else {
                                                                                z6 = false;
                                                                            }
                                                                        } else {
                                                                            zzaVar2 = zzaVar2;
                                                                            l = l;
                                                                            if (Math.abs(zzgfVar.zzawu.longValue() - zzzVarZza.zzaih) >= 86400000) {
                                                                                z6 = true;
                                                                            } else {
                                                                                z6 = false;
                                                                            }
                                                                        }
                                                                        if (z6) {
                                                                            zzjo();
                                                                            zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_efs", (Object) 1L);
                                                                            zzjo();
                                                                            j3 = iZzq;
                                                                            zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_sr", Long.valueOf(j3));
                                                                            int i19 = i4 + 1;
                                                                            zzgfVarArr[i4] = zzgfVar;
                                                                            if (boolValueOf.booleanValue()) {
                                                                                zzzVarZza = zzzVarZza.zza(null, Long.valueOf(j3), true);
                                                                            }
                                                                            map.put(zzgfVar.name, zzzVarZza.zza(zzgfVar.zzawu.longValue(), jZzc));
                                                                            i4 = i19;
                                                                        } else if (boolValueOf.booleanValue()) {
                                                                            map.put(zzgfVar.name, zzzVarZza.zza(l, null, null));
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            secureRandomZzmd = secureRandom;
                                                            zzaVar2 = zzaVar2;
                                                            zzgfVarArr2 = zzgfVarArr3;
                                                            length = i5;
                                                            zzgiVar = zzgiVar3;
                                                            i3 = i6 + 1;
                                                            zzfaVar2 = this;
                                                        }
                                                        zzaVar = zzaVar2;
                                                        zzgiVar2 = zzgiVar;
                                                        if (i4 < zzgiVar2.zzaxb.length) {
                                                            zzgiVar2.zzaxb = (zzgf[]) Arrays.copyOf(zzgfVarArr, i4);
                                                        }
                                                        it = map.entrySet().iterator();
                                                        while (it.hasNext()) {
                                                            zzjq().zza((zzz) ((Map.Entry) it.next()).getValue());
                                                        }
                                                    } catch (Throwable th3) {
                                                        th = th3;
                                                        zzjq().endTransaction();
                                                        throw th;
                                                    }
                                                } else {
                                                    zzaVar = zzaVar2;
                                                    zzgiVar2 = zzgiVar;
                                                }
                                                try {
                                                    zzgiVar2.zzaxe = Long.MAX_VALUE;
                                                    zzgiVar2.zzaxf = Long.MIN_VALUE;
                                                    for (i7 = 0; i7 < zzgiVar2.zzaxb.length; i7++) {
                                                        zzgfVar2 = zzgiVar2.zzaxb[i7];
                                                        if (zzgfVar2.zzawu.longValue() < zzgiVar2.zzaxe.longValue()) {
                                                            zzgiVar2.zzaxe = zzgfVar2.zzawu;
                                                        }
                                                        if (zzgfVar2.zzawu.longValue() > zzgiVar2.zzaxf.longValue()) {
                                                            zzgiVar2.zzaxf = zzgfVar2.zzawu;
                                                        }
                                                    }
                                                    str3 = zzaVar.zzaua.zztt;
                                                    zzgVarZzbl = zzjq().zzbl(str3);
                                                    if (zzgVarZzbl == null) {
                                                        zzfaVar = this;
                                                        zzfaVar.zzadj.zzgo().zzjd().zzg("Bundling raw events w/o app info. appId", zzap.zzbv(zzaVar.zzaua.zztt));
                                                    } else {
                                                        zzfaVar = this;
                                                        if (zzgiVar2.zzaxb.length > 0) {
                                                            jZzgz = zzgVarZzbl.zzgz();
                                                            if (jZzgz != 0) {
                                                                lValueOf = Long.valueOf(jZzgz);
                                                            } else {
                                                                lValueOf = null;
                                                            }
                                                            zzgiVar2.zzaxh = lValueOf;
                                                            jZzgy = zzgVarZzbl.zzgy();
                                                            if (jZzgy == 0) {
                                                                jZzgz = jZzgy;
                                                            }
                                                            if (jZzgz != 0) {
                                                                lValueOf2 = Long.valueOf(jZzgz);
                                                            } else {
                                                                lValueOf2 = null;
                                                            }
                                                            zzgiVar2.zzaxg = lValueOf2;
                                                            zzgVarZzbl.zzhh();
                                                            zzgiVar2.zzaxr = Integer.valueOf((int) zzgVarZzbl.zzhe());
                                                            zzgVarZzbl.zzs(zzgiVar2.zzaxe.longValue());
                                                            zzgVarZzbl.zzt(zzgiVar2.zzaxf.longValue());
                                                            zzgiVar2.zzagv = zzgVarZzbl.zzhp();
                                                            zzjq().zza(zzgVarZzbl);
                                                        }
                                                    }
                                                    if (zzgiVar2.zzaxb.length > 0) {
                                                        zzfaVar.zzadj.zzgr();
                                                        zzgbVarZzcf = zzln().zzcf(zzaVar.zzaua.zztt);
                                                        if (zzgbVarZzcf != null) {
                                                            if (TextUtils.isEmpty(zzaVar.zzaua.zzafx)) {
                                                                zzgiVar2.zzaxy = -1L;
                                                            } else {
                                                                zzfaVar.zzadj.zzgo().zzjg().zzg("Did not find measurement config or missing version info. appId", zzap.zzbv(zzaVar.zzaua.zztt));
                                                            }
                                                        } else if (TextUtils.isEmpty(zzaVar.zzaua.zzafx)) {
                                                            zzgiVar2.zzaxy = -1L;
                                                        } else {
                                                            zzfaVar.zzadj.zzgo().zzjg().zzg("Did not find measurement config or missing version info. appId", zzap.zzbv(zzaVar.zzaua.zztt));
                                                        }
                                                        zzjq().zza(zzgiVar2, z3);
                                                    }
                                                    zzqVarZzjq = zzjq();
                                                    list = zzaVar.zzaub;
                                                    Preconditions.checkNotNull(list);
                                                    zzqVarZzjq.zzaf();
                                                    zzqVarZzjq.zzcl();
                                                    sb = new StringBuilder("rowid in (");
                                                    for (i8 = 0; i8 < list.size(); i8++) {
                                                        if (i8 != 0) {
                                                            sb.append(",");
                                                        }
                                                        sb.append(list.get(i8).longValue());
                                                    }
                                                    sb.append(")");
                                                    iDelete = zzqVarZzjq.getWritableDatabase().delete("raw_events", sb.toString(), null);
                                                    if (iDelete != list.size()) {
                                                        zzqVarZzjq.zzgo().zzjd().zze("Deleted fewer rows from raw events table than expected", Integer.valueOf(iDelete), Integer.valueOf(list.size()));
                                                    }
                                                    zzqVarZzjq2 = zzjq();
                                                    try {
                                                        zzqVarZzjq2.getWritableDatabase().execSQL("delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)", new String[]{str3, str3});
                                                    } catch (SQLiteException e2) {
                                                        zzqVarZzjq2.zzgo().zzjd().zze("Failed to remove unused event metadata. appId", zzap.zzbv(str3), e2);
                                                    }
                                                    zzjq().setTransactionSuccessful();
                                                    zzjq().endTransaction();
                                                    return true;
                                                } catch (Throwable th4) {
                                                    th = th4;
                                                    th = th;
                                                    zzjq().endTransaction();
                                                    throw th;
                                                }
                                            }
                                            zzjq().setTransactionSuccessful();
                                            zzjq().endTransaction();
                                            return false;
                                        } catch (Throwable th5) {
                                            th2 = th5;
                                            r23 = r6;
                                            if (r23 == 0) {
                                                throw th2;
                                            }
                                            r23.close();
                                            throw th2;
                                        }
                                    }
                                } else {
                                    strArr3 = new String[]{String.valueOf(j)};
                                }
                                String str8 = j6 != -1 ? "rowid <= ? and " : "";
                                StringBuilder sb2 = new StringBuilder(String.valueOf(str8).length() + 148);
                                sb2.append("select app_id, metadata_fingerprint from raw_events where ");
                                sb2.append(str8);
                                sb2.append("app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;");
                                Cursor cursorRawQuery = writableDatabase.rawQuery(sb2.toString(), strArr3);
                                if (cursorRawQuery.moveToFirst()) {
                                    string = cursorRawQuery.getString(0);
                                    try {
                                        String string2 = cursorRawQuery.getString(1);
                                        cursorRawQuery.close();
                                        cursor = cursorRawQuery;
                                        str7 = string;
                                        str5 = string2;
                                        try {
                                            cursorQuery = writableDatabase.query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{str7, str5}, null, null, "rowid", "2");
                                            try {
                                                try {
                                                    if (!cursorQuery.moveToFirst()) {
                                                        zzqVarZzjq3.zzgo().zzjd().zzg("Raw event metadata record is missing. appId", zzap.zzbv(str7));
                                                        if (cursorQuery != null) {
                                                            cursorQuery.close();
                                                        }
                                                    } else {
                                                        try {
                                                            byte[] blob = cursorQuery.getBlob(0);
                                                            zzyx zzyxVarZzj = zzyx.zzj(blob, 0, blob.length);
                                                            zzgi zzgiVar4 = new zzgi();
                                                            try {
                                                                zzgiVar4.zza(zzyxVarZzj);
                                                                if (cursorQuery.moveToNext()) {
                                                                    zzqVarZzjq3.zzgo().zzjg().zzg("Get multiple raw event metadata records, expected one. appId", zzap.zzbv(str7));
                                                                }
                                                                cursorQuery.close();
                                                                zzaVar2.zzb(zzgiVar4);
                                                                if (j6 != -1) {
                                                                    str6 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                                                                    strArr2 = new String[]{str7, str5, String.valueOf(j6)};
                                                                } else {
                                                                    str6 = "app_id = ? and metadata_fingerprint = ?";
                                                                    strArr2 = new String[]{str7, str5};
                                                                }
                                                                cursorQuery2 = writableDatabase.query("raw_events", new String[]{"rowid", "name", "timestamp", "data"}, str6, strArr2, null, null, "rowid", null);
                                                                try {
                                                                    if (!cursorQuery2.moveToFirst()) {
                                                                        while (true) {
                                                                            long j7 = cursorQuery2.getLong(0);
                                                                            byte[] blob2 = cursorQuery2.getBlob(3);
                                                                            zzyx zzyxVarZzj2 = zzyx.zzj(blob2, 0, blob2.length);
                                                                            zzgf zzgfVar4 = new zzgf();
                                                                            try {
                                                                                zzgfVar4.zza(zzyxVarZzj2);
                                                                                zzgfVar4.name = cursorQuery2.getString(1);
                                                                                zzgfVar4.zzawu = Long.valueOf(cursorQuery2.getLong(2));
                                                                                MoveToNext = zzaVar2.zza(j7, zzgfVar4);
                                                                                if (MoveToNext == 0) {
                                                                                    if (cursorQuery2 != null) {
                                                                                        break;
                                                                                    }
                                                                                    cursorQuery2.close();
                                                                                    break;
                                                                                }
                                                                                MoveToNext = cursorQuery2.moveToNext();
                                                                                if (MoveToNext == 0) {
                                                                                    if (cursorQuery2 != null) {
                                                                                        break;
                                                                                    }
                                                                                    cursorQuery2.close();
                                                                                    break;
                                                                                }
                                                                            } catch (IOException e3) {
                                                                                zzqVarZzjq3.zzgo().zzjd().zze("Data loss. Failed to merge raw event. appId", zzap.zzbv(str7), e3);
                                                                            }
                                                                        }
                                                                    } else {
                                                                        MoveToNext = zzqVarZzjq3.zzgo().zzjg();
                                                                        MoveToNext.zzg("Raw event data disappeared while in transaction. appId", zzap.zzbv(str7));
                                                                        if (cursorQuery2 != null) {
                                                                            cursorQuery2.close();
                                                                        }
                                                                    }
                                                                } catch (SQLiteException e4) {
                                                                    e = e4;
                                                                    string = str7;
                                                                    r7 = cursorQuery2;
                                                                    sQLiteException = e;
                                                                    r6 = r7;
                                                                    zzqVarZzjq3.zzgo().zzjd().zze("Data loss. Error selecting raw event. appId", zzap.zzbv(string), sQLiteException);
                                                                    if (r6 != 0) {
                                                                        r6.close();
                                                                    }
                                                                } catch (Throwable th6) {
                                                                    th = th6;
                                                                    r22 = cursorQuery2;
                                                                    th2 = th;
                                                                    r23 = r22;
                                                                    if (r23 == 0) {
                                                                        throw th2;
                                                                    }
                                                                    r23.close();
                                                                    throw th2;
                                                                }
                                                            } catch (IOException e5) {
                                                                MoveToNext = cursorQuery;
                                                                zzqVarZzjq3.zzgo().zzjd().zze("Data loss. Failed to merge raw event metadata. appId", zzap.zzbv(str7), e5);
                                                                if (MoveToNext != 0) {
                                                                    MoveToNext.close();
                                                                }
                                                            }
                                                        } catch (SQLiteException e6) {
                                                            e = e6;
                                                            string = str7;
                                                            r7 = MoveToNext;
                                                            sQLiteException = e;
                                                            r6 = r7;
                                                            zzqVarZzjq3.zzgo().zzjd().zze("Data loss. Error selecting raw event. appId", zzap.zzbv(string), sQLiteException);
                                                            if (r6 != 0) {
                                                                r6.close();
                                                            }
                                                            if (zzaVar2.zzauc != null) {
                                                                z = true;
                                                            } else {
                                                                z = true;
                                                            }
                                                            if (!z) {
                                                                zzgiVar = zzaVar2.zzaua;
                                                                zzgiVar.zzaxb = new zzgf[zzaVar2.zzauc.size()];
                                                                zZzax = zzfaVar2.zzadj.zzgq().zzax(zzgiVar.zztt);
                                                                i = 0;
                                                                i2 = 0;
                                                                z2 = false;
                                                                jLongValue = 0;
                                                                while (i < zzaVar2.zzauc.size()) {
                                                                    zzgfVar3 = zzaVar2.zzauc.get(i);
                                                                    if (zzln().zzo(zzaVar2.zzaua.zztt, zzgfVar3.name)) {
                                                                        zzfaVar2.zzadj.zzgo().zzjg().zze("Dropping blacklisted raw event. appId", zzap.zzbv(zzaVar2.zzaua.zztt), zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                                                        if (zzln().zzck(zzaVar2.zzaua.zztt)) {
                                                                            z15 = true;
                                                                        } else {
                                                                            z15 = true;
                                                                        }
                                                                        if (!z15) {
                                                                            zzfaVar2.zzadj.zzgm().zza(zzaVar2.zzaua.zztt, 11, "_ev", zzgfVar3.name, 0);
                                                                        }
                                                                        i11 = i;
                                                                    } else {
                                                                        zZzp = zzln().zzp(zzaVar2.zzaua.zztt, zzgfVar3.name);
                                                                        if (!zZzp) {
                                                                            zzjo();
                                                                            str4 = zzgfVar3.name;
                                                                            Preconditions.checkNotEmpty(str4);
                                                                            switch (str4) {
                                                                                case null:
                                                                                case 1:
                                                                                case 2:
                                                                                    z14 = true;
                                                                                    break;
                                                                                default:
                                                                                    z14 = false;
                                                                                    break;
                                                                            }
                                                                            if (z14) {
                                                                                if (zzgfVar3.zzawt == null) {
                                                                                    zzgfVar3.zzawt = new zzgg[0];
                                                                                }
                                                                                zzggVarArr = zzgfVar3.zzawt;
                                                                                length2 = zzggVarArr.length;
                                                                                i10 = 0;
                                                                                z8 = false;
                                                                                z9 = false;
                                                                                while (i10 < length2) {
                                                                                    zzggVar = zzggVarArr[i10];
                                                                                    zzgg[] zzggVarArr9 = zzggVarArr;
                                                                                    int i110 = length2;
                                                                                    if ("_c".equals(zzggVar.name)) {
                                                                                        zzggVar.zzawx = 1L;
                                                                                        z8 = true;
                                                                                    } else if ("_r".equals(zzggVar.name)) {
                                                                                        zzggVar.zzawx = 1L;
                                                                                        z9 = true;
                                                                                    }
                                                                                    i10++;
                                                                                    zzggVarArr = zzggVarArr9;
                                                                                    length2 = i110;
                                                                                }
                                                                                if (!z8) {
                                                                                    zzfaVar2.zzadj.zzgo().zzjl().zzg("Marking event as conversion", zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                                                                    zzgg[] zzggVarArr10 = (zzgg[]) Arrays.copyOf(zzgfVar3.zzawt, zzgfVar3.zzawt.length + 1);
                                                                                    zzgg zzggVar6 = new zzgg();
                                                                                    zzggVar6.name = "_c";
                                                                                    zzggVar6.zzawx = 1L;
                                                                                    zzggVarArr10[zzggVarArr10.length - 1] = zzggVar6;
                                                                                    zzgfVar3.zzawt = zzggVarArr10;
                                                                                }
                                                                                if (!z9) {
                                                                                    zzfaVar2.zzadj.zzgo().zzjl().zzg("Marking event as real-time", zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                                                                    zzgg[] zzggVarArr11 = (zzgg[]) Arrays.copyOf(zzgfVar3.zzawt, zzgfVar3.zzawt.length + 1);
                                                                                    zzgg zzggVar7 = new zzgg();
                                                                                    zzggVar7.name = "_r";
                                                                                    zzggVar7.zzawx = 1L;
                                                                                    zzggVarArr11[zzggVarArr11.length - 1] = zzggVar7;
                                                                                    zzgfVar3.zzawt = zzggVarArr11;
                                                                                }
                                                                                z10 = z2;
                                                                                if (zzjq().zza(zzls(), zzaVar2.zzaua.zztt, false, false, false, false, true).zzahu > zzfaVar2.zzadj.zzgq().zzat(zzaVar2.zzaua.zztt)) {
                                                                                    while (i12 < zzgfVar3.zzawt.length) {
                                                                                        if ("_r".equals(zzgfVar3.zzawt[i12].name)) {
                                                                                            zzggVarArr2 = new zzgg[zzgfVar3.zzawt.length - 1];
                                                                                            if (i12 > 0) {
                                                                                                System.arraycopy(zzgfVar3.zzawt, 0, zzggVarArr2, 0, i12);
                                                                                            }
                                                                                            if (i12 < zzggVarArr2.length) {
                                                                                                System.arraycopy(zzgfVar3.zzawt, i12 + 1, zzggVarArr2, i12, zzggVarArr2.length - i12);
                                                                                            }
                                                                                            zzgfVar3.zzawt = zzggVarArr2;
                                                                                            z11 = z10;
                                                                                        }
                                                                                    }
                                                                                    z11 = z10;
                                                                                } else {
                                                                                    z11 = true;
                                                                                }
                                                                                if (zzfk.zzcq(zzgfVar3.name)) {
                                                                                    i11 = i;
                                                                                    z12 = z11;
                                                                                } else {
                                                                                    i11 = i;
                                                                                    z12 = z11;
                                                                                }
                                                                                z2 = z12;
                                                                            } else {
                                                                                i11 = i;
                                                                            }
                                                                        } else {
                                                                            if (zzgfVar3.zzawt == null) {
                                                                                zzgfVar3.zzawt = new zzgg[0];
                                                                            }
                                                                            zzggVarArr = zzgfVar3.zzawt;
                                                                            length2 = zzggVarArr.length;
                                                                            i10 = 0;
                                                                            z8 = false;
                                                                            z9 = false;
                                                                            while (i10 < length2) {
                                                                                zzggVar = zzggVarArr[i10];
                                                                                zzgg[] zzggVarArr12 = zzggVarArr;
                                                                                int i111 = length2;
                                                                                if ("_c".equals(zzggVar.name)) {
                                                                                    zzggVar.zzawx = 1L;
                                                                                    z8 = true;
                                                                                } else if ("_r".equals(zzggVar.name)) {
                                                                                    zzggVar.zzawx = 1L;
                                                                                    z9 = true;
                                                                                }
                                                                                i10++;
                                                                                zzggVarArr = zzggVarArr12;
                                                                                length2 = i111;
                                                                            }
                                                                            if (!z8) {
                                                                                zzfaVar2.zzadj.zzgo().zzjl().zzg("Marking event as conversion", zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                                                                zzgg[] zzggVarArr13 = (zzgg[]) Arrays.copyOf(zzgfVar3.zzawt, zzgfVar3.zzawt.length + 1);
                                                                                zzgg zzggVar8 = new zzgg();
                                                                                zzggVar8.name = "_c";
                                                                                zzggVar8.zzawx = 1L;
                                                                                zzggVarArr13[zzggVarArr13.length - 1] = zzggVar8;
                                                                                zzgfVar3.zzawt = zzggVarArr13;
                                                                            }
                                                                            if (!z9) {
                                                                                zzfaVar2.zzadj.zzgo().zzjl().zzg("Marking event as real-time", zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                                                                zzgg[] zzggVarArr14 = (zzgg[]) Arrays.copyOf(zzgfVar3.zzawt, zzgfVar3.zzawt.length + 1);
                                                                                zzgg zzggVar9 = new zzgg();
                                                                                zzggVar9.name = "_r";
                                                                                zzggVar9.zzawx = 1L;
                                                                                zzggVarArr14[zzggVarArr14.length - 1] = zzggVar9;
                                                                                zzgfVar3.zzawt = zzggVarArr14;
                                                                            }
                                                                            z10 = z2;
                                                                            if (zzjq().zza(zzls(), zzaVar2.zzaua.zztt, false, false, false, false, true).zzahu > zzfaVar2.zzadj.zzgq().zzat(zzaVar2.zzaua.zztt)) {
                                                                                while (i12 < zzgfVar3.zzawt.length) {
                                                                                    if ("_r".equals(zzgfVar3.zzawt[i12].name)) {
                                                                                        zzggVarArr2 = new zzgg[zzgfVar3.zzawt.length - 1];
                                                                                        if (i12 > 0) {
                                                                                            System.arraycopy(zzgfVar3.zzawt, 0, zzggVarArr2, 0, i12);
                                                                                        }
                                                                                        if (i12 < zzggVarArr2.length) {
                                                                                            System.arraycopy(zzgfVar3.zzawt, i12 + 1, zzggVarArr2, i12, zzggVarArr2.length - i12);
                                                                                        }
                                                                                        zzgfVar3.zzawt = zzggVarArr2;
                                                                                        z11 = z10;
                                                                                    }
                                                                                }
                                                                                z11 = z10;
                                                                            } else {
                                                                                z11 = true;
                                                                            }
                                                                            if (zzfk.zzcq(zzgfVar3.name)) {
                                                                                i11 = i;
                                                                                z12 = z11;
                                                                            } else {
                                                                                i11 = i;
                                                                                z12 = z11;
                                                                            }
                                                                            z2 = z12;
                                                                        }
                                                                        if (!zzfaVar2.zzadj.zzgq().zzbf(zzaVar2.zzaua.zztt)) {
                                                                        }
                                                                        if (zZzax) {
                                                                            if (zzgfVar3.zzawt != null) {
                                                                                zzfaVar2.zzadj.zzgo().zzjg().zzg("Engagement event does not contain any parameters. appId", zzap.zzbv(zzaVar2.zzaua.zztt));
                                                                            } else {
                                                                                zzfaVar2.zzadj.zzgo().zzjg().zzg("Engagement event does not contain any parameters. appId", zzap.zzbv(zzaVar2.zzaua.zztt));
                                                                            }
                                                                        }
                                                                        zzgiVar.zzaxb[i2] = zzgfVar3;
                                                                        i2++;
                                                                    }
                                                                    i = i11 + 1;
                                                                }
                                                                z3 = z2;
                                                                if (i2 < zzaVar2.zzauc.size()) {
                                                                    zzgiVar.zzaxb = (zzgf[]) Arrays.copyOf(zzgiVar.zzaxb, i2);
                                                                }
                                                                if (zZzax) {
                                                                    zzfjVarZzi = zzjq().zzi(zzgiVar.zztt, "_lte");
                                                                    if (zzfjVarZzi != null) {
                                                                        zzfjVar = new zzfj(zzgiVar.zztt, "auto", "_lte", zzfaVar2.zzadj.zzbx().currentTimeMillis(), Long.valueOf(jLongValue));
                                                                    } else {
                                                                        zzfjVar = new zzfj(zzgiVar.zztt, "auto", "_lte", zzfaVar2.zzadj.zzbx().currentTimeMillis(), Long.valueOf(jLongValue));
                                                                    }
                                                                    zzglVar = new zzgl();
                                                                    zzglVar.name = "_lte";
                                                                    zzglVar.zzayl = Long.valueOf(zzfaVar2.zzadj.zzbx().currentTimeMillis());
                                                                    zzglVar.zzawx = (Long) zzfjVar.value;
                                                                    i9 = 0;
                                                                    while (true) {
                                                                        if (i9 < zzgiVar.zzaxc.length) {
                                                                            z7 = false;
                                                                        } else if ("_lte".equals(zzgiVar.zzaxc[i9].name)) {
                                                                            zzgiVar.zzaxc[i9] = zzglVar;
                                                                            z7 = true;
                                                                        } else {
                                                                            i9++;
                                                                        }
                                                                    }
                                                                    if (z7) {
                                                                        zzgiVar.zzaxc = (zzgl[]) Arrays.copyOf(zzgiVar.zzaxc, zzgiVar.zzaxc.length + 1);
                                                                        zzgiVar.zzaxc[zzaVar2.zzaua.zzaxc.length - 1] = zzglVar;
                                                                        j5 = 0;
                                                                    } else {
                                                                        j5 = 0;
                                                                    }
                                                                    if (jLongValue > j5) {
                                                                        zzjq().zza(zzfjVar);
                                                                        zzfaVar2.zzadj.zzgo().zzjk().zzg("Updated lifetime engagement user property with value. Value", zzfjVar.value);
                                                                    }
                                                                }
                                                                zzgiVar.zzaxt = zzfaVar2.zza(zzgiVar.zztt, zzgiVar.zzaxc, zzgiVar.zzaxb);
                                                                if (zzfaVar2.zzadj.zzgq().zzaw(zzaVar2.zzaua.zztt)) {
                                                                    map = new HashMap();
                                                                    zzgfVarArr = new zzgf[zzgiVar.zzaxb.length];
                                                                    secureRandomZzmd = zzfaVar2.zzadj.zzgm().zzmd();
                                                                    zzgfVarArr2 = zzgiVar.zzaxb;
                                                                    length = zzgfVarArr2.length;
                                                                    i3 = 0;
                                                                    i4 = 0;
                                                                    while (i3 < length) {
                                                                        zzgfVar = zzgfVarArr2[i3];
                                                                        if (zzgfVar.name.equals("_ep")) {
                                                                            zzjo();
                                                                            str2 = (String) zzfg.zzb(zzgfVar, "_en");
                                                                            zzzVarZzg = (zzz) map.get(str2);
                                                                            if (zzzVarZzg == null) {
                                                                                zzzVarZzg = zzjq().zzg(zzaVar2.zzaua.zztt, str2);
                                                                                map.put(str2, zzzVarZzg);
                                                                            }
                                                                            if (zzzVarZzg.zzaij == null) {
                                                                                if (zzzVarZzg.zzaik.longValue() > 1) {
                                                                                    zzjo();
                                                                                    zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_sr", zzzVarZzg.zzaik);
                                                                                }
                                                                                if (zzzVarZzg.zzail != null) {
                                                                                    zzjo();
                                                                                    zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_efs", (Object) 1L);
                                                                                }
                                                                                int i112 = i4 + 1;
                                                                                zzgfVarArr[i4] = zzgfVar;
                                                                                zzgiVar3 = zzgiVar;
                                                                                secureRandom = secureRandomZzmd;
                                                                                zzgfVarArr3 = zzgfVarArr2;
                                                                                i5 = length;
                                                                                i6 = i3;
                                                                                i4 = i112;
                                                                                zzaVar2 = zzaVar2;
                                                                            } else {
                                                                                zzgiVar3 = zzgiVar;
                                                                                secureRandom = secureRandomZzmd;
                                                                                zzgfVarArr3 = zzgfVarArr2;
                                                                                i5 = length;
                                                                                i6 = i3;
                                                                                zzaVar2 = zzaVar2;
                                                                            }
                                                                        } else {
                                                                            jZzcj = zzln().zzcj(zzaVar2.zzaua.zztt);
                                                                            zzfaVar2.zzadj.zzgm();
                                                                            jZzc = zzfk.zzc(zzgfVar.zzawu.longValue(), jZzcj);
                                                                            zzgfVarArr3 = zzgfVarArr2;
                                                                            i5 = length;
                                                                            Long l3 = 1L;
                                                                            if (TextUtils.isEmpty("_dbg")) {
                                                                                zzgiVar3 = zzgiVar;
                                                                                i6 = i3;
                                                                                j2 = jZzcj;
                                                                                z4 = false;
                                                                            } else {
                                                                                zzgiVar3 = zzgiVar;
                                                                                i6 = i3;
                                                                                j2 = jZzcj;
                                                                                z4 = false;
                                                                            }
                                                                            if (z4) {
                                                                                iZzq = zzln().zzq(zzaVar2.zzaua.zztt, zzgfVar.name);
                                                                            } else {
                                                                                iZzq = 1;
                                                                            }
                                                                            if (iZzq <= 0) {
                                                                                zzfaVar2.zzadj.zzgo().zzjg().zze("Sample rate must be positive. event, rate", zzgfVar.name, Integer.valueOf(iZzq));
                                                                                int i113 = i4 + 1;
                                                                                zzgfVarArr[i4] = zzgfVar;
                                                                                zzaVar2 = zzaVar2;
                                                                                i4 = i113;
                                                                                secureRandom = secureRandomZzmd;
                                                                            } else {
                                                                                zzzVarZza = (zzz) map.get(zzgfVar.name);
                                                                                if (zzzVarZza == null) {
                                                                                    zzfaVar2.zzadj.zzgo().zzjg().zze("Event being bundled has no eventAggregate. appId, eventName", zzaVar2.zzaua.zztt, zzgfVar.name);
                                                                                    zzzVarZza = new zzz(zzaVar2.zzaua.zztt, zzgfVar.name, 1L, 1L, zzgfVar.zzawu.longValue(), 0L, null, null, null, null);
                                                                                }
                                                                                zzjo();
                                                                                l = (Long) zzfg.zzb(zzgfVar, "_eid");
                                                                                if (l != null) {
                                                                                    z5 = true;
                                                                                } else {
                                                                                    z5 = false;
                                                                                }
                                                                                boolValueOf = Boolean.valueOf(z5);
                                                                                if (iZzq == 1) {
                                                                                    int i114 = i4 + 1;
                                                                                    zzgfVarArr[i4] = zzgfVar;
                                                                                    if (boolValueOf.booleanValue()) {
                                                                                        map.put(zzgfVar.name, zzzVarZza.zza(null, null, null));
                                                                                    }
                                                                                    zzaVar2 = zzaVar2;
                                                                                    secureRandom = secureRandomZzmd;
                                                                                    i4 = i114;
                                                                                } else if (secureRandomZzmd.nextInt(iZzq) == 0) {
                                                                                    zzjo();
                                                                                    j4 = iZzq;
                                                                                    secureRandom = secureRandomZzmd;
                                                                                    zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_sr", Long.valueOf(j4));
                                                                                    int i115 = i4 + 1;
                                                                                    zzgfVarArr[i4] = zzgfVar;
                                                                                    if (boolValueOf.booleanValue()) {
                                                                                        zzzVarZza = zzzVarZza.zza(null, Long.valueOf(j4), null);
                                                                                    }
                                                                                    map.put(zzgfVar.name, zzzVarZza.zza(zzgfVar.zzawu.longValue(), jZzc));
                                                                                    zzaVar2 = zzaVar2;
                                                                                    i4 = i115;
                                                                                } else {
                                                                                    secureRandom = secureRandomZzmd;
                                                                                    if (zzfaVar2.zzadj.zzgq().zzbh(zzaVar2.zzaua.zztt)) {
                                                                                        if (zzzVarZza.zzaii != null) {
                                                                                            jZzc2 = zzzVarZza.zzaii.longValue();
                                                                                        } else {
                                                                                            zzfaVar2.zzadj.zzgm();
                                                                                            jZzc2 = zzfk.zzc(zzgfVar.zzawv.longValue(), j2);
                                                                                        }
                                                                                        if (jZzc2 != jZzc) {
                                                                                            z6 = true;
                                                                                        } else {
                                                                                            z6 = false;
                                                                                        }
                                                                                    } else {
                                                                                        zzaVar2 = zzaVar2;
                                                                                        l = l;
                                                                                        if (Math.abs(zzgfVar.zzawu.longValue() - zzzVarZza.zzaih) >= 86400000) {
                                                                                            z6 = true;
                                                                                        } else {
                                                                                            z6 = false;
                                                                                        }
                                                                                    }
                                                                                    if (z6) {
                                                                                        zzjo();
                                                                                        zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_efs", (Object) 1L);
                                                                                        zzjo();
                                                                                        j3 = iZzq;
                                                                                        zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_sr", Long.valueOf(j3));
                                                                                        int i116 = i4 + 1;
                                                                                        zzgfVarArr[i4] = zzgfVar;
                                                                                        if (boolValueOf.booleanValue()) {
                                                                                            zzzVarZza = zzzVarZza.zza(null, Long.valueOf(j3), true);
                                                                                        }
                                                                                        map.put(zzgfVar.name, zzzVarZza.zza(zzgfVar.zzawu.longValue(), jZzc));
                                                                                        i4 = i116;
                                                                                    } else if (boolValueOf.booleanValue()) {
                                                                                        map.put(zzgfVar.name, zzzVarZza.zza(l, null, null));
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                        secureRandomZzmd = secureRandom;
                                                                        zzaVar2 = zzaVar2;
                                                                        zzgfVarArr2 = zzgfVarArr3;
                                                                        length = i5;
                                                                        zzgiVar = zzgiVar3;
                                                                        i3 = i6 + 1;
                                                                        zzfaVar2 = this;
                                                                    }
                                                                    zzaVar = zzaVar2;
                                                                    zzgiVar2 = zzgiVar;
                                                                    if (i4 < zzgiVar2.zzaxb.length) {
                                                                        zzgiVar2.zzaxb = (zzgf[]) Arrays.copyOf(zzgfVarArr, i4);
                                                                    }
                                                                    it = map.entrySet().iterator();
                                                                    while (it.hasNext()) {
                                                                        zzjq().zza((zzz) ((Map.Entry) it.next()).getValue());
                                                                    }
                                                                } else {
                                                                    zzaVar = zzaVar2;
                                                                    zzgiVar2 = zzgiVar;
                                                                }
                                                                zzgiVar2.zzaxe = Long.MAX_VALUE;
                                                                zzgiVar2.zzaxf = Long.MIN_VALUE;
                                                                while (i7 < zzgiVar2.zzaxb.length) {
                                                                    zzgfVar2 = zzgiVar2.zzaxb[i7];
                                                                    if (zzgfVar2.zzawu.longValue() < zzgiVar2.zzaxe.longValue()) {
                                                                        zzgiVar2.zzaxe = zzgfVar2.zzawu;
                                                                    }
                                                                    if (zzgfVar2.zzawu.longValue() > zzgiVar2.zzaxf.longValue()) {
                                                                        zzgiVar2.zzaxf = zzgfVar2.zzawu;
                                                                    }
                                                                }
                                                                str3 = zzaVar.zzaua.zztt;
                                                                zzgVarZzbl = zzjq().zzbl(str3);
                                                                if (zzgVarZzbl == null) {
                                                                    zzfaVar = this;
                                                                    zzfaVar.zzadj.zzgo().zzjd().zzg("Bundling raw events w/o app info. appId", zzap.zzbv(zzaVar.zzaua.zztt));
                                                                } else {
                                                                    zzfaVar = this;
                                                                    if (zzgiVar2.zzaxb.length > 0) {
                                                                        jZzgz = zzgVarZzbl.zzgz();
                                                                        if (jZzgz != 0) {
                                                                            lValueOf = Long.valueOf(jZzgz);
                                                                        } else {
                                                                            lValueOf = null;
                                                                        }
                                                                        zzgiVar2.zzaxh = lValueOf;
                                                                        jZzgy = zzgVarZzbl.zzgy();
                                                                        if (jZzgy == 0) {
                                                                            jZzgz = jZzgy;
                                                                        }
                                                                        if (jZzgz != 0) {
                                                                            lValueOf2 = Long.valueOf(jZzgz);
                                                                        } else {
                                                                            lValueOf2 = null;
                                                                        }
                                                                        zzgiVar2.zzaxg = lValueOf2;
                                                                        zzgVarZzbl.zzhh();
                                                                        zzgiVar2.zzaxr = Integer.valueOf((int) zzgVarZzbl.zzhe());
                                                                        zzgVarZzbl.zzs(zzgiVar2.zzaxe.longValue());
                                                                        zzgVarZzbl.zzt(zzgiVar2.zzaxf.longValue());
                                                                        zzgiVar2.zzagv = zzgVarZzbl.zzhp();
                                                                        zzjq().zza(zzgVarZzbl);
                                                                    }
                                                                }
                                                                if (zzgiVar2.zzaxb.length > 0) {
                                                                    zzfaVar.zzadj.zzgr();
                                                                    zzgbVarZzcf = zzln().zzcf(zzaVar.zzaua.zztt);
                                                                    if (zzgbVarZzcf != null) {
                                                                        if (TextUtils.isEmpty(zzaVar.zzaua.zzafx)) {
                                                                            zzgiVar2.zzaxy = -1L;
                                                                        } else {
                                                                            zzfaVar.zzadj.zzgo().zzjg().zzg("Did not find measurement config or missing version info. appId", zzap.zzbv(zzaVar.zzaua.zztt));
                                                                        }
                                                                    } else if (TextUtils.isEmpty(zzaVar.zzaua.zzafx)) {
                                                                        zzgiVar2.zzaxy = -1L;
                                                                    } else {
                                                                        zzfaVar.zzadj.zzgo().zzjg().zzg("Did not find measurement config or missing version info. appId", zzap.zzbv(zzaVar.zzaua.zztt));
                                                                    }
                                                                    zzjq().zza(zzgiVar2, z3);
                                                                }
                                                                zzqVarZzjq = zzjq();
                                                                list = zzaVar.zzaub;
                                                                Preconditions.checkNotNull(list);
                                                                zzqVarZzjq.zzaf();
                                                                zzqVarZzjq.zzcl();
                                                                sb = new StringBuilder("rowid in (");
                                                                while (i8 < list.size()) {
                                                                    if (i8 != 0) {
                                                                        sb.append(",");
                                                                    }
                                                                    sb.append(list.get(i8).longValue());
                                                                }
                                                                sb.append(")");
                                                                iDelete = zzqVarZzjq.getWritableDatabase().delete("raw_events", sb.toString(), null);
                                                                if (iDelete != list.size()) {
                                                                    zzqVarZzjq.zzgo().zzjd().zze("Deleted fewer rows from raw events table than expected", Integer.valueOf(iDelete), Integer.valueOf(list.size()));
                                                                }
                                                                zzqVarZzjq2 = zzjq();
                                                                zzqVarZzjq2.getWritableDatabase().execSQL("delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)", new String[]{str3, str3});
                                                                zzjq().setTransactionSuccessful();
                                                                zzjq().endTransaction();
                                                                return true;
                                                            }
                                                            zzjq().setTransactionSuccessful();
                                                            zzjq().endTransaction();
                                                            return false;
                                                        } catch (Throwable th7) {
                                                            th = th7;
                                                            r22 = MoveToNext;
                                                            th2 = th;
                                                            r23 = r22;
                                                            if (r23 == 0) {
                                                                throw th2;
                                                            }
                                                            r23.close();
                                                            throw th2;
                                                        }
                                                    }
                                                } catch (SQLiteException e7) {
                                                    e = e7;
                                                    string = str7;
                                                    r7 = cursorQuery;
                                                } catch (Throwable th8) {
                                                    th = th8;
                                                    r22 = cursorQuery;
                                                }
                                            } catch (SQLiteException e8) {
                                                e = e8;
                                                MoveToNext = cursorQuery;
                                            } catch (Throwable th9) {
                                                th = th9;
                                                MoveToNext = cursorQuery;
                                            }
                                        } catch (SQLiteException e9) {
                                            e = e9;
                                            string = str7;
                                            r7 = cursor;
                                        } catch (Throwable th10) {
                                            th = th10;
                                            r22 = cursor;
                                        }
                                    } catch (SQLiteException e10) {
                                        e = e10;
                                        r7 = cursorRawQuery;
                                        sQLiteException = e;
                                        r6 = r7;
                                        zzqVarZzjq3.zzgo().zzjd().zze("Data loss. Error selecting raw event. appId", zzap.zzbv(string), sQLiteException);
                                        if (r6 != 0) {
                                            r6.close();
                                        }
                                        if (zzaVar2.zzauc != null) {
                                            z = true;
                                        } else {
                                            z = true;
                                        }
                                        if (!z) {
                                            zzgiVar = zzaVar2.zzaua;
                                            zzgiVar.zzaxb = new zzgf[zzaVar2.zzauc.size()];
                                            zZzax = zzfaVar2.zzadj.zzgq().zzax(zzgiVar.zztt);
                                            i = 0;
                                            i2 = 0;
                                            z2 = false;
                                            jLongValue = 0;
                                            while (i < zzaVar2.zzauc.size()) {
                                                zzgfVar3 = zzaVar2.zzauc.get(i);
                                                if (zzln().zzo(zzaVar2.zzaua.zztt, zzgfVar3.name)) {
                                                    zzfaVar2.zzadj.zzgo().zzjg().zze("Dropping blacklisted raw event. appId", zzap.zzbv(zzaVar2.zzaua.zztt), zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                                    if (zzln().zzck(zzaVar2.zzaua.zztt)) {
                                                        z15 = true;
                                                    } else {
                                                        z15 = true;
                                                    }
                                                    if (!z15) {
                                                        zzfaVar2.zzadj.zzgm().zza(zzaVar2.zzaua.zztt, 11, "_ev", zzgfVar3.name, 0);
                                                    }
                                                    i11 = i;
                                                } else {
                                                    zZzp = zzln().zzp(zzaVar2.zzaua.zztt, zzgfVar3.name);
                                                    if (!zZzp) {
                                                        zzjo();
                                                        str4 = zzgfVar3.name;
                                                        Preconditions.checkNotEmpty(str4);
                                                        switch (str4) {
                                                            case null:
                                                            case 1:
                                                            case 2:
                                                                z14 = true;
                                                                break;
                                                            default:
                                                                z14 = false;
                                                                break;
                                                        }
                                                        if (z14) {
                                                            if (zzgfVar3.zzawt == null) {
                                                                zzgfVar3.zzawt = new zzgg[0];
                                                            }
                                                            zzggVarArr = zzgfVar3.zzawt;
                                                            length2 = zzggVarArr.length;
                                                            i10 = 0;
                                                            z8 = false;
                                                            z9 = false;
                                                            while (i10 < length2) {
                                                                zzggVar = zzggVarArr[i10];
                                                                zzgg[] zzggVarArr15 = zzggVarArr;
                                                                int i117 = length2;
                                                                if ("_c".equals(zzggVar.name)) {
                                                                    zzggVar.zzawx = 1L;
                                                                    z8 = true;
                                                                } else if ("_r".equals(zzggVar.name)) {
                                                                    zzggVar.zzawx = 1L;
                                                                    z9 = true;
                                                                }
                                                                i10++;
                                                                zzggVarArr = zzggVarArr15;
                                                                length2 = i117;
                                                            }
                                                            if (!z8) {
                                                                zzfaVar2.zzadj.zzgo().zzjl().zzg("Marking event as conversion", zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                                                zzgg[] zzggVarArr16 = (zzgg[]) Arrays.copyOf(zzgfVar3.zzawt, zzgfVar3.zzawt.length + 1);
                                                                zzgg zzggVar10 = new zzgg();
                                                                zzggVar10.name = "_c";
                                                                zzggVar10.zzawx = 1L;
                                                                zzggVarArr16[zzggVarArr16.length - 1] = zzggVar10;
                                                                zzgfVar3.zzawt = zzggVarArr16;
                                                            }
                                                            if (!z9) {
                                                                zzfaVar2.zzadj.zzgo().zzjl().zzg("Marking event as real-time", zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                                                zzgg[] zzggVarArr17 = (zzgg[]) Arrays.copyOf(zzgfVar3.zzawt, zzgfVar3.zzawt.length + 1);
                                                                zzgg zzggVar11 = new zzgg();
                                                                zzggVar11.name = "_r";
                                                                zzggVar11.zzawx = 1L;
                                                                zzggVarArr17[zzggVarArr17.length - 1] = zzggVar11;
                                                                zzgfVar3.zzawt = zzggVarArr17;
                                                            }
                                                            z10 = z2;
                                                            if (zzjq().zza(zzls(), zzaVar2.zzaua.zztt, false, false, false, false, true).zzahu > zzfaVar2.zzadj.zzgq().zzat(zzaVar2.zzaua.zztt)) {
                                                                while (i12 < zzgfVar3.zzawt.length) {
                                                                    if ("_r".equals(zzgfVar3.zzawt[i12].name)) {
                                                                        zzggVarArr2 = new zzgg[zzgfVar3.zzawt.length - 1];
                                                                        if (i12 > 0) {
                                                                            System.arraycopy(zzgfVar3.zzawt, 0, zzggVarArr2, 0, i12);
                                                                        }
                                                                        if (i12 < zzggVarArr2.length) {
                                                                            System.arraycopy(zzgfVar3.zzawt, i12 + 1, zzggVarArr2, i12, zzggVarArr2.length - i12);
                                                                        }
                                                                        zzgfVar3.zzawt = zzggVarArr2;
                                                                        z11 = z10;
                                                                    }
                                                                }
                                                                z11 = z10;
                                                            } else {
                                                                z11 = true;
                                                            }
                                                            if (zzfk.zzcq(zzgfVar3.name)) {
                                                                i11 = i;
                                                                z12 = z11;
                                                            } else {
                                                                i11 = i;
                                                                z12 = z11;
                                                            }
                                                            z2 = z12;
                                                        } else {
                                                            i11 = i;
                                                        }
                                                    } else {
                                                        if (zzgfVar3.zzawt == null) {
                                                            zzgfVar3.zzawt = new zzgg[0];
                                                        }
                                                        zzggVarArr = zzgfVar3.zzawt;
                                                        length2 = zzggVarArr.length;
                                                        i10 = 0;
                                                        z8 = false;
                                                        z9 = false;
                                                        while (i10 < length2) {
                                                            zzggVar = zzggVarArr[i10];
                                                            zzgg[] zzggVarArr18 = zzggVarArr;
                                                            int i118 = length2;
                                                            if ("_c".equals(zzggVar.name)) {
                                                                zzggVar.zzawx = 1L;
                                                                z8 = true;
                                                            } else if ("_r".equals(zzggVar.name)) {
                                                                zzggVar.zzawx = 1L;
                                                                z9 = true;
                                                            }
                                                            i10++;
                                                            zzggVarArr = zzggVarArr18;
                                                            length2 = i118;
                                                        }
                                                        if (!z8) {
                                                            zzfaVar2.zzadj.zzgo().zzjl().zzg("Marking event as conversion", zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                                            zzgg[] zzggVarArr19 = (zzgg[]) Arrays.copyOf(zzgfVar3.zzawt, zzgfVar3.zzawt.length + 1);
                                                            zzgg zzggVar12 = new zzgg();
                                                            zzggVar12.name = "_c";
                                                            zzggVar12.zzawx = 1L;
                                                            zzggVarArr19[zzggVarArr19.length - 1] = zzggVar12;
                                                            zzgfVar3.zzawt = zzggVarArr19;
                                                        }
                                                        if (!z9) {
                                                            zzfaVar2.zzadj.zzgo().zzjl().zzg("Marking event as real-time", zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                                            zzgg[] zzggVarArr110 = (zzgg[]) Arrays.copyOf(zzgfVar3.zzawt, zzgfVar3.zzawt.length + 1);
                                                            zzgg zzggVar13 = new zzgg();
                                                            zzggVar13.name = "_r";
                                                            zzggVar13.zzawx = 1L;
                                                            zzggVarArr110[zzggVarArr110.length - 1] = zzggVar13;
                                                            zzgfVar3.zzawt = zzggVarArr110;
                                                        }
                                                        z10 = z2;
                                                        if (zzjq().zza(zzls(), zzaVar2.zzaua.zztt, false, false, false, false, true).zzahu > zzfaVar2.zzadj.zzgq().zzat(zzaVar2.zzaua.zztt)) {
                                                            while (i12 < zzgfVar3.zzawt.length) {
                                                                if ("_r".equals(zzgfVar3.zzawt[i12].name)) {
                                                                    zzggVarArr2 = new zzgg[zzgfVar3.zzawt.length - 1];
                                                                    if (i12 > 0) {
                                                                        System.arraycopy(zzgfVar3.zzawt, 0, zzggVarArr2, 0, i12);
                                                                    }
                                                                    if (i12 < zzggVarArr2.length) {
                                                                        System.arraycopy(zzgfVar3.zzawt, i12 + 1, zzggVarArr2, i12, zzggVarArr2.length - i12);
                                                                    }
                                                                    zzgfVar3.zzawt = zzggVarArr2;
                                                                    z11 = z10;
                                                                }
                                                            }
                                                            z11 = z10;
                                                        } else {
                                                            z11 = true;
                                                        }
                                                        if (zzfk.zzcq(zzgfVar3.name)) {
                                                            i11 = i;
                                                            z12 = z11;
                                                        } else {
                                                            i11 = i;
                                                            z12 = z11;
                                                        }
                                                        z2 = z12;
                                                    }
                                                    if (!zzfaVar2.zzadj.zzgq().zzbf(zzaVar2.zzaua.zztt)) {
                                                    }
                                                    if (zZzax) {
                                                        if (zzgfVar3.zzawt != null) {
                                                            zzfaVar2.zzadj.zzgo().zzjg().zzg("Engagement event does not contain any parameters. appId", zzap.zzbv(zzaVar2.zzaua.zztt));
                                                        } else {
                                                            zzfaVar2.zzadj.zzgo().zzjg().zzg("Engagement event does not contain any parameters. appId", zzap.zzbv(zzaVar2.zzaua.zztt));
                                                        }
                                                    }
                                                    zzgiVar.zzaxb[i2] = zzgfVar3;
                                                    i2++;
                                                }
                                                i = i11 + 1;
                                            }
                                            z3 = z2;
                                            if (i2 < zzaVar2.zzauc.size()) {
                                                zzgiVar.zzaxb = (zzgf[]) Arrays.copyOf(zzgiVar.zzaxb, i2);
                                            }
                                            if (zZzax) {
                                                zzfjVarZzi = zzjq().zzi(zzgiVar.zztt, "_lte");
                                                if (zzfjVarZzi != null) {
                                                    zzfjVar = new zzfj(zzgiVar.zztt, "auto", "_lte", zzfaVar2.zzadj.zzbx().currentTimeMillis(), Long.valueOf(jLongValue));
                                                } else {
                                                    zzfjVar = new zzfj(zzgiVar.zztt, "auto", "_lte", zzfaVar2.zzadj.zzbx().currentTimeMillis(), Long.valueOf(jLongValue));
                                                }
                                                zzglVar = new zzgl();
                                                zzglVar.name = "_lte";
                                                zzglVar.zzayl = Long.valueOf(zzfaVar2.zzadj.zzbx().currentTimeMillis());
                                                zzglVar.zzawx = (Long) zzfjVar.value;
                                                i9 = 0;
                                                while (true) {
                                                    if (i9 < zzgiVar.zzaxc.length) {
                                                        z7 = false;
                                                    } else if ("_lte".equals(zzgiVar.zzaxc[i9].name)) {
                                                        zzgiVar.zzaxc[i9] = zzglVar;
                                                        z7 = true;
                                                    } else {
                                                        i9++;
                                                    }
                                                }
                                                if (z7) {
                                                    zzgiVar.zzaxc = (zzgl[]) Arrays.copyOf(zzgiVar.zzaxc, zzgiVar.zzaxc.length + 1);
                                                    zzgiVar.zzaxc[zzaVar2.zzaua.zzaxc.length - 1] = zzglVar;
                                                    j5 = 0;
                                                } else {
                                                    j5 = 0;
                                                }
                                                if (jLongValue > j5) {
                                                    zzjq().zza(zzfjVar);
                                                    zzfaVar2.zzadj.zzgo().zzjk().zzg("Updated lifetime engagement user property with value. Value", zzfjVar.value);
                                                }
                                            }
                                            zzgiVar.zzaxt = zzfaVar2.zza(zzgiVar.zztt, zzgiVar.zzaxc, zzgiVar.zzaxb);
                                            if (zzfaVar2.zzadj.zzgq().zzaw(zzaVar2.zzaua.zztt)) {
                                                map = new HashMap();
                                                zzgfVarArr = new zzgf[zzgiVar.zzaxb.length];
                                                secureRandomZzmd = zzfaVar2.zzadj.zzgm().zzmd();
                                                zzgfVarArr2 = zzgiVar.zzaxb;
                                                length = zzgfVarArr2.length;
                                                i3 = 0;
                                                i4 = 0;
                                                while (i3 < length) {
                                                    zzgfVar = zzgfVarArr2[i3];
                                                    if (zzgfVar.name.equals("_ep")) {
                                                        zzjo();
                                                        str2 = (String) zzfg.zzb(zzgfVar, "_en");
                                                        zzzVarZzg = (zzz) map.get(str2);
                                                        if (zzzVarZzg == null) {
                                                            zzzVarZzg = zzjq().zzg(zzaVar2.zzaua.zztt, str2);
                                                            map.put(str2, zzzVarZzg);
                                                        }
                                                        if (zzzVarZzg.zzaij == null) {
                                                            if (zzzVarZzg.zzaik.longValue() > 1) {
                                                                zzjo();
                                                                zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_sr", zzzVarZzg.zzaik);
                                                            }
                                                            if (zzzVarZzg.zzail != null) {
                                                                zzjo();
                                                                zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_efs", (Object) 1L);
                                                            }
                                                            int i119 = i4 + 1;
                                                            zzgfVarArr[i4] = zzgfVar;
                                                            zzgiVar3 = zzgiVar;
                                                            secureRandom = secureRandomZzmd;
                                                            zzgfVarArr3 = zzgfVarArr2;
                                                            i5 = length;
                                                            i6 = i3;
                                                            i4 = i119;
                                                            zzaVar2 = zzaVar2;
                                                        } else {
                                                            zzgiVar3 = zzgiVar;
                                                            secureRandom = secureRandomZzmd;
                                                            zzgfVarArr3 = zzgfVarArr2;
                                                            i5 = length;
                                                            i6 = i3;
                                                            zzaVar2 = zzaVar2;
                                                        }
                                                    } else {
                                                        jZzcj = zzln().zzcj(zzaVar2.zzaua.zztt);
                                                        zzfaVar2.zzadj.zzgm();
                                                        jZzc = zzfk.zzc(zzgfVar.zzawu.longValue(), jZzcj);
                                                        zzgfVarArr3 = zzgfVarArr2;
                                                        i5 = length;
                                                        Long l4 = 1L;
                                                        if (TextUtils.isEmpty("_dbg")) {
                                                            zzgiVar3 = zzgiVar;
                                                            i6 = i3;
                                                            j2 = jZzcj;
                                                            z4 = false;
                                                        } else {
                                                            zzgiVar3 = zzgiVar;
                                                            i6 = i3;
                                                            j2 = jZzcj;
                                                            z4 = false;
                                                        }
                                                        if (z4) {
                                                            iZzq = zzln().zzq(zzaVar2.zzaua.zztt, zzgfVar.name);
                                                        } else {
                                                            iZzq = 1;
                                                        }
                                                        if (iZzq <= 0) {
                                                            zzfaVar2.zzadj.zzgo().zzjg().zze("Sample rate must be positive. event, rate", zzgfVar.name, Integer.valueOf(iZzq));
                                                            int i1110 = i4 + 1;
                                                            zzgfVarArr[i4] = zzgfVar;
                                                            zzaVar2 = zzaVar2;
                                                            i4 = i1110;
                                                            secureRandom = secureRandomZzmd;
                                                        } else {
                                                            zzzVarZza = (zzz) map.get(zzgfVar.name);
                                                            if (zzzVarZza == null) {
                                                                zzfaVar2.zzadj.zzgo().zzjg().zze("Event being bundled has no eventAggregate. appId, eventName", zzaVar2.zzaua.zztt, zzgfVar.name);
                                                                zzzVarZza = new zzz(zzaVar2.zzaua.zztt, zzgfVar.name, 1L, 1L, zzgfVar.zzawu.longValue(), 0L, null, null, null, null);
                                                            }
                                                            zzjo();
                                                            l = (Long) zzfg.zzb(zzgfVar, "_eid");
                                                            if (l != null) {
                                                                z5 = true;
                                                            } else {
                                                                z5 = false;
                                                            }
                                                            boolValueOf = Boolean.valueOf(z5);
                                                            if (iZzq == 1) {
                                                                int i1111 = i4 + 1;
                                                                zzgfVarArr[i4] = zzgfVar;
                                                                if (boolValueOf.booleanValue()) {
                                                                    map.put(zzgfVar.name, zzzVarZza.zza(null, null, null));
                                                                }
                                                                zzaVar2 = zzaVar2;
                                                                secureRandom = secureRandomZzmd;
                                                                i4 = i1111;
                                                            } else if (secureRandomZzmd.nextInt(iZzq) == 0) {
                                                                zzjo();
                                                                j4 = iZzq;
                                                                secureRandom = secureRandomZzmd;
                                                                zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_sr", Long.valueOf(j4));
                                                                int i1112 = i4 + 1;
                                                                zzgfVarArr[i4] = zzgfVar;
                                                                if (boolValueOf.booleanValue()) {
                                                                    zzzVarZza = zzzVarZza.zza(null, Long.valueOf(j4), null);
                                                                }
                                                                map.put(zzgfVar.name, zzzVarZza.zza(zzgfVar.zzawu.longValue(), jZzc));
                                                                zzaVar2 = zzaVar2;
                                                                i4 = i1112;
                                                            } else {
                                                                secureRandom = secureRandomZzmd;
                                                                if (zzfaVar2.zzadj.zzgq().zzbh(zzaVar2.zzaua.zztt)) {
                                                                    if (zzzVarZza.zzaii != null) {
                                                                        jZzc2 = zzzVarZza.zzaii.longValue();
                                                                    } else {
                                                                        zzfaVar2.zzadj.zzgm();
                                                                        jZzc2 = zzfk.zzc(zzgfVar.zzawv.longValue(), j2);
                                                                    }
                                                                    if (jZzc2 != jZzc) {
                                                                        z6 = true;
                                                                    } else {
                                                                        z6 = false;
                                                                    }
                                                                } else {
                                                                    zzaVar2 = zzaVar2;
                                                                    l = l;
                                                                    if (Math.abs(zzgfVar.zzawu.longValue() - zzzVarZza.zzaih) >= 86400000) {
                                                                        z6 = true;
                                                                    } else {
                                                                        z6 = false;
                                                                    }
                                                                }
                                                                if (z6) {
                                                                    zzjo();
                                                                    zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_efs", (Object) 1L);
                                                                    zzjo();
                                                                    j3 = iZzq;
                                                                    zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_sr", Long.valueOf(j3));
                                                                    int i1113 = i4 + 1;
                                                                    zzgfVarArr[i4] = zzgfVar;
                                                                    if (boolValueOf.booleanValue()) {
                                                                        zzzVarZza = zzzVarZza.zza(null, Long.valueOf(j3), true);
                                                                    }
                                                                    map.put(zzgfVar.name, zzzVarZza.zza(zzgfVar.zzawu.longValue(), jZzc));
                                                                    i4 = i1113;
                                                                } else if (boolValueOf.booleanValue()) {
                                                                    map.put(zzgfVar.name, zzzVarZza.zza(l, null, null));
                                                                }
                                                            }
                                                        }
                                                    }
                                                    secureRandomZzmd = secureRandom;
                                                    zzaVar2 = zzaVar2;
                                                    zzgfVarArr2 = zzgfVarArr3;
                                                    length = i5;
                                                    zzgiVar = zzgiVar3;
                                                    i3 = i6 + 1;
                                                    zzfaVar2 = this;
                                                }
                                                zzaVar = zzaVar2;
                                                zzgiVar2 = zzgiVar;
                                                if (i4 < zzgiVar2.zzaxb.length) {
                                                    zzgiVar2.zzaxb = (zzgf[]) Arrays.copyOf(zzgfVarArr, i4);
                                                }
                                                it = map.entrySet().iterator();
                                                while (it.hasNext()) {
                                                    zzjq().zza((zzz) ((Map.Entry) it.next()).getValue());
                                                }
                                            } else {
                                                zzaVar = zzaVar2;
                                                zzgiVar2 = zzgiVar;
                                            }
                                            zzgiVar2.zzaxe = Long.MAX_VALUE;
                                            zzgiVar2.zzaxf = Long.MIN_VALUE;
                                            while (i7 < zzgiVar2.zzaxb.length) {
                                                zzgfVar2 = zzgiVar2.zzaxb[i7];
                                                if (zzgfVar2.zzawu.longValue() < zzgiVar2.zzaxe.longValue()) {
                                                    zzgiVar2.zzaxe = zzgfVar2.zzawu;
                                                }
                                                if (zzgfVar2.zzawu.longValue() > zzgiVar2.zzaxf.longValue()) {
                                                    zzgiVar2.zzaxf = zzgfVar2.zzawu;
                                                }
                                            }
                                            str3 = zzaVar.zzaua.zztt;
                                            zzgVarZzbl = zzjq().zzbl(str3);
                                            if (zzgVarZzbl == null) {
                                                zzfaVar = this;
                                                zzfaVar.zzadj.zzgo().zzjd().zzg("Bundling raw events w/o app info. appId", zzap.zzbv(zzaVar.zzaua.zztt));
                                            } else {
                                                zzfaVar = this;
                                                if (zzgiVar2.zzaxb.length > 0) {
                                                    jZzgz = zzgVarZzbl.zzgz();
                                                    if (jZzgz != 0) {
                                                        lValueOf = Long.valueOf(jZzgz);
                                                    } else {
                                                        lValueOf = null;
                                                    }
                                                    zzgiVar2.zzaxh = lValueOf;
                                                    jZzgy = zzgVarZzbl.zzgy();
                                                    if (jZzgy == 0) {
                                                        jZzgz = jZzgy;
                                                    }
                                                    if (jZzgz != 0) {
                                                        lValueOf2 = Long.valueOf(jZzgz);
                                                    } else {
                                                        lValueOf2 = null;
                                                    }
                                                    zzgiVar2.zzaxg = lValueOf2;
                                                    zzgVarZzbl.zzhh();
                                                    zzgiVar2.zzaxr = Integer.valueOf((int) zzgVarZzbl.zzhe());
                                                    zzgVarZzbl.zzs(zzgiVar2.zzaxe.longValue());
                                                    zzgVarZzbl.zzt(zzgiVar2.zzaxf.longValue());
                                                    zzgiVar2.zzagv = zzgVarZzbl.zzhp();
                                                    zzjq().zza(zzgVarZzbl);
                                                }
                                            }
                                            if (zzgiVar2.zzaxb.length > 0) {
                                                zzfaVar.zzadj.zzgr();
                                                zzgbVarZzcf = zzln().zzcf(zzaVar.zzaua.zztt);
                                                if (zzgbVarZzcf != null) {
                                                    if (TextUtils.isEmpty(zzaVar.zzaua.zzafx)) {
                                                        zzgiVar2.zzaxy = -1L;
                                                    } else {
                                                        zzfaVar.zzadj.zzgo().zzjg().zzg("Did not find measurement config or missing version info. appId", zzap.zzbv(zzaVar.zzaua.zztt));
                                                    }
                                                } else if (TextUtils.isEmpty(zzaVar.zzaua.zzafx)) {
                                                    zzgiVar2.zzaxy = -1L;
                                                } else {
                                                    zzfaVar.zzadj.zzgo().zzjg().zzg("Did not find measurement config or missing version info. appId", zzap.zzbv(zzaVar.zzaua.zztt));
                                                }
                                                zzjq().zza(zzgiVar2, z3);
                                            }
                                            zzqVarZzjq = zzjq();
                                            list = zzaVar.zzaub;
                                            Preconditions.checkNotNull(list);
                                            zzqVarZzjq.zzaf();
                                            zzqVarZzjq.zzcl();
                                            sb = new StringBuilder("rowid in (");
                                            while (i8 < list.size()) {
                                                if (i8 != 0) {
                                                    sb.append(",");
                                                }
                                                sb.append(list.get(i8).longValue());
                                            }
                                            sb.append(")");
                                            iDelete = zzqVarZzjq.getWritableDatabase().delete("raw_events", sb.toString(), null);
                                            if (iDelete != list.size()) {
                                                zzqVarZzjq.zzgo().zzjd().zze("Deleted fewer rows from raw events table than expected", Integer.valueOf(iDelete), Integer.valueOf(list.size()));
                                            }
                                            zzqVarZzjq2 = zzjq();
                                            zzqVarZzjq2.getWritableDatabase().execSQL("delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)", new String[]{str3, str3});
                                            zzjq().setTransactionSuccessful();
                                            zzjq().endTransaction();
                                            return true;
                                        }
                                        zzjq().setTransactionSuccessful();
                                        zzjq().endTransaction();
                                        return false;
                                    }
                                } else if (cursorRawQuery != null) {
                                    cursorRawQuery.close();
                                }
                            } else {
                                if (j6 != -1) {
                                    strArr = new String[]{null, String.valueOf(j6)};
                                } else {
                                    strArr = new String[]{null};
                                }
                                String str9 = j6 != -1 ? " and rowid <= ?" : "";
                                StringBuilder sb3 = new StringBuilder(String.valueOf(str9).length() + 84);
                                sb3.append("select metadata_fingerprint from raw_events where app_id = ?");
                                sb3.append(str9);
                                sb3.append(" order by rowid limit 1;");
                                Cursor cursorRawQuery2 = writableDatabase.rawQuery(sb3.toString(), strArr);
                                if (cursorRawQuery2.moveToFirst()) {
                                    String string3 = cursorRawQuery2.getString(0);
                                    cursorRawQuery2.close();
                                    cursor = cursorRawQuery2;
                                    str5 = string3;
                                    str7 = null;
                                    cursorQuery = writableDatabase.query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{str7, str5}, null, null, "rowid", "2");
                                    if (!cursorQuery.moveToFirst()) {
                                        zzqVarZzjq3.zzgo().zzjd().zzg("Raw event metadata record is missing. appId", zzap.zzbv(str7));
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                    } else {
                                        byte[] blob3 = cursorQuery.getBlob(0);
                                        zzyx zzyxVarZzj3 = zzyx.zzj(blob3, 0, blob3.length);
                                        zzgi zzgiVar5 = new zzgi();
                                        zzgiVar5.zza(zzyxVarZzj3);
                                        if (cursorQuery.moveToNext()) {
                                            zzqVarZzjq3.zzgo().zzjg().zzg("Get multiple raw event metadata records, expected one. appId", zzap.zzbv(str7));
                                        }
                                        cursorQuery.close();
                                        zzaVar2.zzb(zzgiVar5);
                                        if (j6 != -1) {
                                            str6 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                                            strArr2 = new String[]{str7, str5, String.valueOf(j6)};
                                        } else {
                                            str6 = "app_id = ? and metadata_fingerprint = ?";
                                            strArr2 = new String[]{str7, str5};
                                        }
                                        cursorQuery2 = writableDatabase.query("raw_events", new String[]{"rowid", "name", "timestamp", "data"}, str6, strArr2, null, null, "rowid", null);
                                        if (!cursorQuery2.moveToFirst()) {
                                            while (true) {
                                                long j8 = cursorQuery2.getLong(0);
                                                byte[] blob4 = cursorQuery2.getBlob(3);
                                                zzyx zzyxVarZzj4 = zzyx.zzj(blob4, 0, blob4.length);
                                                zzgf zzgfVar5 = new zzgf();
                                                zzgfVar5.zza(zzyxVarZzj4);
                                                zzgfVar5.name = cursorQuery2.getString(1);
                                                zzgfVar5.zzawu = Long.valueOf(cursorQuery2.getLong(2));
                                                MoveToNext = zzaVar2.zza(j8, zzgfVar5);
                                                if (MoveToNext == 0) {
                                                    if (cursorQuery2 != null) {
                                                        break;
                                                    }
                                                    cursorQuery2.close();
                                                    break;
                                                }
                                                MoveToNext = cursorQuery2.moveToNext();
                                                if (MoveToNext == 0) {
                                                    if (cursorQuery2 != null) {
                                                        break;
                                                    }
                                                    cursorQuery2.close();
                                                    break;
                                                }
                                            }
                                        } else {
                                            MoveToNext = zzqVarZzjq3.zzgo().zzjg();
                                            MoveToNext.zzg("Raw event data disappeared while in transaction. appId", zzap.zzbv(str7));
                                            if (cursorQuery2 != null) {
                                                cursorQuery2.close();
                                            }
                                        }
                                    }
                                } else if (cursorRawQuery2 != null) {
                                    cursorRawQuery2.close();
                                }
                            }
                        } catch (Throwable th11) {
                            th = th11;
                            r22 = 0;
                        }
                    } catch (SQLiteException e11) {
                        e = e11;
                        r7 = str7;
                        string = null;
                    }
                } catch (Throwable th12) {
                    th = th12;
                    th = th;
                    zzjq().endTransaction();
                    throw th;
                }
            } catch (SQLiteException e12) {
                sQLiteException = e12;
                r6 = 0;
                string = null;
            } catch (Throwable th13) {
                th = th13;
                r22 = 0;
            }
            if (zzaVar2.zzauc != null || zzaVar2.zzauc.isEmpty()) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                zzgiVar = zzaVar2.zzaua;
                zzgiVar.zzaxb = new zzgf[zzaVar2.zzauc.size()];
                zZzax = zzfaVar2.zzadj.zzgq().zzax(zzgiVar.zztt);
                i = 0;
                i2 = 0;
                z2 = false;
                jLongValue = 0;
                while (i < zzaVar2.zzauc.size()) {
                    zzgfVar3 = zzaVar2.zzauc.get(i);
                    if (zzln().zzo(zzaVar2.zzaua.zztt, zzgfVar3.name)) {
                        zzfaVar2.zzadj.zzgo().zzjg().zze("Dropping blacklisted raw event. appId", zzap.zzbv(zzaVar2.zzaua.zztt), zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                        if (zzln().zzck(zzaVar2.zzaua.zztt) || zzln().zzcl(zzaVar2.zzaua.zztt)) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        if (!z15 && !"_err".equals(zzgfVar3.name)) {
                            zzfaVar2.zzadj.zzgm().zza(zzaVar2.zzaua.zztt, 11, "_ev", zzgfVar3.name, 0);
                        }
                        i11 = i;
                    } else {
                        zZzp = zzln().zzp(zzaVar2.zzaua.zztt, zzgfVar3.name);
                        if (!zZzp) {
                            zzjo();
                            str4 = zzgfVar3.name;
                            Preconditions.checkNotEmpty(str4);
                            if (r9 != 94660) {
                                if (r9 != 95025) {
                                    if (r9 == 95027 && str4.equals("_ui")) {
                                    }
                                }
                            }
                            switch (str4) {
                                case null:
                                case 1:
                                case 2:
                                    z14 = true;
                                    break;
                                default:
                                    z14 = false;
                                    break;
                            }
                            if (z14) {
                                if (zzgfVar3.zzawt == null) {
                                    zzgfVar3.zzawt = new zzgg[0];
                                }
                                zzggVarArr = zzgfVar3.zzawt;
                                length2 = zzggVarArr.length;
                                i10 = 0;
                                z8 = false;
                                z9 = false;
                                while (i10 < length2) {
                                    zzggVar = zzggVarArr[i10];
                                    zzgg[] zzggVarArr111 = zzggVarArr;
                                    int i1114 = length2;
                                    if ("_c".equals(zzggVar.name)) {
                                        zzggVar.zzawx = 1L;
                                        z8 = true;
                                    } else if ("_r".equals(zzggVar.name)) {
                                        zzggVar.zzawx = 1L;
                                        z9 = true;
                                    }
                                    i10++;
                                    zzggVarArr = zzggVarArr111;
                                    length2 = i1114;
                                }
                                if (!z8 && zZzp) {
                                    zzfaVar2.zzadj.zzgo().zzjl().zzg("Marking event as conversion", zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                    zzgg[] zzggVarArr112 = (zzgg[]) Arrays.copyOf(zzgfVar3.zzawt, zzgfVar3.zzawt.length + 1);
                                    zzgg zzggVar14 = new zzgg();
                                    zzggVar14.name = "_c";
                                    zzggVar14.zzawx = 1L;
                                    zzggVarArr112[zzggVarArr112.length - 1] = zzggVar14;
                                    zzgfVar3.zzawt = zzggVarArr112;
                                }
                                if (!z9) {
                                    zzfaVar2.zzadj.zzgo().zzjl().zzg("Marking event as real-time", zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                    zzgg[] zzggVarArr113 = (zzgg[]) Arrays.copyOf(zzgfVar3.zzawt, zzgfVar3.zzawt.length + 1);
                                    zzgg zzggVar15 = new zzgg();
                                    zzggVar15.name = "_r";
                                    zzggVar15.zzawx = 1L;
                                    zzggVarArr113[zzggVarArr113.length - 1] = zzggVar15;
                                    zzgfVar3.zzawt = zzggVarArr113;
                                }
                                z10 = z2;
                                if (zzjq().zza(zzls(), zzaVar2.zzaua.zztt, false, false, false, false, true).zzahu > zzfaVar2.zzadj.zzgq().zzat(zzaVar2.zzaua.zztt)) {
                                    while (i12 < zzgfVar3.zzawt.length) {
                                        if ("_r".equals(zzgfVar3.zzawt[i12].name)) {
                                            zzggVarArr2 = new zzgg[zzgfVar3.zzawt.length - 1];
                                            if (i12 > 0) {
                                                System.arraycopy(zzgfVar3.zzawt, 0, zzggVarArr2, 0, i12);
                                            }
                                            if (i12 < zzggVarArr2.length) {
                                                System.arraycopy(zzgfVar3.zzawt, i12 + 1, zzggVarArr2, i12, zzggVarArr2.length - i12);
                                            }
                                            zzgfVar3.zzawt = zzggVarArr2;
                                            z11 = z10;
                                        }
                                    }
                                    z11 = z10;
                                } else {
                                    z11 = true;
                                }
                                if (zzfk.zzcq(zzgfVar3.name) || !zZzp) {
                                    i11 = i;
                                    z12 = z11;
                                } else {
                                    z12 = z11;
                                    if (zzjq().zza(zzls(), zzaVar2.zzaua.zztt, false, false, true, false, false).zzahs > zzfaVar2.zzadj.zzgq().zzb(zzaVar2.zzaua.zztt, zzaf.zzajq)) {
                                        zzfaVar2.zzadj.zzgo().zzjg().zzg("Too many conversions. Not logging as conversion. appId", zzap.zzbv(zzaVar2.zzaua.zztt));
                                        zzgg[] zzggVarArr20 = zzgfVar3.zzawt;
                                        int length3 = zzggVarArr20.length;
                                        int i20 = 0;
                                        boolean z16 = false;
                                        zzgg zzggVar16 = null;
                                        while (i20 < length3) {
                                            int i21 = length3;
                                            zzgg zzggVar17 = zzggVarArr20[i20];
                                            zzgg[] zzggVarArr21 = zzggVarArr20;
                                            int i22 = i;
                                            if ("_c".equals(zzggVar17.name)) {
                                                zzggVar16 = zzggVar17;
                                            } else if ("_err".equals(zzggVar17.name)) {
                                                z16 = true;
                                            }
                                            i20++;
                                            length3 = i21;
                                            zzggVarArr20 = zzggVarArr21;
                                            i = i22;
                                        }
                                        i11 = i;
                                        if (z16 && zzggVar16 != null) {
                                            zzgfVar3.zzawt = (zzgg[]) ArrayUtils.removeAll(zzgfVar3.zzawt, zzggVar16);
                                        } else if (zzggVar16 != null) {
                                            zzggVar16.name = "_err";
                                            zzggVar16.zzawx = 10L;
                                        } else {
                                            zzfaVar2.zzadj.zzgo().zzjd().zzg("Did not find conversion parameter. appId", zzap.zzbv(zzaVar2.zzaua.zztt));
                                        }
                                    } else {
                                        i11 = i;
                                    }
                                }
                                z2 = z12;
                            } else {
                                i11 = i;
                            }
                        } else {
                            if (zzgfVar3.zzawt == null) {
                                zzgfVar3.zzawt = new zzgg[0];
                            }
                            zzggVarArr = zzgfVar3.zzawt;
                            length2 = zzggVarArr.length;
                            i10 = 0;
                            z8 = false;
                            z9 = false;
                            while (i10 < length2) {
                                zzggVar = zzggVarArr[i10];
                                zzgg[] zzggVarArr114 = zzggVarArr;
                                int i1115 = length2;
                                if ("_c".equals(zzggVar.name)) {
                                    zzggVar.zzawx = 1L;
                                    z8 = true;
                                } else if ("_r".equals(zzggVar.name)) {
                                    zzggVar.zzawx = 1L;
                                    z9 = true;
                                }
                                i10++;
                                zzggVarArr = zzggVarArr114;
                                length2 = i1115;
                            }
                            if (!z8) {
                                zzfaVar2.zzadj.zzgo().zzjl().zzg("Marking event as conversion", zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                zzgg[] zzggVarArr115 = (zzgg[]) Arrays.copyOf(zzgfVar3.zzawt, zzgfVar3.zzawt.length + 1);
                                zzgg zzggVar18 = new zzgg();
                                zzggVar18.name = "_c";
                                zzggVar18.zzawx = 1L;
                                zzggVarArr115[zzggVarArr115.length - 1] = zzggVar18;
                                zzgfVar3.zzawt = zzggVarArr115;
                            }
                            if (!z9) {
                                zzfaVar2.zzadj.zzgo().zzjl().zzg("Marking event as real-time", zzfaVar2.zzadj.zzgl().zzbs(zzgfVar3.name));
                                zzgg[] zzggVarArr116 = (zzgg[]) Arrays.copyOf(zzgfVar3.zzawt, zzgfVar3.zzawt.length + 1);
                                zzgg zzggVar19 = new zzgg();
                                zzggVar19.name = "_r";
                                zzggVar19.zzawx = 1L;
                                zzggVarArr116[zzggVarArr116.length - 1] = zzggVar19;
                                zzgfVar3.zzawt = zzggVarArr116;
                            }
                            z10 = z2;
                            if (zzjq().zza(zzls(), zzaVar2.zzaua.zztt, false, false, false, false, true).zzahu > zzfaVar2.zzadj.zzgq().zzat(zzaVar2.zzaua.zztt)) {
                                while (i12 < zzgfVar3.zzawt.length) {
                                    if ("_r".equals(zzgfVar3.zzawt[i12].name)) {
                                        zzggVarArr2 = new zzgg[zzgfVar3.zzawt.length - 1];
                                        if (i12 > 0) {
                                            System.arraycopy(zzgfVar3.zzawt, 0, zzggVarArr2, 0, i12);
                                        }
                                        if (i12 < zzggVarArr2.length) {
                                            System.arraycopy(zzgfVar3.zzawt, i12 + 1, zzggVarArr2, i12, zzggVarArr2.length - i12);
                                        }
                                        zzgfVar3.zzawt = zzggVarArr2;
                                        z11 = z10;
                                    }
                                }
                                z11 = z10;
                            } else {
                                z11 = true;
                            }
                            if (zzfk.zzcq(zzgfVar3.name)) {
                                i11 = i;
                                z12 = z11;
                            } else {
                                i11 = i;
                                z12 = z11;
                            }
                            z2 = z12;
                        }
                        if (!zzfaVar2.zzadj.zzgq().zzbf(zzaVar2.zzaua.zztt) && zZzp) {
                            zzgg[] zzggVarArrZza = zzgfVar3.zzawt;
                            int i23 = -1;
                            int i24 = -1;
                            for (int i25 = 0; i25 < zzggVarArrZza.length; i25++) {
                                if ("value".equals(zzggVarArrZza[i25].name)) {
                                    i23 = i25;
                                } else if ("currency".equals(zzggVarArrZza[i25].name)) {
                                    i24 = i25;
                                }
                            }
                            if (i23 != -1) {
                                if (zzggVarArrZza[i23].zzawx == null && zzggVarArrZza[i23].zzauh == null) {
                                    zzfaVar2.zzadj.zzgo().zzji().zzbx("Value must be specified with a numeric type.");
                                    zzggVarArrZza = zza(zza(zza(zzggVarArrZza, i23), "_c"), 18, "value");
                                } else {
                                    if (i24 == -1) {
                                        z13 = true;
                                    } else {
                                        String str10 = zzggVarArrZza[i24].zzamp;
                                        if (str10 == null || str10.length() != 3) {
                                            z13 = true;
                                        } else {
                                            int iCharCount = 0;
                                            while (true) {
                                                if (iCharCount < str10.length()) {
                                                    int iCodePointAt = str10.codePointAt(iCharCount);
                                                    if (Character.isLetter(iCodePointAt)) {
                                                        iCharCount += Character.charCount(iCodePointAt);
                                                    } else {
                                                        z13 = true;
                                                    }
                                                } else {
                                                    z13 = false;
                                                }
                                            }
                                        }
                                    }
                                    if (z13) {
                                        zzfaVar2.zzadj.zzgo().zzji().zzbx("Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter.");
                                        zzggVarArrZza = zza(zza(zza(zzggVarArrZza, i23), "_c"), 19, "currency");
                                    }
                                }
                            }
                            zzgfVar3.zzawt = zzggVarArrZza;
                        }
                        if (zZzax && "_e".equals(zzgfVar3.name)) {
                            if (zzgfVar3.zzawt != null || zzgfVar3.zzawt.length == 0) {
                                zzfaVar2.zzadj.zzgo().zzjg().zzg("Engagement event does not contain any parameters. appId", zzap.zzbv(zzaVar2.zzaua.zztt));
                            } else {
                                zzjo();
                                Long l5 = (Long) zzfg.zzb(zzgfVar3, "_et");
                                if (l5 == null) {
                                    zzfaVar2.zzadj.zzgo().zzjg().zzg("Engagement event does not include duration. appId", zzap.zzbv(zzaVar2.zzaua.zztt));
                                } else {
                                    jLongValue += l5.longValue();
                                }
                            }
                        }
                        zzgiVar.zzaxb[i2] = zzgfVar3;
                        i2++;
                    }
                    i = i11 + 1;
                }
                z3 = z2;
                if (i2 < zzaVar2.zzauc.size()) {
                    zzgiVar.zzaxb = (zzgf[]) Arrays.copyOf(zzgiVar.zzaxb, i2);
                }
                if (zZzax) {
                    zzfjVarZzi = zzjq().zzi(zzgiVar.zztt, "_lte");
                    if (zzfjVarZzi != null || zzfjVarZzi.value == null) {
                        zzfjVar = new zzfj(zzgiVar.zztt, "auto", "_lte", zzfaVar2.zzadj.zzbx().currentTimeMillis(), Long.valueOf(jLongValue));
                    } else {
                        zzfjVar = new zzfj(zzgiVar.zztt, "auto", "_lte", zzfaVar2.zzadj.zzbx().currentTimeMillis(), Long.valueOf(((Long) zzfjVarZzi.value).longValue() + jLongValue));
                    }
                    zzglVar = new zzgl();
                    zzglVar.name = "_lte";
                    zzglVar.zzayl = Long.valueOf(zzfaVar2.zzadj.zzbx().currentTimeMillis());
                    zzglVar.zzawx = (Long) zzfjVar.value;
                    i9 = 0;
                    while (true) {
                        if (i9 < zzgiVar.zzaxc.length) {
                            z7 = false;
                        } else if ("_lte".equals(zzgiVar.zzaxc[i9].name)) {
                            zzgiVar.zzaxc[i9] = zzglVar;
                            z7 = true;
                        } else {
                            i9++;
                        }
                    }
                    if (z7) {
                        zzgiVar.zzaxc = (zzgl[]) Arrays.copyOf(zzgiVar.zzaxc, zzgiVar.zzaxc.length + 1);
                        zzgiVar.zzaxc[zzaVar2.zzaua.zzaxc.length - 1] = zzglVar;
                        j5 = 0;
                    } else {
                        j5 = 0;
                    }
                    if (jLongValue > j5) {
                        zzjq().zza(zzfjVar);
                        zzfaVar2.zzadj.zzgo().zzjk().zzg("Updated lifetime engagement user property with value. Value", zzfjVar.value);
                    }
                }
                zzgiVar.zzaxt = zzfaVar2.zza(zzgiVar.zztt, zzgiVar.zzaxc, zzgiVar.zzaxb);
                if (zzfaVar2.zzadj.zzgq().zzaw(zzaVar2.zzaua.zztt)) {
                    map = new HashMap();
                    zzgfVarArr = new zzgf[zzgiVar.zzaxb.length];
                    secureRandomZzmd = zzfaVar2.zzadj.zzgm().zzmd();
                    zzgfVarArr2 = zzgiVar.zzaxb;
                    length = zzgfVarArr2.length;
                    i3 = 0;
                    i4 = 0;
                    while (i3 < length) {
                        zzgfVar = zzgfVarArr2[i3];
                        if (zzgfVar.name.equals("_ep")) {
                            zzjo();
                            str2 = (String) zzfg.zzb(zzgfVar, "_en");
                            zzzVarZzg = (zzz) map.get(str2);
                            if (zzzVarZzg == null) {
                                zzzVarZzg = zzjq().zzg(zzaVar2.zzaua.zztt, str2);
                                map.put(str2, zzzVarZzg);
                            }
                            if (zzzVarZzg.zzaij == null) {
                                if (zzzVarZzg.zzaik.longValue() > 1) {
                                    zzjo();
                                    zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_sr", zzzVarZzg.zzaik);
                                }
                                if (zzzVarZzg.zzail != null && zzzVarZzg.zzail.booleanValue()) {
                                    zzjo();
                                    zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_efs", (Object) 1L);
                                }
                                int i1116 = i4 + 1;
                                zzgfVarArr[i4] = zzgfVar;
                                zzgiVar3 = zzgiVar;
                                secureRandom = secureRandomZzmd;
                                zzgfVarArr3 = zzgfVarArr2;
                                i5 = length;
                                i6 = i3;
                                i4 = i1116;
                                zzaVar2 = zzaVar2;
                            } else {
                                zzgiVar3 = zzgiVar;
                                secureRandom = secureRandomZzmd;
                                zzgfVarArr3 = zzgfVarArr2;
                                i5 = length;
                                i6 = i3;
                                zzaVar2 = zzaVar2;
                            }
                        } else {
                            jZzcj = zzln().zzcj(zzaVar2.zzaua.zztt);
                            zzfaVar2.zzadj.zzgm();
                            jZzc = zzfk.zzc(zzgfVar.zzawu.longValue(), jZzcj);
                            zzgfVarArr3 = zzgfVarArr2;
                            i5 = length;
                            Long l6 = 1L;
                            if (TextUtils.isEmpty("_dbg") || l6 == null) {
                                zzgiVar3 = zzgiVar;
                                i6 = i3;
                                j2 = jZzcj;
                                z4 = false;
                            } else {
                                zzgiVar3 = zzgiVar;
                                zzgg[] zzggVarArr22 = zzgfVar.zzawt;
                                i6 = i3;
                                int length4 = zzggVarArr22.length;
                                j2 = jZzcj;
                                int i26 = 0;
                                while (true) {
                                    if (i26 < length4) {
                                        zzgg zzggVar20 = zzggVarArr22[i26];
                                        zzgg[] zzggVarArr23 = zzggVarArr22;
                                        if ("_dbg".equals(zzggVar20.name)) {
                                            z4 = ((l6 instanceof Long) && l6.equals(zzggVar20.zzawx)) || ((l6 instanceof String) && l6.equals(zzggVar20.zzamp)) || ((l6 instanceof Double) && l6.equals(zzggVar20.zzauh));
                                        } else {
                                            i26++;
                                            zzggVarArr22 = zzggVarArr23;
                                        }
                                    } else {
                                        z4 = false;
                                    }
                                }
                            }
                            if (z4) {
                                iZzq = zzln().zzq(zzaVar2.zzaua.zztt, zzgfVar.name);
                            } else {
                                iZzq = 1;
                            }
                            if (iZzq <= 0) {
                                zzfaVar2.zzadj.zzgo().zzjg().zze("Sample rate must be positive. event, rate", zzgfVar.name, Integer.valueOf(iZzq));
                                int i1117 = i4 + 1;
                                zzgfVarArr[i4] = zzgfVar;
                                zzaVar2 = zzaVar2;
                                i4 = i1117;
                                secureRandom = secureRandomZzmd;
                            } else {
                                zzzVarZza = (zzz) map.get(zzgfVar.name);
                                if (zzzVarZza == null && (zzzVarZza = zzjq().zzg(zzaVar2.zzaua.zztt, zzgfVar.name)) == null) {
                                    zzfaVar2.zzadj.zzgo().zzjg().zze("Event being bundled has no eventAggregate. appId, eventName", zzaVar2.zzaua.zztt, zzgfVar.name);
                                    zzzVarZza = new zzz(zzaVar2.zzaua.zztt, zzgfVar.name, 1L, 1L, zzgfVar.zzawu.longValue(), 0L, null, null, null, null);
                                }
                                zzjo();
                                l = (Long) zzfg.zzb(zzgfVar, "_eid");
                                if (l != null) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                boolValueOf = Boolean.valueOf(z5);
                                if (iZzq == 1) {
                                    int i1118 = i4 + 1;
                                    zzgfVarArr[i4] = zzgfVar;
                                    if (boolValueOf.booleanValue() && (zzzVarZza.zzaij != null || zzzVarZza.zzaik != null || zzzVarZza.zzail != null)) {
                                        map.put(zzgfVar.name, zzzVarZza.zza(null, null, null));
                                    }
                                    zzaVar2 = zzaVar2;
                                    secureRandom = secureRandomZzmd;
                                    i4 = i1118;
                                } else if (secureRandomZzmd.nextInt(iZzq) == 0) {
                                    zzjo();
                                    j4 = iZzq;
                                    secureRandom = secureRandomZzmd;
                                    zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_sr", Long.valueOf(j4));
                                    int i1119 = i4 + 1;
                                    zzgfVarArr[i4] = zzgfVar;
                                    if (boolValueOf.booleanValue()) {
                                        zzzVarZza = zzzVarZza.zza(null, Long.valueOf(j4), null);
                                    }
                                    map.put(zzgfVar.name, zzzVarZza.zza(zzgfVar.zzawu.longValue(), jZzc));
                                    zzaVar2 = zzaVar2;
                                    i4 = i1119;
                                } else {
                                    secureRandom = secureRandomZzmd;
                                    if (zzfaVar2.zzadj.zzgq().zzbh(zzaVar2.zzaua.zztt)) {
                                        if (zzzVarZza.zzaii != null) {
                                            jZzc2 = zzzVarZza.zzaii.longValue();
                                        } else {
                                            zzfaVar2.zzadj.zzgm();
                                            jZzc2 = zzfk.zzc(zzgfVar.zzawv.longValue(), j2);
                                        }
                                        if (jZzc2 != jZzc) {
                                            z6 = true;
                                        } else {
                                            z6 = false;
                                        }
                                    } else {
                                        zzaVar2 = zzaVar2;
                                        l = l;
                                        if (Math.abs(zzgfVar.zzawu.longValue() - zzzVarZza.zzaih) >= 86400000) {
                                            z6 = true;
                                        } else {
                                            z6 = false;
                                        }
                                    }
                                    if (z6) {
                                        zzjo();
                                        zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_efs", (Object) 1L);
                                        zzjo();
                                        j3 = iZzq;
                                        zzgfVar.zzawt = zzfg.zza(zzgfVar.zzawt, "_sr", Long.valueOf(j3));
                                        int i11110 = i4 + 1;
                                        zzgfVarArr[i4] = zzgfVar;
                                        if (boolValueOf.booleanValue()) {
                                            zzzVarZza = zzzVarZza.zza(null, Long.valueOf(j3), true);
                                        }
                                        map.put(zzgfVar.name, zzzVarZza.zza(zzgfVar.zzawu.longValue(), jZzc));
                                        i4 = i11110;
                                    } else if (boolValueOf.booleanValue()) {
                                        map.put(zzgfVar.name, zzzVarZza.zza(l, null, null));
                                    }
                                }
                            }
                        }
                        secureRandomZzmd = secureRandom;
                        zzaVar2 = zzaVar2;
                        zzgfVarArr2 = zzgfVarArr3;
                        length = i5;
                        zzgiVar = zzgiVar3;
                        i3 = i6 + 1;
                        zzfaVar2 = this;
                    }
                    zzaVar = zzaVar2;
                    zzgiVar2 = zzgiVar;
                    if (i4 < zzgiVar2.zzaxb.length) {
                        zzgiVar2.zzaxb = (zzgf[]) Arrays.copyOf(zzgfVarArr, i4);
                    }
                    it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        zzjq().zza((zzz) ((Map.Entry) it.next()).getValue());
                    }
                } else {
                    zzaVar = zzaVar2;
                    zzgiVar2 = zzgiVar;
                }
                zzgiVar2.zzaxe = Long.MAX_VALUE;
                zzgiVar2.zzaxf = Long.MIN_VALUE;
                while (i7 < zzgiVar2.zzaxb.length) {
                    zzgfVar2 = zzgiVar2.zzaxb[i7];
                    if (zzgfVar2.zzawu.longValue() < zzgiVar2.zzaxe.longValue()) {
                        zzgiVar2.zzaxe = zzgfVar2.zzawu;
                    }
                    if (zzgfVar2.zzawu.longValue() > zzgiVar2.zzaxf.longValue()) {
                        zzgiVar2.zzaxf = zzgfVar2.zzawu;
                    }
                }
                str3 = zzaVar.zzaua.zztt;
                zzgVarZzbl = zzjq().zzbl(str3);
                if (zzgVarZzbl == null) {
                    zzfaVar = this;
                    zzfaVar.zzadj.zzgo().zzjd().zzg("Bundling raw events w/o app info. appId", zzap.zzbv(zzaVar.zzaua.zztt));
                } else {
                    zzfaVar = this;
                    if (zzgiVar2.zzaxb.length > 0) {
                        jZzgz = zzgVarZzbl.zzgz();
                        if (jZzgz != 0) {
                            lValueOf = Long.valueOf(jZzgz);
                        } else {
                            lValueOf = null;
                        }
                        zzgiVar2.zzaxh = lValueOf;
                        jZzgy = zzgVarZzbl.zzgy();
                        if (jZzgy == 0) {
                            jZzgz = jZzgy;
                        }
                        if (jZzgz != 0) {
                            lValueOf2 = Long.valueOf(jZzgz);
                        } else {
                            lValueOf2 = null;
                        }
                        zzgiVar2.zzaxg = lValueOf2;
                        zzgVarZzbl.zzhh();
                        zzgiVar2.zzaxr = Integer.valueOf((int) zzgVarZzbl.zzhe());
                        zzgVarZzbl.zzs(zzgiVar2.zzaxe.longValue());
                        zzgVarZzbl.zzt(zzgiVar2.zzaxf.longValue());
                        zzgiVar2.zzagv = zzgVarZzbl.zzhp();
                        zzjq().zza(zzgVarZzbl);
                    }
                }
                if (zzgiVar2.zzaxb.length > 0) {
                    zzfaVar.zzadj.zzgr();
                    zzgbVarZzcf = zzln().zzcf(zzaVar.zzaua.zztt);
                    if (zzgbVarZzcf != null || zzgbVarZzcf.zzawe == null) {
                        if (TextUtils.isEmpty(zzaVar.zzaua.zzafx)) {
                            zzgiVar2.zzaxy = -1L;
                        } else {
                            zzfaVar.zzadj.zzgo().zzjg().zzg("Did not find measurement config or missing version info. appId", zzap.zzbv(zzaVar.zzaua.zztt));
                        }
                    } else {
                        zzgiVar2.zzaxy = zzgbVarZzcf.zzawe;
                    }
                    zzjq().zza(zzgiVar2, z3);
                }
                zzqVarZzjq = zzjq();
                list = zzaVar.zzaub;
                Preconditions.checkNotNull(list);
                zzqVarZzjq.zzaf();
                zzqVarZzjq.zzcl();
                sb = new StringBuilder("rowid in (");
                while (i8 < list.size()) {
                    if (i8 != 0) {
                        sb.append(",");
                    }
                    sb.append(list.get(i8).longValue());
                }
                sb.append(")");
                iDelete = zzqVarZzjq.getWritableDatabase().delete("raw_events", sb.toString(), null);
                if (iDelete != list.size()) {
                    zzqVarZzjq.zzgo().zzjd().zze("Deleted fewer rows from raw events table than expected", Integer.valueOf(iDelete), Integer.valueOf(list.size()));
                }
                zzqVarZzjq2 = zzjq();
                zzqVarZzjq2.getWritableDatabase().execSQL("delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)", new String[]{str3, str3});
                zzjq().setTransactionSuccessful();
                zzjq().endTransaction();
                return true;
            }
            zzjq().setTransactionSuccessful();
            zzjq().endTransaction();
            return false;
        } catch (Throwable th14) {
            th = th14;
            th = th;
            zzjq().endTransaction();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0015 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x0016  */
    private static zzgg[] zza(zzgg[] zzggVarArr, String str) {
        int i = 0;
        while (i < zzggVarArr.length) {
            if (str.equals(zzggVarArr[i].name)) {
                if (i < 0) {
                    return zzggVarArr;
                }
                return zza(zzggVarArr, i);
            }
            i++;
        }
        i = -1;
        if (i < 0) {
            return zzggVarArr;
        }
        return zza(zzggVarArr, i);
    }

    private static zzgg[] zza(zzgg[] zzggVarArr, int i) {
        zzgg[] zzggVarArr2 = new zzgg[zzggVarArr.length - 1];
        if (i > 0) {
            System.arraycopy(zzggVarArr, 0, zzggVarArr2, 0, i);
        }
        if (i < zzggVarArr2.length) {
            System.arraycopy(zzggVarArr, i + 1, zzggVarArr2, i, zzggVarArr2.length - i);
        }
        return zzggVarArr2;
    }

    private static zzgg[] zza(zzgg[] zzggVarArr, int i, String str) {
        for (zzgg zzggVar : zzggVarArr) {
            if ("_err".equals(zzggVar.name)) {
                return zzggVarArr;
            }
        }
        zzgg[] zzggVarArr2 = new zzgg[zzggVarArr.length + 2];
        System.arraycopy(zzggVarArr, 0, zzggVarArr2, 0, zzggVarArr.length);
        zzgg zzggVar2 = new zzgg();
        zzggVar2.name = "_err";
        zzggVar2.zzawx = Long.valueOf(i);
        zzgg zzggVar3 = new zzgg();
        zzggVar3.name = "_ev";
        zzggVar3.zzamp = str;
        zzggVarArr2[zzggVarArr2.length - 2] = zzggVar2;
        zzggVarArr2[zzggVarArr2.length - 1] = zzggVar3;
        return zzggVarArr2;
    }

    private final zzgd[] zza(String str, zzgl[] zzglVarArr, zzgf[] zzgfVarArr) {
        Preconditions.checkNotEmpty(str);
        return zzjp().zza(str, zzgfVarArr, zzglVarArr);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    final void zza(int i, Throwable th, byte[] bArr, String str) {
        zzaf();
        zzlr();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } catch (Throwable th2) {
                this.zzatq = false;
                zzlw();
                throw th2;
            }
        }
        List<Long> list = this.zzatu;
        this.zzatu = null;
        boolean z = true;
        if ((i == 200 || i == 204) && th == null) {
            try {
                this.zzadj.zzgp().zzane.set(this.zzadj.zzbx().currentTimeMillis());
                this.zzadj.zzgp().zzanf.set(0L);
                zzlv();
                this.zzadj.zzgo().zzjl().zze("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
                zzjq().beginTransaction();
                try {
                    for (Long l : list) {
                        try {
                            zzq zzqVarZzjq = zzjq();
                            long jLongValue = l.longValue();
                            zzqVarZzjq.zzaf();
                            zzqVarZzjq.zzcl();
                            try {
                                if (zzqVarZzjq.getWritableDatabase().delete("queue", "rowid=?", new String[]{String.valueOf(jLongValue)}) != 1) {
                                    throw new SQLiteException("Deleted fewer rows from queue than expected");
                                }
                            } catch (SQLiteException e) {
                                zzqVarZzjq.zzgo().zzjd().zzg("Failed to delete a bundle in a queue table", e);
                                throw e;
                            }
                        } catch (SQLiteException e2) {
                            if (this.zzatv == null || !this.zzatv.contains(l)) {
                                throw e2;
                            }
                        }
                    }
                    zzjq().setTransactionSuccessful();
                    zzjq().endTransaction();
                    this.zzatv = null;
                    if (zzlo().zzfb() && zzlu()) {
                        zzlt();
                    } else {
                        this.zzatw = -1L;
                        zzlv();
                    }
                    this.zzatl = 0L;
                } catch (Throwable th3) {
                    zzjq().endTransaction();
                    throw th3;
                }
            } catch (SQLiteException e3) {
                this.zzadj.zzgo().zzjd().zzg("Database error while trying to delete uploaded bundles", e3);
                this.zzatl = this.zzadj.zzbx().elapsedRealtime();
                this.zzadj.zzgo().zzjl().zzg("Disable upload, time", Long.valueOf(this.zzatl));
            }
        } else {
            this.zzadj.zzgo().zzjl().zze("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            this.zzadj.zzgp().zzanf.set(this.zzadj.zzbx().currentTimeMillis());
            if (i != 503 && i != 429) {
                z = false;
            }
            if (z) {
                this.zzadj.zzgp().zzang.set(this.zzadj.zzbx().currentTimeMillis());
            }
            if (this.zzadj.zzgq().zzaz(str)) {
                zzjq().zzc(list);
            }
            zzlv();
        }
        this.zzatq = false;
        zzlw();
    }

    private final boolean zzlu() {
        zzaf();
        zzlr();
        return zzjq().zzii() || !TextUtils.isEmpty(zzjq().zzid());
    }

    private final void zzb(zzg zzgVar) {
        ArrayMap arrayMap;
        zzaf();
        if (TextUtils.isEmpty(zzgVar.getGmpAppId()) && (!zzn.zzic() || TextUtils.isEmpty(zzgVar.zzgw()))) {
            zzb(zzgVar.zzal(), 204, null, null, null);
            return;
        }
        zzn zznVarZzgq = this.zzadj.zzgq();
        Uri.Builder builder = new Uri.Builder();
        String gmpAppId = zzgVar.getGmpAppId();
        if (TextUtils.isEmpty(gmpAppId) && zzn.zzic()) {
            gmpAppId = zzgVar.zzgw();
        }
        Uri.Builder builderEncodedAuthority = builder.scheme(zzaf.zzajh.get()).encodedAuthority(zzaf.zzaji.get());
        String strValueOf = String.valueOf(gmpAppId);
        builderEncodedAuthority.path(strValueOf.length() != 0 ? "config/app/".concat(strValueOf) : new String("config/app/")).appendQueryParameter("app_instance_id", zzgVar.getAppInstanceId()).appendQueryParameter("platform", AbstractSpiCall.ANDROID_CLIENT_TYPE).appendQueryParameter("gmp_version", String.valueOf(zznVarZzgq.zzhc()));
        String string = builder.build().toString();
        try {
            URL url = new URL(string);
            this.zzadj.zzgo().zzjl().zzg("Fetching remote configuration", zzgVar.zzal());
            zzgb zzgbVarZzcf = zzln().zzcf(zzgVar.zzal());
            String strZzcg = zzln().zzcg(zzgVar.zzal());
            if (zzgbVarZzcf == null || TextUtils.isEmpty(strZzcg)) {
                arrayMap = null;
            } else {
                ArrayMap arrayMap2 = new ArrayMap();
                arrayMap2.put("If-Modified-Since", strZzcg);
                arrayMap = arrayMap2;
            }
            this.zzatp = true;
            zzat zzatVarZzlo = zzlo();
            String strZzal = zzgVar.zzal();
            zzfd zzfdVar = new zzfd(this);
            zzatVarZzlo.zzaf();
            zzatVarZzlo.zzcl();
            Preconditions.checkNotNull(url);
            Preconditions.checkNotNull(zzfdVar);
            zzatVarZzlo.zzgn().zzd(new zzax(zzatVarZzlo, strZzal, url, null, arrayMap, zzfdVar));
        } catch (MalformedURLException unused) {
            this.zzadj.zzgo().zzjd().zze("Failed to parse config URL. Not fetching. appId", zzap.zzbv(zzgVar.zzal()), string);
        }
    }

    final void zzb(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        zzaf();
        zzlr();
        Preconditions.checkNotEmpty(str);
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } catch (Throwable th2) {
                this.zzatp = false;
                zzlw();
                throw th2;
            }
        }
        this.zzadj.zzgo().zzjl().zzg("onConfigFetched. Response size", Integer.valueOf(bArr.length));
        zzjq().beginTransaction();
        try {
            zzg zzgVarZzbl = zzjq().zzbl(str);
            boolean z = true;
            boolean z2 = (i == 200 || i == 204 || i == 304) && th == null;
            if (zzgVarZzbl == null) {
                this.zzadj.zzgo().zzjg().zzg("App does not exist in onConfigFetched. appId", zzap.zzbv(str));
            } else if (z2 || i == 404) {
                List<String> list = map != null ? map.get("Last-Modified") : null;
                String str2 = (list == null || list.size() <= 0) ? null : list.get(0);
                if (i == 404 || i == 304) {
                    if (zzln().zzcf(str) == null && !zzln().zza(str, null, null)) {
                        zzjq().endTransaction();
                        this.zzatp = false;
                        zzlw();
                        return;
                    }
                } else if (!zzln().zza(str, bArr, str2)) {
                    zzjq().endTransaction();
                    this.zzatp = false;
                    zzlw();
                    return;
                }
                zzgVarZzbl.zzy(this.zzadj.zzbx().currentTimeMillis());
                zzjq().zza(zzgVarZzbl);
                if (i == 404) {
                    this.zzadj.zzgo().zzji().zzg("Config not found. Using empty config. appId", str);
                } else {
                    this.zzadj.zzgo().zzjl().zze("Successfully fetched config. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
                }
                if (zzlo().zzfb() && zzlu()) {
                    zzlt();
                } else {
                    zzlv();
                }
            } else {
                zzgVarZzbl.zzz(this.zzadj.zzbx().currentTimeMillis());
                zzjq().zza(zzgVarZzbl);
                this.zzadj.zzgo().zzjl().zze("Fetching config failed. code, error", Integer.valueOf(i), th);
                zzln().zzch(str);
                this.zzadj.zzgp().zzanf.set(this.zzadj.zzbx().currentTimeMillis());
                if (i != 503 && i != 429) {
                    z = false;
                }
                if (z) {
                    this.zzadj.zzgp().zzang.set(this.zzadj.zzbx().currentTimeMillis());
                }
                zzlv();
            }
            zzjq().setTransactionSuccessful();
            zzjq().endTransaction();
            this.zzatp = false;
            zzlw();
        } catch (Throwable th3) {
            zzjq().endTransaction();
            throw th3;
        }
    }

    private final void zzlv() {
        long jMax;
        long jMax2;
        zzaf();
        zzlr();
        if (zzlz()) {
            if (this.zzatl > 0) {
                long jAbs = 3600000 - Math.abs(this.zzadj.zzbx().elapsedRealtime() - this.zzatl);
                if (jAbs > 0) {
                    this.zzadj.zzgo().zzjl().zzg("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(jAbs));
                    zzlp().unregister();
                    zzlq().cancel();
                    return;
                }
                this.zzatl = 0L;
            }
            if (!this.zzadj.zzkr() || !zzlu()) {
                this.zzadj.zzgo().zzjl().zzbx("Nothing to upload or uploading impossible");
                zzlp().unregister();
                zzlq().cancel();
                return;
            }
            long jCurrentTimeMillis = this.zzadj.zzbx().currentTimeMillis();
            long jMax3 = Math.max(0L, zzaf.zzakd.get().longValue());
            boolean z = zzjq().zzij() || zzjq().zzie();
            if (z) {
                String strZzhy = this.zzadj.zzgq().zzhy();
                if (!TextUtils.isEmpty(strZzhy) && !".none.".equals(strZzhy)) {
                    jMax = Math.max(0L, zzaf.zzajy.get().longValue());
                } else {
                    jMax = Math.max(0L, zzaf.zzajx.get().longValue());
                }
            } else {
                jMax = Math.max(0L, zzaf.zzajw.get().longValue());
            }
            long j = this.zzadj.zzgp().zzane.get();
            long j2 = this.zzadj.zzgp().zzanf.get();
            long j3 = jMax;
            long jMax4 = Math.max(zzjq().zzig(), zzjq().zzih());
            if (jMax4 != 0) {
                long jAbs2 = jCurrentTimeMillis - Math.abs(jMax4 - jCurrentTimeMillis);
                long jAbs3 = jCurrentTimeMillis - Math.abs(j - jCurrentTimeMillis);
                long jAbs4 = jCurrentTimeMillis - Math.abs(j2 - jCurrentTimeMillis);
                long jMax5 = Math.max(jAbs3, jAbs4);
                long jMin = jAbs2 + jMax3;
                if (z && jMax5 > 0) {
                    jMin = Math.min(jAbs2, jMax5) + j3;
                }
                jMax2 = !zzjo().zzb(jMax5, j3) ? jMax5 + j3 : jMin;
                if (jAbs4 != 0 && jAbs4 >= jAbs2) {
                    int i = 0;
                    while (true) {
                        if (i >= Math.min(20, Math.max(0, zzaf.zzakf.get().intValue()))) {
                            jMax2 = 0;
                            break;
                        }
                        jMax2 += Math.max(0L, zzaf.zzake.get().longValue()) * (1 << i);
                        if (jMax2 > jAbs4) {
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            } else {
                jMax2 = 0;
            }
            if (jMax2 == 0) {
                this.zzadj.zzgo().zzjl().zzbx("Next upload time is 0");
                zzlp().unregister();
                zzlq().cancel();
                return;
            }
            if (!zzlo().zzfb()) {
                this.zzadj.zzgo().zzjl().zzbx("No network");
                zzlp().zzey();
                zzlq().cancel();
                return;
            }
            long j4 = this.zzadj.zzgp().zzang.get();
            long jMax6 = Math.max(0L, zzaf.zzaju.get().longValue());
            if (!zzjo().zzb(j4, jMax6)) {
                jMax2 = Math.max(jMax2, j4 + jMax6);
            }
            zzlp().unregister();
            long jCurrentTimeMillis2 = jMax2 - this.zzadj.zzbx().currentTimeMillis();
            if (jCurrentTimeMillis2 <= 0) {
                jCurrentTimeMillis2 = Math.max(0L, zzaf.zzajz.get().longValue());
                this.zzadj.zzgp().zzane.set(this.zzadj.zzbx().currentTimeMillis());
            }
            this.zzadj.zzgo().zzjl().zzg("Upload scheduled in approximately ms", Long.valueOf(jCurrentTimeMillis2));
            zzlq().zzh(jCurrentTimeMillis2);
        }
    }

    final void zzg(Runnable runnable) {
        zzaf();
        if (this.zzatm == null) {
            this.zzatm = new ArrayList();
        }
        this.zzatm.add(runnable);
    }

    private final void zzlw() {
        zzaf();
        if (this.zzatp || this.zzatq || this.zzatr) {
            this.zzadj.zzgo().zzjl().zzd("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzatp), Boolean.valueOf(this.zzatq), Boolean.valueOf(this.zzatr));
            return;
        }
        this.zzadj.zzgo().zzjl().zzbx("Stopping uploading service(s)");
        List<Runnable> list = this.zzatm;
        if (list == null) {
            return;
        }
        Iterator<Runnable> it = list.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        this.zzatm.clear();
    }

    private final Boolean zzc(zzg zzgVar) {
        try {
            if (zzgVar.zzha() != -2147483648L) {
                if (zzgVar.zzha() == Wrappers.packageManager(this.zzadj.getContext()).getPackageInfo(zzgVar.zzal(), 0).versionCode) {
                    return true;
                }
            } else {
                String str = Wrappers.packageManager(this.zzadj.getContext()).getPackageInfo(zzgVar.zzal(), 0).versionName;
                if (zzgVar.zzak() != null && zzgVar.zzak().equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private final boolean zzlx() {
        zzaf();
        try {
            this.zzatt = new RandomAccessFile(new File(this.zzadj.getContext().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.zzats = this.zzatt.tryLock();
            if (this.zzats != null) {
                this.zzadj.zzgo().zzjl().zzbx("Storage concurrent access okay");
                return true;
            }
            this.zzadj.zzgo().zzjd().zzbx("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e) {
            this.zzadj.zzgo().zzjd().zzg("Failed to acquire storage lock", e);
            return false;
        } catch (IOException e2) {
            this.zzadj.zzgo().zzjd().zzg("Failed to access storage lock file", e2);
            return false;
        }
    }

    private final int zza(FileChannel fileChannel) {
        zzaf();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.zzadj.zzgo().zzjd().zzbx("Bad channel to read from");
            return 0;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        try {
            fileChannel.position(0L);
            int i = fileChannel.read(byteBufferAllocate);
            if (i == 4) {
                byteBufferAllocate.flip();
                return byteBufferAllocate.getInt();
            }
            if (i != -1) {
                this.zzadj.zzgo().zzjg().zzg("Unexpected data length. Bytes read", Integer.valueOf(i));
            }
            return 0;
        } catch (IOException e) {
            this.zzadj.zzgo().zzjd().zzg("Failed to read from channel", e);
            return 0;
        }
    }

    private final boolean zza(int i, FileChannel fileChannel) {
        zzaf();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.zzadj.zzgo().zzjd().zzbx("Bad channel to read from");
            return false;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.flip();
        try {
            fileChannel.truncate(0L);
            fileChannel.write(byteBufferAllocate);
            fileChannel.force(true);
            if (fileChannel.size() != 4) {
                this.zzadj.zzgo().zzjd().zzg("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            }
            return true;
        } catch (IOException e) {
            this.zzadj.zzgo().zzjd().zzg("Failed to write to channel", e);
            return false;
        }
    }

    final void zzly() {
        zzaf();
        zzlr();
        if (this.zzatk) {
            return;
        }
        this.zzadj.zzgo().zzjj().zzbx("This instance being marked as an uploader");
        zzaf();
        zzlr();
        if (zzlz() && zzlx()) {
            int iZza = zza(this.zzatt);
            int iZzja = this.zzadj.zzgf().zzja();
            zzaf();
            if (iZza > iZzja) {
                this.zzadj.zzgo().zzjd().zze("Panic: can't downgrade version. Previous, current version", Integer.valueOf(iZza), Integer.valueOf(iZzja));
            } else if (iZza < iZzja) {
                if (zza(iZzja, this.zzatt)) {
                    this.zzadj.zzgo().zzjl().zze("Storage version upgraded. Previous, current version", Integer.valueOf(iZza), Integer.valueOf(iZzja));
                } else {
                    this.zzadj.zzgo().zzjd().zze("Storage version upgrade failed. Previous, current version", Integer.valueOf(iZza), Integer.valueOf(iZzja));
                }
            }
        }
        this.zzatk = true;
        zzlv();
    }

    private final boolean zzlz() {
        zzaf();
        zzlr();
        return this.zzatk;
    }

    final void zzd(zzh zzhVar) throws PackageManager.NameNotFoundException {
        if (this.zzatu != null) {
            this.zzatv = new ArrayList();
            this.zzatv.addAll(this.zzatu);
        }
        zzq zzqVarZzjq = zzjq();
        String str = zzhVar.packageName;
        Preconditions.checkNotEmpty(str);
        zzqVarZzjq.zzaf();
        zzqVarZzjq.zzcl();
        try {
            SQLiteDatabase writableDatabase = zzqVarZzjq.getWritableDatabase();
            String[] strArr = {str};
            int iDelete = writableDatabase.delete("apps", "app_id=?", strArr) + 0 + writableDatabase.delete("events", "app_id=?", strArr) + writableDatabase.delete("user_attributes", "app_id=?", strArr) + writableDatabase.delete("conditional_properties", "app_id=?", strArr) + writableDatabase.delete("raw_events", "app_id=?", strArr) + writableDatabase.delete("raw_events_metadata", "app_id=?", strArr) + writableDatabase.delete("queue", "app_id=?", strArr) + writableDatabase.delete("audience_filter_values", "app_id=?", strArr) + writableDatabase.delete("main_event_params", "app_id=?", strArr);
            if (iDelete > 0) {
                zzqVarZzjq.zzgo().zzjl().zze("Reset analytics data. app, records", str, Integer.valueOf(iDelete));
            }
        } catch (SQLiteException e) {
            zzqVarZzjq.zzgo().zzjd().zze("Error resetting analytics data. appId, error", zzap.zzbv(str), e);
        }
        zzh zzhVarZza = zza(this.zzadj.getContext(), zzhVar.packageName, zzhVar.zzafx, zzhVar.zzagg, zzhVar.zzagi, zzhVar.zzagj, zzhVar.zzagx, zzhVar.zzagk);
        if (!this.zzadj.zzgq().zzbd(zzhVar.packageName) || zzhVar.zzagg) {
            zzf(zzhVarZza);
        }
    }

    private final zzh zza(Context context, String str, String str2, boolean z, boolean z2, boolean z3, long j, String str3) {
        String str4;
        String str5;
        int i;
        String installerPackageName = "Unknown";
        String string = "Unknown";
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            this.zzadj.zzgo().zzjd().zzbx("PackageManager is null, can not log app install information");
            return null;
        }
        try {
            installerPackageName = packageManager.getInstallerPackageName(str);
        } catch (IllegalArgumentException unused) {
            this.zzadj.zzgo().zzjd().zzg("Error retrieving installer package name. appId", zzap.zzbv(str));
        }
        if (installerPackageName == null) {
            str4 = "manual_install";
        } else {
            str4 = "com.android.vending".equals(installerPackageName) ? "" : installerPackageName;
        }
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 0);
            if (packageInfo != null) {
                CharSequence applicationLabel = Wrappers.packageManager(context).getApplicationLabel(str);
                string = TextUtils.isEmpty(applicationLabel) ? "Unknown" : applicationLabel.toString();
                str5 = packageInfo.versionName;
                i = packageInfo.versionCode;
            } else {
                str5 = "Unknown";
                i = Integer.MIN_VALUE;
            }
            this.zzadj.zzgr();
            return new zzh(str, str2, str5, i, str4, this.zzadj.zzgq().zzhc(), this.zzadj.zzgm().zzd(context, str), (String) null, z, false, "", 0L, this.zzadj.zzgq().zzbe(str) ? j : 0L, 0, z2, z3, false, str3);
        } catch (PackageManager.NameNotFoundException unused2) {
            this.zzadj.zzgo().zzjd().zze("Error retrieving newly installed package info. appId, appName", zzap.zzbv(str), string);
            return null;
        }
    }

    final void zzb(zzfh zzfhVar, zzh zzhVar) {
        zzfj zzfjVarZzi;
        zzaf();
        zzlr();
        if (TextUtils.isEmpty(zzhVar.zzafx) && TextUtils.isEmpty(zzhVar.zzagk)) {
            return;
        }
        if (!zzhVar.zzagg) {
            zzg(zzhVar);
            return;
        }
        if (this.zzadj.zzgq().zze(zzhVar.packageName, zzaf.zzalj) && "_ap".equals(zzfhVar.name) && (zzfjVarZzi = zzjq().zzi(zzhVar.packageName, "_ap")) != null && "auto".equals(zzfhVar.origin) && !"auto".equals(zzfjVarZzi.origin)) {
            this.zzadj.zzgo().zzjk().zzbx("Not setting lower priority ad personalization property");
            return;
        }
        int iZzcs = this.zzadj.zzgm().zzcs(zzfhVar.name);
        if (iZzcs != 0) {
            this.zzadj.zzgm();
            this.zzadj.zzgm().zza(zzhVar.packageName, iZzcs, "_ev", zzfk.zza(zzfhVar.name, 24, true), zzfhVar.name != null ? zzfhVar.name.length() : 0);
            return;
        }
        int iZzi = this.zzadj.zzgm().zzi(zzfhVar.name, zzfhVar.getValue());
        if (iZzi != 0) {
            this.zzadj.zzgm();
            String strZza = zzfk.zza(zzfhVar.name, 24, true);
            Object value = zzfhVar.getValue();
            this.zzadj.zzgm().zza(zzhVar.packageName, iZzi, "_ev", strZza, (value == null || !((value instanceof String) || (value instanceof CharSequence))) ? 0 : String.valueOf(value).length());
            return;
        }
        Object objZzj = this.zzadj.zzgm().zzj(zzfhVar.name, zzfhVar.getValue());
        if (objZzj == null) {
            return;
        }
        zzfj zzfjVar = new zzfj(zzhVar.packageName, zzfhVar.origin, zzfhVar.name, zzfhVar.zzaue, objZzj);
        this.zzadj.zzgo().zzjk().zze("Setting user property", this.zzadj.zzgl().zzbu(zzfjVar.name), objZzj);
        zzjq().beginTransaction();
        try {
            zzg(zzhVar);
            boolean zZza = zzjq().zza(zzfjVar);
            zzjq().setTransactionSuccessful();
            if (zZza) {
                this.zzadj.zzgo().zzjk().zze("User property set", this.zzadj.zzgl().zzbu(zzfjVar.name), zzfjVar.value);
            } else {
                this.zzadj.zzgo().zzjd().zze("Too many unique user properties are set. Ignoring user property", this.zzadj.zzgl().zzbu(zzfjVar.name), zzfjVar.value);
                this.zzadj.zzgm().zza(zzhVar.packageName, 9, (String) null, (String) null, 0);
            }
        } finally {
            zzjq().endTransaction();
        }
    }

    final void zzc(zzfh zzfhVar, zzh zzhVar) {
        zzfj zzfjVarZzi;
        zzaf();
        zzlr();
        if (TextUtils.isEmpty(zzhVar.zzafx) && TextUtils.isEmpty(zzhVar.zzagk)) {
            return;
        }
        if (!zzhVar.zzagg) {
            zzg(zzhVar);
            return;
        }
        if (this.zzadj.zzgq().zze(zzhVar.packageName, zzaf.zzalj) && "_ap".equals(zzfhVar.name) && (zzfjVarZzi = zzjq().zzi(zzhVar.packageName, "_ap")) != null && "auto".equals(zzfhVar.origin) && !"auto".equals(zzfjVarZzi.origin)) {
            this.zzadj.zzgo().zzjk().zzbx("Not removing higher priority ad personalization property");
            return;
        }
        this.zzadj.zzgo().zzjk().zzg("Removing user property", this.zzadj.zzgl().zzbu(zzfhVar.name));
        zzjq().beginTransaction();
        try {
            zzg(zzhVar);
            zzjq().zzh(zzhVar.packageName, zzfhVar.name);
            zzjq().setTransactionSuccessful();
            this.zzadj.zzgo().zzjk().zzg("User property removed", this.zzadj.zzgl().zzbu(zzfhVar.name));
        } finally {
            zzjq().endTransaction();
        }
    }

    final void zzb(zzez zzezVar) {
        this.zzatn++;
    }

    final void zzma() {
        this.zzato++;
    }

    final zzbt zzmb() {
        return this.zzadj;
    }

    final void zzf(zzh zzhVar) throws PackageManager.NameNotFoundException {
        int i;
        zzz zzzVarZzg;
        long j;
        PackageInfo packageInfo;
        ApplicationInfo applicationInfo;
        boolean z;
        zzaf();
        zzlr();
        Preconditions.checkNotNull(zzhVar);
        Preconditions.checkNotEmpty(zzhVar.packageName);
        if (TextUtils.isEmpty(zzhVar.zzafx) && TextUtils.isEmpty(zzhVar.zzagk)) {
            return;
        }
        zzg zzgVarZzbl = zzjq().zzbl(zzhVar.packageName);
        if (zzgVarZzbl != null && TextUtils.isEmpty(zzgVarZzbl.getGmpAppId()) && !TextUtils.isEmpty(zzhVar.zzafx)) {
            zzgVarZzbl.zzy(0L);
            zzjq().zza(zzgVarZzbl);
            zzln().zzci(zzhVar.packageName);
        }
        if (!zzhVar.zzagg) {
            zzg(zzhVar);
            return;
        }
        long jCurrentTimeMillis = zzhVar.zzagx;
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = this.zzadj.zzbx().currentTimeMillis();
        }
        int i2 = zzhVar.zzagy;
        if (i2 == 0 || i2 == 1) {
            i = i2;
        } else {
            this.zzadj.zzgo().zzjg().zze("Incorrect app type, assuming installed app. appId, appType", zzap.zzbv(zzhVar.packageName), Integer.valueOf(i2));
            i = 0;
        }
        zzjq().beginTransaction();
        try {
            zzg zzgVarZzbl2 = zzjq().zzbl(zzhVar.packageName);
            if (zzgVarZzbl2 != null) {
                this.zzadj.zzgm();
                if (zzfk.zza(zzhVar.zzafx, zzgVarZzbl2.getGmpAppId(), zzhVar.zzagk, zzgVarZzbl2.zzgw())) {
                    this.zzadj.zzgo().zzjg().zzg("New GMP App Id passed in. Removing cached database data. appId", zzap.zzbv(zzgVarZzbl2.zzal()));
                    zzq zzqVarZzjq = zzjq();
                    String strZzal = zzgVarZzbl2.zzal();
                    zzqVarZzjq.zzcl();
                    zzqVarZzjq.zzaf();
                    Preconditions.checkNotEmpty(strZzal);
                    try {
                        SQLiteDatabase writableDatabase = zzqVarZzjq.getWritableDatabase();
                        String[] strArr = {strZzal};
                        int iDelete = writableDatabase.delete("events", "app_id=?", strArr) + 0 + writableDatabase.delete("user_attributes", "app_id=?", strArr) + writableDatabase.delete("conditional_properties", "app_id=?", strArr) + writableDatabase.delete("apps", "app_id=?", strArr) + writableDatabase.delete("raw_events", "app_id=?", strArr) + writableDatabase.delete("raw_events_metadata", "app_id=?", strArr) + writableDatabase.delete("event_filters", "app_id=?", strArr) + writableDatabase.delete("property_filters", "app_id=?", strArr) + writableDatabase.delete("audience_filter_values", "app_id=?", strArr);
                        if (iDelete > 0) {
                            zzqVarZzjq.zzgo().zzjl().zze("Deleted application data. app, records", strZzal, Integer.valueOf(iDelete));
                        }
                    } catch (SQLiteException e) {
                        zzqVarZzjq.zzgo().zzjd().zze("Error deleting application data. appId, error", zzap.zzbv(strZzal), e);
                    }
                    zzgVarZzbl2 = null;
                }
            }
            if (zzgVarZzbl2 != null) {
                if (zzgVarZzbl2.zzha() != -2147483648L) {
                    if (zzgVarZzbl2.zzha() != zzhVar.zzagd) {
                        Bundle bundle = new Bundle();
                        bundle.putString("_pv", zzgVarZzbl2.zzak());
                        zzc(new zzad("_au", new zzaa(bundle), "auto", jCurrentTimeMillis), zzhVar);
                    }
                } else if (zzgVarZzbl2.zzak() != null && !zzgVarZzbl2.zzak().equals(zzhVar.zzts)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("_pv", zzgVarZzbl2.zzak());
                    zzc(new zzad("_au", new zzaa(bundle2), "auto", jCurrentTimeMillis), zzhVar);
                }
            }
            zzg(zzhVar);
            if (i == 0) {
                zzzVarZzg = zzjq().zzg(zzhVar.packageName, "_f");
            } else {
                zzzVarZzg = i == 1 ? zzjq().zzg(zzhVar.packageName, "_v") : null;
            }
            if (zzzVarZzg == null) {
                long j2 = ((jCurrentTimeMillis / 3600000) + 1) * 3600000;
                if (i == 0) {
                    j = 1;
                    zzb(new zzfh("_fot", jCurrentTimeMillis, Long.valueOf(j2), "auto"), zzhVar);
                    if (this.zzadj.zzgq().zzbg(zzhVar.zzafx)) {
                        zzaf();
                        this.zzadj.zzkg().zzcd(zzhVar.packageName);
                    }
                    zzaf();
                    zzlr();
                    Bundle bundle3 = new Bundle();
                    bundle3.putLong("_c", 1L);
                    bundle3.putLong("_r", 1L);
                    bundle3.putLong("_uwa", 0L);
                    bundle3.putLong("_pfo", 0L);
                    bundle3.putLong("_sys", 0L);
                    bundle3.putLong("_sysu", 0L);
                    if (this.zzadj.zzgq().zzbd(zzhVar.packageName) && zzhVar.zzagz) {
                        bundle3.putLong("_dac", 1L);
                    }
                    if (this.zzadj.getContext().getPackageManager() == null) {
                        this.zzadj.zzgo().zzjd().zzg("PackageManager is null, first open report might be inaccurate. appId", zzap.zzbv(zzhVar.packageName));
                    } else {
                        try {
                            packageInfo = Wrappers.packageManager(this.zzadj.getContext()).getPackageInfo(zzhVar.packageName, 0);
                        } catch (PackageManager.NameNotFoundException e2) {
                            this.zzadj.zzgo().zzjd().zze("Package info is null, first open report might be inaccurate. appId", zzap.zzbv(zzhVar.packageName), e2);
                            packageInfo = null;
                        }
                        if (packageInfo != null && packageInfo.firstInstallTime != 0) {
                            if (packageInfo.firstInstallTime != packageInfo.lastUpdateTime) {
                                bundle3.putLong("_uwa", 1L);
                                z = false;
                            } else {
                                z = true;
                            }
                            zzb(new zzfh("_fi", jCurrentTimeMillis, Long.valueOf(z ? 1L : 0L), "auto"), zzhVar);
                        }
                        try {
                            applicationInfo = Wrappers.packageManager(this.zzadj.getContext()).getApplicationInfo(zzhVar.packageName, 0);
                        } catch (PackageManager.NameNotFoundException e3) {
                            this.zzadj.zzgo().zzjd().zze("Application info is null, first open report might be inaccurate. appId", zzap.zzbv(zzhVar.packageName), e3);
                            applicationInfo = null;
                        }
                        if (applicationInfo != null) {
                            if ((applicationInfo.flags & 1) != 0) {
                                bundle3.putLong("_sys", 1L);
                            }
                            if ((applicationInfo.flags & 128) != 0) {
                                bundle3.putLong("_sysu", 1L);
                            }
                        }
                    }
                    zzq zzqVarZzjq2 = zzjq();
                    String str = zzhVar.packageName;
                    Preconditions.checkNotEmpty(str);
                    zzqVarZzjq2.zzaf();
                    zzqVarZzjq2.zzcl();
                    long jZzn = zzqVarZzjq2.zzn(str, "first_open_count");
                    if (jZzn >= 0) {
                        bundle3.putLong("_pfo", jZzn);
                    }
                    zzc(new zzad("_f", new zzaa(bundle3), "auto", jCurrentTimeMillis), zzhVar);
                } else {
                    j = 1;
                    if (i == 1) {
                        zzb(new zzfh("_fvt", jCurrentTimeMillis, Long.valueOf(j2), "auto"), zzhVar);
                        zzaf();
                        zzlr();
                        Bundle bundle4 = new Bundle();
                        bundle4.putLong("_c", 1L);
                        bundle4.putLong("_r", 1L);
                        if (this.zzadj.zzgq().zzbd(zzhVar.packageName) && zzhVar.zzagz) {
                            bundle4.putLong("_dac", 1L);
                        }
                        zzc(new zzad("_v", new zzaa(bundle4), "auto", jCurrentTimeMillis), zzhVar);
                    }
                }
                Bundle bundle5 = new Bundle();
                bundle5.putLong("_et", j);
                zzc(new zzad("_e", new zzaa(bundle5), "auto", jCurrentTimeMillis), zzhVar);
            } else if (zzhVar.zzagw) {
                zzc(new zzad("_cd", new zzaa(new Bundle()), "auto", jCurrentTimeMillis), zzhVar);
            }
            zzjq().setTransactionSuccessful();
            zzjq().endTransaction();
        } catch (Throwable th) {
            zzjq().endTransaction();
            throw th;
        }
    }

    private final zzh zzco(String str) {
        zzg zzgVarZzbl = zzjq().zzbl(str);
        if (zzgVarZzbl == null || TextUtils.isEmpty(zzgVarZzbl.zzak())) {
            this.zzadj.zzgo().zzjk().zzg("No app data available; dropping", str);
            return null;
        }
        Boolean boolZzc = zzc(zzgVarZzbl);
        if (boolZzc != null && !boolZzc.booleanValue()) {
            this.zzadj.zzgo().zzjd().zzg("App version does not match; dropping. appId", zzap.zzbv(str));
            return null;
        }
        return new zzh(str, zzgVarZzbl.getGmpAppId(), zzgVarZzbl.zzak(), zzgVarZzbl.zzha(), zzgVarZzbl.zzhb(), zzgVarZzbl.zzhc(), zzgVarZzbl.zzhd(), (String) null, zzgVarZzbl.isMeasurementEnabled(), false, zzgVarZzbl.getFirebaseInstanceId(), zzgVarZzbl.zzhq(), 0L, 0, zzgVarZzbl.zzhr(), zzgVarZzbl.zzhs(), false, zzgVarZzbl.zzgw());
    }

    final void zze(zzl zzlVar) {
        zzh zzhVarZzco = zzco(zzlVar.packageName);
        if (zzhVarZzco != null) {
            zzb(zzlVar, zzhVarZzco);
        }
    }

    final void zzb(zzl zzlVar, zzh zzhVar) {
        Preconditions.checkNotNull(zzlVar);
        Preconditions.checkNotEmpty(zzlVar.packageName);
        Preconditions.checkNotNull(zzlVar.origin);
        Preconditions.checkNotNull(zzlVar.zzahb);
        Preconditions.checkNotEmpty(zzlVar.zzahb.name);
        zzaf();
        zzlr();
        if (TextUtils.isEmpty(zzhVar.zzafx) && TextUtils.isEmpty(zzhVar.zzagk)) {
            return;
        }
        if (!zzhVar.zzagg) {
            zzg(zzhVar);
            return;
        }
        zzl zzlVar2 = new zzl(zzlVar);
        boolean z = false;
        zzlVar2.active = false;
        zzjq().beginTransaction();
        try {
            zzl zzlVarZzj = zzjq().zzj(zzlVar2.packageName, zzlVar2.zzahb.name);
            if (zzlVarZzj != null && !zzlVarZzj.origin.equals(zzlVar2.origin)) {
                this.zzadj.zzgo().zzjg().zzd("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzadj.zzgl().zzbu(zzlVar2.zzahb.name), zzlVar2.origin, zzlVarZzj.origin);
            }
            if (zzlVarZzj != null && zzlVarZzj.active) {
                zzlVar2.origin = zzlVarZzj.origin;
                zzlVar2.creationTimestamp = zzlVarZzj.creationTimestamp;
                zzlVar2.triggerTimeout = zzlVarZzj.triggerTimeout;
                zzlVar2.triggerEventName = zzlVarZzj.triggerEventName;
                zzlVar2.zzahd = zzlVarZzj.zzahd;
                zzlVar2.active = zzlVarZzj.active;
                zzlVar2.zzahb = new zzfh(zzlVar2.zzahb.name, zzlVarZzj.zzahb.zzaue, zzlVar2.zzahb.getValue(), zzlVarZzj.zzahb.origin);
            } else if (TextUtils.isEmpty(zzlVar2.triggerEventName)) {
                zzlVar2.zzahb = new zzfh(zzlVar2.zzahb.name, zzlVar2.creationTimestamp, zzlVar2.zzahb.getValue(), zzlVar2.zzahb.origin);
                zzlVar2.active = true;
                z = true;
            }
            if (zzlVar2.active) {
                zzfh zzfhVar = zzlVar2.zzahb;
                zzfj zzfjVar = new zzfj(zzlVar2.packageName, zzlVar2.origin, zzfhVar.name, zzfhVar.zzaue, zzfhVar.getValue());
                if (zzjq().zza(zzfjVar)) {
                    this.zzadj.zzgo().zzjk().zzd("User property updated immediately", zzlVar2.packageName, this.zzadj.zzgl().zzbu(zzfjVar.name), zzfjVar.value);
                } else {
                    this.zzadj.zzgo().zzjd().zzd("(2)Too many active user properties, ignoring", zzap.zzbv(zzlVar2.packageName), this.zzadj.zzgl().zzbu(zzfjVar.name), zzfjVar.value);
                }
                if (z && zzlVar2.zzahd != null) {
                    zzd(new zzad(zzlVar2.zzahd, zzlVar2.creationTimestamp), zzhVar);
                }
            }
            if (zzjq().zza(zzlVar2)) {
                this.zzadj.zzgo().zzjk().zzd("Conditional property added", zzlVar2.packageName, this.zzadj.zzgl().zzbu(zzlVar2.zzahb.name), zzlVar2.zzahb.getValue());
            } else {
                this.zzadj.zzgo().zzjd().zzd("Too many conditional properties, ignoring", zzap.zzbv(zzlVar2.packageName), this.zzadj.zzgl().zzbu(zzlVar2.zzahb.name), zzlVar2.zzahb.getValue());
            }
            zzjq().setTransactionSuccessful();
        } finally {
            zzjq().endTransaction();
        }
    }

    final void zzf(zzl zzlVar) {
        zzh zzhVarZzco = zzco(zzlVar.packageName);
        if (zzhVarZzco != null) {
            zzc(zzlVar, zzhVarZzco);
        }
    }

    final void zzc(zzl zzlVar, zzh zzhVar) {
        Preconditions.checkNotNull(zzlVar);
        Preconditions.checkNotEmpty(zzlVar.packageName);
        Preconditions.checkNotNull(zzlVar.zzahb);
        Preconditions.checkNotEmpty(zzlVar.zzahb.name);
        zzaf();
        zzlr();
        if (TextUtils.isEmpty(zzhVar.zzafx) && TextUtils.isEmpty(zzhVar.zzagk)) {
            return;
        }
        if (!zzhVar.zzagg) {
            zzg(zzhVar);
            return;
        }
        zzjq().beginTransaction();
        try {
            zzg(zzhVar);
            zzl zzlVarZzj = zzjq().zzj(zzlVar.packageName, zzlVar.zzahb.name);
            if (zzlVarZzj != null) {
                this.zzadj.zzgo().zzjk().zze("Removing conditional user property", zzlVar.packageName, this.zzadj.zzgl().zzbu(zzlVar.zzahb.name));
                zzjq().zzk(zzlVar.packageName, zzlVar.zzahb.name);
                if (zzlVarZzj.active) {
                    zzjq().zzh(zzlVar.packageName, zzlVar.zzahb.name);
                }
                if (zzlVar.zzahe != null) {
                    zzd(this.zzadj.zzgm().zza(zzlVar.packageName, zzlVar.zzahe.name, zzlVar.zzahe.zzaid != null ? zzlVar.zzahe.zzaid.zziv() : null, zzlVarZzj.origin, zzlVar.zzahe.zzaip, true, false), zzhVar);
                }
            } else {
                this.zzadj.zzgo().zzjg().zze("Conditional user property doesn't exist", zzap.zzbv(zzlVar.packageName), this.zzadj.zzgl().zzbu(zzlVar.zzahb.name));
            }
            zzjq().setTransactionSuccessful();
        } finally {
            zzjq().endTransaction();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzg zzg(zzh zzhVar) {
        boolean z;
        zzaf();
        zzlr();
        Preconditions.checkNotNull(zzhVar);
        Preconditions.checkNotEmpty(zzhVar.packageName);
        zzg zzgVarZzbl = zzjq().zzbl(zzhVar.packageName);
        String strZzbz = this.zzadj.zzgp().zzbz(zzhVar.packageName);
        if (zzgVarZzbl == null) {
            zzgVarZzbl = new zzg(this.zzadj, zzhVar.packageName);
            zzgVarZzbl.zzam(this.zzadj.zzgm().zzmf());
            zzgVarZzbl.zzap(strZzbz);
            z = true;
        } else if (strZzbz.equals(zzgVarZzbl.zzgx())) {
            z = false;
        } else {
            zzgVarZzbl.zzap(strZzbz);
            zzgVarZzbl.zzam(this.zzadj.zzgm().zzmf());
            z = true;
        }
        if (!TextUtils.equals(zzhVar.zzafx, zzgVarZzbl.getGmpAppId())) {
            zzgVarZzbl.zzan(zzhVar.zzafx);
            z = true;
        }
        if (!TextUtils.equals(zzhVar.zzagk, zzgVarZzbl.zzgw())) {
            zzgVarZzbl.zzao(zzhVar.zzagk);
            z = true;
        }
        if (!TextUtils.isEmpty(zzhVar.zzafz) && !zzhVar.zzafz.equals(zzgVarZzbl.getFirebaseInstanceId())) {
            zzgVarZzbl.zzaq(zzhVar.zzafz);
            z = true;
        }
        if (zzhVar.zzadt != 0 && zzhVar.zzadt != zzgVarZzbl.zzhc()) {
            zzgVarZzbl.zzv(zzhVar.zzadt);
            z = true;
        }
        if (!TextUtils.isEmpty(zzhVar.zzts) && !zzhVar.zzts.equals(zzgVarZzbl.zzak())) {
            zzgVarZzbl.setAppVersion(zzhVar.zzts);
            z = true;
        }
        if (zzhVar.zzagd != zzgVarZzbl.zzha()) {
            zzgVarZzbl.zzu(zzhVar.zzagd);
            z = true;
        }
        if (zzhVar.zzage != null && !zzhVar.zzage.equals(zzgVarZzbl.zzhb())) {
            zzgVarZzbl.zzar(zzhVar.zzage);
            z = true;
        }
        if (zzhVar.zzagf != zzgVarZzbl.zzhd()) {
            zzgVarZzbl.zzw(zzhVar.zzagf);
            z = true;
        }
        if (zzhVar.zzagg != zzgVarZzbl.isMeasurementEnabled()) {
            zzgVarZzbl.setMeasurementEnabled(zzhVar.zzagg);
            z = true;
        }
        if (!TextUtils.isEmpty(zzhVar.zzagv) && !zzhVar.zzagv.equals(zzgVarZzbl.zzho())) {
            zzgVarZzbl.zzas(zzhVar.zzagv);
            z = true;
        }
        if (zzhVar.zzagh != zzgVarZzbl.zzhq()) {
            zzgVarZzbl.zzag(zzhVar.zzagh);
            z = true;
        }
        if (zzhVar.zzagi != zzgVarZzbl.zzhr()) {
            zzgVarZzbl.zze(zzhVar.zzagi);
            z = true;
        }
        if (zzhVar.zzagj != zzgVarZzbl.zzhs()) {
            zzgVarZzbl.zzf(zzhVar.zzagj);
            z = true;
        }
        if (z) {
            zzjq().zza(zzgVarZzbl);
        }
        return zzgVarZzbl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public final byte[] zza(zzad zzadVar, String str) {
        zzfj zzfjVarZzi;
        byte[] bArr;
        long j;
        zzlr();
        zzaf();
        this.zzadj.zzga();
        Preconditions.checkNotNull(zzadVar);
        Preconditions.checkNotEmpty(str);
        zzgh zzghVar = new zzgh();
        zzjq().beginTransaction();
        try {
            zzg zzgVarZzbl = zzjq().zzbl(str);
            if (zzgVarZzbl == null) {
                this.zzadj.zzgo().zzjk().zzg("Log and bundle not available. package_name", str);
                byte[] bArr2 = new byte[0];
                zzjq().endTransaction();
                return bArr2;
            }
            if (!zzgVarZzbl.isMeasurementEnabled()) {
                this.zzadj.zzgo().zzjk().zzg("Log and bundle disabled. package_name", str);
                byte[] bArr3 = new byte[0];
                zzjq().endTransaction();
                return bArr3;
            }
            if (("_iap".equals(zzadVar.name) || "ecommerce_purchase".equals(zzadVar.name)) && !zza(str, zzadVar)) {
                this.zzadj.zzgo().zzjg().zzg("Failed to handle purchase event at single event bundle creation. appId", zzap.zzbv(str));
            }
            boolean zZzax = this.zzadj.zzgq().zzax(str);
            Long l = 0L;
            if (zZzax && "_e".equals(zzadVar.name)) {
                if (zzadVar.zzaid == null || zzadVar.zzaid.size() == 0) {
                    this.zzadj.zzgo().zzjg().zzg("The engagement event does not contain any parameters. appId", zzap.zzbv(str));
                } else if (zzadVar.zzaid.getLong("_et") == null) {
                    this.zzadj.zzgo().zzjg().zzg("The engagement event does not include duration. appId", zzap.zzbv(str));
                } else {
                    l = zzadVar.zzaid.getLong("_et");
                }
            }
            zzgi zzgiVar = new zzgi();
            zzghVar.zzawy = new zzgi[]{zzgiVar};
            zzgiVar.zzaxa = 1;
            zzgiVar.zzaxi = AbstractSpiCall.ANDROID_CLIENT_TYPE;
            zzgiVar.zztt = zzgVarZzbl.zzal();
            zzgiVar.zzage = zzgVarZzbl.zzhb();
            zzgiVar.zzts = zzgVarZzbl.zzak();
            long jZzha = zzgVarZzbl.zzha();
            zzgiVar.zzaxu = jZzha == -2147483648L ? null : Integer.valueOf((int) jZzha);
            zzgiVar.zzaxm = Long.valueOf(zzgVarZzbl.zzhc());
            zzgiVar.zzafx = zzgVarZzbl.getGmpAppId();
            if (TextUtils.isEmpty(zzgiVar.zzafx)) {
                zzgiVar.zzawj = zzgVarZzbl.zzgw();
            }
            zzgiVar.zzaxq = Long.valueOf(zzgVarZzbl.zzhd());
            if (this.zzadj.isEnabled() && zzn.zzhz() && this.zzadj.zzgq().zzav(zzgiVar.zztt)) {
                zzgiVar.zzaya = null;
            }
            Pair<String, Boolean> pairZzby = this.zzadj.zzgp().zzby(zzgVarZzbl.zzal());
            if (zzgVarZzbl.zzhr() && pairZzby != null && !TextUtils.isEmpty((CharSequence) pairZzby.first)) {
                zzgiVar.zzaxo = (String) pairZzby.first;
                zzgiVar.zzaxp = (Boolean) pairZzby.second;
            }
            this.zzadj.zzgk().zzcl();
            zzgiVar.zzaxk = Build.MODEL;
            this.zzadj.zzgk().zzcl();
            zzgiVar.zzaxj = Build.VERSION.RELEASE;
            zzgiVar.zzaxl = Integer.valueOf((int) this.zzadj.zzgk().zzis());
            zzgiVar.zzaia = this.zzadj.zzgk().zzit();
            zzgiVar.zzafw = zzgVarZzbl.getAppInstanceId();
            zzgiVar.zzafz = zzgVarZzbl.getFirebaseInstanceId();
            List<zzfj> listZzbk = zzjq().zzbk(zzgVarZzbl.zzal());
            zzgiVar.zzaxc = new zzgl[listZzbk.size()];
            if (zZzax) {
                zzfjVarZzi = zzjq().zzi(zzgiVar.zztt, "_lte");
                if (zzfjVarZzi == null || zzfjVarZzi.value == null) {
                    zzfjVarZzi = new zzfj(zzgiVar.zztt, "auto", "_lte", this.zzadj.zzbx().currentTimeMillis(), l);
                } else if (l.longValue() > 0) {
                    zzfjVarZzi = new zzfj(zzgiVar.zztt, "auto", "_lte", this.zzadj.zzbx().currentTimeMillis(), Long.valueOf(((Long) zzfjVarZzi.value).longValue() + l.longValue()));
                }
            } else {
                zzfjVarZzi = null;
            }
            zzgl zzglVar = null;
            for (int i = 0; i < listZzbk.size(); i++) {
                zzgl zzglVar2 = new zzgl();
                zzgiVar.zzaxc[i] = zzglVar2;
                zzglVar2.name = listZzbk.get(i).name;
                zzglVar2.zzayl = Long.valueOf(listZzbk.get(i).zzaue);
                zzjo().zza(zzglVar2, listZzbk.get(i).value);
                if (zZzax && "_lte".equals(zzglVar2.name)) {
                    zzglVar2.zzawx = (Long) zzfjVarZzi.value;
                    zzglVar2.zzayl = Long.valueOf(this.zzadj.zzbx().currentTimeMillis());
                    zzglVar = zzglVar2;
                }
            }
            if (zZzax && zzglVar == null) {
                zzgl zzglVar3 = new zzgl();
                zzglVar3.name = "_lte";
                zzglVar3.zzayl = Long.valueOf(this.zzadj.zzbx().currentTimeMillis());
                zzglVar3.zzawx = (Long) zzfjVarZzi.value;
                zzgiVar.zzaxc = (zzgl[]) Arrays.copyOf(zzgiVar.zzaxc, zzgiVar.zzaxc.length + 1);
                zzgiVar.zzaxc[zzgiVar.zzaxc.length - 1] = zzglVar3;
            }
            if (l.longValue() > 0) {
                zzjq().zza(zzfjVarZzi);
            }
            Bundle bundleZziv = zzadVar.zzaid.zziv();
            if ("_iap".equals(zzadVar.name)) {
                bundleZziv.putLong("_c", 1L);
                this.zzadj.zzgo().zzjk().zzbx("Marking in-app purchase as real-time");
                bundleZziv.putLong("_r", 1L);
            }
            bundleZziv.putString("_o", zzadVar.origin);
            if (this.zzadj.zzgm().zzcw(zzgiVar.zztt)) {
                this.zzadj.zzgm().zza(bundleZziv, "_dbg", (Object) 1L);
                this.zzadj.zzgm().zza(bundleZziv, "_r", (Object) 1L);
            }
            zzz zzzVarZzg = zzjq().zzg(str, zzadVar.name);
            if (zzzVarZzg == null) {
                bArr = null;
                zzjq().zza(new zzz(str, zzadVar.name, 1L, 0L, zzadVar.zzaip, 0L, null, null, null, null));
                j = 0;
            } else {
                bArr = null;
                long j2 = zzzVarZzg.zzaig;
                zzjq().zza(zzzVarZzg.zzai(zzadVar.zzaip).zziu());
                j = j2;
            }
            zzy zzyVar = new zzy(this.zzadj, zzadVar.origin, str, zzadVar.name, zzadVar.zzaip, j, bundleZziv);
            zzgf zzgfVar = new zzgf();
            zzgiVar.zzaxb = new zzgf[]{zzgfVar};
            zzgfVar.zzawu = Long.valueOf(zzyVar.timestamp);
            zzgfVar.name = zzyVar.name;
            zzgfVar.zzawv = Long.valueOf(zzyVar.zzaic);
            zzgfVar.zzawt = new zzgg[zzyVar.zzaid.size()];
            int i2 = 0;
            for (String str2 : zzyVar.zzaid) {
                zzgg zzggVar = new zzgg();
                zzgfVar.zzawt[i2] = zzggVar;
                zzggVar.name = str2;
                zzjo().zza(zzggVar, zzyVar.zzaid.get(str2));
                i2++;
            }
            zzgiVar.zzaxt = zza(zzgVarZzbl.zzal(), zzgiVar.zzaxc, zzgiVar.zzaxb);
            zzgiVar.zzaxe = zzgfVar.zzawu;
            zzgiVar.zzaxf = zzgfVar.zzawu;
            long jZzgz = zzgVarZzbl.zzgz();
            zzgiVar.zzaxh = jZzgz != 0 ? Long.valueOf(jZzgz) : bArr;
            long jZzgy = zzgVarZzbl.zzgy();
            if (jZzgy != 0) {
                jZzgz = jZzgy;
            }
            zzgiVar.zzaxg = jZzgz != 0 ? Long.valueOf(jZzgz) : bArr;
            zzgVarZzbl.zzhh();
            zzgiVar.zzaxr = Integer.valueOf((int) zzgVarZzbl.zzhe());
            zzgiVar.zzaxn = Long.valueOf(this.zzadj.zzgq().zzhc());
            zzgiVar.zzaxd = Long.valueOf(this.zzadj.zzbx().currentTimeMillis());
            zzgiVar.zzaxs = Boolean.TRUE;
            zzgVarZzbl.zzs(zzgiVar.zzaxe.longValue());
            zzgVarZzbl.zzt(zzgiVar.zzaxf.longValue());
            zzjq().zza(zzgVarZzbl);
            zzjq().setTransactionSuccessful();
            zzjq().endTransaction();
            try {
                byte[] bArr4 = new byte[zzghVar.zzvu()];
                zzyy zzyyVarZzk = zzyy.zzk(bArr4, 0, bArr4.length);
                zzghVar.zza(zzyyVarZzk);
                zzyyVarZzk.zzyt();
                return zzjo().zzb(bArr4);
            } catch (IOException e) {
                this.zzadj.zzgo().zzjd().zze("Data loss. Failed to bundle and serialize. appId", zzap.zzbv(str), e);
                return bArr;
            }
        } catch (Throwable th) {
            zzjq().endTransaction();
            throw th;
        }
    }

    final String zzh(zzh zzhVar) {
        try {
            return (String) this.zzadj.zzgn().zzb(new zzfe(this, zzhVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            this.zzadj.zzgo().zzjd().zze("Failed to get app instance id. appId", zzap.zzbv(zzhVar.packageName), e);
            return null;
        }
    }

    final void zzo(boolean z) {
        zzlv();
    }
}
