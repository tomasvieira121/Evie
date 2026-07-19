package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzaum<P> {
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private ConcurrentMap<String, List<zzaun<P>>> zzdhk = new ConcurrentHashMap();
    private zzaun<P> zzdhl;

    /* JADX WARN: Code duplicated, block: B:12:0x0064  */
    protected final zzaun<P> zza(P p, zzaxr.zzb zzbVar) throws GeneralSecurityException {
        zzaun<P> zzaunVar;
        ByteBuffer byteBufferAllocate;
        byte b;
        byte[] bArrArray;
        String str;
        List<zzaun<P>> listPut;
        switch (zzbVar.zzzs()) {
            case LEGACY:
            case CRUNCHY:
                byteBufferAllocate = ByteBuffer.allocate(5);
                b = 0;
                bArrArray = byteBufferAllocate.put(b).putInt(zzbVar.zzzr()).array();
                zzaunVar = new zzaun<>(p, bArrArray, zzbVar.zzzq(), zzbVar.zzzs());
                ArrayList arrayList = new ArrayList();
                arrayList.add(zzaunVar);
                str = new String(zzaunVar.zzwj(), UTF_8);
                listPut = this.zzdhk.put(str, Collections.unmodifiableList(arrayList));
                if (listPut != null) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.addAll(listPut);
                    arrayList2.add(zzaunVar);
                    this.zzdhk.put(str, Collections.unmodifiableList(arrayList2));
                }
                return zzaunVar;
            case TINK:
                byteBufferAllocate = ByteBuffer.allocate(5);
                b = 1;
                bArrArray = byteBufferAllocate.put(b).putInt(zzbVar.zzzr()).array();
                zzaunVar = new zzaun<>(p, bArrArray, zzbVar.zzzq(), zzbVar.zzzs());
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(zzaunVar);
                str = new String(zzaunVar.zzwj(), UTF_8);
                listPut = this.zzdhk.put(str, Collections.unmodifiableList(arrayList3));
                if (listPut != null) {
                    ArrayList arrayList4 = new ArrayList();
                    arrayList4.addAll(listPut);
                    arrayList4.add(zzaunVar);
                    this.zzdhk.put(str, Collections.unmodifiableList(arrayList4));
                }
                return zzaunVar;
            case RAW:
                bArrArray = zzauc.zzdhg;
                zzaunVar = new zzaun<>(p, bArrArray, zzbVar.zzzq(), zzbVar.zzzs());
                ArrayList arrayList5 = new ArrayList();
                arrayList5.add(zzaunVar);
                str = new String(zzaunVar.zzwj(), UTF_8);
                listPut = this.zzdhk.put(str, Collections.unmodifiableList(arrayList5));
                if (listPut != null) {
                    ArrayList arrayList6 = new ArrayList();
                    arrayList6.addAll(listPut);
                    arrayList6.add(zzaunVar);
                    this.zzdhk.put(str, Collections.unmodifiableList(arrayList6));
                }
                return zzaunVar;
            default:
                throw new GeneralSecurityException("unknown output prefix type");
        }
    }

    protected final void zza(zzaun<P> zzaunVar) {
        this.zzdhl = zzaunVar;
    }

    public final zzaun<P> zzwh() {
        return this.zzdhl;
    }
}
