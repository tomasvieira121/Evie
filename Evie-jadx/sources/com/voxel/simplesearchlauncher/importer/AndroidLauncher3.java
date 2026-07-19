package com.voxel.simplesearchlauncher.importer;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidLauncher3 extends BaseLauncherImporter {
    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter
    protected final String getBaseContentUri() {
        return "content://com.android.launcher3.settings/";
    }

    @Override // com.voxel.simplesearchlauncher.importer.ImporterInterface
    public final String getPackageName() {
        return "com.android.launcher3";
    }
}
