package com.google.android.gms.internal.ads;

import android.content.res.Resources;
import android.os.Bundle;
import com.google.android.gms.ads.impl.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class zzacn implements zzacd<zzoo> {
    private final boolean zzbto;
    private final boolean zzcbk;
    private final boolean zzcbl;

    public zzacn(boolean z, boolean z2, boolean z3) {
        this.zzcbk = z;
        this.zzcbl = z2;
        this.zzbto = z3;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x00a5 A[PHI: r5
      0x00a5: PHI (r5v4 java.lang.String) = (r5v3 java.lang.String), (r5v3 java.lang.String), (r5v12 java.lang.String) binds: [B:7:0x0055, B:9:0x0067, B:15:0x007e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.zzacd
    public final /* synthetic */ zzpb zza(zzabv zzabvVar, JSONObject jSONObject) throws ExecutionException, JSONException, InterruptedException {
        String string;
        List<zzanz<zzon>> listZza = zzabvVar.zza(jSONObject, "images", false, this.zzcbk, this.zzcbl);
        zzanz<zzon> zzanzVarZza = zzabvVar.zza(jSONObject, "app_icon", true, this.zzcbk);
        zzanz<zzaqw> zzanzVarZzc = zzabvVar.zzc(jSONObject, "video");
        zzanz<zzoj> zzanzVarZzg = zzabvVar.zzg(jSONObject);
        ArrayList arrayList = new ArrayList();
        Iterator<zzanz<zzon>> it = listZza.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().get());
        }
        zzaqw zzaqwVarZzc = zzabv.zzc(zzanzVarZzc);
        String string2 = jSONObject.getString("headline");
        if (this.zzbto) {
            if (((Boolean) zzkb.zzik().zzd(zznk.zzbfr)).booleanValue()) {
                Resources resources = com.google.android.gms.ads.internal.zzbv.zzeo().getResources();
                string = resources != null ? resources.getString(R.string.f409s7) : "Test Ad";
                if (string2 != null) {
                    StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 3 + String.valueOf(string2).length());
                    sb.append(string);
                    sb.append(" : ");
                    sb.append(string2);
                    string2 = sb.toString();
                    string = string2;
                }
            } else {
                string = string2;
            }
        } else {
            string = string2;
        }
        return new zzoo(string, arrayList, jSONObject.getString("body"), zzanzVarZza.get(), jSONObject.getString("call_to_action"), jSONObject.optDouble("rating", -1.0d), jSONObject.optString("store"), jSONObject.optString("price"), zzanzVarZzg.get(), new Bundle(), zzaqwVarZzc != null ? zzaqwVarZzc.zztm() : null, zzaqwVarZzc != null ? zzaqwVarZzc.getView() : null, null, null);
    }
}
