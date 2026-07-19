package com.crashlytics.android.beta;

import android.content.Context;
import android.content.pm.PackageManager;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.cache.ValueLoader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes.dex */
public class DeviceTokenLoader implements ValueLoader<String> {
    private static final String BETA_APP_PACKAGE_NAME = "io.crash.air";
    private static final String DIRFACTOR_DEVICE_TOKEN_PREFIX = "assets/com.crashlytics.android.beta/dirfactor-device-token=";

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.zip.ZipInputStream] */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.lang.String] */
    @Override // io.fabric.sdk.android.services.cache.ValueLoader
    public String load(Context context) throws Exception {
        long jNanoTime = System.nanoTime();
        String strDetermineDeviceToken = "";
        ?? r3 = 0;
        zipInputStreamOfApkFrom = null;
        zipInputStreamOfApkFrom = null;
        ZipInputStream zipInputStreamOfApkFrom = null;
        try {
            try {
                try {
                    try {
                        zipInputStreamOfApkFrom = getZipInputStreamOfApkFrom(context, BETA_APP_PACKAGE_NAME);
                        strDetermineDeviceToken = determineDeviceToken(zipInputStreamOfApkFrom);
                        if (zipInputStreamOfApkFrom != null) {
                            zipInputStreamOfApkFrom.close();
                        }
                    } catch (IOException e) {
                        Fabric.getLogger().mo540e(Beta.TAG, "Failed to close the APK file", e);
                    }
                } catch (FileNotFoundException e2) {
                    Fabric.getLogger().mo540e(Beta.TAG, "Failed to find the APK file", e2);
                    if (zipInputStreamOfApkFrom != null) {
                        zipInputStreamOfApkFrom.close();
                    }
                    double dNanoTime = System.nanoTime() - jNanoTime;
                    Double.isNaN(dNanoTime);
                    Logger logger = Fabric.getLogger();
                    r3 = Beta.TAG;
                    logger.mo537d(Beta.TAG, "Beta device token load took " + (dNanoTime / 1000000.0d) + "ms");
                    return strDetermineDeviceToken;
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Fabric.getLogger().mo537d(Beta.TAG, "Beta by Crashlytics app is not installed");
                if (zipInputStreamOfApkFrom != null) {
                    zipInputStreamOfApkFrom.close();
                }
                double dNanoTime2 = System.nanoTime() - jNanoTime;
                Double.isNaN(dNanoTime2);
                Logger logger2 = Fabric.getLogger();
                r3 = Beta.TAG;
                logger2.mo537d(Beta.TAG, "Beta device token load took " + (dNanoTime2 / 1000000.0d) + "ms");
                return strDetermineDeviceToken;
            } catch (IOException e3) {
                Fabric.getLogger().mo540e(Beta.TAG, "Failed to read the APK file", e3);
                if (zipInputStreamOfApkFrom != null) {
                    zipInputStreamOfApkFrom.close();
                }
                double dNanoTime3 = System.nanoTime() - jNanoTime;
                Double.isNaN(dNanoTime3);
                Logger logger3 = Fabric.getLogger();
                r3 = Beta.TAG;
                logger3.mo537d(Beta.TAG, "Beta device token load took " + (dNanoTime3 / 1000000.0d) + "ms");
                return strDetermineDeviceToken;
            }
            double dNanoTime4 = System.nanoTime() - jNanoTime;
            Double.isNaN(dNanoTime4);
            Logger logger4 = Fabric.getLogger();
            r3 = Beta.TAG;
            logger4.mo537d(Beta.TAG, "Beta device token load took " + (dNanoTime4 / 1000000.0d) + "ms");
            return strDetermineDeviceToken;
        } catch (Throwable th) {
            if (r3 != 0) {
                try {
                    r3.close();
                } catch (IOException e4) {
                    Fabric.getLogger().mo540e(Beta.TAG, "Failed to close the APK file", e4);
                }
            }
            throw th;
        }
    }

    ZipInputStream getZipInputStreamOfApkFrom(Context context, String str) throws PackageManager.NameNotFoundException, FileNotFoundException {
        return new ZipInputStream(new FileInputStream(context.getPackageManager().getApplicationInfo(str, 0).sourceDir));
    }

    String determineDeviceToken(ZipInputStream zipInputStream) throws IOException {
        ZipEntry nextEntry = zipInputStream.getNextEntry();
        if (nextEntry == null) {
            return "";
        }
        String name = nextEntry.getName();
        return name.startsWith(DIRFACTOR_DEVICE_TOKEN_PREFIX) ? name.substring(59, name.length() - 1) : "";
    }
}
