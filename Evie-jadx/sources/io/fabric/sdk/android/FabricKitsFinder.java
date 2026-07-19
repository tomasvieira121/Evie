package io.fabric.sdk.android;

import android.os.SystemClock;
import android.text.TextUtils;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes2.dex */
class FabricKitsFinder implements Callable<Map<String, KitInfo>> {
    final String apkFileName;

    FabricKitsFinder(String str) {
        this.apkFileName = str;
    }

    @Override // java.util.concurrent.Callable
    public Map<String, KitInfo> call() throws Exception {
        HashMap map = new HashMap();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        map.putAll(findImplicitKits());
        map.putAll(findRegisteredKits());
        Fabric.getLogger().mo543v("Fabric", "finish scanning in " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
        return map;
    }

    private Map<String, KitInfo> findImplicitKits() {
        HashMap map = new HashMap();
        try {
            Class.forName("com.google.android.gms.ads.AdView");
            KitInfo kitInfo = new KitInfo("com.google.firebase.firebase-ads", "0.0.0", "binary");
            map.put(kitInfo.getIdentifier(), kitInfo);
            Fabric.getLogger().mo543v("Fabric", "Found kit: com.google.firebase.firebase-ads");
        } catch (Exception unused) {
        }
        return map;
    }

    private Map<String, KitInfo> findRegisteredKits() throws Exception {
        KitInfo kitInfoLoadKitInfo;
        HashMap map = new HashMap();
        ZipFile zipFileLoadApkFile = loadApkFile();
        Enumeration<? extends ZipEntry> enumerationEntries = zipFileLoadApkFile.entries();
        while (enumerationEntries.hasMoreElements()) {
            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
            if (zipEntryNextElement.getName().startsWith("fabric/") && zipEntryNextElement.getName().length() > 7 && (kitInfoLoadKitInfo = loadKitInfo(zipEntryNextElement, zipFileLoadApkFile)) != null) {
                map.put(kitInfoLoadKitInfo.getIdentifier(), kitInfoLoadKitInfo);
                Fabric.getLogger().mo543v("Fabric", String.format("Found kit:[%s] version:[%s]", kitInfoLoadKitInfo.getIdentifier(), kitInfoLoadKitInfo.getVersion()));
            }
        }
        if (zipFileLoadApkFile != null) {
            try {
                zipFileLoadApkFile.close();
            } catch (IOException unused) {
            }
        }
        return map;
    }

    private KitInfo loadKitInfo(ZipEntry zipEntry, ZipFile zipFile) throws Throwable {
        InputStream inputStream;
        try {
            try {
                inputStream = zipFile.getInputStream(zipEntry);
                try {
                    Properties properties = new Properties();
                    properties.load(inputStream);
                    String property = properties.getProperty("fabric-identifier");
                    String property2 = properties.getProperty("fabric-version");
                    String property3 = properties.getProperty("fabric-build-type");
                    if (TextUtils.isEmpty(property) || TextUtils.isEmpty(property2)) {
                        throw new IllegalStateException("Invalid format of fabric file," + zipEntry.getName());
                    }
                    KitInfo kitInfo = new KitInfo(property, property2, property3);
                    CommonUtils.closeQuietly(inputStream);
                    return kitInfo;
                } catch (IOException e) {
                    e = e;
                    Fabric.getLogger().mo540e("Fabric", "Error when parsing fabric properties " + zipEntry.getName(), e);
                    CommonUtils.closeQuietly(inputStream);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                CommonUtils.closeQuietly(zipFile);
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
            zipFile = null;
            CommonUtils.closeQuietly(zipFile);
            throw th;
        }
    }

    protected ZipFile loadApkFile() throws IOException {
        return new ZipFile(this.apkFileName);
    }
}
