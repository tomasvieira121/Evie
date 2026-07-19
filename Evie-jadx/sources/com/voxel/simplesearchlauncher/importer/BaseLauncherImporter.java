package com.voxel.simplesearchlauncher.importer;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.crashlytics.android.Crashlytics;
import com.voxel.launcher3.FolderInfo;
import com.voxel.launcher3.ItemInfo;
import com.voxel.launcher3.LauncherAppWidgetInfo;
import com.voxel.launcher3.ShortcutInfo;
import com.voxel.launcher3.Utilities;
import java.net.URISyntaxException;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseLauncherImporter implements ImporterInterface {
    CursorItemIndexes mCursorItemIndexes;

    public static final class CursorItemIndexes {
        int appWidgetIdIndex;
        int appWidgetProviderIndex;
        int cellXIndex;
        int cellYIndex;
        int containerIndex;
        int flagsIndex;
        int iconIndex;
        int iconPackageIndex;
        int iconResourceIndex;
        int iconTypeIndex;
        int idIndex;
        int intentIndex;
        int itemTypeIndex;
        int screenIdIndex;
        int spanXIndex;
        int spanYIndex;
        int titleIndex;
    }

    @Override // com.voxel.simplesearchlauncher.importer.ImporterInterface
    public boolean canImport(Context context) {
        return true;
    }

    protected String getBaseContentUri() {
        return null;
    }

    protected String getContainerColumnName() {
        return "container";
    }

    protected String getScreenColumnName() {
        return "screen";
    }

    protected ItemInfo loadUnknownItemType(int i, Cursor cursor, Context context, CursorItemIndexes cursorItemIndexes) {
        return null;
    }

    protected void onLoadShortcutInfoFromCursor(ShortcutInfo shortcutInfo, Cursor cursor, Context context, CursorItemIndexes cursorItemIndexes) {
    }

    private Uri getWorkspaceScreensUri() {
        if (getBaseContentUri() == null) {
            return null;
        }
        return Uri.parse(getBaseContentUri() + "workspaceScreens");
    }

    @Override // com.voxel.simplesearchlauncher.importer.ImporterInterface
    public TreeMap<Integer, Long> loadScreens(ContentResolver contentResolver) {
        if (getWorkspaceScreensUri() == null) {
            return null;
        }
        TreeMap<Integer, Long> treeMap = new TreeMap<>();
        try {
            Cursor cursorQuery = contentResolver.query(getWorkspaceScreensUri(), null, null, null, null);
            if (cursorQuery != null) {
                try {
                    int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_id");
                    int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("screenRank");
                    while (cursorQuery.moveToNext()) {
                        treeMap.put(Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow2)), Long.valueOf(cursorQuery.getLong(columnIndexOrThrow)));
                    }
                } catch (Throwable th) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return treeMap;
        } catch (SQLiteException unused) {
            return null;
        } catch (SecurityException unused2) {
            return null;
        }
    }

    @Override // com.voxel.simplesearchlauncher.importer.ImporterInterface
    public ItemInfo loadItem(Cursor cursor, Context context) {
        String string;
        if (this.mCursorItemIndexes == null) {
            getCursorItemIndexes(cursor);
        }
        CursorItemIndexes cursorItemIndexes = this.mCursorItemIndexes;
        int i = cursor.getInt(cursorItemIndexes.itemTypeIndex);
        if (i == 4) {
            int i2 = cursor.getInt(cursorItemIndexes.appWidgetIdIndex);
            ComponentName componentNameUnflattenFromString = (cursorItemIndexes.appWidgetProviderIndex == -1 || (string = cursor.getString(cursorItemIndexes.appWidgetProviderIndex)) == null) ? null : ComponentName.unflattenFromString(string);
            if (componentNameUnflattenFromString == null) {
                return null;
            }
            LauncherAppWidgetInfo launcherAppWidgetInfo = new LauncherAppWidgetInfo(i2, componentNameUnflattenFromString);
            loadItemFromCursor(launcherAppWidgetInfo, cursor, cursorItemIndexes);
            launcherAppWidgetInfo.restoreStatus = 7;
            return launcherAppWidgetInfo;
        }
        if (i == 1001) {
            return null;
        }
        switch (i) {
            case 0:
                ShortcutInfo shortcutInfoLoadShortcutInfoFromCursor = loadShortcutInfoFromCursor(cursor, context, cursorItemIndexes);
                if (shortcutInfoLoadShortcutInfoFromCursor != null) {
                    shortcutInfoLoadShortcutInfoFromCursor.itemType = 0;
                }
                return shortcutInfoLoadShortcutInfoFromCursor;
            case 1:
                return loadShortcutInfoFromCursor(cursor, context, cursorItemIndexes);
            case 2:
                FolderInfo folderInfo = new FolderInfo();
                folderInfo.title = cursor.getString(cursorItemIndexes.titleIndex);
                if (folderInfo.title == null) {
                    folderInfo.title = "";
                }
                loadItemFromCursor(folderInfo, cursor, cursorItemIndexes);
                loadFolderInfoFromCursor(folderInfo, cursor, this.mCursorItemIndexes);
                return folderInfo;
            default:
                return loadUnknownItemType(i, cursor, context, cursorItemIndexes);
        }
    }

    @Override // com.voxel.simplesearchlauncher.importer.ImporterInterface
    public Cursor getCursor(ContentResolver contentResolver) {
        Cursor cursorQuery;
        try {
            cursorQuery = contentResolver.query(getFavoritesContentUri(), null, null, null, null);
        } catch (SQLiteException e) {
            Log.w("LauncherImporter", "Error getting cursor from " + getPackageName(), e);
            Crashlytics.logException(new RuntimeException("SQLite Exception for package: " + getPackageName(), e));
            cursorQuery = null;
        } catch (SecurityException e2) {
            Log.w("LauncherImporter", "Error getting cursor from " + getPackageName(), e2);
            Crashlytics.logException(e2);
            cursorQuery = null;
        } catch (Exception e3) {
            Log.e("LauncherImporter", "Error resolving cursor for " + getPackageName(), e3);
            Crashlytics.logException(new RuntimeException("Exception during import for package: " + getPackageName(), e3));
            cursorQuery = null;
        }
        if (cursorQuery != null) {
            try {
                getCursorItemIndexes(cursorQuery);
            } catch (Exception e4) {
                Log.e("LauncherImporter", "Error getting cursor indices for " + getPackageName(), e4);
                Crashlytics.logException(new RuntimeException("Exception getting cursor indices for " + getPackageName(), e4));
                return null;
            }
        }
        return cursorQuery;
    }

    protected final ShortcutInfo loadShortcutInfoFromCursor(Cursor cursor, Context context, CursorItemIndexes cursorItemIndexes) {
        Intent uri;
        ShortcutInfo shortcutInfo = new ShortcutInfo();
        loadItemFromCursor(shortcutInfo, cursor, cursorItemIndexes);
        String string = cursor.getString(cursorItemIndexes.intentIndex);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            uri = Intent.parseUri(string, 0);
        } catch (URISyntaxException unused) {
            uri = null;
        }
        shortcutInfo.title = cursor.getString(cursorItemIndexes.titleIndex);
        shortcutInfo.intent = uri;
        if (shortcutInfo.intent == null) {
            return null;
        }
        if (shortcutInfo.title == null) {
            try {
                PackageManager packageManager = context.getApplicationContext().getPackageManager();
                shortcutInfo.title = packageManager.getActivityInfo(shortcutInfo.intent.getComponent(), 0).loadLabel(packageManager);
            } catch (Exception unused2) {
                shortcutInfo.title = "";
            }
        }
        if ((cursorItemIndexes.iconTypeIndex != -1 ? cursor.getInt(cursorItemIndexes.iconTypeIndex) : 0) != 1) {
            shortcutInfo.iconResource = new Intent.ShortcutIconResource();
            shortcutInfo.iconResource.packageName = cursor.getString(cursorItemIndexes.iconPackageIndex);
            shortcutInfo.iconResource.resourceName = cursor.getString(cursorItemIndexes.iconResourceIndex);
            shortcutInfo.iconBitmap = getIconFromCursor(cursor, cursorItemIndexes.iconIndex, context);
        } else {
            shortcutInfo.iconBitmap = getIconFromCursor(cursor, cursorItemIndexes.iconIndex, context);
            if (shortcutInfo.iconBitmap == null) {
                shortcutInfo.usingFallbackIcon = true;
            } else {
                shortcutInfo.customIcon = true;
            }
        }
        shortcutInfo.spanX = 1;
        shortcutInfo.spanY = 1;
        onLoadShortcutInfoFromCursor(shortcutInfo, cursor, context, cursorItemIndexes);
        if (shortcutInfo.intent == null) {
            return null;
        }
        return shortcutInfo;
    }

    public void getCursorItemIndexes(Cursor cursor) {
        CursorItemIndexes cursorItemIndexes = new CursorItemIndexes();
        cursorItemIndexes.idIndex = cursor.getColumnIndexOrThrow("_id");
        cursorItemIndexes.titleIndex = cursor.getColumnIndexOrThrow("title");
        cursorItemIndexes.intentIndex = cursor.getColumnIndexOrThrow("intent");
        cursorItemIndexes.itemTypeIndex = cursor.getColumnIndexOrThrow("itemType");
        cursorItemIndexes.iconTypeIndex = cursor.getColumnIndex("iconType");
        cursorItemIndexes.iconPackageIndex = cursor.getColumnIndexOrThrow("iconPackage");
        cursorItemIndexes.iconResourceIndex = cursor.getColumnIndexOrThrow("iconResource");
        cursorItemIndexes.iconIndex = cursor.getColumnIndex("icon");
        cursorItemIndexes.containerIndex = cursor.getColumnIndexOrThrow(getContainerColumnName());
        cursorItemIndexes.screenIdIndex = cursor.getColumnIndexOrThrow(getScreenColumnName());
        cursorItemIndexes.cellXIndex = cursor.getColumnIndexOrThrow("cellX");
        cursorItemIndexes.cellYIndex = cursor.getColumnIndexOrThrow("cellY");
        cursorItemIndexes.spanXIndex = cursor.getColumnIndexOrThrow("spanX");
        cursorItemIndexes.spanYIndex = cursor.getColumnIndexOrThrow("spanY");
        cursorItemIndexes.appWidgetIdIndex = cursor.getColumnIndexOrThrow("appWidgetId");
        cursorItemIndexes.appWidgetProviderIndex = cursor.getColumnIndex("appWidgetProvider");
        cursorItemIndexes.flagsIndex = cursor.getColumnIndex("flags");
        this.mCursorItemIndexes = cursorItemIndexes;
    }

    protected void loadItemFromCursor(ItemInfo itemInfo, Cursor cursor, CursorItemIndexes cursorItemIndexes) {
        itemInfo.f510id = cursor.getLong(cursorItemIndexes.idIndex);
        int i = cursor.getInt(cursorItemIndexes.containerIndex);
        itemInfo.cellX = cursor.getInt(cursorItemIndexes.cellXIndex);
        itemInfo.cellY = cursor.getInt(cursorItemIndexes.cellYIndex);
        itemInfo.spanX = cursor.getInt(cursorItemIndexes.spanXIndex);
        itemInfo.spanY = cursor.getInt(cursorItemIndexes.spanYIndex);
        int i2 = cursor.getInt(cursorItemIndexes.screenIdIndex);
        if (i == -101) {
            itemInfo.container = -101L;
            itemInfo.screenId = 0L;
        } else if (i == -100) {
            itemInfo.container = -100L;
            itemInfo.screenId = i2;
        } else {
            itemInfo.container = i;
            itemInfo.screenId = 0L;
        }
    }

    protected void loadFolderInfoFromCursor(FolderInfo folderInfo, Cursor cursor, CursorItemIndexes cursorItemIndexes) {
        if (folderInfo != null) {
            folderInfo.spanX = 1;
            folderInfo.spanY = 1;
        }
    }

    @Override // com.voxel.simplesearchlauncher.importer.ImporterInterface
    public long getMainScreenId(TreeMap<Integer, Long> treeMap) {
        if (treeMap == null || treeMap.isEmpty()) {
            return 1L;
        }
        return treeMap.firstEntry().getValue().longValue();
    }

    protected Uri getFavoritesContentUri() {
        if (getBaseContentUri() == null) {
            return null;
        }
        return Uri.parse(getBaseContentUri() + "favorites");
    }

    protected Bitmap getIconFromCursor(Cursor cursor, int i, Context context) {
        byte[] blob = cursor.getBlob(i);
        try {
            return Utilities.createIconBitmap(BitmapFactory.decodeByteArray(blob, 0, blob.length), context);
        } catch (Exception unused) {
            return null;
        }
    }
}
