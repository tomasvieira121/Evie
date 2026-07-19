package com.voxel.simplesearchlauncher.importer;

import android.content.ContentResolver;
import android.net.Uri;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidLauncher extends BaseLauncherImporter {
    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter, com.voxel.simplesearchlauncher.importer.ImporterInterface
    public long getMainScreenId(TreeMap<Integer, Long> treeMap) {
        return 2L;
    }

    @Override // com.voxel.simplesearchlauncher.importer.ImporterInterface
    public final String getPackageName() {
        return "com.android.launcher";
    }

    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter, com.voxel.simplesearchlauncher.importer.ImporterInterface
    public TreeMap<Integer, Long> loadScreens(ContentResolver contentResolver) {
        TreeMap<Integer, Long> treeMap = new TreeMap<>();
        for (int i = 0; i < 5; i++) {
            treeMap.put(Integer.valueOf(i), Long.valueOf(i));
        }
        return treeMap;
    }

    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter
    protected final Uri getFavoritesContentUri() {
        return Uri.parse("content://com.android.launcher2.settings/favorites?notify=true");
    }
}
