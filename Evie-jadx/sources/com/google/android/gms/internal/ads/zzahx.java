package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class zzahx extends zzajx implements zzahw {
    private final Context mContext;
    private final Object mLock;
    private final zzaji zzbze;
    private final long zzclp;
    private final ArrayList<zzahn> zzcmd;
    private final List<zzahq> zzcme;
    private final HashSet<String> zzcmf;
    private final zzago zzcmg;

    public zzahx(Context context, zzaji zzajiVar, zzago zzagoVar) {
        this(context, zzajiVar, zzagoVar, ((Long) zzkb.zzik().zzd(zznk.zzaye)).longValue());
    }

    private zzahx(Context context, zzaji zzajiVar, zzago zzagoVar, long j) {
        this.zzcmd = new ArrayList<>();
        this.zzcme = new ArrayList();
        this.zzcmf = new HashSet<>();
        this.mLock = new Object();
        this.mContext = context;
        this.zzbze = zzajiVar;
        this.zzcmg = zzagoVar;
        this.zzclp = j;
    }

    private final zzajh zza(int i, String str, zzwx zzwxVar) {
        boolean z;
        String str2;
        long j;
        String strSubstring;
        int i2;
        zzjj zzjjVar = this.zzbze.zzcgs.zzccv;
        List<String> list = this.zzbze.zzcos.zzbsn;
        List<String> list2 = this.zzbze.zzcos.zzbso;
        List<String> list3 = this.zzbze.zzcos.zzces;
        int i3 = this.zzbze.zzcos.orientation;
        long j2 = this.zzbze.zzcos.zzbsu;
        String str3 = this.zzbze.zzcgs.zzccy;
        boolean z2 = this.zzbze.zzcos.zzceq;
        zzwy zzwyVar = this.zzbze.zzcod;
        long j3 = this.zzbze.zzcos.zzcer;
        zzjn zzjnVar = this.zzbze.zzacv;
        long j4 = this.zzbze.zzcos.zzcep;
        long j5 = this.zzbze.zzcoh;
        long j6 = this.zzbze.zzcos.zzceu;
        String str4 = this.zzbze.zzcos.zzcev;
        JSONObject jSONObject = this.zzbze.zzcob;
        zzaig zzaigVar = this.zzbze.zzcos.zzcfe;
        List<String> list4 = this.zzbze.zzcos.zzcff;
        List<String> list5 = this.zzbze.zzcos.zzcfg;
        boolean z3 = this.zzbze.zzcos.zzcfh;
        zzael zzaelVar = this.zzbze.zzcos.zzcfi;
        StringBuilder sb = new StringBuilder("");
        List<zzahq> list6 = this.zzcme;
        if (list6 == null) {
            strSubstring = sb.toString();
            zzjnVar = zzjnVar;
            z = z2;
            str2 = str4;
            j = j6;
        } else {
            Iterator<zzahq> it = list6.iterator();
            while (true) {
                zzjnVar = zzjnVar;
                if (it.hasNext()) {
                    zzahq next = it.next();
                    if (next != null) {
                        Iterator<zzahq> it2 = it;
                        if (TextUtils.isEmpty(next.zzbru)) {
                            it = it2;
                        } else {
                            String str5 = next.zzbru;
                            String str6 = str4;
                            switch (next.errorCode) {
                                case 3:
                                    i2 = 1;
                                    break;
                                case 4:
                                    i2 = 2;
                                    break;
                                case 5:
                                    i2 = 4;
                                    break;
                                case 6:
                                    i2 = 0;
                                    break;
                                case 7:
                                    i2 = 3;
                                    break;
                                default:
                                    i2 = 6;
                                    break;
                            }
                            long j7 = next.zzbub;
                            boolean z4 = z2;
                            StringBuilder sb2 = new StringBuilder(String.valueOf(str5).length() + 33);
                            sb2.append(str5);
                            sb2.append(".");
                            sb2.append(i2);
                            sb2.append(".");
                            sb2.append(j7);
                            sb.append(String.valueOf(sb2.toString()).concat(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR));
                            it = it2;
                            str4 = str6;
                            j6 = j6;
                            z2 = z4;
                        }
                    }
                } else {
                    z = z2;
                    str2 = str4;
                    j = j6;
                    strSubstring = sb.substring(0, Math.max(0, sb.length() - 1));
                }
            }
        }
        return new zzajh(zzjjVar, null, list, i, list2, list3, i3, j2, str3, z, zzwxVar, null, str, zzwyVar, null, j3, zzjnVar, j4, j5, j, str2, jSONObject, null, zzaigVar, list4, list5, z3, zzaelVar, strSubstring, this.zzbze.zzcos.zzbsr, this.zzbze.zzcos.zzcfl, this.zzbze.zzcoq, this.zzbze.zzcos.zzzl, this.zzbze.zzcor, this.zzbze.zzcos.zzcfp, this.zzbze.zzcos.zzbsp, this.zzbze.zzcos.zzzm, this.zzbze.zzcos.zzcfq);
    }

    @Override // com.google.android.gms.internal.ads.zzajx
    public final void onStop() {
    }

    @Override // com.google.android.gms.internal.ads.zzahw
    public final void zza(String str, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzahw
    public final void zzcb(String str) {
        synchronized (this.mLock) {
            this.zzcmf.add(str);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:112:? -> B:35:0x00b5). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.ads.zzajx
    public final void zzdn() throws Throwable {
        Object obj;
        for (zzwx zzwxVar : this.zzbze.zzcod.zzbsm) {
            String str = zzwxVar.zzbsb;
            for (String string : zzwxVar.zzbrt) {
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(string) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(string)) {
                    try {
                        string = new JSONObject(str).getString("class_name");
                    } catch (JSONException e) {
                        zzakb.zzb("Unable to determine custom event class name, skipping...", e);
                    }
                }
                String str2 = string;
                Object obj2 = this.mLock;
                synchronized (obj2) {
                    try {
                        zzaib zzaibVarZzca = this.zzcmg.zzca(str2);
                        if (zzaibVarZzca == null || zzaibVarZzca.zzpf() == null || zzaibVarZzca.zzpe() == null) {
                            obj = obj2;
                            this.zzcme.add(new zzahs().zzcd(zzwxVar.zzbru).zzcc(str2).zzg(0L).zzad(7).zzpd());
                        } else {
                            obj = obj2;
                            try {
                                zzahn zzahnVar = new zzahn(this.mContext, str2, str, zzwxVar, this.zzbze, zzaibVarZzca, this, this.zzclp);
                                zzahnVar.zza(this.zzcmg.zzos());
                                this.zzcmd.add(zzahnVar);
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        obj = obj2;
                        throw th;
                    }
                }
            }
        }
        HashSet hashSet = new HashSet();
        ArrayList<zzahn> arrayList = this.zzcmd;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            zzahn zzahnVar2 = arrayList.get(i2);
            i2++;
            zzahn zzahnVar3 = zzahnVar2;
            if (hashSet.add(zzahnVar3.zzbth)) {
                zzahnVar3.zzoz();
            }
        }
        ArrayList<zzahn> arrayList2 = this.zzcmd;
        int size2 = arrayList2.size();
        while (i < size2) {
            zzahn zzahnVar4 = arrayList2.get(i);
            i++;
            zzahn zzahnVar5 = zzahnVar4;
            try {
                try {
                    try {
                        zzahnVar5.zzoz().get();
                        synchronized (this.mLock) {
                            if (!TextUtils.isEmpty(zzahnVar5.zzbth)) {
                                this.zzcme.add(zzahnVar5.zzpa());
                            }
                        }
                        synchronized (this.mLock) {
                            if (this.zzcmf.contains(zzahnVar5.zzbth)) {
                                final zzajh zzajhVarZza = zza(-2, zzahnVar5.zzbth, zzahnVar5.zzpb());
                                zzamu.zzsy.post(new Runnable(this, zzajhVarZza) { // from class: com.google.android.gms.internal.ads.zzahy
                                    private final zzahx zzcmh;
                                    private final zzajh zzxk;

                                    {
                                        this.zzcmh = this;
                                        this.zzxk = zzajhVarZza;
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.zzcmh.zzm(this.zzxk);
                                    }
                                });
                                return;
                            }
                        }
                    } catch (Throwable th3) {
                        synchronized (this.mLock) {
                            if (!TextUtils.isEmpty(zzahnVar5.zzbth)) {
                                this.zzcme.add(zzahnVar5.zzpa());
                            }
                            throw th3;
                        }
                    }
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    synchronized (this.mLock) {
                        if (!TextUtils.isEmpty(zzahnVar5.zzbth)) {
                            this.zzcme.add(zzahnVar5.zzpa());
                        }
                        final zzajh zzajhVarZza2 = zza(3, null, null);
                        zzamu.zzsy.post(new Runnable(this, zzajhVarZza2) { // from class: com.google.android.gms.internal.ads.zzahz
                            private final zzahx zzcmh;
                            private final zzajh zzxk;

                            {
                                this.zzcmh = this;
                                this.zzxk = zzajhVarZza2;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.zzcmh.zzl(this.zzxk);
                            }
                        });
                    }
                }
            } catch (Exception e2) {
                zzakb.zzc("Unable to resolve rewarded adapter.", e2);
                synchronized (this.mLock) {
                    if (!TextUtils.isEmpty(zzahnVar5.zzbth)) {
                        this.zzcme.add(zzahnVar5.zzpa());
                    }
                }
            }
        }
        final zzajh zzajhVarZza3 = zza(3, null, null);
        zzamu.zzsy.post(new Runnable(this, zzajhVarZza3) { // from class: com.google.android.gms.internal.ads.zzahz
            private final zzahx zzcmh;
            private final zzajh zzxk;

            {
                this.zzcmh = this;
                this.zzxk = zzajhVarZza3;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzcmh.zzl(this.zzxk);
            }
        });
    }

    final /* synthetic */ void zzl(zzajh zzajhVar) {
        this.zzcmg.zzot().zzb(zzajhVar);
    }

    final /* synthetic */ void zzm(zzajh zzajhVar) {
        this.zzcmg.zzot().zzb(zzajhVar);
    }
}
