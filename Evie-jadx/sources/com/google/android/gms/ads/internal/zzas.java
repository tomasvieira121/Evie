package com.google.android.gms.ads.internal;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzadh;
import com.google.android.gms.internal.ads.zzajh;
import com.google.android.gms.internal.ads.zzakb;
import com.google.android.gms.internal.ads.zzaqw;
import com.google.android.gms.internal.ads.zzasc;
import com.google.android.gms.internal.ads.zzasd;
import com.google.android.gms.internal.ads.zzoo;
import com.google.android.gms.internal.ads.zzoq;
import com.google.android.gms.internal.ads.zzpw;
import com.google.android.gms.internal.ads.zzpx;
import com.google.android.gms.internal.ads.zzxe;
import com.google.android.gms.internal.ads.zzxz;
import com.google.android.gms.internal.ads.zzyc;
import java.io.ByteArrayOutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@zzadh
public final class zzas {
    static com.google.android.gms.ads.internal.gmsg.zzv<zzaqw> zza(zzxz zzxzVar, zzyc zzycVar, zzac zzacVar) {
        return new zzax(zzxzVar, zzacVar, zzycVar);
    }

    private static String zza(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bitmap == null) {
            zzakb.zzdk("Bitmap is null. Returning empty string");
            return "";
        }
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
        String strValueOf = String.valueOf("data:image/png;base64,");
        String strValueOf2 = String.valueOf(strEncodeToString);
        return strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
    }

    private static String zza(zzpw zzpwVar) {
        if (zzpwVar == null) {
            zzakb.zzdk("Image is null. Returning empty string");
            return "";
        }
        try {
            Uri uri = zzpwVar.getUri();
            if (uri != null) {
                return uri.toString();
            }
        } catch (RemoteException unused) {
            zzakb.zzdk("Unable to get image uri. Trying data uri next");
        }
        return zzb(zzpwVar);
    }

    private static JSONObject zza(Bundle bundle, String str) throws JSONException {
        String strValueOf;
        String str2;
        JSONObject jSONObject = new JSONObject();
        if (bundle != null && !TextUtils.isEmpty(str)) {
            JSONObject jSONObject2 = new JSONObject(str);
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (bundle.containsKey(next)) {
                    if ("image".equals(jSONObject2.getString(next))) {
                        Object obj = bundle.get(next);
                        if (obj instanceof Bitmap) {
                            strValueOf = zza((Bitmap) obj);
                            jSONObject.put(next, strValueOf);
                        } else {
                            str2 = "Invalid type. An image type extra should return a bitmap";
                            zzakb.zzdk(str2);
                        }
                    } else if (bundle.get(next) instanceof Bitmap) {
                        str2 = "Invalid asset type. Bitmap should be returned only for image type";
                        zzakb.zzdk(str2);
                    } else {
                        strValueOf = String.valueOf(bundle.get(next));
                        jSONObject.put(next, strValueOf);
                    }
                }
            }
        }
        return jSONObject;
    }

    static final /* synthetic */ void zza(zzoo zzooVar, String str, zzaqw zzaqwVar, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("headline", zzooVar.getHeadline());
            jSONObject.put("body", zzooVar.getBody());
            jSONObject.put("call_to_action", zzooVar.getCallToAction());
            jSONObject.put("price", zzooVar.getPrice());
            jSONObject.put("star_rating", String.valueOf(zzooVar.getStarRating()));
            jSONObject.put("store", zzooVar.getStore());
            jSONObject.put("icon", zza(zzooVar.zzjz()));
            JSONArray jSONArray = new JSONArray();
            List images = zzooVar.getImages();
            if (images != null) {
                Iterator it = images.iterator();
                while (it.hasNext()) {
                    jSONArray.put(zza(zzd(it.next())));
                }
            }
            jSONObject.put("images", jSONArray);
            jSONObject.put("extras", zza(zzooVar.getExtras(), str));
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("assets", jSONObject);
            jSONObject2.put("template_id", "2");
            zzaqwVar.zzb("google.afma.nativeExpressAds.loadAssets", jSONObject2);
        } catch (JSONException e) {
            zzakb.zzc("Exception occurred when loading assets", e);
        }
    }

    static final /* synthetic */ void zza(zzoq zzoqVar, String str, zzaqw zzaqwVar, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("headline", zzoqVar.getHeadline());
            jSONObject.put("body", zzoqVar.getBody());
            jSONObject.put("call_to_action", zzoqVar.getCallToAction());
            jSONObject.put("advertiser", zzoqVar.getAdvertiser());
            jSONObject.put("logo", zza(zzoqVar.zzkg()));
            JSONArray jSONArray = new JSONArray();
            List images = zzoqVar.getImages();
            if (images != null) {
                Iterator it = images.iterator();
                while (it.hasNext()) {
                    jSONArray.put(zza(zzd(it.next())));
                }
            }
            jSONObject.put("images", jSONArray);
            jSONObject.put("extras", zza(zzoqVar.getExtras(), str));
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("assets", jSONObject);
            jSONObject2.put("template_id", "1");
            zzaqwVar.zzb("google.afma.nativeExpressAds.loadAssets", jSONObject2);
        } catch (JSONException e) {
            zzakb.zzc("Exception occurred when loading assets", e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0134  */
    public static boolean zza(final zzaqw zzaqwVar, zzxe zzxeVar, CountDownLatch countDownLatch) {
        String str;
        zzasc zzascVarZzuf;
        zzasd zzasdVar;
        boolean z = false;
        try {
            View view = zzaqwVar.getView();
            if (view == null) {
                str = "AdWebView is null";
            } else {
                view.setVisibility(4);
                List<String> list = zzxeVar.zzbtw.zzbsi;
                if (list != null && !list.isEmpty()) {
                    zzaqwVar.zza("/nativeExpressAssetsLoaded", new zzav(countDownLatch));
                    zzaqwVar.zza("/nativeExpressAssetsLoadingFailed", new zzaw(countDownLatch));
                    zzxz zzxzVarZzmo = zzxeVar.zzbtx.zzmo();
                    zzyc zzycVarZzmp = zzxeVar.zzbtx.zzmp();
                    if (list.contains("2") && zzxzVarZzmo != null) {
                        final zzoo zzooVar = new zzoo(zzxzVarZzmo.getHeadline(), zzxzVarZzmo.getImages(), zzxzVarZzmo.getBody(), zzxzVarZzmo.zzjz(), zzxzVarZzmo.getCallToAction(), zzxzVarZzmo.getStarRating(), zzxzVarZzmo.getStore(), zzxzVarZzmo.getPrice(), null, zzxzVarZzmo.getExtras(), null, zzxzVarZzmo.zzmw() != null ? (View) ObjectWrapper.unwrap(zzxzVarZzmo.zzmw()) : null, zzxzVarZzmo.zzke(), null);
                        final String str2 = zzxeVar.zzbtw.zzbsh;
                        zzascVarZzuf = zzaqwVar.zzuf();
                        zzasdVar = new zzasd(zzooVar, str2, zzaqwVar) { // from class: com.google.android.gms.ads.internal.zzat
                            private final zzoo zzzn;
                            private final String zzzo;
                            private final zzaqw zzzp;

                            {
                                this.zzzn = zzooVar;
                                this.zzzo = str2;
                                this.zzzp = zzaqwVar;
                            }

                            @Override // com.google.android.gms.internal.ads.zzasd
                            public final void zze(boolean z2) {
                                zzas.zza(this.zzzn, this.zzzo, this.zzzp, z2);
                            }
                        };
                    } else if (!list.contains("1") || zzycVarZzmp == null) {
                        str = "No matching template id and mapper";
                    } else {
                        final zzoq zzoqVar = new zzoq(zzycVarZzmp.getHeadline(), zzycVarZzmp.getImages(), zzycVarZzmp.getBody(), zzycVarZzmp.zzkg(), zzycVarZzmp.getCallToAction(), zzycVarZzmp.getAdvertiser(), null, zzycVarZzmp.getExtras(), null, zzycVarZzmp.zzmw() != null ? (View) ObjectWrapper.unwrap(zzycVarZzmp.zzmw()) : null, zzycVarZzmp.zzke(), null);
                        final String str3 = zzxeVar.zzbtw.zzbsh;
                        zzascVarZzuf = zzaqwVar.zzuf();
                        zzasdVar = new zzasd(zzoqVar, str3, zzaqwVar) { // from class: com.google.android.gms.ads.internal.zzau
                            private final String zzzo;
                            private final zzaqw zzzp;
                            private final zzoq zzzq;

                            {
                                this.zzzq = zzoqVar;
                                this.zzzo = str3;
                                this.zzzp = zzaqwVar;
                            }

                            @Override // com.google.android.gms.internal.ads.zzasd
                            public final void zze(boolean z2) {
                                zzas.zza(this.zzzq, this.zzzo, this.zzzp, z2);
                            }
                        };
                    }
                    zzascVarZzuf.zza(zzasdVar);
                    String str4 = zzxeVar.zzbtw.zzbsf;
                    String str5 = zzxeVar.zzbtw.zzbsg;
                    if (str5 != null) {
                        zzaqwVar.loadDataWithBaseURL(str5, str4, "text/html", "UTF-8", null);
                    } else {
                        zzaqwVar.loadData(str4, "text/html", "UTF-8");
                    }
                    z = true;
                    if (!z) {
                        countDownLatch.countDown();
                    }
                    return z;
                }
                str = "No template ids present in mediation response";
            }
            zzakb.zzdk(str);
        } catch (RemoteException e) {
            zzakb.zzc("Unable to invoke load assets", e);
        } catch (RuntimeException e2) {
            countDownLatch.countDown();
            throw e2;
        }
        if (!z) {
            countDownLatch.countDown();
        }
        return z;
    }

    private static String zzb(zzpw zzpwVar) {
        try {
            IObjectWrapper iObjectWrapperZzjy = zzpwVar.zzjy();
            if (iObjectWrapperZzjy == null) {
                zzakb.zzdk("Drawable is null. Returning empty string");
                return "";
            }
            Drawable drawable = (Drawable) ObjectWrapper.unwrap(iObjectWrapperZzjy);
            if (drawable instanceof BitmapDrawable) {
                return zza(((BitmapDrawable) drawable).getBitmap());
            }
            zzakb.zzdk("Drawable is not an instance of BitmapDrawable. Returning empty string");
            return "";
        } catch (RemoteException unused) {
            zzakb.zzdk("Unable to get drawable. Returning empty string");
            return "";
        }
    }

    private static zzpw zzd(Object obj) {
        if (obj instanceof IBinder) {
            return zzpx.zzh((IBinder) obj);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzd(zzaqw zzaqwVar) {
        View.OnClickListener onClickListener = zzaqwVar.getOnClickListener();
        if (onClickListener != null) {
            onClickListener.onClick(zzaqwVar.getView());
        }
    }

    public static View zze(zzajh zzajhVar) {
        if (zzajhVar == null) {
            zzakb.m359e("AdState is null");
            return null;
        }
        if (zzf(zzajhVar) && zzajhVar.zzbyo != null) {
            return zzajhVar.zzbyo.getView();
        }
        try {
            IObjectWrapper view = zzajhVar.zzbtx != null ? zzajhVar.zzbtx.getView() : null;
            if (view != null) {
                return (View) ObjectWrapper.unwrap(view);
            }
            zzakb.zzdk("View in mediation adapter is null.");
            return null;
        } catch (RemoteException e) {
            zzakb.zzc("Could not get View from mediation adapter.", e);
            return null;
        }
    }

    public static boolean zzf(zzajh zzajhVar) {
        return (zzajhVar == null || !zzajhVar.zzceq || zzajhVar.zzbtw == null || zzajhVar.zzbtw.zzbsf == null) ? false : true;
    }
}
