package com.voxel.simplesearchlauncher.utils;

import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public final class DebugUtil {
    public static boolean isAnalyticsEnabled() {
        return true;
    }

    public static boolean isDevDebugLogEnabled() {
        return false;
    }

    public static void addVoxelDebugSyncLog(String str, String str2) {
        Timber.tag(str);
        Timber.m551d(str2, new Object[0]);
    }
}
