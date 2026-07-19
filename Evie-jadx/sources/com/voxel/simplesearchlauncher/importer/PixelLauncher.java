package com.voxel.simplesearchlauncher.importer;

/* JADX INFO: loaded from: classes2.dex */
public class PixelLauncher extends BaseLauncherImporter {
    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter
    protected final String getBaseContentUri() {
        return "content://com.google.android.apps.nexuslauncher.settings/";
    }

    @Override // com.voxel.simplesearchlauncher.importer.ImporterInterface
    public String getPackageName() {
        return "com.google.android.apps.nexuslauncher";
    }
}
