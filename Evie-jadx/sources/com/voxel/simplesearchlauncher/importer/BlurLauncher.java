package com.voxel.simplesearchlauncher.importer;

import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public final class BlurLauncher extends BaseLauncherImporter {
    @Override // com.voxel.simplesearchlauncher.importer.ImporterInterface
    public final String getPackageName() {
        return "com.motorola.blur.home";
    }

    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter
    protected final Uri getFavoritesContentUri() {
        return Uri.parse("content://com.android.launcher.settings/favorites?notify=true");
    }
}
