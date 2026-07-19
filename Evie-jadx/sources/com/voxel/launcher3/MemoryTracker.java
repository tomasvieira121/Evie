package com.voxel.launcher3;

import android.app.ActivityManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import android.util.LongSparseArray;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MemoryTracker extends Service {
    public static final String TAG = "MemoryTracker";
    ActivityManager mAm;
    public final LongSparseArray<ProcessMemInfo> mData = new LongSparseArray<>();
    public final ArrayList<Long> mPids = new ArrayList<>();
    private int[] mPidsArray = new int[0];
    private final Object mLock = new Object();
    Handler mHandler = new Handler() { // from class: com.voxel.launcher3.MemoryTracker.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    MemoryTracker.this.mHandler.removeMessages(3);
                    MemoryTracker.this.mHandler.sendEmptyMessage(3);
                    break;
                case 2:
                    MemoryTracker.this.mHandler.removeMessages(3);
                    break;
                case 3:
                    MemoryTracker.this.update();
                    MemoryTracker.this.mHandler.removeMessages(3);
                    MemoryTracker.this.mHandler.sendEmptyMessageDelayed(3, 5000L);
                    break;
            }
        }
    };
    private final IBinder mBinder = new MemoryTrackerInterface();

    public static class ProcessMemInfo {
        public long currentPss;
        public long currentUss;
        public String name;
        public int pid;
        public long startTime;
        public long[] pss = new long[256];
        public long[] uss = new long[256];
        public long max = 1;
        public int head = 0;

        public ProcessMemInfo(int i, String str, long j) {
            this.pid = i;
            this.name = str;
            this.startTime = j;
        }

        public long getUptime() {
            return System.currentTimeMillis() - this.startTime;
        }
    }

    public static void startTrackingMe(Context context, String str) {
        context.startService(new Intent(context, (Class<?>) MemoryTracker.class).setAction("com.voxel.launcher3.action.START_TRACKING").putExtra("pid", Process.myPid()).putExtra("name", str));
    }

    public ProcessMemInfo getMemInfo(int i) {
        return this.mData.get(i);
    }

    public int[] getTrackedProcesses() {
        return this.mPidsArray;
    }

    public void startTrackingProcess(int i, String str, long j) {
        synchronized (this.mLock) {
            long j2 = i;
            Long l = new Long(j2);
            if (this.mPids.contains(l)) {
                return;
            }
            this.mPids.add(l);
            updatePidsArrayL();
            this.mData.put(j2, new ProcessMemInfo(i, str, j));
        }
    }

    void updatePidsArrayL() {
        int size = this.mPids.size();
        this.mPidsArray = new int[size];
        StringBuilder sb = new StringBuilder("Now tracking processes: ");
        for (int i = 0; i < size; i++) {
            int iIntValue = this.mPids.get(i).intValue();
            this.mPidsArray[i] = iIntValue;
            sb.append(iIntValue);
            sb.append(" ");
        }
        Log.v(TAG, sb.toString());
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    void update() {
        synchronized (this.mLock) {
            Debug.MemoryInfo[] processMemoryInfo = this.mAm.getProcessMemoryInfo(this.mPidsArray);
            for (int i = 0; i < processMemoryInfo.length; i++) {
                Debug.MemoryInfo memoryInfo = processMemoryInfo[i];
                if (i > this.mPids.size()) {
                    Log.e(TAG, "update: unknown process info received: " + memoryInfo);
                    break;
                }
                long jIntValue = this.mPids.get(i).intValue();
                ProcessMemInfo processMemInfo = this.mData.get(jIntValue);
                processMemInfo.head = (processMemInfo.head + 1) % processMemInfo.pss.length;
                long[] jArr = processMemInfo.pss;
                int i2 = processMemInfo.head;
                long totalPss = memoryInfo.getTotalPss();
                processMemInfo.currentPss = totalPss;
                jArr[i2] = totalPss;
                long[] jArr2 = processMemInfo.uss;
                int i3 = processMemInfo.head;
                long totalPrivateDirty = memoryInfo.getTotalPrivateDirty();
                processMemInfo.currentUss = totalPrivateDirty;
                jArr2[i3] = totalPrivateDirty;
                if (processMemInfo.currentPss > processMemInfo.max) {
                    processMemInfo.max = processMemInfo.currentPss;
                }
                if (processMemInfo.currentUss > processMemInfo.max) {
                    processMemInfo.max = processMemInfo.currentUss;
                }
                if (processMemInfo.currentPss == 0) {
                    Log.v(TAG, "update: pid " + jIntValue + " has pss=0, it probably died");
                    this.mData.remove(jIntValue);
                }
            }
            for (int size = this.mPids.size() - 1; size >= 0; size--) {
                if (this.mData.get(this.mPids.get(size).intValue()) == null) {
                    this.mPids.remove(size);
                    updatePidsArrayL();
                }
            }
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        this.mAm = (ActivityManager) getSystemService("activity");
        for (ActivityManager.RunningServiceInfo runningServiceInfo : this.mAm.getRunningServices(256)) {
            if (runningServiceInfo.service.getPackageName().equals(getPackageName())) {
                Log.v(TAG, "discovered running service: " + runningServiceInfo.process + " (" + runningServiceInfo.pid + ")");
                startTrackingProcess(runningServiceInfo.pid, runningServiceInfo.process, System.currentTimeMillis() - (SystemClock.elapsedRealtime() - runningServiceInfo.activeSince));
            }
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : this.mAm.getRunningAppProcesses()) {
            String str = runningAppProcessInfo.processName;
            if (str.startsWith(getPackageName())) {
                Log.v(TAG, "discovered other running process: " + str + " (" + runningAppProcessInfo.pid + ")");
                startTrackingProcess(runningAppProcessInfo.pid, str, System.currentTimeMillis());
            }
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.mHandler.sendEmptyMessage(2);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.v(TAG, "Received start id " + i2 + ": " + intent);
        if (intent != null && "com.voxel.launcher3.action.START_TRACKING".equals(intent.getAction())) {
            startTrackingProcess(intent.getIntExtra("pid", -1), intent.getStringExtra("name"), intent.getLongExtra("start", System.currentTimeMillis()));
        }
        this.mHandler.sendEmptyMessage(1);
        return 1;
    }

    public class MemoryTrackerInterface extends Binder {
        public MemoryTrackerInterface() {
        }

        MemoryTracker getService() {
            return MemoryTracker.this;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this.mHandler.sendEmptyMessage(1);
        return this.mBinder;
    }
}
