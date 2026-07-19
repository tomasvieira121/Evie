package com.voxel.simplesearchlauncher.importer;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import com.voxel.launcher3.ShortcutInfo;
import com.voxel.launcher3.Utilities;
import java.util.ArrayList;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public final class NovaLauncher extends BaseLauncherImporter {
    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter
    protected final String getBaseContentUri() {
        return "content://com.teslacoilsw.launcher.settings/";
    }

    @Override // com.voxel.simplesearchlauncher.importer.ImporterInterface
    public final String getPackageName() {
        return "com.teslacoilsw.launcher";
    }

    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter, com.voxel.simplesearchlauncher.importer.ImporterInterface
    public long getMainScreenId(TreeMap<Integer, Long> treeMap) {
        if (treeMap == null || treeMap.isEmpty()) {
            return 1L;
        }
        ArrayList arrayList = new ArrayList(treeMap.values());
        return ((Long) arrayList.get((arrayList.size() - 1) / 2)).longValue();
    }

    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter
    protected void onLoadShortcutInfoFromCursor(ShortcutInfo shortcutInfo, Cursor cursor, Context context, BaseLauncherImporter.CursorItemIndexes cursorItemIndexes) {
        if (shortcutInfo.intent == null) {
            return;
        }
        if (shortcutInfo.getIntent() != null && shortcutInfo.getIntent().getAction() != null && shortcutInfo.getIntent().getAction().startsWith("com.teslacoilsw.launcher.ACTION")) {
            shortcutInfo.intent = null;
            return;
        }
        int i = cursor.getInt(cursorItemIndexes.iconTypeIndex);
        boolean zIsNull = cursor.isNull(cursorItemIndexes.iconTypeIndex);
        if (i == 2 || zIsNull) {
            String string = cursor.getString(cursorItemIndexes.iconResourceIndex);
            ComponentName componentNameUnflattenFromString = string != null ? ComponentName.unflattenFromString(string) : null;
            if (componentNameUnflattenFromString != null) {
                try {
                    shortcutInfo.iconBitmap = Utilities.createIconBitmap(context.getPackageManager().getActivityIcon(componentNameUnflattenFromString), context);
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
            if (shortcutInfo.iconBitmap == null) {
                try {
                    shortcutInfo.iconBitmap = Utilities.createIconBitmap(context.getPackageManager().getActivityIcon(shortcutInfo.intent), context);
                } catch (PackageManager.NameNotFoundException unused2) {
                }
            }
            if (shortcutInfo.iconBitmap == null) {
                shortcutInfo.intent = null;
            }
        }
    }
}
