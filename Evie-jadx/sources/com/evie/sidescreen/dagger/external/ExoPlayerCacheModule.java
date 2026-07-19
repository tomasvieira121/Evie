package com.evie.sidescreen.dagger.external;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.LeastRecentlyUsedCacheEvictor;
import com.google.android.exoplayer2.upstream.cache.SimpleCache;
import java.io.File;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class ExoPlayerCacheModule {
    public static Cache providesExoPlayerCache(Context context) {
        boolean zEquals;
        int iMyPid = Process.myPid();
        Iterator<ActivityManager.RunningAppProcessInfo> it = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses().iterator();
        while (true) {
            if (!it.hasNext()) {
                zEquals = false;
                break;
            }
            ActivityManager.RunningAppProcessInfo next = it.next();
            if (next.pid == iMyPid) {
                zEquals = "com.discoveryscreen:YouTubePlayer".equals(next.processName);
                break;
            }
        }
        return new SimpleCache(new File(context.getCacheDir(), zEquals ? "sidescreen_exoplayer_cache2" : "sidescreen_exoplayer_cache"), new LeastRecentlyUsedCacheEvictor(52428800L));
    }
}
