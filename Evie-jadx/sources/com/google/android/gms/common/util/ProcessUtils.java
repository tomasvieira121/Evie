package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ProcessUtils {
    private static String zzhd;
    private static int zzhe;

    @Nullable
    public static String getMyProcessName() {
        if (zzhd == null) {
            if (zzhe == 0) {
                zzhe = Process.myPid();
            }
            zzhd = zzd(zzhe);
        }
        return zzhd;
    }

    @Nullable
    private static String zzd(int i) throws Throwable {
        BufferedReader bufferedReaderZzj;
        BufferedReader bufferedReader = null;
        String strTrim = null;
        if (i <= 0) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder(25);
            sb.append("/proc/");
            sb.append(i);
            sb.append("/cmdline");
            bufferedReaderZzj = zzj(sb.toString());
            try {
                strTrim = bufferedReaderZzj.readLine().trim();
                IOUtils.closeQuietly(bufferedReaderZzj);
            } catch (IOException unused) {
                IOUtils.closeQuietly(bufferedReaderZzj);
            } catch (Throwable th) {
                bufferedReader = bufferedReaderZzj;
                th = th;
                IOUtils.closeQuietly(bufferedReader);
                throw th;
            }
        } catch (IOException unused2) {
            bufferedReaderZzj = null;
        } catch (Throwable th2) {
            th = th2;
        }
        return strTrim;
    }

    private static BufferedReader zzj(String str) throws IOException {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return new BufferedReader(new FileReader(str));
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }
}
