package com.google.ads.mediation;

import android.location.Location;
import com.google.ads.AdRequest;
import java.util.Date;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class MediationAdRequest {
    private final Date zzhl;
    private final AdRequest.Gender zzhm;
    private final Set<String> zzhn;
    private final boolean zzho;
    private final Location zzhp;

    public MediationAdRequest(Date date, AdRequest.Gender gender, Set<String> set, boolean z, Location location) {
        this.zzhl = date;
        this.zzhm = gender;
        this.zzhn = set;
        this.zzho = z;
        this.zzhp = location;
    }
}
