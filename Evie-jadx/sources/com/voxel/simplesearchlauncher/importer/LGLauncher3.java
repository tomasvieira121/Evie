package com.voxel.simplesearchlauncher.importer;

import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public class LGLauncher3 extends BaseLauncherImporter {
    @Override // com.voxel.simplesearchlauncher.importer.ImporterInterface
    public String getPackageName() {
        return "com.lge.launcher3";
    }

    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter
    protected final Uri getFavoritesContentUri() {
        return Uri.parse("content://com.lge.launcher3.settings/favorites?notify=true");
    }
}
