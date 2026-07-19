package com.voxel.simplesearchlauncher.importer;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.crashlytics.android.Crashlytics;
import com.voxel.launcher3.ShortcutInfo;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public final class TouchWizLauncher extends BaseLauncherImporter {
    @Override // com.voxel.simplesearchlauncher.importer.ImporterInterface
    public final String getPackageName() {
        return "com.sec.android.app.launcher";
    }

    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter
    protected void onLoadShortcutInfoFromCursor(ShortcutInfo shortcutInfo, Cursor cursor, Context context, BaseLauncherImporter.CursorItemIndexes cursorItemIndexes) {
        Intent intent = shortcutInfo.intent;
        if ("android.intent.action.CALL_PRIVILEGED".equals(intent.getAction())) {
            intent.setAction("android.intent.action.CALL");
        }
    }

    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter, com.voxel.simplesearchlauncher.importer.ImporterInterface
    public final boolean canImport(Context context) {
        try {
            Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://com.sec.android.app.launcher.settings/favorites?notify=true"), null, "0", null, null);
            if (cursorQuery == null || cursorQuery.getColumnIndex("title") == -1) {
                return false;
            }
            cursorQuery.close();
            return true;
        } catch (SecurityException e) {
            Crashlytics.logException(e);
            return false;
        }
    }

    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter, com.voxel.simplesearchlauncher.importer.ImporterInterface
    public TreeMap<Integer, Long> loadScreens(ContentResolver contentResolver) {
        TreeMap<Integer, Long> treeMap = new TreeMap<>();
        int i = 0;
        while (i < 5) {
            Integer numValueOf = Integer.valueOf(i);
            i++;
            treeMap.put(numValueOf, Long.valueOf(i));
        }
        return treeMap;
    }

    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter
    public final Uri getFavoritesContentUri() {
        return Uri.parse("content://com.sec.android.app.launcher.settings/favorites?notify=true");
    }
}
