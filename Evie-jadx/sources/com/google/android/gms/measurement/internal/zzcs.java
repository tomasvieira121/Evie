package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.api.internal.GoogleServices;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class zzcs extends zzf {
    protected zzdm zzaqv;
    private AppMeasurement.EventInterceptor zzaqw;
    private final Set<AppMeasurement.OnEventListener> zzaqx;
    private boolean zzaqy;
    private final AtomicReference<String> zzaqz;
    protected boolean zzara;

    protected zzcs(zzbt zzbtVar) {
        super(zzbtVar);
        this.zzaqx = new CopyOnWriteArraySet();
        this.zzara = true;
        this.zzaqz = new AtomicReference<>();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzgt() {
        return false;
    }

    public final void zzd(boolean z) {
        zzcl();
        zzgb();
        zzgn().zzc(new zzdj(this, z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzky() {
        if (zzgq().zze(zzgf().zzal(), zzaf.zzalj)) {
            this.zzadj.zzj(false);
        }
        if (zzgq().zzbd(zzgf().zzal()) && this.zzadj.isEnabled() && this.zzara) {
            zzgo().zzjk().zzbx("Recording app launch after enabling measurement for the first time (FE)");
            zzkz();
        } else {
            zzgo().zzjk().zzbx("Updating Scion state (FE)");
            zzgg().zzlc();
        }
    }

    public final void logEvent(String str, String str2, Bundle bundle) {
        logEvent(str, str2, bundle, true, true, zzbx().currentTimeMillis());
    }

    final void zza(String str, String str2, Bundle bundle) {
        zzgb();
        zzaf();
        zza(str, str2, zzbx().currentTimeMillis(), bundle);
    }

    final void zza(String str, String str2, long j, Bundle bundle) {
        zzgb();
        zzaf();
        zza(str, str2, j, bundle, true, this.zzaqw == null || zzfk.zzcv(str2), false, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        List<String> list;
        zzdn zzdnVar;
        int i;
        int i2;
        long j2;
        String str4 = str2;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(bundle);
        zzaf();
        zzcl();
        if (!this.zzadj.isEnabled()) {
            zzgo().zzjk().zzbx("Event not sent since app measurement is disabled");
            return;
        }
        if (!this.zzaqy) {
            this.zzaqy = true;
            try {
                try {
                    Class.forName("com.google.android.gms.tagmanager.TagManagerService").getDeclaredMethod("initialize", Context.class).invoke(null, getContext());
                } catch (Exception e) {
                    zzgo().zzjg().zzg("Failed to invoke Tag Manager's initialize() method", e);
                }
            } catch (ClassNotFoundException unused) {
                zzgo().zzjj().zzbx("Tag Manager is not found and thus will not be used");
            }
        }
        if (z3) {
            zzgr();
            if (!"_iap".equals(str4)) {
                zzfk zzfkVarZzgm = this.zzadj.zzgm();
                int i3 = 2;
                if (zzfkVarZzgm.zzr("event", str4)) {
                    if (!zzfkVarZzgm.zza("event", AppMeasurement.Event.zzadk, str4)) {
                        i3 = 13;
                    } else if (zzfkVarZzgm.zza("event", 40, str4)) {
                        i3 = 0;
                    }
                }
                if (i3 != 0) {
                    zzgo().zzjf().zzg("Invalid public event name. Event will not be logged (FE)", zzgl().zzbs(str4));
                    this.zzadj.zzgm();
                    this.zzadj.zzgm().zza(i3, "_ev", zzfk.zza(str4, 40, true), str4 != null ? str2.length() : 0);
                    return;
                }
            }
        }
        zzgr();
        zzdn zzdnVarZzla = zzgh().zzla();
        if (zzdnVarZzla != null && !bundle.containsKey("_sc")) {
            zzdnVarZzla.zzarn = true;
        }
        zzdo.zza(zzdnVarZzla, bundle, z && z3);
        boolean zEquals = "am".equals(str);
        boolean zZzcv = zzfk.zzcv(str2);
        if (z && this.zzaqw != null && !zZzcv && !zEquals) {
            zzgo().zzjk().zze("Passing event to registered event handler (FE)", zzgl().zzbs(str4), zzgl().zzd(bundle));
            this.zzaqw.interceptEvent(str, str2, bundle, j);
            return;
        }
        if (this.zzadj.zzkr()) {
            int iZzcr = zzgm().zzcr(str4);
            if (iZzcr != 0) {
                zzgo().zzjf().zzg("Invalid event name. Event will not be logged (FE)", zzgl().zzbs(str4));
                zzgm();
                this.zzadj.zzgm().zza(str3, iZzcr, "_ev", zzfk.zza(str4, 40, true), str4 != null ? str2.length() : 0);
                return;
            }
            List<String> listListOf = CollectionUtils.listOf((Object[]) new String[]{"_o", "_sn", "_sc", "_si"});
            Bundle bundleZza = zzgm().zza(str3, str2, bundle, listListOf, z3, true);
            zzdn zzdnVar2 = (bundleZza != null && bundleZza.containsKey("_sc") && bundleZza.containsKey("_si")) ? new zzdn(bundleZza.getString("_sn"), bundleZza.getString("_sc"), Long.valueOf(bundleZza.getLong("_si")).longValue()) : null;
            if (zzdnVar2 != null) {
                zzdnVarZzla = zzdnVar2;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(bundleZza);
            long jNextLong = zzgm().zzmd().nextLong();
            String[] strArr = (String[]) bundleZza.keySet().toArray(new String[bundle.size()]);
            Arrays.sort(strArr);
            int length = strArr.length;
            int length2 = 0;
            int i4 = 0;
            while (i4 < length) {
                String str5 = strArr[i4];
                Object obj = bundleZza.get(str5);
                zzgm();
                Bundle[] bundleArrZze = zzfk.zze(obj);
                if (bundleArrZze != null) {
                    bundleZza.putInt(str5, bundleArrZze.length);
                    int i5 = 0;
                    while (i5 < bundleArrZze.length) {
                        Bundle bundle2 = bundleArrZze[i5];
                        long j3 = jNextLong;
                        zzdo.zza(zzdnVarZzla, bundle2, true);
                        Bundle[] bundleArr = bundleArrZze;
                        String str6 = str5;
                        Bundle bundleZza2 = zzgm().zza(str3, "_ep", bundle2, listListOf, z3, false);
                        bundleZza2.putString("_en", str4);
                        bundleZza2.putLong("_eid", j3);
                        bundleZza2.putString("_gn", str6);
                        bundleZza2.putInt("_ll", bundleArr.length);
                        bundleZza2.putInt("_i", i5);
                        arrayList.add(bundleZza2);
                        i5++;
                        jNextLong = j3;
                        str5 = str6;
                        length = length;
                        bundleArrZze = bundleArr;
                        i4 = i4;
                        zzdnVarZzla = zzdnVarZzla;
                        length2 = length2;
                        listListOf = listListOf;
                    }
                    list = listListOf;
                    zzdnVar = zzdnVarZzla;
                    i = i4;
                    i2 = length;
                    j2 = jNextLong;
                    length2 += bundleArrZze.length;
                } else {
                    list = listListOf;
                    zzdnVar = zzdnVarZzla;
                    i = i4;
                    i2 = length;
                    j2 = jNextLong;
                }
                i4 = i + 1;
                jNextLong = j2;
                length = i2;
                zzdnVarZzla = zzdnVar;
                strArr = strArr;
                listListOf = list;
            }
            int i6 = length2;
            long j4 = jNextLong;
            if (i6 != 0) {
                bundleZza.putLong("_eid", j4);
                bundleZza.putInt("_epc", i6);
            }
            int i7 = 0;
            while (i7 < arrayList.size()) {
                Bundle bundleZze = (Bundle) arrayList.get(i7);
                String str7 = i7 != 0 ? "_ep" : str4;
                bundleZze.putString("_o", str);
                if (z2) {
                    bundleZze = zzgm().zze(bundleZze);
                }
                zzgo().zzjk().zze("Logging event (FE)", zzgl().zzbs(str4), zzgl().zzd(bundleZze));
                ArrayList arrayList2 = arrayList;
                String str8 = str4;
                zzgg().zzb(new zzad(str7, new zzaa(bundleZze), str, j), str3);
                if (!zEquals) {
                    Iterator<AppMeasurement.OnEventListener> it = this.zzaqx.iterator();
                    while (it.hasNext()) {
                        it.next().onEvent(str, str2, new Bundle(bundleZze), j);
                    }
                }
                i7++;
                arrayList = arrayList2;
                str4 = str8;
            }
            String str9 = str4;
            zzgr();
            if (zzgh().zzla() == null || !"_ae".equals(str9)) {
                return;
            }
            zzgj().zzn(true);
        }
    }

    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        zzgb();
        zzb(str == null ? "app" : str, str2, j, bundle == null ? new Bundle() : bundle, z2, !z2 || this.zzaqw == null || zzfk.zzcv(str2), !z, null);
    }

    private final void zzb(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        zzgn().zzc(new zzcu(this, str, str2, j, zzfk.zzf(bundle), z, z2, z3, str3));
    }

    public final void zzb(String str, String str2, Object obj, boolean z) {
        zza(str, str2, obj, z, zzbx().currentTimeMillis());
    }

    public final void zza(String str, String str2, Object obj, boolean z, long j) {
        String str3 = str == null ? "app" : str;
        int iZzcs = 6;
        if (z || "_ap".equals(str2)) {
            iZzcs = zzgm().zzcs(str2);
        } else {
            zzfk zzfkVarZzgm = zzgm();
            if (zzfkVarZzgm.zzr("user property", str2)) {
                if (!zzfkVarZzgm.zza("user property", AppMeasurement.UserProperty.zzado, str2)) {
                    iZzcs = 15;
                } else if (zzfkVarZzgm.zza("user property", 24, str2)) {
                    iZzcs = 0;
                }
            }
        }
        if (iZzcs != 0) {
            zzgm();
            this.zzadj.zzgm().zza(iZzcs, "_ev", zzfk.zza(str2, 24, true), str2 != null ? str2.length() : 0);
            return;
        }
        if (obj != null) {
            int iZzi = zzgm().zzi(str2, obj);
            if (iZzi != 0) {
                zzgm();
                this.zzadj.zzgm().zza(iZzi, "_ev", zzfk.zza(str2, 24, true), ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0);
                return;
            } else {
                Object objZzj = zzgm().zzj(str2, obj);
                if (objZzj != null) {
                    zza(str3, str2, j, objZzj);
                    return;
                }
                return;
            }
        }
        zza(str3, str2, j, (Object) null);
    }

    private final void zza(String str, String str2, long j, Object obj) {
        zzgn().zzc(new zzcv(this, str, str2, obj, j));
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:36:0x00be A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00bf  */
    final void zza(String str, String str2, Object obj, long j) {
        Object obj2;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzgb();
        zzcl();
        if (zzgq().zze(zzgf().zzal(), zzaf.zzalj)) {
            if ("_ap".equals(str2) && !"auto".equals(str)) {
                if (obj instanceof String) {
                    String str3 = (String) obj;
                    if (!TextUtils.isEmpty(str3)) {
                        Long lValueOf = Long.valueOf(("true".equals(str3.toLowerCase(Locale.ENGLISH)) || "1".equals(obj)) ? 1L : 0L);
                        zzgp().zzans.zzcc(lValueOf.longValue() == 1 ? "true" : "false");
                        obj2 = lValueOf;
                    }
                }
                if (obj == null) {
                    zzgp().zzans.zzcc("unset");
                    zzgn().zzc(new zzcw(this));
                }
            }
            if (!this.zzadj.isEnabled()) {
                zzgo().zzjk().zzbx("User property not set since app measurement is disabled");
            } else {
                if (this.zzadj.zzkr()) {
                    zzgo().zzjk().zze("Setting user property (FE)", zzgl().zzbs(str2), obj2);
                    zzgg().zzb(new zzfh(str2, j, obj2, str));
                }
                return;
            }
        }
        if ("_ap".equals(str2)) {
            return;
        }
        obj2 = obj;
        if (!this.zzadj.isEnabled()) {
            zzgo().zzjk().zzbx("User property not set since app measurement is disabled");
        } else {
            if (this.zzadj.zzkr()) {
                return;
            }
            zzgo().zzjk().zze("Setting user property (FE)", zzgl().zzbs(str2), obj2);
            zzgg().zzb(new zzfh(str2, j, obj2, str));
        }
    }

    public final String zzfx() {
        zzgb();
        return this.zzaqz.get();
    }

    final void zzcm(String str) {
        this.zzaqz.set(str);
    }

    public final void zzkz() {
        zzaf();
        zzgb();
        zzcl();
        if (this.zzadj.zzkr()) {
            zzgg().zzkz();
            this.zzara = false;
            String strZzjw = zzgp().zzjw();
            if (TextUtils.isEmpty(strZzjw)) {
                return;
            }
            zzgk().zzcl();
            if (strZzjw.equals(Build.VERSION.RELEASE)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", strZzjw);
            logEvent("auto", "_ou", bundle);
        }
    }

    public final void setConditionalUserProperty(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        Preconditions.checkNotNull(conditionalUserProperty);
        zzgb();
        AppMeasurement.ConditionalUserProperty conditionalUserProperty2 = new AppMeasurement.ConditionalUserProperty(conditionalUserProperty);
        if (!TextUtils.isEmpty(conditionalUserProperty2.mAppId)) {
            zzgo().zzjg().zzbx("Package name should be null when calling setConditionalUserProperty");
        }
        conditionalUserProperty2.mAppId = null;
        zza(conditionalUserProperty2);
    }

    public final void setConditionalUserPropertyAs(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        Preconditions.checkNotNull(conditionalUserProperty);
        Preconditions.checkNotEmpty(conditionalUserProperty.mAppId);
        zzga();
        zza(new AppMeasurement.ConditionalUserProperty(conditionalUserProperty));
    }

    private final void zza(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        long jCurrentTimeMillis = zzbx().currentTimeMillis();
        Preconditions.checkNotNull(conditionalUserProperty);
        Preconditions.checkNotEmpty(conditionalUserProperty.mName);
        Preconditions.checkNotEmpty(conditionalUserProperty.mOrigin);
        Preconditions.checkNotNull(conditionalUserProperty.mValue);
        conditionalUserProperty.mCreationTimestamp = jCurrentTimeMillis;
        String str = conditionalUserProperty.mName;
        Object obj = conditionalUserProperty.mValue;
        if (zzgm().zzcs(str) != 0) {
            zzgo().zzjd().zzg("Invalid conditional user property name", zzgl().zzbu(str));
            return;
        }
        if (zzgm().zzi(str, obj) != 0) {
            zzgo().zzjd().zze("Invalid conditional user property value", zzgl().zzbu(str), obj);
            return;
        }
        Object objZzj = zzgm().zzj(str, obj);
        if (objZzj == null) {
            zzgo().zzjd().zze("Unable to normalize conditional user property value", zzgl().zzbu(str), obj);
            return;
        }
        conditionalUserProperty.mValue = objZzj;
        long j = conditionalUserProperty.mTriggerTimeout;
        if (!TextUtils.isEmpty(conditionalUserProperty.mTriggerEventName) && (j > 15552000000L || j < 1)) {
            zzgo().zzjd().zze("Invalid conditional user property timeout", zzgl().zzbu(str), Long.valueOf(j));
            return;
        }
        long j2 = conditionalUserProperty.mTimeToLive;
        if (j2 > 15552000000L || j2 < 1) {
            zzgo().zzjd().zze("Invalid conditional user property time to live", zzgl().zzbu(str), Long.valueOf(j2));
        } else {
            zzgn().zzc(new zzda(this, conditionalUserProperty));
        }
    }

    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        zzgb();
        zza((String) null, str, str2, bundle);
    }

    public final void clearConditionalUserPropertyAs(String str, String str2, String str3, Bundle bundle) {
        Preconditions.checkNotEmpty(str);
        zzga();
        zza(str, str2, str3, bundle);
    }

    private final void zza(String str, String str2, String str3, Bundle bundle) {
        long jCurrentTimeMillis = zzbx().currentTimeMillis();
        Preconditions.checkNotEmpty(str2);
        AppMeasurement.ConditionalUserProperty conditionalUserProperty = new AppMeasurement.ConditionalUserProperty();
        conditionalUserProperty.mAppId = str;
        conditionalUserProperty.mName = str2;
        conditionalUserProperty.mCreationTimestamp = jCurrentTimeMillis;
        if (str3 != null) {
            conditionalUserProperty.mExpiredEventName = str3;
            conditionalUserProperty.mExpiredEventParams = bundle;
        }
        zzgn().zzc(new zzdb(this, conditionalUserProperty));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        zzaf();
        zzcl();
        Preconditions.checkNotNull(conditionalUserProperty);
        Preconditions.checkNotEmpty(conditionalUserProperty.mName);
        Preconditions.checkNotEmpty(conditionalUserProperty.mOrigin);
        Preconditions.checkNotNull(conditionalUserProperty.mValue);
        if (!this.zzadj.isEnabled()) {
            zzgo().zzjk().zzbx("Conditional property not sent since collection is disabled");
            return;
        }
        zzfh zzfhVar = new zzfh(conditionalUserProperty.mName, conditionalUserProperty.mTriggeredTimestamp, conditionalUserProperty.mValue, conditionalUserProperty.mOrigin);
        try {
            zzad zzadVarZza = zzgm().zza(conditionalUserProperty.mAppId, conditionalUserProperty.mTriggeredEventName, conditionalUserProperty.mTriggeredEventParams, conditionalUserProperty.mOrigin, 0L, true, false);
            zzgg().zzd(new zzl(conditionalUserProperty.mAppId, conditionalUserProperty.mOrigin, zzfhVar, conditionalUserProperty.mCreationTimestamp, false, conditionalUserProperty.mTriggerEventName, zzgm().zza(conditionalUserProperty.mAppId, conditionalUserProperty.mTimedOutEventName, conditionalUserProperty.mTimedOutEventParams, conditionalUserProperty.mOrigin, 0L, true, false), conditionalUserProperty.mTriggerTimeout, zzadVarZza, conditionalUserProperty.mTimeToLive, zzgm().zza(conditionalUserProperty.mAppId, conditionalUserProperty.mExpiredEventName, conditionalUserProperty.mExpiredEventParams, conditionalUserProperty.mOrigin, 0L, true, false)));
        } catch (IllegalArgumentException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzc(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        zzaf();
        zzcl();
        Preconditions.checkNotNull(conditionalUserProperty);
        Preconditions.checkNotEmpty(conditionalUserProperty.mName);
        if (!this.zzadj.isEnabled()) {
            zzgo().zzjk().zzbx("Conditional property not cleared since collection is disabled");
            return;
        }
        try {
            zzgg().zzd(new zzl(conditionalUserProperty.mAppId, conditionalUserProperty.mOrigin, new zzfh(conditionalUserProperty.mName, 0L, null, null), conditionalUserProperty.mCreationTimestamp, conditionalUserProperty.mActive, conditionalUserProperty.mTriggerEventName, null, conditionalUserProperty.mTriggerTimeout, null, conditionalUserProperty.mTimeToLive, zzgm().zza(conditionalUserProperty.mAppId, conditionalUserProperty.mExpiredEventName, conditionalUserProperty.mExpiredEventParams, conditionalUserProperty.mOrigin, conditionalUserProperty.mCreationTimestamp, true, false)));
        } catch (IllegalArgumentException unused) {
        }
    }

    public final List<AppMeasurement.ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        zzgb();
        return zzf(null, str, str2);
    }

    public final List<AppMeasurement.ConditionalUserProperty> getConditionalUserPropertiesAs(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzga();
        return zzf(str, str2, str3);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private final List<AppMeasurement.ConditionalUserProperty> zzf(String str, String str2, String str3) {
        if (zzgn().zzkb()) {
            zzgo().zzjd().zzbx("Cannot get conditional user properties from analytics worker thread");
            return Collections.emptyList();
        }
        if (zzk.isMainThread()) {
            zzgo().zzjd().zzbx("Cannot get conditional user properties from main thread");
            return Collections.emptyList();
        }
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            this.zzadj.zzgn().zzc(new zzdc(this, atomicReference, str, str2, str3));
            try {
                atomicReference.wait(5000L);
            } catch (InterruptedException e) {
                zzgo().zzjg().zze("Interrupted waiting for get conditional user properties", str, e);
            }
        }
        List<zzl> list = (List) atomicReference.get();
        if (list == null) {
            zzgo().zzjg().zzg("Timed out waiting for get conditional user properties", str);
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (zzl zzlVar : list) {
            AppMeasurement.ConditionalUserProperty conditionalUserProperty = new AppMeasurement.ConditionalUserProperty();
            conditionalUserProperty.mAppId = zzlVar.packageName;
            conditionalUserProperty.mOrigin = zzlVar.origin;
            conditionalUserProperty.mCreationTimestamp = zzlVar.creationTimestamp;
            conditionalUserProperty.mName = zzlVar.zzahb.name;
            conditionalUserProperty.mValue = zzlVar.zzahb.getValue();
            conditionalUserProperty.mActive = zzlVar.active;
            conditionalUserProperty.mTriggerEventName = zzlVar.triggerEventName;
            if (zzlVar.zzahc != null) {
                conditionalUserProperty.mTimedOutEventName = zzlVar.zzahc.name;
                if (zzlVar.zzahc.zzaid != null) {
                    conditionalUserProperty.mTimedOutEventParams = zzlVar.zzahc.zzaid.zziv();
                }
            }
            conditionalUserProperty.mTriggerTimeout = zzlVar.triggerTimeout;
            if (zzlVar.zzahd != null) {
                conditionalUserProperty.mTriggeredEventName = zzlVar.zzahd.name;
                if (zzlVar.zzahd.zzaid != null) {
                    conditionalUserProperty.mTriggeredEventParams = zzlVar.zzahd.zzaid.zziv();
                }
            }
            conditionalUserProperty.mTriggeredTimestamp = zzlVar.zzahb.zzaue;
            conditionalUserProperty.mTimeToLive = zzlVar.timeToLive;
            if (zzlVar.zzahe != null) {
                conditionalUserProperty.mExpiredEventName = zzlVar.zzahe.name;
                if (zzlVar.zzahe.zzaid != null) {
                    conditionalUserProperty.mExpiredEventParams = zzlVar.zzahe.zzaid.zziv();
                }
            }
            arrayList.add(conditionalUserProperty);
        }
        return arrayList;
    }

    public final Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        zzgb();
        return zzb((String) null, str, str2, z);
    }

    public final Map<String, Object> getUserPropertiesAs(String str, String str2, String str3, boolean z) {
        Preconditions.checkNotEmpty(str);
        zzga();
        return zzb(str, str2, str3, z);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private final Map<String, Object> zzb(String str, String str2, String str3, boolean z) {
        if (zzgn().zzkb()) {
            zzgo().zzjd().zzbx("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        if (zzk.isMainThread()) {
            zzgo().zzjd().zzbx("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            this.zzadj.zzgn().zzc(new zzde(this, atomicReference, str, str2, str3, z));
            try {
                atomicReference.wait(5000L);
            } catch (InterruptedException e) {
                zzgo().zzjg().zzg("Interrupted waiting for get user properties", e);
            }
        }
        List<zzfh> list = (List) atomicReference.get();
        if (list == null) {
            zzgo().zzjg().zzbx("Timed out waiting for get user properties");
            return Collections.emptyMap();
        }
        ArrayMap arrayMap = new ArrayMap(list.size());
        for (zzfh zzfhVar : list) {
            arrayMap.put(zzfhVar.name, zzfhVar.getValue());
        }
        return arrayMap;
    }

    public final String getCurrentScreenName() {
        zzdn zzdnVarZzlb = this.zzadj.zzgh().zzlb();
        if (zzdnVarZzlb != null) {
            return zzdnVarZzlb.zzuw;
        }
        return null;
    }

    public final String getCurrentScreenClass() {
        zzdn zzdnVarZzlb = this.zzadj.zzgh().zzlb();
        if (zzdnVarZzlb != null) {
            return zzdnVarZzlb.zzarl;
        }
        return null;
    }

    public final String getGmpAppId() {
        if (this.zzadj.zzkk() != null) {
            return this.zzadj.zzkk();
        }
        try {
            return GoogleServices.getGoogleAppId();
        } catch (IllegalStateException e) {
            this.zzadj.zzgo().zzjd().zzg("getGoogleAppId failed with exception", e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzga() {
        super.zzga();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgb() {
        super.zzgb();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgc() {
        super.zzgc();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zza zzgd() {
        return super.zzgd();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzcs zzge() {
        return super.zzge();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzaj zzgf() {
        return super.zzgf();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdr zzgg() {
        return super.zzgg();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdo zzgh() {
        return super.zzgh();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzal zzgi() {
        return super.zzgi();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzeq zzgj() {
        return super.zzgj();
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
