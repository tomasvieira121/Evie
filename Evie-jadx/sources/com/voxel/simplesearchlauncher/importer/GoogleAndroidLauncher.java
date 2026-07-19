package com.voxel.simplesearchlauncher.importer;

/* JADX INFO: loaded from: classes2.dex */
public final class GoogleAndroidLauncher extends BaseLauncherImporter {
    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter
    protected final String getBaseContentUri() {
        return "content://com.google.android.launcher.settings/";
    }

    @Override // com.voxel.simplesearchlauncher.importer.ImporterInterface
    public final String getPackageName() {
        return "com.google.android.launcher";
    }
}
