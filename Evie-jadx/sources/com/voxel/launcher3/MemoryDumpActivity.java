package com.voxel.launcher3;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Environment;
import android.os.IBinder;
import android.os.Process;
import android.util.Log;
import com.crashlytics.android.Crashlytics;
import io.fabric.sdk.android.Fabric;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MemoryDumpActivity extends Activity {
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Fabric.with(this, new Crashlytics());
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.zip.ZipOutputStream] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static String zipUp(ArrayList<String> arrayList) throws Throwable {
        ZipOutputStream zipOutputStream;
        BufferedInputStream bufferedInputStream;
        byte[] bArr = new byte[262144];
        ?? r6 = 1;
        String str = String.format("%s/hprof-%d.zip", Environment.getExternalStorageDirectory(), Long.valueOf(System.currentTimeMillis()));
        try {
            try {
                zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(str)));
                try {
                    for (String str2 : arrayList) {
                        try {
                            bufferedInputStream = new BufferedInputStream(new FileInputStream(str2));
                            try {
                                zipOutputStream.putNextEntry(new ZipEntry(str2));
                                while (true) {
                                    int i = bufferedInputStream.read(bArr, 0, 262144);
                                    if (i <= 0) {
                                        break;
                                    }
                                    zipOutputStream.write(bArr, 0, i);
                                }
                                zipOutputStream.closeEntry();
                                bufferedInputStream.close();
                            } catch (Throwable th) {
                                th = th;
                                bufferedInputStream.close();
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedInputStream = null;
                        }
                    }
                    try {
                        zipOutputStream.close();
                    } catch (IOException unused) {
                    }
                    return str;
                } catch (IOException e) {
                    e = e;
                    Log.e("MemoryDumpActivity", "error zipping up profile data", e);
                    if (zipOutputStream != null) {
                        try {
                            zipOutputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return null;
                }
            } catch (Throwable th3) {
                th = th3;
                if (r6 != 0) {
                    try {
                        r6.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            zipOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            r6 = 0;
            if (r6 != 0) {
                r6.close();
            }
            throw th;
        }
    }

    public static void dumpHprofAndShare(Context context, MemoryTracker memoryTracker) throws Throwable {
        String str;
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        int iMyPid = Process.myPid();
        int[] trackedProcesses = memoryTracker.getTrackedProcesses();
        for (int i : Arrays.copyOf(trackedProcesses, trackedProcesses.length)) {
            MemoryTracker.ProcessMemInfo memInfo = memoryTracker.getMemInfo(i);
            if (memInfo != null) {
                sb.append("pid ");
                sb.append(i);
                sb.append(":");
                sb.append(" up=");
                sb.append(memInfo.getUptime());
                sb.append(" pss=");
                sb.append(memInfo.currentPss);
                sb.append(" uss=");
                sb.append(memInfo.currentUss);
                sb.append("\n");
            }
            if (i == iMyPid) {
                String str2 = String.format("%s/launcher-memory-%d.ahprof", Environment.getExternalStorageDirectory(), Integer.valueOf(i));
                Log.v("MemoryDumpActivity", "Dumping memory info for process " + i + " to " + str2);
                try {
                    Debug.dumpHprofData(str2);
                } catch (IOException e) {
                    Log.e("MemoryDumpActivity", "error dumping memory:", e);
                }
                arrayList.add(str2);
            }
        }
        String strZipUp = zipUp(arrayList);
        if (strZipUp == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("application/zip");
        PackageManager packageManager = context.getPackageManager();
        intent.putExtra("android.intent.extra.SUBJECT", String.format("Launcher memory dump (%d)", Integer.valueOf(iMyPid)));
        try {
            str = packageManager.getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            str = "?";
        }
        sb.append("\nApp version: ");
        sb.append(str);
        sb.append("\nBuild: ");
        sb.append(Build.DISPLAY);
        sb.append("\n");
        intent.putExtra("android.intent.extra.TEXT", sb.toString());
        intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(new File(strZipUp)));
        context.startActivity(intent);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        startDump(this, new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$MemoryDumpActivity$qnDOHB3X6RPmPvOIqS_7qB3Cjrc
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.finish();
            }
        });
    }

    public static void startDump(Context context) {
        startDump(context, null);
    }

    public static void startDump(final Context context, final Runnable runnable) {
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.voxel.launcher3.MemoryDumpActivity.1
            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws Throwable {
                Log.v("MemoryDumpActivity", "service connected, dumping...");
                MemoryDumpActivity.dumpHprofAndShare(context, ((MemoryTracker.MemoryTrackerInterface) iBinder).getService());
                context.unbindService(this);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
        Log.v("MemoryDumpActivity", "attempting to bind to memory tracker");
        context.bindService(new Intent(context, (Class<?>) MemoryTracker.class), serviceConnection, 1);
    }
}
