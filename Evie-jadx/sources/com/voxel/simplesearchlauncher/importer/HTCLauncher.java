package com.voxel.simplesearchlauncher.importer;

import android.net.Uri;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public final class HTCLauncher extends BaseLauncherImporter {
    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter, com.voxel.simplesearchlauncher.importer.ImporterInterface
    public long getMainScreenId(TreeMap<Integer, Long> treeMap) {
        return 1L;
    }

    @Override // com.voxel.simplesearchlauncher.importer.ImporterInterface
    public final String getPackageName() {
        return "com.htc.launcher";
    }

    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter
    protected final Uri getFavoritesContentUri() {
        return Uri.parse("content://com.htc.launcher.settings/favorites?notify=true&workspace_id=1");
    }
}
