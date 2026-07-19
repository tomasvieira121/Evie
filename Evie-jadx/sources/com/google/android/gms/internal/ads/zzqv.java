package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class zzqv implements NativeCustomTemplateAd {
    private static WeakHashMap<IBinder, zzqv> zzbkt = new WeakHashMap<>();
    private final VideoController zzasv = new VideoController();
    private final zzqs zzbku;
    private final MediaView zzbkv;

    private zzqv(zzqs zzqsVar) {
        Context context;
        this.zzbku = zzqsVar;
        MediaView mediaView = null;
        try {
            context = (Context) ObjectWrapper.unwrap(zzqsVar.zzkh());
        } catch (RemoteException | NullPointerException e) {
            zzane.zzb("", e);
            context = null;
        }
        if (context != null) {
            MediaView mediaView2 = new MediaView(context);
            try {
                if (this.zzbku.zzh(ObjectWrapper.wrap(mediaView2))) {
                    mediaView = mediaView2;
                }
            } catch (RemoteException e2) {
                zzane.zzb("", e2);
            }
        }
        this.zzbkv = mediaView;
    }

    public static zzqv zza(zzqs zzqsVar) {
        synchronized (zzbkt) {
            zzqv zzqvVar = zzbkt.get(zzqsVar.asBinder());
            if (zzqvVar != null) {
                return zzqvVar;
            }
            zzqv zzqvVar2 = new zzqv(zzqsVar);
            zzbkt.put(zzqsVar.asBinder(), zzqvVar2);
            return zzqvVar2;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final String getCustomTemplateId() {
        try {
            return this.zzbku.getCustomTemplateId();
        } catch (RemoteException e) {
            zzane.zzb("", e);
            return null;
        }
    }

    public final zzqs zzku() {
        return this.zzbku;
    }
}
