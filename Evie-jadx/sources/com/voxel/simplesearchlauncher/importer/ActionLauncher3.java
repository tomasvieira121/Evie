package com.voxel.simplesearchlauncher.importer;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import com.voxel.launcher3.ItemInfo;
import com.voxel.launcher3.ShortcutInfo;

/* JADX INFO: loaded from: classes2.dex */
public class ActionLauncher3 extends BaseLauncherImporter {
    private static final ComponentName sShortcutComponent = new ComponentName("com.actionlauncher.playstore", "com.actionlauncher.ShortcutWrapperActivity");

    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter
    protected final String getBaseContentUri() {
        return "content://com.actionlauncher.playstore.settings/";
    }

    @Override // com.voxel.simplesearchlauncher.importer.ImporterInterface
    public String getPackageName() {
        return "com.actionlauncher.playstore";
    }

    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter
    protected ItemInfo loadUnknownItemType(int i, Cursor cursor, Context context, BaseLauncherImporter.CursorItemIndexes cursorItemIndexes) {
        if (i == 21) {
            return loadShortcutInfoFromCursor(cursor, context, cursorItemIndexes);
        }
        return super.loadUnknownItemType(i, cursor, context, cursorItemIndexes);
    }

    @Override // com.voxel.simplesearchlauncher.importer.BaseLauncherImporter
    protected void onLoadShortcutInfoFromCursor(ShortcutInfo shortcutInfo, Cursor cursor, Context context, BaseLauncherImporter.CursorItemIndexes cursorItemIndexes) {
        Intent intent = shortcutInfo.getIntent();
        if (intent == null) {
            return;
        }
        if (sShortcutComponent.equals(intent.getComponent())) {
            shortcutInfo.intent = null;
        }
    }
}
