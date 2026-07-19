package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.ads.impl.R;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class zzzy extends zzaal {
    private final Context mContext;
    private final Map<String, String> zzbgp;
    private String zzbvs;
    private long zzbvt;
    private long zzbvu;
    private String zzbvv;
    private String zzbvw;

    public zzzy(zzaqw zzaqwVar, Map<String, String> map) {
        super(zzaqwVar, "createCalendarEvent");
        this.zzbgp = map;
        this.mContext = zzaqwVar.zzto();
        this.zzbvs = zzbu("description");
        this.zzbvv = zzbu("summary");
        this.zzbvt = zzbv("start_ticks");
        this.zzbvu = zzbv("end_ticks");
        this.zzbvw = zzbu("location");
    }

    private final String zzbu(String str) {
        return TextUtils.isEmpty(this.zzbgp.get(str)) ? "" : this.zzbgp.get(str);
    }

    private final long zzbv(String str) {
        String str2 = this.zzbgp.get(str);
        if (str2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    @TargetApi(14)
    final Intent createIntent() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.zzbvs);
        data.putExtra("eventLocation", this.zzbvw);
        data.putExtra("description", this.zzbvv);
        long j = this.zzbvt;
        if (j > -1) {
            data.putExtra("beginTime", j);
        }
        long j2 = this.zzbvu;
        if (j2 > -1) {
            data.putExtra("endTime", j2);
        }
        data.setFlags(268435456);
        return data;
    }

    public final void execute() {
        if (this.mContext == null) {
            zzbw("Activity context is not available.");
            return;
        }
        com.google.android.gms.ads.internal.zzbv.zzek();
        if (!zzakk.zzao(this.mContext).zziz()) {
            zzbw("This feature is not available on the device.");
            return;
        }
        com.google.android.gms.ads.internal.zzbv.zzek();
        AlertDialog.Builder builderZzan = zzakk.zzan(this.mContext);
        Resources resources = com.google.android.gms.ads.internal.zzbv.zzeo().getResources();
        builderZzan.setTitle(resources != null ? resources.getString(R.string.f407s5) : "Create calendar event");
        builderZzan.setMessage(resources != null ? resources.getString(R.string.f408s6) : "Allow Ad to create a calendar event?");
        builderZzan.setPositiveButton(resources != null ? resources.getString(R.string.f405s3) : AbstractSpiCall.HEADER_ACCEPT, new zzzz(this));
        builderZzan.setNegativeButton(resources != null ? resources.getString(R.string.f406s4) : "Decline", new zzaaa(this));
        builderZzan.create().show();
    }
}
