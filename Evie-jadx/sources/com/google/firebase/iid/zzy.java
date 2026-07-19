package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.core.content.ContextCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
final class zzy {
    zzy() {
    }

    final zzz zzb(Context context, String str) throws Throwable {
        zzz zzzVarZzd = zzd(context, str);
        return zzzVarZzd != null ? zzzVarZzd : zzc(context, str);
    }

    final zzz zzc(Context context, String str) throws Throwable {
        zzz zzzVar = new zzz(zza.zzb(), System.currentTimeMillis());
        zzz zzzVarZza = zza(context, str, zzzVar, true);
        if (zzzVarZza != null && !zzzVarZza.equals(zzzVar)) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "Loaded key after generating new one, using loaded one");
            }
            return zzzVarZza;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Generated new key");
        }
        zza(context, str, zzzVar);
        return zzzVar;
    }

    static void zza(Context context) {
        for (File file : zzb(context).listFiles()) {
            if (file.getName().startsWith("com.google.InstanceId")) {
                file.delete();
            }
        }
    }

    private final zzz zzd(Context context, String str) throws Throwable {
        try {
            zzz zzzVarZze = zze(context, str);
            if (zzzVarZze != null) {
                zza(context, str, zzzVarZze);
                return zzzVarZze;
            }
            e = null;
        } catch (zzaa e) {
            e = e;
        }
        try {
            zzz zzzVarZza = zza(context.getSharedPreferences("com.google.android.gms.appid", 0), str);
            if (zzzVarZza != null) {
                zza(context, str, zzzVarZza, false);
                return zzzVarZza;
            }
        } catch (zzaa e2) {
            e = e2;
        }
        if (e == null) {
            return null;
        }
        throw e;
    }

    private static KeyPair zzc(String str, String str2) throws zzaa {
        try {
            byte[] bArrDecode = Base64.decode(str, 8);
            byte[] bArrDecode2 = Base64.decode(str2, 8);
            try {
                KeyFactory keyFactory = KeyFactory.getInstance("RSA");
                return new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(bArrDecode)), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(bArrDecode2)));
            } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
                String strValueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 19);
                sb.append("Invalid key stored ");
                sb.append(strValueOf);
                Log.w("FirebaseInstanceId", sb.toString());
                throw new zzaa(e);
            }
        } catch (IllegalArgumentException e2) {
            throw new zzaa(e2);
        }
    }

    private final zzz zze(Context context, String str) throws zzaa {
        File fileZzf = zzf(context, str);
        if (!fileZzf.exists()) {
            return null;
        }
        try {
            return zza(fileZzf);
        } catch (zzaa | IOException e) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String strValueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 40);
                sb.append("Failed to read key from file, retrying: ");
                sb.append(strValueOf);
                Log.d("FirebaseInstanceId", sb.toString());
            }
            try {
                return zza(fileZzf);
            } catch (IOException e2) {
                String strValueOf2 = String.valueOf(e2);
                StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 45);
                sb2.append("IID file exists, but failed to read from it: ");
                sb2.append(strValueOf2);
                Log.w("FirebaseInstanceId", sb2.toString());
                throw new zzaa(e2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x009f A[Catch: all -> 0x00b5, Throwable -> 0x00b8, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x00b5, Throwable -> 0x00b8, blocks: (B:7:0x0043, B:15:0x005f, B:24:0x009f, B:34:0x00b1, B:35:0x00b4), top: B:54:0x0043 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00b1 A[Catch: all -> 0x00b5, Throwable -> 0x00b8, TRY_ENTER, TryCatch #8 {all -> 0x00b5, Throwable -> 0x00b8, blocks: (B:7:0x0043, B:15:0x005f, B:24:0x009f, B:34:0x00b1, B:35:0x00b4), top: B:54:0x0043 }] */
    /* JADX WARN: Code duplicated, block: B:57:? A[Catch: all -> 0x00b5, Throwable -> 0x00b8, SYNTHETIC, TRY_LEAVE, TryCatch #8 {all -> 0x00b5, Throwable -> 0x00b8, blocks: (B:7:0x0043, B:15:0x005f, B:24:0x009f, B:34:0x00b1, B:35:0x00b4), top: B:54:0x0043 }] */
    private final zzz zza(Context context, String str, zzz zzzVar, boolean z) throws Throwable {
        Throwable th;
        Throwable th2;
        Throwable th3;
        Throwable th4;
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Writing key to properties file");
        }
        Properties properties = new Properties();
        properties.setProperty("pub", zzzVar.zzv());
        properties.setProperty("pri", zzzVar.zzw());
        properties.setProperty("cre", String.valueOf(zzzVar.zzbs));
        File fileZzf = zzf(context, str);
        try {
            fileZzf.createNewFile();
            RandomAccessFile randomAccessFile = new RandomAccessFile(fileZzf, "rw");
            try {
                FileChannel channel = randomAccessFile.getChannel();
                try {
                    channel.lock();
                    if (z && channel.size() > 0) {
                        try {
                            channel.position(0L);
                            zzz zzzVarZza = zza(channel);
                            if (channel != null) {
                                zza((Throwable) null, channel);
                            }
                            zza((Throwable) null, randomAccessFile);
                            return zzzVarZza;
                        } catch (zzaa | IOException e) {
                            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                                String strValueOf = String.valueOf(e);
                                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 64);
                                sb.append("Tried reading key pair before writing new one, but failed with: ");
                                sb.append(strValueOf);
                                Log.d("FirebaseInstanceId", sb.toString());
                            }
                            channel.position(0L);
                            properties.store(Channels.newOutputStream(channel), (String) null);
                            if (channel != null) {
                                zza((Throwable) null, channel);
                            }
                            zza((Throwable) null, randomAccessFile);
                            return zzzVar;
                        }
                    }
                    channel.position(0L);
                    properties.store(Channels.newOutputStream(channel), (String) null);
                    if (channel != null) {
                        zza((Throwable) null, channel);
                    }
                    zza((Throwable) null, randomAccessFile);
                    return zzzVar;
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        th3 = th5;
                        th4 = th6;
                        if (channel != null) {
                            throw th4;
                        }
                        zza(th3, channel);
                        throw th4;
                    }
                }
            } catch (Throwable th7) {
                try {
                    throw th7;
                } catch (Throwable th8) {
                    th = th7;
                    th2 = th8;
                    zza(th, randomAccessFile);
                    throw th2;
                }
            }
        } catch (IOException e2) {
            String strValueOf2 = String.valueOf(e2);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 21);
            sb2.append("Failed to write key: ");
            sb2.append(strValueOf2);
            Log.w("FirebaseInstanceId", sb2.toString());
            return null;
        }
    }

    private static File zzb(Context context) {
        File noBackupFilesDir = ContextCompat.getNoBackupFilesDir(context);
        if (noBackupFilesDir != null && noBackupFilesDir.isDirectory()) {
            return noBackupFilesDir;
        }
        Log.w("FirebaseInstanceId", "noBackupFilesDir doesn't exist, using regular files directory instead");
        return context.getFilesDir();
    }

    private static File zzf(Context context, String str) {
        String string;
        if (TextUtils.isEmpty(str)) {
            string = "com.google.InstanceId.properties";
        } else {
            try {
                String strEncodeToString = Base64.encodeToString(str.getBytes("UTF-8"), 11);
                StringBuilder sb = new StringBuilder(String.valueOf(strEncodeToString).length() + 33);
                sb.append("com.google.InstanceId_");
                sb.append(strEncodeToString);
                sb.append(".properties");
                string = sb.toString();
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
        return new File(zzb(context), string);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x002e A[Catch: all -> 0x0032, Throwable -> 0x0034, TRY_ENTER, TryCatch #3 {, blocks: (B:3:0x0006, B:7:0x001c, B:17:0x002e, B:18:0x0031), top: B:25:0x0006, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:30:? A[Catch: all -> 0x0032, Throwable -> 0x0034, SYNTHETIC, TRY_LEAVE, TryCatch #3 {, blocks: (B:3:0x0006, B:7:0x001c, B:17:0x002e, B:18:0x0031), top: B:25:0x0006, outer: #0 }] */
    private final zzz zza(File file) throws IOException, zzaa {
        Throwable th;
        Throwable th2;
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileChannel channel = fileInputStream.getChannel();
            try {
                channel.lock(0L, Long.MAX_VALUE, true);
                zzz zzzVarZza = zza(channel);
                if (channel != null) {
                    zza((Throwable) null, channel);
                }
                zza((Throwable) null, fileInputStream);
                return zzzVarZza;
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    th = th3;
                    th2 = th4;
                    if (channel != null) {
                        throw th2;
                    }
                    zza(th, channel);
                    throw th2;
                }
            }
        } catch (Throwable th5) {
            zza((Throwable) null, fileInputStream);
            throw th5;
        }
    }

    private static zzz zza(FileChannel fileChannel) throws IOException, zzaa {
        Properties properties = new Properties();
        properties.load(Channels.newInputStream(fileChannel));
        String property = properties.getProperty("pub");
        String property2 = properties.getProperty("pri");
        if (property == null || property2 == null) {
            throw new zzaa("Invalid properties file");
        }
        try {
            return new zzz(zzc(property, property2), Long.parseLong(properties.getProperty("cre")));
        } catch (NumberFormatException e) {
            throw new zzaa(e);
        }
    }

    private static zzz zza(SharedPreferences sharedPreferences, String str) throws zzaa {
        String string = sharedPreferences.getString(zzaw.zzd(str, "|P|"), null);
        String string2 = sharedPreferences.getString(zzaw.zzd(str, "|K|"), null);
        if (string == null || string2 == null) {
            return null;
        }
        return new zzz(zzc(string, string2), zzb(sharedPreferences, str));
    }

    private final void zza(Context context, String str, zzz zzzVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
        try {
            if (zzzVar.equals(zza(sharedPreferences, str))) {
                return;
            }
        } catch (zzaa unused) {
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Writing key to shared preferences");
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(zzaw.zzd(str, "|P|"), zzzVar.zzv());
        editorEdit.putString(zzaw.zzd(str, "|K|"), zzzVar.zzw());
        editorEdit.putString(zzaw.zzd(str, "cre"), String.valueOf(zzzVar.zzbs));
        editorEdit.commit();
    }

    private static long zzb(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(zzaw.zzd(str, "cre"), null);
        if (string == null) {
            return 0L;
        }
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    private static /* synthetic */ void zza(Throwable th, FileChannel fileChannel) {
        if (th == null) {
            fileChannel.close();
            return;
        }
        try {
            fileChannel.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.firebase_messaging.zzc.zza(th, th2);
        }
    }

    private static /* synthetic */ void zza(Throwable th, RandomAccessFile randomAccessFile) throws IOException {
        if (th == null) {
            randomAccessFile.close();
            return;
        }
        try {
            randomAccessFile.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.firebase_messaging.zzc.zza(th, th2);
        }
    }

    private static /* synthetic */ void zza(Throwable th, FileInputStream fileInputStream) throws IOException {
        if (th == null) {
            fileInputStream.close();
            return;
        }
        try {
            fileInputStream.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.firebase_messaging.zzc.zza(th, th2);
        }
    }
}
