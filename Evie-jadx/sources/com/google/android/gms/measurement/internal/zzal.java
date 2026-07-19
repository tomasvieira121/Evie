package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzal extends zzf {
    private final zzam zzalq;
    private boolean zzalr;

    zzal(zzbt zzbtVar) {
        super(zzbtVar);
        this.zzalq = new zzam(this, getContext(), "google_app_measurement_local.db");
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzgt() {
        return false;
    }

    public final void resetAnalyticsData() {
        zzgb();
        zzaf();
        try {
            int iDelete = getWritableDatabase().delete("messages", null, null) + 0;
            if (iDelete > 0) {
                zzgo().zzjl().zzg("Reset local analytics data. records", Integer.valueOf(iDelete));
            }
        } catch (SQLiteException e) {
            zzgo().zzjd().zzg("Error resetting local analytics data. error", e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:76:0x0123  */
    /* JADX WARN: Code duplicated, block: B:78:0x0128  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r12v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    private final boolean zza(int i, byte[] bArr) throws Throwable {
        SQLiteDatabase writableDatabase;
        ?? r12;
        ?? r13;
        ?? r14;
        zzgb();
        zzaf();
        ?? r2 = 0;
        if (this.zzalr) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", Integer.valueOf(i));
        contentValues.put("entry", bArr);
        int i2 = 0;
        int i3 = 5;
        for (int i4 = 5; i2 < i4; i4 = 5) {
            SQLiteDatabase sQLiteDatabase = null;
             = 0;
             = 0;
            ?? r7 = 0;
            ?? r8 = 0;
            try {
                writableDatabase = getWritableDatabase();
                try {
                    if (writableDatabase == null) {
                        this.zzalr = true;
                        if (writableDatabase != null) {
                            writableDatabase.close();
                        }
                        return r2;
                    }
                    writableDatabase.beginTransaction();
                    long j = 0;
                    ?? RawQuery = writableDatabase.rawQuery("select count(1) from messages", null);
                    if (RawQuery != 0) {
                        try {
                            if (RawQuery.moveToFirst()) {
                                j = RawQuery.getLong(r2);
                            }
                        } catch (SQLiteDatabaseLockedException unused) {
                            r7 = RawQuery;
                            SystemClock.sleep(i3);
                            i3 += 20;
                            if (r7 != 0) {
                                r7.close();
                            }
                            if (writableDatabase != null) {
                                writableDatabase.close();
                            }
                            i2++;
                            r2 = 0;
                        } catch (SQLiteFullException e) {
                            e = e;
                            r8 = RawQuery;
                            try {
                                zzgo().zzjd().zzg("Error writing entry to local database", e);
                                this.zzalr = true;
                                if (r8 != 0) {
                                    r8.close();
                                }
                                if (writableDatabase != null) {
                                    writableDatabase.close();
                                }
                                i2++;
                                r2 = 0;
                            } catch (Throwable th) {
                                th = th;
                                r12 = r8;
                                if (r12 != 0) {
                                    r12.close();
                                }
                                if (writableDatabase != null) {
                                    writableDatabase.close();
                                }
                                throw th;
                            }
                        } catch (SQLiteException e2) {
                            e = e2;
                            r14 = RawQuery;
                            sQLiteDatabase = writableDatabase;
                            r13 = r14;
                            if (sQLiteDatabase != null) {
                                try {
                                    if (sQLiteDatabase.inTransaction()) {
                                        sQLiteDatabase.endTransaction();
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    writableDatabase = sQLiteDatabase;
                                    r12 = r13;
                                    if (r12 != 0) {
                                        r12.close();
                                    }
                                    if (writableDatabase != null) {
                                        writableDatabase.close();
                                    }
                                    throw th;
                                }
                            }
                            zzgo().zzjd().zzg("Error writing entry to local database", e);
                            this.zzalr = true;
                            if (r13 != 0) {
                                r13.close();
                            }
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.close();
                            }
                            i2++;
                            r2 = 0;
                        } catch (Throwable th3) {
                            th = th3;
                            r12 = RawQuery;
                            if (r12 != 0) {
                                r12.close();
                            }
                            if (writableDatabase != null) {
                                writableDatabase.close();
                            }
                            throw th;
                        }
                    }
                    if (j >= 100000) {
                        zzgo().zzjd().zzbx("Data loss, local db full");
                        long j2 = (100000 - j) + 1;
                        String[] strArr = new String[1];
                        strArr[r2] = Long.toString(j2);
                        long jDelete = writableDatabase.delete("messages", "rowid in (select rowid from messages order by rowid asc limit ?)", strArr);
                        if (jDelete != j2) {
                            zzgo().zzjd().zzd("Different delete count than expected in local db. expected, received, difference", Long.valueOf(j2), Long.valueOf(jDelete), Long.valueOf(j2 - jDelete));
                        }
                    }
                    writableDatabase.insertOrThrow("messages", null, contentValues);
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                    if (RawQuery != 0) {
                        RawQuery.close();
                    }
                    if (writableDatabase != null) {
                        writableDatabase.close();
                    }
                    return true;
                } catch (SQLiteDatabaseLockedException unused2) {
                } catch (SQLiteFullException e3) {
                    e = e3;
                } catch (SQLiteException e4) {
                    e = e4;
                    r14 = 0;
                }
            } catch (SQLiteDatabaseLockedException unused3) {
                writableDatabase = null;
            } catch (SQLiteFullException e5) {
                e = e5;
                writableDatabase = null;
            } catch (SQLiteException e6) {
                e = e6;
                r13 = 0;
            } catch (Throwable th4) {
                th = th4;
                writableDatabase = null;
                r12 = 0;
            }
        }
        zzgo().zzjg().zzbx("Failed to write entry to local database");
        return false;
    }

    public final boolean zza(zzad zzadVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzadVar.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length > 131072) {
            zzgo().zzjg().zzbx("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return zza(0, bArrMarshall);
    }

    public final boolean zza(zzfh zzfhVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzfhVar.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length > 131072) {
            zzgo().zzjg().zzbx("User property too long for local database. Sending directly to service");
            return false;
        }
        return zza(1, bArrMarshall);
    }

    public final boolean zzc(zzl zzlVar) {
        zzgm();
        byte[] bArrZza = zzfk.zza(zzlVar);
        if (bArrZza.length > 131072) {
            zzgo().zzjg().zzbx("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return zza(2, bArrZza);
    }

    /* JADX WARN: Code duplicated, block: B:107:0x018e A[Catch: all -> 0x01df, TryCatch #24 {all -> 0x01df, blocks: (B:27:0x006c, B:29:0x0072, B:31:0x0081, B:33:0x0094, B:35:0x0099, B:41:0x00b0, B:42:0x00b3, B:40:0x00ac, B:44:0x00b6, B:46:0x00c9, B:53:0x00e2, B:54:0x00e6, B:55:0x00e9, B:51:0x00dc, B:57:0x00ec, B:59:0x00ff, B:66:0x0118, B:67:0x011d, B:68:0x0120, B:64:0x0112, B:69:0x0121, B:70:0x0130, B:72:0x0146, B:73:0x0153, B:105:0x0188, B:107:0x018e, B:108:0x0191, B:123:0x01c1, B:115:0x01ae), top: B:146:0x0188 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:112:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:118:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:120:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:125:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:127:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:131:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:133:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:146:0x0188 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:160:0x01da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x01da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x01da A[SYNTHETIC] */
    public final List<AbstractSafeParcelable> zzr(int i) throws Throwable {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursorQuery;
        zzfh zzfhVarCreateFromParcel;
        zzl zzlVarCreateFromParcel;
        zzaf();
        zzgb();
        if (this.zzalr) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!getContext().getDatabasePath("google_app_measurement_local.db").exists()) {
            return arrayList;
        }
        int i2 = 0;
        int i3 = 5;
        for (int i4 = 5; i2 < i4; i4 = 5) {
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                try {
                    if (writableDatabase == null) {
                        try {
                            this.zzalr = true;
                            if (writableDatabase != null) {
                                writableDatabase.close();
                            }
                            return null;
                        } catch (SQLiteFullException e) {
                            e = e;
                            cursorQuery = null;
                            sQLiteDatabase = writableDatabase;
                            zzgo().zzjd().zzg("Error reading entries from local database", e);
                            this.zzalr = true;
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.close();
                            }
                            i2++;
                        } catch (SQLiteException e2) {
                            e = e2;
                            cursorQuery = null;
                            sQLiteDatabase = writableDatabase;
                            if (sQLiteDatabase != null) {
                                try {
                                    if (sQLiteDatabase.inTransaction()) {
                                        sQLiteDatabase.endTransaction();
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    if (cursorQuery != null) {
                                        cursorQuery.close();
                                    }
                                    if (sQLiteDatabase != null) {
                                        sQLiteDatabase.close();
                                    }
                                    throw th;
                                }
                            }
                            zzgo().zzjd().zzg("Error reading entries from local database", e);
                            this.zzalr = true;
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.close();
                            }
                            i2++;
                        } catch (Throwable th2) {
                            th = th2;
                            cursorQuery = null;
                            sQLiteDatabase = writableDatabase;
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.close();
                            }
                            throw th;
                        }
                    } else {
                        try {
                            writableDatabase.beginTransaction();
                            sQLiteDatabase = writableDatabase;
                            try {
                                cursorQuery = writableDatabase.query("messages", new String[]{"rowid", "type", "entry"}, null, null, null, null, "rowid asc", Integer.toString(100));
                                long j = -1;
                                while (cursorQuery.moveToNext()) {
                                    try {
                                        j = cursorQuery.getLong(0);
                                        int i5 = cursorQuery.getInt(1);
                                        byte[] blob = cursorQuery.getBlob(2);
                                        if (i5 == 0) {
                                            Parcel parcelObtain = Parcel.obtain();
                                            try {
                                                try {
                                                    parcelObtain.unmarshall(blob, 0, blob.length);
                                                    parcelObtain.setDataPosition(0);
                                                    zzad zzadVarCreateFromParcel = zzad.CREATOR.createFromParcel(parcelObtain);
                                                    parcelObtain.recycle();
                                                    if (zzadVarCreateFromParcel != null) {
                                                        arrayList.add(zzadVarCreateFromParcel);
                                                    }
                                                } catch (SafeParcelReader.ParseException unused) {
                                                    zzgo().zzjd().zzbx("Failed to load event from local database");
                                                    parcelObtain.recycle();
                                                }
                                            } catch (Throwable th3) {
                                                parcelObtain.recycle();
                                                throw th3;
                                            }
                                        } else if (i5 == 1) {
                                            Parcel parcelObtain2 = Parcel.obtain();
                                            try {
                                                try {
                                                    parcelObtain2.unmarshall(blob, 0, blob.length);
                                                    parcelObtain2.setDataPosition(0);
                                                    zzfhVarCreateFromParcel = zzfh.CREATOR.createFromParcel(parcelObtain2);
                                                    parcelObtain2.recycle();
                                                } catch (SafeParcelReader.ParseException unused2) {
                                                    zzgo().zzjd().zzbx("Failed to load user property from local database");
                                                    parcelObtain2.recycle();
                                                    zzfhVarCreateFromParcel = null;
                                                }
                                                if (zzfhVarCreateFromParcel != null) {
                                                    arrayList.add(zzfhVarCreateFromParcel);
                                                }
                                            } catch (Throwable th4) {
                                                parcelObtain2.recycle();
                                                throw th4;
                                            }
                                        } else if (i5 == 2) {
                                            Parcel parcelObtain3 = Parcel.obtain();
                                            try {
                                                try {
                                                    parcelObtain3.unmarshall(blob, 0, blob.length);
                                                    parcelObtain3.setDataPosition(0);
                                                    zzlVarCreateFromParcel = zzl.CREATOR.createFromParcel(parcelObtain3);
                                                    parcelObtain3.recycle();
                                                } catch (SafeParcelReader.ParseException unused3) {
                                                    zzgo().zzjd().zzbx("Failed to load user property from local database");
                                                    parcelObtain3.recycle();
                                                    zzlVarCreateFromParcel = null;
                                                }
                                                if (zzlVarCreateFromParcel != null) {
                                                    arrayList.add(zzlVarCreateFromParcel);
                                                }
                                            } catch (Throwable th5) {
                                                parcelObtain3.recycle();
                                                throw th5;
                                            }
                                        } else {
                                            zzgo().zzjd().zzbx("Unknown record type in local database");
                                        }
                                    } catch (SQLiteDatabaseLockedException unused4) {
                                        SystemClock.sleep(i3);
                                        i3 += 20;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                        i2++;
                                    } catch (SQLiteFullException e3) {
                                        e = e3;
                                        zzgo().zzjd().zzg("Error reading entries from local database", e);
                                        this.zzalr = true;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                        i2++;
                                    } catch (SQLiteException e4) {
                                        e = e4;
                                        if (sQLiteDatabase != null) {
                                            if (sQLiteDatabase.inTransaction()) {
                                                sQLiteDatabase.endTransaction();
                                            }
                                        }
                                        zzgo().zzjd().zzg("Error reading entries from local database", e);
                                        this.zzalr = true;
                                        if (cursorQuery != null) {
                                            cursorQuery.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                        i2++;
                                    }
                                }
                                if (sQLiteDatabase.delete("messages", "rowid <= ?", new String[]{Long.toString(j)}) < arrayList.size()) {
                                    zzgo().zzjd().zzbx("Fewer entries removed from local database than expected");
                                }
                                sQLiteDatabase.setTransactionSuccessful();
                                sQLiteDatabase.endTransaction();
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                }
                                return arrayList;
                            } catch (SQLiteDatabaseLockedException unused5) {
                                cursorQuery = null;
                                SystemClock.sleep(i3);
                                i3 += 20;
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                }
                                i2++;
                            } catch (SQLiteFullException e5) {
                                e = e5;
                                cursorQuery = null;
                                zzgo().zzjd().zzg("Error reading entries from local database", e);
                                this.zzalr = true;
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                }
                                i2++;
                            } catch (SQLiteException e6) {
                                e = e6;
                                cursorQuery = null;
                                if (sQLiteDatabase != null) {
                                    if (sQLiteDatabase.inTransaction()) {
                                        sQLiteDatabase.endTransaction();
                                    }
                                }
                                zzgo().zzjd().zzg("Error reading entries from local database", e);
                                this.zzalr = true;
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                }
                                i2++;
                            } catch (Throwable th6) {
                                th = th6;
                                cursorQuery = null;
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                }
                                throw th;
                            }
                        } catch (SQLiteFullException e7) {
                            e = e7;
                            sQLiteDatabase = writableDatabase;
                        } catch (SQLiteException e8) {
                            e = e8;
                            sQLiteDatabase = writableDatabase;
                        } catch (Throwable th7) {
                            th = th7;
                            sQLiteDatabase = writableDatabase;
                        }
                    }
                } catch (SQLiteDatabaseLockedException unused6) {
                    sQLiteDatabase = writableDatabase;
                }
            } catch (SQLiteDatabaseLockedException unused7) {
                sQLiteDatabase = null;
                cursorQuery = null;
            } catch (SQLiteFullException e9) {
                e = e9;
                sQLiteDatabase = null;
                cursorQuery = null;
            } catch (SQLiteException e10) {
                e = e10;
                sQLiteDatabase = null;
                cursorQuery = null;
            } catch (Throwable th8) {
                th = th8;
                sQLiteDatabase = null;
                cursorQuery = null;
            }
        }
        zzgo().zzjg().zzbx("Failed to read events from database in reasonable time");
        return null;
    }

    private final SQLiteDatabase getWritableDatabase() throws SQLiteException {
        if (this.zzalr) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.zzalq.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.zzalr = true;
        return null;
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
