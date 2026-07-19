package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfu;
import com.google.android.gms.internal.measurement.zzfv;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzgf;
import com.google.android.gms.internal.measurement.zzgg;
import com.google.android.gms.internal.measurement.zzgi;
import com.google.android.gms.internal.measurement.zzgj;
import com.google.android.gms.internal.measurement.zzyx;
import com.google.android.gms.internal.measurement.zzyy;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzq extends zzez {
    private static final String[] zzahi = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"};
    private static final String[] zzahj = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    private static final String[] zzahk = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"};
    private static final String[] zzahl = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    private static final String[] zzahm = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    private static final String[] zzahn = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private final zzt zzaho;
    private final zzev zzahp;

    zzq(zzfa zzfaVar) {
        super(zzfaVar);
        this.zzahp = new zzev(zzbx());
        this.zzaho = new zzt(this, getContext(), "google_app_measurement.db");
    }

    @Override // com.google.android.gms.measurement.internal.zzez
    protected final boolean zzgt() {
        return false;
    }

    public final void beginTransaction() {
        zzcl();
        getWritableDatabase().beginTransaction();
    }

    public final void setTransactionSuccessful() {
        zzcl();
        getWritableDatabase().setTransactionSuccessful();
    }

    public final void endTransaction() {
        zzcl();
        getWritableDatabase().endTransaction();
    }

    private final long zza(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = getWritableDatabase().rawQuery(str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    long j = cursorRawQuery.getLong(0);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return j;
                }
                throw new SQLiteException("Database returned empty set");
            } catch (SQLiteException e) {
                zzgo().zzjd().zze("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private final long zza(String str, String[] strArr, long j) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = getWritableDatabase().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return j;
                }
                long j2 = cursorRawQuery.getLong(0);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j2;
            } catch (SQLiteException e) {
                zzgo().zzjd().zze("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    final SQLiteDatabase getWritableDatabase() {
        zzaf();
        try {
            return this.zzaho.getWritableDatabase();
        } catch (SQLiteException e) {
            zzgo().zzjg().zzg("Error opening database", e);
            throw e;
        }
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0118  */
    /* JADX WARN: Code duplicated, block: B:56:0x011f  */
    public final zzz zzg(String str, String str2) {
        Cursor cursor;
        Boolean boolValueOf;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzcl();
        try {
            Cursor cursorQuery = getWritableDatabase().query("events", new String[]{"lifetime_count", "current_bundle_count", "last_fire_timestamp", "last_bundled_timestamp", "last_bundled_day", "last_sampled_complex_event_id", "last_sampling_rate", "last_exempt_from_sampling"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                if (!cursorQuery.moveToFirst()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                long j = cursorQuery.getLong(0);
                long j2 = cursorQuery.getLong(1);
                long j3 = cursorQuery.getLong(2);
                long j4 = cursorQuery.isNull(3) ? 0L : cursorQuery.getLong(3);
                Long lValueOf = cursorQuery.isNull(4) ? null : Long.valueOf(cursorQuery.getLong(4));
                Long lValueOf2 = cursorQuery.isNull(5) ? null : Long.valueOf(cursorQuery.getLong(5));
                Long lValueOf3 = cursorQuery.isNull(6) ? null : Long.valueOf(cursorQuery.getLong(6));
                if (cursorQuery.isNull(7)) {
                    boolValueOf = null;
                } else {
                    boolValueOf = Boolean.valueOf(cursorQuery.getLong(7) == 1);
                }
                cursor = cursorQuery;
                try {
                    try {
                        zzz zzzVar = new zzz(str, str2, j, j2, j3, j4, lValueOf, lValueOf2, lValueOf3, boolValueOf);
                        if (cursor.moveToNext()) {
                            zzgo().zzjd().zzg("Got multiple records for event aggregates, expected one. appId", zzap.zzbv(str));
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        return zzzVar;
                    } catch (SQLiteException e) {
                        e = e;
                        zzgo().zzjd().zzd("Error querying events. appId", zzap.zzbv(str), zzgl().zzbs(str2), e);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e2) {
                e = e2;
                cursor = cursorQuery;
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        zzgo().zzjd().zzd("Error querying events. appId", zzap.zzbv(str), zzgl().zzbs(str2), e);
        if (cursor != null) {
            cursor.close();
        }
        return null;
    }

    public final void zza(zzz zzzVar) {
        Preconditions.checkNotNull(zzzVar);
        zzaf();
        zzcl();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzzVar.zztt);
        contentValues.put("name", zzzVar.name);
        contentValues.put("lifetime_count", Long.valueOf(zzzVar.zzaie));
        contentValues.put("current_bundle_count", Long.valueOf(zzzVar.zzaif));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzzVar.zzaig));
        contentValues.put("last_bundled_timestamp", Long.valueOf(zzzVar.zzaih));
        contentValues.put("last_bundled_day", zzzVar.zzaii);
        contentValues.put("last_sampled_complex_event_id", zzzVar.zzaij);
        contentValues.put("last_sampling_rate", zzzVar.zzaik);
        contentValues.put("last_exempt_from_sampling", (zzzVar.zzail == null || !zzzVar.zzail.booleanValue()) ? null : 1L);
        try {
            if (getWritableDatabase().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                zzgo().zzjd().zzg("Failed to insert/update event aggregates (got -1). appId", zzap.zzbv(zzzVar.zztt));
            }
        } catch (SQLiteException e) {
            zzgo().zzjd().zze("Error storing event aggregates. appId", zzap.zzbv(zzzVar.zztt), e);
        }
    }

    public final void zzh(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzcl();
        try {
            zzgo().zzjl().zzg("Deleted user attribute rows", Integer.valueOf(getWritableDatabase().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2})));
        } catch (SQLiteException e) {
            zzgo().zzjd().zzd("Error deleting user attribute. appId", zzap.zzbv(str), zzgl().zzbu(str2), e);
        }
    }

    public final boolean zza(zzfj zzfjVar) {
        Preconditions.checkNotNull(zzfjVar);
        zzaf();
        zzcl();
        if (zzi(zzfjVar.zztt, zzfjVar.name) == null) {
            if (!zzfk.zzcq(zzfjVar.name)) {
                long jZza = zza("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzfjVar.zztt, zzfjVar.origin});
                if (zzgq().zze(zzfjVar.zztt, zzaf.zzalj)) {
                    if (!"_ap".equals(zzfjVar.name) && jZza >= 25) {
                        return false;
                    }
                } else if (jZza >= 25) {
                    return false;
                }
            } else if (zza("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzfjVar.zztt}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzfjVar.zztt);
        contentValues.put("origin", zzfjVar.origin);
        contentValues.put("name", zzfjVar.name);
        contentValues.put("set_timestamp", Long.valueOf(zzfjVar.zzaue));
        zza(contentValues, "value", zzfjVar.value);
        try {
            if (getWritableDatabase().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                zzgo().zzjd().zzg("Failed to insert/update user property (got -1). appId", zzap.zzbv(zzfjVar.zztt));
            }
        } catch (SQLiteException e) {
            zzgo().zzjd().zze("Error storing user property. appId", zzap.zzbv(zzfjVar.zztt), e);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a9  */
    public final zzfj zzi(String str, String str2) {
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzcl();
        try {
            cursorQuery = getWritableDatabase().query("user_attributes", new String[]{"set_timestamp", "value", "origin"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                if (!cursorQuery.moveToFirst()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                try {
                    try {
                        zzfj zzfjVar = new zzfj(str, cursorQuery.getString(2), str2, cursorQuery.getLong(0), zza(cursorQuery, 1));
                        if (cursorQuery.moveToNext()) {
                            zzgo().zzjd().zzg("Got multiple records for user property, expected one. appId", zzap.zzbv(str));
                        }
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return zzfjVar;
                    } catch (SQLiteException e) {
                        e = e;
                        zzgo().zzjd().zzd("Error querying user property. appId", zzap.zzbv(str), zzgl().zzbu(str2), e);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e2) {
                e = e2;
            } catch (Throwable th2) {
                th = th2;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
        zzgo().zzjd().zzd("Error querying user property. appId", zzap.zzbv(str), zzgl().zzbu(str2), e);
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00a3  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public final List<zzfj> zzbk(String str) throws Throwable {
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        zzaf();
        zzcl();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                cursorQuery = getWritableDatabase().query("user_attributes", new String[]{"name", "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return arrayList;
                    }
                    do {
                        String string = cursorQuery.getString(0);
                        String string2 = cursorQuery.getString(1);
                        String str2 = string2 == null ? "" : string2;
                        long j = cursorQuery.getLong(2);
                        Object objZza = zza(cursorQuery, 3);
                        if (objZza == null) {
                            zzgo().zzjd().zzg("Read invalid user property value, ignoring it. appId", zzap.zzbv(str));
                        } else {
                            arrayList.add(new zzfj(str, str2, string, j, objZza));
                        }
                    } while (cursorQuery.moveToNext());
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return arrayList;
                } catch (SQLiteException e) {
                    e = e;
                    zzgo().zzjd().zze("Error querying user properties. appId", zzap.zzbv(str), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:54:0x011f  */
    /* JADX WARN: Code duplicated, block: B:59:0x0127  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public final List<zzfj> zzb(String str, String str2, String str3) throws Throwable {
        String str4;
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        zzaf();
        zzcl();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                try {
                    ArrayList arrayList2 = new ArrayList(3);
                    try {
                        arrayList2.add(str);
                        StringBuilder sb = new StringBuilder("app_id=?");
                        if (TextUtils.isEmpty(str2)) {
                            str4 = str2;
                        } else {
                            str4 = str2;
                            try {
                                arrayList2.add(str4);
                                sb.append(" and origin=?");
                            } catch (SQLiteException e) {
                                e = e;
                                cursorQuery = null;
                            }
                        }
                        if (!TextUtils.isEmpty(str3)) {
                            arrayList2.add(String.valueOf(str3).concat("*"));
                            sb.append(" and name glob ?");
                        }
                        cursorQuery = getWritableDatabase().query("user_attributes", new String[]{"name", "set_timestamp", "value", "origin"}, sb.toString(), (String[]) arrayList2.toArray(new String[arrayList2.size()]), null, null, "rowid", "1001");
                        try {
                            if (!cursorQuery.moveToFirst()) {
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                return arrayList;
                            }
                            while (true) {
                                if (arrayList.size() >= 1000) {
                                    zzgo().zzjd().zzg("Read more than the max allowed user properties, ignoring excess", 1000);
                                    break;
                                }
                                String string = cursorQuery.getString(0);
                                long j = cursorQuery.getLong(1);
                                try {
                                    Object objZza = zza(cursorQuery, 2);
                                    String string2 = cursorQuery.getString(3);
                                    if (objZza == null) {
                                        try {
                                            zzgo().zzjd().zzd("(2)Read invalid user property value, ignoring it", zzap.zzbv(str), string2, str3);
                                        } catch (SQLiteException e2) {
                                            e = e2;
                                            str4 = string2;
                                        }
                                    } else {
                                        arrayList.add(new zzfj(str, string2, string, j, objZza));
                                    }
                                    if (!cursorQuery.moveToNext()) {
                                        break;
                                    }
                                    str4 = string2;
                                } catch (SQLiteException e3) {
                                    e = e3;
                                }
                            }
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            return arrayList;
                        } catch (SQLiteException e4) {
                            e = e4;
                        } catch (Throwable th) {
                            th = th;
                            cursor = cursorQuery;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    } catch (SQLiteException e5) {
                        e = e5;
                        str4 = str2;
                        cursorQuery = null;
                        zzgo().zzjd().zzd("(2)Error querying user properties", zzap.zzbv(str), str4, e);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e6) {
                e = e6;
            }
            zzgo().zzjd().zzd("(2)Error querying user properties", zzap.zzbv(str), str4, e);
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final boolean zza(zzl zzlVar) {
        Preconditions.checkNotNull(zzlVar);
        zzaf();
        zzcl();
        if (zzi(zzlVar.packageName, zzlVar.zzahb.name) == null && zza("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzlVar.packageName}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzlVar.packageName);
        contentValues.put("origin", zzlVar.origin);
        contentValues.put("name", zzlVar.zzahb.name);
        zza(contentValues, "value", zzlVar.zzahb.getValue());
        contentValues.put("active", Boolean.valueOf(zzlVar.active));
        contentValues.put("trigger_event_name", zzlVar.triggerEventName);
        contentValues.put("trigger_timeout", Long.valueOf(zzlVar.triggerTimeout));
        zzgm();
        contentValues.put("timed_out_event", zzfk.zza(zzlVar.zzahc));
        contentValues.put("creation_timestamp", Long.valueOf(zzlVar.creationTimestamp));
        zzgm();
        contentValues.put("triggered_event", zzfk.zza(zzlVar.zzahd));
        contentValues.put("triggered_timestamp", Long.valueOf(zzlVar.zzahb.zzaue));
        contentValues.put("time_to_live", Long.valueOf(zzlVar.timeToLive));
        zzgm();
        contentValues.put("expired_event", zzfk.zza(zzlVar.zzahe));
        try {
            if (getWritableDatabase().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                zzgo().zzjd().zzg("Failed to insert/update conditional user property (got -1)", zzap.zzbv(zzlVar.packageName));
            }
        } catch (SQLiteException e) {
            zzgo().zzjd().zze("Error storing conditional user property", zzap.zzbv(zzlVar.packageName), e);
        }
        return true;
    }

    public final zzl zzj(String str, String str2) throws Throwable {
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzcl();
        try {
            try {
                cursorQuery = getWritableDatabase().query("conditional_properties", new String[]{"origin", "value", "active", "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    String string = cursorQuery.getString(0);
                    try {
                        Object objZza = zza(cursorQuery, 1);
                        boolean z = cursorQuery.getInt(2) != 0;
                        zzl zzlVar = new zzl(str, string, new zzfh(str2, cursorQuery.getLong(8), objZza, string), cursorQuery.getLong(6), z, cursorQuery.getString(3), (zzad) zzjo().zza(cursorQuery.getBlob(5), zzad.CREATOR), cursorQuery.getLong(4), (zzad) zzjo().zza(cursorQuery.getBlob(7), zzad.CREATOR), cursorQuery.getLong(9), (zzad) zzjo().zza(cursorQuery.getBlob(10), zzad.CREATOR));
                        if (cursorQuery.moveToNext()) {
                            zzgo().zzjd().zze("Got multiple records for conditional property, expected one", zzap.zzbv(str), zzgl().zzbu(str2));
                        }
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return zzlVar;
                    } catch (SQLiteException e) {
                        e = e;
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                } catch (Throwable th) {
                    th = th;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
        zzgo().zzjd().zzd("Error querying conditional property", zzap.zzbv(str), zzgl().zzbu(str2), e);
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final int zzk(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzcl();
        try {
            return getWritableDatabase().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzgo().zzjd().zzd("Error deleting conditional property", zzap.zzbv(str), zzgl().zzbu(str2), e);
            return 0;
        }
    }

    public final List<zzl> zzc(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzaf();
        zzcl();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return zzb(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0124 A[FINALLY_INSNS] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public final List<zzl> zzb(String str, String[] strArr) {
        zzaf();
        zzcl();
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = getWritableDatabase().query("conditional_properties", new String[]{"app_id", "origin", "name", "value", "active", "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"}, str, strArr, null, null, "rowid", "1001");
                if (!cursorQuery.moveToFirst()) {
                    return arrayList;
                }
                do {
                    if (arrayList.size() >= 1000) {
                        zzgo().zzjd().zzg("Read more than the max allowed conditional properties, ignoring extra", 1000);
                        break;
                    }
                    String string = cursorQuery.getString(0);
                    String string2 = cursorQuery.getString(1);
                    String string3 = cursorQuery.getString(2);
                    Object objZza = zza(cursorQuery, 3);
                    boolean z = cursorQuery.getInt(4) != 0;
                    String string4 = cursorQuery.getString(5);
                    long j = cursorQuery.getLong(6);
                    zzad zzadVar = (zzad) zzjo().zza(cursorQuery.getBlob(7), zzad.CREATOR);
                    arrayList.add(new zzl(string, string2, new zzfh(string3, cursorQuery.getLong(10), objZza, string2), cursorQuery.getLong(8), z, string4, zzadVar, j, (zzad) zzjo().zza(cursorQuery.getBlob(9), zzad.CREATOR), cursorQuery.getLong(11), (zzad) zzjo().zza(cursorQuery.getBlob(12), zzad.CREATOR)));
                } while (cursorQuery.moveToNext());
                return arrayList;
            } catch (SQLiteException e) {
                zzgo().zzjd().zzg("Error querying conditional user property value", e);
                return Collections.emptyList();
            }
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:61:0x01d5  */
    public final zzg zzbl(String str) {
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        zzaf();
        zzcl();
        try {
            boolean z = true;
            cursorQuery = getWritableDatabase().query("apps", new String[]{"app_instance_id", "gmp_app_id", "resettable_device_id_hash", "last_bundle_index", "last_bundle_start_timestamp", "last_bundle_end_timestamp", "app_version", "app_store", "gmp_version", "dev_cert_hash", "measurement_enabled", "day", "daily_public_events_count", "daily_events_count", "daily_conversions_count", "config_fetched_time", "failed_config_fetch_time", "app_version_int", "firebase_instance_id", "daily_error_events_count", "daily_realtime_events_count", "health_monitor_sample", "android_id", "adid_reporting_enabled", "ssaid_reporting_enabled", "admob_app_id"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                if (!cursorQuery.moveToFirst()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                try {
                    try {
                        zzg zzgVar = new zzg(this.zzamz.zzmb(), str);
                        zzgVar.zzam(cursorQuery.getString(0));
                        zzgVar.zzan(cursorQuery.getString(1));
                        zzgVar.zzap(cursorQuery.getString(2));
                        zzgVar.zzx(cursorQuery.getLong(3));
                        zzgVar.zzs(cursorQuery.getLong(4));
                        zzgVar.zzt(cursorQuery.getLong(5));
                        zzgVar.setAppVersion(cursorQuery.getString(6));
                        zzgVar.zzar(cursorQuery.getString(7));
                        zzgVar.zzv(cursorQuery.getLong(8));
                        zzgVar.zzw(cursorQuery.getLong(9));
                        zzgVar.setMeasurementEnabled(cursorQuery.isNull(10) || cursorQuery.getInt(10) != 0);
                        zzgVar.zzaa(cursorQuery.getLong(11));
                        zzgVar.zzab(cursorQuery.getLong(12));
                        zzgVar.zzac(cursorQuery.getLong(13));
                        zzgVar.zzad(cursorQuery.getLong(14));
                        zzgVar.zzy(cursorQuery.getLong(15));
                        zzgVar.zzz(cursorQuery.getLong(16));
                        zzgVar.zzu(cursorQuery.isNull(17) ? -2147483648L : cursorQuery.getInt(17));
                        zzgVar.zzaq(cursorQuery.getString(18));
                        zzgVar.zzaf(cursorQuery.getLong(19));
                        zzgVar.zzae(cursorQuery.getLong(20));
                        zzgVar.zzas(cursorQuery.getString(21));
                        zzgVar.zzag(cursorQuery.isNull(22) ? 0L : cursorQuery.getLong(22));
                        zzgVar.zze(cursorQuery.isNull(23) || cursorQuery.getInt(23) != 0);
                        if (!cursorQuery.isNull(24) && cursorQuery.getInt(24) == 0) {
                            z = false;
                        }
                        zzgVar.zzf(z);
                        zzgVar.zzao(cursorQuery.getString(25));
                        zzgVar.zzgv();
                        if (cursorQuery.moveToNext()) {
                            zzgo().zzjd().zzg("Got multiple records for app, expected one. appId", zzap.zzbv(str));
                        }
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return zzgVar;
                    } catch (SQLiteException e) {
                        e = e;
                        zzgo().zzjd().zze("Error querying app. appId", zzap.zzbv(str), e);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e2) {
                e = e2;
            } catch (Throwable th2) {
                th = th2;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
        zzgo().zzjd().zze("Error querying app. appId", zzap.zzbv(str), e);
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final void zza(zzg zzgVar) {
        Preconditions.checkNotNull(zzgVar);
        zzaf();
        zzcl();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzgVar.zzal());
        contentValues.put("app_instance_id", zzgVar.getAppInstanceId());
        contentValues.put("gmp_app_id", zzgVar.getGmpAppId());
        contentValues.put("resettable_device_id_hash", zzgVar.zzgx());
        contentValues.put("last_bundle_index", Long.valueOf(zzgVar.zzhe()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzgVar.zzgy()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzgVar.zzgz()));
        contentValues.put("app_version", zzgVar.zzak());
        contentValues.put("app_store", zzgVar.zzhb());
        contentValues.put("gmp_version", Long.valueOf(zzgVar.zzhc()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzgVar.zzhd()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzgVar.isMeasurementEnabled()));
        contentValues.put("day", Long.valueOf(zzgVar.zzhi()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzgVar.zzhj()));
        contentValues.put("daily_events_count", Long.valueOf(zzgVar.zzhk()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzgVar.zzhl()));
        contentValues.put("config_fetched_time", Long.valueOf(zzgVar.zzhf()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzgVar.zzhg()));
        contentValues.put("app_version_int", Long.valueOf(zzgVar.zzha()));
        contentValues.put("firebase_instance_id", zzgVar.getFirebaseInstanceId());
        contentValues.put("daily_error_events_count", Long.valueOf(zzgVar.zzhn()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzgVar.zzhm()));
        contentValues.put("health_monitor_sample", zzgVar.zzho());
        contentValues.put("android_id", Long.valueOf(zzgVar.zzhq()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(zzgVar.zzhr()));
        contentValues.put("ssaid_reporting_enabled", Boolean.valueOf(zzgVar.zzhs()));
        contentValues.put("admob_app_id", zzgVar.zzgw());
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase.update("apps", contentValues, "app_id = ?", new String[]{zzgVar.zzal()}) == 0 && writableDatabase.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                zzgo().zzjd().zzg("Failed to insert/update app (got -1). appId", zzap.zzbv(zzgVar.zzal()));
            }
        } catch (SQLiteException e) {
            zzgo().zzjd().zze("Error storing app. appId", zzap.zzbv(zzgVar.zzal()), e);
        }
    }

    public final long zzbm(String str) {
        Preconditions.checkNotEmpty(str);
        zzaf();
        zzcl();
        try {
            return getWritableDatabase().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, zzgq().zzb(str, zzaf.zzajs))))});
        } catch (SQLiteException e) {
            zzgo().zzjd().zze("Error deleting over the limit events. appId", zzap.zzbv(str), e);
            return 0L;
        }
    }

    public final zzr zza(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        Preconditions.checkNotEmpty(str);
        zzaf();
        zzcl();
        String[] strArr = {str};
        zzr zzrVar = new zzr();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                Cursor cursorQuery = writableDatabase.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    zzgo().zzjg().zzg("Not updating daily counts, app is not known. appId", zzap.zzbv(str));
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return zzrVar;
                }
                if (cursorQuery.getLong(0) == j) {
                    zzrVar.zzahr = cursorQuery.getLong(1);
                    zzrVar.zzahq = cursorQuery.getLong(2);
                    zzrVar.zzahs = cursorQuery.getLong(3);
                    zzrVar.zzaht = cursorQuery.getLong(4);
                    zzrVar.zzahu = cursorQuery.getLong(5);
                }
                if (z) {
                    zzrVar.zzahr++;
                }
                if (z2) {
                    zzrVar.zzahq++;
                }
                if (z3) {
                    zzrVar.zzahs++;
                }
                if (z4) {
                    zzrVar.zzaht++;
                }
                if (z5) {
                    zzrVar.zzahu++;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j));
                contentValues.put("daily_public_events_count", Long.valueOf(zzrVar.zzahq));
                contentValues.put("daily_events_count", Long.valueOf(zzrVar.zzahr));
                contentValues.put("daily_conversions_count", Long.valueOf(zzrVar.zzahs));
                contentValues.put("daily_error_events_count", Long.valueOf(zzrVar.zzaht));
                contentValues.put("daily_realtime_events_count", Long.valueOf(zzrVar.zzahu));
                writableDatabase.update("apps", contentValues, "app_id=?", strArr);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return zzrVar;
            } catch (SQLiteException e) {
                zzgo().zzjd().zze("Error updating daily counts. appId", zzap.zzbv(str), e);
                if (0 != 0) {
                    cursor.close();
                }
                return zzrVar;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0073  */
    public final byte[] zzbn(String str) {
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        zzaf();
        zzcl();
        Cursor cursor = null;
        try {
            try {
                cursorQuery = getWritableDatabase().query("apps", new String[]{"remote_config"}, "app_id=?", new String[]{str}, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    byte[] blob = cursorQuery.getBlob(0);
                    if (cursorQuery.moveToNext()) {
                        zzgo().zzjd().zzg("Got multiple records for app config, expected one. appId", zzap.zzbv(str));
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return blob;
                } catch (SQLiteException e) {
                    e = e;
                    zzgo().zzjd().zze("Error querying remote config. appId", zzap.zzbv(str), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final boolean zza(zzgi zzgiVar, boolean z) {
        zzaf();
        zzcl();
        Preconditions.checkNotNull(zzgiVar);
        Preconditions.checkNotEmpty(zzgiVar.zztt);
        Preconditions.checkNotNull(zzgiVar.zzaxf);
        zzif();
        long jCurrentTimeMillis = zzbx().currentTimeMillis();
        if (zzgiVar.zzaxf.longValue() < jCurrentTimeMillis - zzn.zzhw() || zzgiVar.zzaxf.longValue() > zzn.zzhw() + jCurrentTimeMillis) {
            zzgo().zzjg().zzd("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzap.zzbv(zzgiVar.zztt), Long.valueOf(jCurrentTimeMillis), zzgiVar.zzaxf);
        }
        try {
            byte[] bArr = new byte[zzgiVar.zzvu()];
            zzyy zzyyVarZzk = zzyy.zzk(bArr, 0, bArr.length);
            zzgiVar.zza(zzyyVarZzk);
            zzyyVarZzk.zzyt();
            byte[] bArrZzb = zzjo().zzb(bArr);
            zzgo().zzjl().zzg("Saving bundle, size", Integer.valueOf(bArrZzb.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzgiVar.zztt);
            contentValues.put("bundle_end_timestamp", zzgiVar.zzaxf);
            contentValues.put("data", bArrZzb);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (zzgiVar.zzayc != null) {
                contentValues.put("retry_count", zzgiVar.zzayc);
            }
            try {
                if (getWritableDatabase().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                zzgo().zzjd().zzg("Failed to insert bundle (got -1). appId", zzap.zzbv(zzgiVar.zztt));
                return false;
            } catch (SQLiteException e) {
                zzgo().zzjd().zze("Error storing bundle. appId", zzap.zzbv(zzgiVar.zztt), e);
                return false;
            }
        } catch (IOException e2) {
            zzgo().zzjd().zze("Data loss. Failed to serialize bundle. appId", zzap.zzbv(zzgiVar.zztt), e2);
            return false;
        }
    }

    public final String zzid() throws Throwable {
        Throwable th;
        Cursor cursorRawQuery;
        try {
            cursorRawQuery = getWritableDatabase().rawQuery("select app_id from queue order by has_realtime desc, rowid asc limit 1;", null);
            try {
                try {
                    if (!cursorRawQuery.moveToFirst()) {
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        return null;
                    }
                    String string = cursorRawQuery.getString(0);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return string;
                } catch (SQLiteException e) {
                    e = e;
                    zzgo().zzjd().zzg("Database error getting next bundle app id", e);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursorRawQuery = null;
        } catch (Throwable th3) {
            th = th3;
            cursorRawQuery = null;
        }
        th = th2;
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        throw th;
    }

    public final boolean zzie() {
        return zza("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public final List<Pair<zzgi, Long>> zzb(String str, int i, int i2) {
        zzaf();
        zzcl();
        Preconditions.checkArgument(i > 0);
        Preconditions.checkArgument(i2 > 0);
        Preconditions.checkNotEmpty(str);
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = getWritableDatabase().query("queue", new String[]{"rowid", "data", "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i));
                if (!cursorQuery.moveToFirst()) {
                    List<Pair<zzgi, Long>> listEmptyList = Collections.emptyList();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return listEmptyList;
                }
                ArrayList arrayList = new ArrayList();
                int length = 0;
                do {
                    long j = cursorQuery.getLong(0);
                    try {
                        byte[] bArrZza = zzjo().zza(cursorQuery.getBlob(1));
                        if (!arrayList.isEmpty() && bArrZza.length + length > i2) {
                            break;
                        }
                        zzyx zzyxVarZzj = zzyx.zzj(bArrZza, 0, bArrZza.length);
                        zzgi zzgiVar = new zzgi();
                        try {
                            zzgiVar.zza(zzyxVarZzj);
                            if (!cursorQuery.isNull(2)) {
                                zzgiVar.zzayc = Integer.valueOf(cursorQuery.getInt(2));
                            }
                            length += bArrZza.length;
                            arrayList.add(Pair.create(zzgiVar, Long.valueOf(j)));
                        } catch (IOException e) {
                            zzgo().zzjd().zze("Failed to merge queued bundle. appId", zzap.zzbv(str), e);
                        }
                        if (!cursorQuery.moveToNext()) {
                            break;
                        }
                    } catch (IOException e2) {
                        zzgo().zzjd().zze("Failed to unzip queued bundle. appId", zzap.zzbv(str), e2);
                    }
                } while (length <= i2);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayList;
            } catch (SQLiteException e3) {
                zzgo().zzjd().zze("Error querying bundles. appId", zzap.zzbv(str), e3);
                List<Pair<zzgi, Long>> listEmptyList2 = Collections.emptyList();
                if (0 != 0) {
                    cursor.close();
                }
                return listEmptyList2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    final void zzif() {
        int iDelete;
        zzaf();
        zzcl();
        if (zzil()) {
            long j = zzgp().zzanh.get();
            long jElapsedRealtime = zzbx().elapsedRealtime();
            if (Math.abs(jElapsedRealtime - j) > zzaf.zzakb.get().longValue()) {
                zzgp().zzanh.set(jElapsedRealtime);
                zzaf();
                zzcl();
                if (!zzil() || (iDelete = getWritableDatabase().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(zzbx().currentTimeMillis()), String.valueOf(zzn.zzhw())})) <= 0) {
                    return;
                }
                zzgo().zzjl().zzg("Deleted stale rows. rowsDeleted", Integer.valueOf(iDelete));
            }
        }
    }

    final void zzc(List<Long> list) {
        zzaf();
        zzcl();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (zzil()) {
            String strJoin = TextUtils.join(",", list);
            StringBuilder sb = new StringBuilder(String.valueOf(strJoin).length() + 2);
            sb.append("(");
            sb.append(strJoin);
            sb.append(")");
            String string = sb.toString();
            StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 80);
            sb2.append("SELECT COUNT(1) FROM queue WHERE rowid IN ");
            sb2.append(string);
            sb2.append(" AND retry_count =  2147483647 LIMIT 1");
            if (zza(sb2.toString(), (String[]) null) > 0) {
                zzgo().zzjg().zzbx("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                StringBuilder sb3 = new StringBuilder(String.valueOf(string).length() + 127);
                sb3.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb3.append(string);
                sb3.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                writableDatabase.execSQL(sb3.toString());
            } catch (SQLiteException e) {
                zzgo().zzjd().zzg("Error incrementing retry count. error", e);
            }
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    final void zza(String str, zzfu[] zzfuVarArr) {
        boolean z;
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzfuVarArr);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            zzcl();
            zzaf();
            Preconditions.checkNotEmpty(str);
            SQLiteDatabase writableDatabase2 = getWritableDatabase();
            writableDatabase2.delete("property_filters", "app_id=?", new String[]{str});
            writableDatabase2.delete("event_filters", "app_id=?", new String[]{str});
            for (zzfu zzfuVar : zzfuVarArr) {
                zzcl();
                zzaf();
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotNull(zzfuVar);
                Preconditions.checkNotNull(zzfuVar.zzava);
                Preconditions.checkNotNull(zzfuVar.zzauz);
                if (zzfuVar.zzauy == null) {
                    zzgo().zzjg().zzg("Audience with no ID. appId", zzap.zzbv(str));
                } else {
                    int iIntValue = zzfuVar.zzauy.intValue();
                    zzfv[] zzfvVarArr = zzfuVar.zzava;
                    int length = zzfvVarArr.length;
                    int i = 0;
                    while (true) {
                        if (i < length) {
                            if (zzfvVarArr[i].zzave == null) {
                                zzgo().zzjg().zze("Event filter with no ID. Audience definition ignored. appId, audienceId", zzap.zzbv(str), zzfuVar.zzauy);
                                break;
                            }
                            i++;
                        } else {
                            zzfy[] zzfyVarArr = zzfuVar.zzauz;
                            int length2 = zzfyVarArr.length;
                            int i2 = 0;
                            while (true) {
                                if (i2 < length2) {
                                    if (zzfyVarArr[i2].zzave == null) {
                                        zzgo().zzjg().zze("Property filter with no ID. Audience definition ignored. appId, audienceId", zzap.zzbv(str), zzfuVar.zzauy);
                                        break;
                                    }
                                    i2++;
                                } else {
                                    zzfv[] zzfvVarArr2 = zzfuVar.zzava;
                                    int length3 = zzfvVarArr2.length;
                                    int i3 = 0;
                                    while (true) {
                                        if (i3 >= length3) {
                                            z = true;
                                            break;
                                        } else {
                                            if (!zza(str, iIntValue, zzfvVarArr2[i3])) {
                                                z = false;
                                                break;
                                            }
                                            i3++;
                                        }
                                    }
                                    if (z) {
                                        for (zzfy zzfyVar : zzfuVar.zzauz) {
                                            if (!zza(str, iIntValue, zzfyVar)) {
                                                z = false;
                                                break;
                                            }
                                        }
                                    }
                                    if (!z) {
                                        zzcl();
                                        zzaf();
                                        Preconditions.checkNotEmpty(str);
                                        SQLiteDatabase writableDatabase3 = getWritableDatabase();
                                        writableDatabase3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(iIntValue)});
                                        writableDatabase3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(iIntValue)});
                                        break;
                                    }
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (zzfu zzfuVar2 : zzfuVarArr) {
                arrayList.add(zzfuVar2.zzauy);
            }
            zza(str, arrayList);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private final boolean zza(String str, int i, zzfv zzfvVar) {
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzfvVar);
        if (TextUtils.isEmpty(zzfvVar.zzavf)) {
            zzgo().zzjg().zzd("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", zzap.zzbv(str), Integer.valueOf(i), String.valueOf(zzfvVar.zzave));
            return false;
        }
        try {
            byte[] bArr = new byte[zzfvVar.zzvu()];
            zzyy zzyyVarZzk = zzyy.zzk(bArr, 0, bArr.length);
            zzfvVar.zza(zzyyVarZzk);
            zzyyVarZzk.zzyt();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", zzfvVar.zzave);
            contentValues.put("event_name", zzfvVar.zzavf);
            contentValues.put("data", bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                    return true;
                }
                zzgo().zzjd().zzg("Failed to insert event filter (got -1). appId", zzap.zzbv(str));
                return true;
            } catch (SQLiteException e) {
                zzgo().zzjd().zze("Error storing event filter. appId", zzap.zzbv(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzgo().zzjd().zze("Configuration loss. Failed to serialize event filter. appId", zzap.zzbv(str), e2);
            return false;
        }
    }

    private final boolean zza(String str, int i, zzfy zzfyVar) {
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzfyVar);
        if (TextUtils.isEmpty(zzfyVar.zzavu)) {
            zzgo().zzjg().zzd("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", zzap.zzbv(str), Integer.valueOf(i), String.valueOf(zzfyVar.zzave));
            return false;
        }
        try {
            byte[] bArr = new byte[zzfyVar.zzvu()];
            zzyy zzyyVarZzk = zzyy.zzk(bArr, 0, bArr.length);
            zzfyVar.zza(zzyyVarZzk);
            zzyyVarZzk.zzyt();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", zzfyVar.zzave);
            contentValues.put("property_name", zzfyVar.zzavu);
            contentValues.put("data", bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                    return true;
                }
                zzgo().zzjd().zzg("Failed to insert property filter (got -1). appId", zzap.zzbv(str));
                return false;
            } catch (SQLiteException e) {
                zzgo().zzjd().zze("Error storing property filter. appId", zzap.zzbv(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzgo().zzjd().zze("Configuration loss. Failed to serialize property filter. appId", zzap.zzbv(str), e2);
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00b2  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3, types: [android.database.Cursor] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    final Map<Integer, List<zzfv>> zzl(String str, String str2) {
        Cursor cursorQuery;
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        ArrayMap arrayMap = new ArrayMap();
        try {
            try {
                cursorQuery = getWritableDatabase().query("event_filters", new String[]{"audience_id", "data"}, "app_id=? AND event_name=?", new String[]{str, str2}, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        Map<Integer, List<zzfv>> mapEmptyMap = Collections.emptyMap();
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return mapEmptyMap;
                    }
                    do {
                        byte[] blob = cursorQuery.getBlob(1);
                        zzyx zzyxVarZzj = zzyx.zzj(blob, 0, blob.length);
                        zzfv zzfvVar = new zzfv();
                        try {
                            zzfvVar.zza(zzyxVarZzj);
                            int i = cursorQuery.getInt(0);
                            List arrayList = (List) arrayMap.get(Integer.valueOf(i));
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                arrayMap.put(Integer.valueOf(i), arrayList);
                            }
                            arrayList.add(zzfvVar);
                        } catch (IOException e) {
                            zzgo().zzjd().zze("Failed to merge filter. appId", zzap.zzbv(str), e);
                        }
                    } while (cursorQuery.moveToNext());
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return arrayMap;
                } catch (SQLiteException e2) {
                    e = e2;
                    zzgo().zzjd().zze("Database error querying filters. appId", zzap.zzbv(str), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                if (str2 != 0) {
                    str2.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            str2 = 0;
            if (str2 != 0) {
                str2.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00b2  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3, types: [android.database.Cursor] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    final Map<Integer, List<zzfy>> zzm(String str, String str2) {
        Cursor cursorQuery;
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        ArrayMap arrayMap = new ArrayMap();
        try {
            try {
                cursorQuery = getWritableDatabase().query("property_filters", new String[]{"audience_id", "data"}, "app_id=? AND property_name=?", new String[]{str, str2}, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        Map<Integer, List<zzfy>> mapEmptyMap = Collections.emptyMap();
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return mapEmptyMap;
                    }
                    do {
                        byte[] blob = cursorQuery.getBlob(1);
                        zzyx zzyxVarZzj = zzyx.zzj(blob, 0, blob.length);
                        zzfy zzfyVar = new zzfy();
                        try {
                            zzfyVar.zza(zzyxVarZzj);
                            int i = cursorQuery.getInt(0);
                            List arrayList = (List) arrayMap.get(Integer.valueOf(i));
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                arrayMap.put(Integer.valueOf(i), arrayList);
                            }
                            arrayList.add(zzfyVar);
                        } catch (IOException e) {
                            zzgo().zzjd().zze("Failed to merge filter", zzap.zzbv(str), e);
                        }
                    } while (cursorQuery.moveToNext());
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return arrayMap;
                } catch (SQLiteException e2) {
                    e = e2;
                    zzgo().zzjd().zze("Database error querying filters. appId", zzap.zzbv(str), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                if (str2 != 0) {
                    str2.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            str2 = 0;
            if (str2 != 0) {
                str2.close();
            }
            throw th;
        }
    }

    private final boolean zza(String str, List<Integer> list) {
        Preconditions.checkNotEmpty(str);
        zzcl();
        zzaf();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            long jZza = zza("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int iMax = Math.max(0, Math.min(2000, zzgq().zzb(str, zzaf.zzaki)));
            if (jZza <= iMax) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                Integer num = list.get(i);
                if (num == null || !(num instanceof Integer)) {
                    return false;
                }
                arrayList.add(Integer.toString(num.intValue()));
            }
            String strJoin = TextUtils.join(",", arrayList);
            StringBuilder sb = new StringBuilder(String.valueOf(strJoin).length() + 2);
            sb.append("(");
            sb.append(strJoin);
            sb.append(")");
            String string = sb.toString();
            StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 140);
            sb2.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
            sb2.append(string);
            sb2.append(" order by rowid desc limit -1 offset ?)");
            return writableDatabase.delete("audience_filter_values", sb2.toString(), new String[]{str, Integer.toString(iMax)}) > 0;
        } catch (SQLiteException e) {
            zzgo().zzjd().zze("Database error querying filters. appId", zzap.zzbv(str), e);
            return false;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    final Map<Integer, zzgj> zzbo(String str) {
        Cursor cursorQuery;
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        try {
            cursorQuery = getWritableDatabase().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    ArrayMap arrayMap = new ArrayMap();
                    do {
                        int i = cursorQuery.getInt(0);
                        byte[] blob = cursorQuery.getBlob(1);
                        zzyx zzyxVarZzj = zzyx.zzj(blob, 0, blob.length);
                        zzgj zzgjVar = new zzgj();
                        try {
                            zzgjVar.zza(zzyxVarZzj);
                            arrayMap.put(Integer.valueOf(i), zzgjVar);
                        } catch (IOException e) {
                            zzgo().zzjd().zzd("Failed to merge filter results. appId, audienceId, error", zzap.zzbv(str), Integer.valueOf(i), e);
                        }
                    } while (cursorQuery.moveToNext());
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return arrayMap;
                } catch (SQLiteException e2) {
                    e = e2;
                    zzgo().zzjd().zze("Database error querying filter results. appId", zzap.zzbv(str), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        th = th;
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        throw th;
    }

    private static void zza(ContentValues contentValues, String str, Object obj) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else {
            if (obj instanceof Double) {
                contentValues.put(str, (Double) obj);
                return;
            }
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    private final Object zza(Cursor cursor, int i) {
        int type = cursor.getType(i);
        switch (type) {
            case 0:
                zzgo().zzjd().zzbx("Loaded invalid null value from database");
                return null;
            case 1:
                return Long.valueOf(cursor.getLong(i));
            case 2:
                return Double.valueOf(cursor.getDouble(i));
            case 3:
                return cursor.getString(i);
            case 4:
                zzgo().zzjd().zzbx("Loaded invalid blob type value, ignoring it");
                return null;
            default:
                zzgo().zzjd().zzg("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                return null;
        }
    }

    public final long zzig() {
        return zza("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    protected final long zzn(String str, String str2) {
        long jZza;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzcl();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            try {
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 32);
                sb.append("select ");
                sb.append(str2);
                sb.append(" from app2 where app_id=?");
                jZza = zza(sb.toString(), new String[]{str}, -1L);
                try {
                    if (jZza == -1) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("app_id", str);
                        contentValues.put("first_open_count", (Integer) 0);
                        contentValues.put("previous_install_count", (Integer) 0);
                        if (writableDatabase.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                            zzgo().zzjd().zze("Failed to insert column (got -1). appId", zzap.zzbv(str), str2);
                            return -1L;
                        }
                        jZza = 0;
                        zzgo().zzjd().zzd("Error inserting column. appId", zzap.zzbv(str), str2, e);
                        return jZza;
                    }
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("app_id", str);
                    contentValues2.put(str2, Long.valueOf(1 + jZza));
                    if (writableDatabase.update("app2", contentValues2, "app_id = ?", new String[]{str}) == 0) {
                        zzgo().zzjd().zze("Failed to update column (got 0). appId", zzap.zzbv(str), str2);
                        return -1L;
                    }
                    writableDatabase.setTransactionSuccessful();
                    return jZza;
                } catch (SQLiteException e) {
                    e = e;
                    zzgo().zzjd().zzd("Error inserting column. appId", zzap.zzbv(str), str2, e);
                }
            } catch (SQLiteException e2) {
                e = e2;
                jZza = 0;
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public final long zzih() {
        return zza("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    public final long zza(zzgi zzgiVar) throws IOException {
        long jZzc;
        zzaf();
        zzcl();
        Preconditions.checkNotNull(zzgiVar);
        Preconditions.checkNotEmpty(zzgiVar.zztt);
        try {
            byte[] bArr = new byte[zzgiVar.zzvu()];
            zzyy zzyyVarZzk = zzyy.zzk(bArr, 0, bArr.length);
            zzgiVar.zza(zzyyVarZzk);
            zzyyVarZzk.zzyt();
            zzfg zzfgVarZzjo = zzjo();
            Preconditions.checkNotNull(bArr);
            zzfgVarZzjo.zzgm().zzaf();
            MessageDigest messageDigest = zzfk.getMessageDigest();
            if (messageDigest == null) {
                zzfgVarZzjo.zzgo().zzjd().zzbx("Failed to get MD5");
                jZzc = 0;
            } else {
                jZzc = zzfk.zzc(messageDigest.digest(bArr));
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzgiVar.zztt);
            contentValues.put("metadata_fingerprint", Long.valueOf(jZzc));
            contentValues.put("metadata", bArr);
            try {
                getWritableDatabase().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
                return jZzc;
            } catch (SQLiteException e) {
                zzgo().zzjd().zze("Error storing raw event metadata. appId", zzap.zzbv(zzgiVar.zztt), e);
                throw e;
            }
        } catch (IOException e2) {
            zzgo().zzjd().zze("Data loss. Failed to serialize event metadata. appId", zzap.zzbv(zzgiVar.zztt), e2);
            throw e2;
        }
    }

    public final boolean zzii() {
        return zza("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    public final boolean zzij() {
        return zza("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }

    public final long zzbp(String str) {
        Preconditions.checkNotEmpty(str);
        return zza("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x005b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v3, types: [android.database.Cursor] */
    public final String zzah(long j) throws Throwable {
        Cursor cursorRawQuery;
        zzaf();
        zzcl();
        try {
            try {
                cursorRawQuery = getWritableDatabase().rawQuery("select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;", new String[]{String.valueOf((long) j)});
                try {
                    if (!cursorRawQuery.moveToFirst()) {
                        zzgo().zzjl().zzbx("No expired configs for apps with pending events");
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        return null;
                    }
                    String string = cursorRawQuery.getString(0);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return string;
                } catch (SQLiteException e) {
                    e = e;
                    zzgo().zzjd().zzg("Error selecting expired configs", e);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                if (j != 0) {
                    j.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursorRawQuery = null;
        } catch (Throwable th2) {
            th = th2;
            j = 0;
            if (j != 0) {
                j.close();
            }
            throw th;
        }
    }

    public final long zzik() {
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = getWritableDatabase().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
            if (cursorRawQuery.moveToFirst()) {
                return cursorRawQuery.getLong(0);
            }
            return -1L;
        } catch (SQLiteException e) {
            zzgo().zzjd().zzg("Error querying raw events", e);
            return -1L;
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x008f  */
    public final Pair<zzgf, Long> zza(String str, Long l) {
        Cursor cursorRawQuery;
        zzaf();
        zzcl();
        Cursor cursor = null;
        try {
            try {
                cursorRawQuery = getWritableDatabase().rawQuery("select main_event, children_to_process from main_event_params where app_id=? and event_id=?", new String[]{str, String.valueOf(l)});
                try {
                    if (!cursorRawQuery.moveToFirst()) {
                        zzgo().zzjl().zzbx("Main event not found");
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        return null;
                    }
                    byte[] blob = cursorRawQuery.getBlob(0);
                    Long lValueOf = Long.valueOf(cursorRawQuery.getLong(1));
                    zzyx zzyxVarZzj = zzyx.zzj(blob, 0, blob.length);
                    zzgf zzgfVar = new zzgf();
                    try {
                        zzgfVar.zza(zzyxVarZzj);
                        Pair<zzgf, Long> pairCreate = Pair.create(zzgfVar, lValueOf);
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        return pairCreate;
                    } catch (IOException e) {
                        zzgo().zzjd().zzd("Failed to merge main event. appId, eventId", zzap.zzbv(str), l, e);
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        return null;
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    zzgo().zzjd().zzg("Error selecting main event", e);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorRawQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final boolean zza(String str, Long l, long j, zzgf zzgfVar) {
        zzaf();
        zzcl();
        Preconditions.checkNotNull(zzgfVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l);
        try {
            byte[] bArr = new byte[zzgfVar.zzvu()];
            zzyy zzyyVarZzk = zzyy.zzk(bArr, 0, bArr.length);
            zzgfVar.zza(zzyyVarZzk);
            zzyyVarZzk.zzyt();
            zzgo().zzjl().zze("Saving complex main event, appId, data size", zzgl().zzbs(str), Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("event_id", l);
            contentValues.put("children_to_process", Long.valueOf(j));
            contentValues.put("main_event", bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                    return true;
                }
                zzgo().zzjd().zzg("Failed to insert complex main event (got -1). appId", zzap.zzbv(str));
                return false;
            } catch (SQLiteException e) {
                zzgo().zzjd().zze("Error storing complex main event. appId", zzap.zzbv(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzgo().zzjd().zzd("Data loss. Failed to serialize event params/data. appId, eventId", zzap.zzbv(str), l, e2);
            return false;
        }
    }

    public final boolean zza(zzy zzyVar, long j, boolean z) {
        zzaf();
        zzcl();
        Preconditions.checkNotNull(zzyVar);
        Preconditions.checkNotEmpty(zzyVar.zztt);
        zzgf zzgfVar = new zzgf();
        zzgfVar.zzawv = Long.valueOf(zzyVar.zzaic);
        zzgfVar.zzawt = new zzgg[zzyVar.zzaid.size()];
        int i = 0;
        for (String str : zzyVar.zzaid) {
            zzgg zzggVar = new zzgg();
            int i2 = i + 1;
            zzgfVar.zzawt[i] = zzggVar;
            zzggVar.name = str;
            zzjo().zza(zzggVar, zzyVar.zzaid.get(str));
            i = i2;
        }
        try {
            byte[] bArr = new byte[zzgfVar.zzvu()];
            zzyy zzyyVarZzk = zzyy.zzk(bArr, 0, bArr.length);
            zzgfVar.zza(zzyyVarZzk);
            zzyyVarZzk.zzyt();
            zzgo().zzjl().zze("Saving event, name, data size", zzgl().zzbs(zzyVar.name), Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzyVar.zztt);
            contentValues.put("name", zzyVar.name);
            contentValues.put("timestamp", Long.valueOf(zzyVar.timestamp));
            contentValues.put("metadata_fingerprint", Long.valueOf(j));
            contentValues.put("data", bArr);
            contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
            try {
                if (getWritableDatabase().insert("raw_events", null, contentValues) != -1) {
                    return true;
                }
                zzgo().zzjd().zzg("Failed to insert raw event (got -1). appId", zzap.zzbv(zzyVar.zztt));
                return false;
            } catch (SQLiteException e) {
                zzgo().zzjd().zze("Error storing raw event. appId", zzap.zzbv(zzyVar.zztt), e);
                return false;
            }
        } catch (IOException e2) {
            zzgo().zzjd().zze("Data loss. Failed to serialize event params/data. appId", zzap.zzbv(zzyVar.zztt), e2);
            return false;
        }
    }

    private final boolean zzil() {
        return getContext().getDatabasePath("google_app_measurement.db").exists();
    }
}
