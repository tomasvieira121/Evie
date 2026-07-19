package com.voxel.simplesearchlauncher.importer;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.view.Display;
import android.view.WindowManager;
import com.voxel.launcher3.CellParams;
import com.voxel.launcher3.DeviceProfile;
import com.voxel.launcher3.DynamicGrid;
import com.voxel.launcher3.FolderInfo;
import com.voxel.launcher3.ItemInfo;
import com.voxel.launcher3.LauncherModel;
import com.voxel.launcher3.LauncherSettings;
import com.voxel.launcher3.ShortcutInfo;
import com.voxel.simplesearchlauncher.model.managers.SettingsStorage;
import com.voxel.simplesearchlauncher.settings.LayoutSettingsManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class LauncherImportHelper {
    public static List<ImporterInfo> getAvailableImporters(Context context) {
        ArrayList arrayList = new ArrayList();
        for (ImporterInterface importerInterface : ImporterInterface.IMPORTER_INTERFACES) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(importerInterface.getPackageName(), 0);
                if (importerInterface.canImport(context)) {
                    ImporterInfo importerInfo = new ImporterInfo();
                    importerInfo.label = applicationInfo.loadLabel(context.getPackageManager()).toString();
                    importerInfo.icon = applicationInfo.loadIcon(context.getPackageManager());
                    importerInfo.importerInterface = importerInterface;
                    arrayList.add(importerInfo);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return arrayList;
    }

    public static ImportData getMainScreenItems(ImporterInterface importerInterface, Context context) {
        ArrayList arrayList;
        long j;
        boolean z;
        ArrayList arrayList2;
        ImportData importData = new ImportData();
        importData.mainScreenId = 1;
        importData.itemInfos = Collections.emptyList();
        importData.screens = Collections.emptySet();
        importData.rows = -1;
        importData.cols = -1;
        TreeMap<Integer, Long> treeMapLoadScreens = importerInterface.loadScreens(context.getContentResolver());
        long mainScreenId = importerInterface.getMainScreenId(treeMapLoadScreens);
        Cursor cursor = importerInterface.getCursor(context.getContentResolver());
        if (cursor == null) {
            return importData;
        }
        ArrayList arrayList3 = new ArrayList();
        while (cursor.moveToNext()) {
            ItemInfo itemInfoLoadItem = importerInterface.loadItem(cursor, context);
            if (itemInfoLoadItem != null) {
                arrayList3.add(itemInfoLoadItem);
            }
        }
        cursor.close();
        if (arrayList3.isEmpty()) {
            return importData;
        }
        Point point = new Point();
        Point point2 = new Point();
        Point point3 = new Point();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        defaultDisplay.getCurrentSizeRange(point, point2);
        defaultDisplay.getRealSize(point3);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        ArrayList<ItemInfo> arrayList4 = arrayList3;
        DynamicGrid dynamicGrid = new DynamicGrid(context, context.getResources(), Math.min(point.x, point.y), Math.min(point2.x, point2.y), point3.x, point3.y, displayMetrics.widthPixels, displayMetrics.heightPixels, new HashMap(), SettingsStorage.getInstance().getSearchBarDesktopEnabled());
        int iRound = Math.round(dynamicGrid.getDeviceProfile().getCellParamsForType(DeviceProfile.ParamType.WORKSPACE).numColumns) - 1;
        int i = 2;
        int iRound2 = Math.round(dynamicGrid.getDeviceProfile().getCellParamsForType(DeviceProfile.ParamType.WORKSPACE).numRows) - 2;
        ArrayList arrayList5 = new ArrayList();
        HashMap map = new HashMap();
        for (ItemInfo itemInfo : arrayList4) {
            if (itemInfo.container == -100) {
                if (itemInfo.cellX > iRound) {
                    iRound = itemInfo.cellX;
                }
                if (itemInfo.cellY > iRound2) {
                    iRound2 = itemInfo.cellY;
                }
            }
            List arrayList6 = (List) map.get(Long.valueOf(itemInfo.container));
            if (arrayList6 == null) {
                arrayList6 = new ArrayList();
                map.put(Long.valueOf(itemInfo.container), arrayList6);
            }
            arrayList6.add(itemInfo);
        }
        HashMap map2 = new HashMap();
        for (ItemInfo itemInfo2 : arrayList4) {
            if (itemInfo2.itemType == i) {
                map2.put(Long.valueOf(itemInfo2.f510id), (FolderInfo) itemInfo2);
            }
            arrayList5 = arrayList5;
            i = 2;
        }
        ArrayList arrayList7 = arrayList5;
        for (Long l : map.keySet()) {
            if (l.longValue() != -101 && l.longValue() != -100) {
                List<ItemInfo> list = (List) map.get(l);
                FolderInfo folderInfo = (FolderInfo) map2.get(l);
                if (folderInfo == null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList4.remove((ItemInfo) it.next());
                    }
                } else {
                    ArrayList arrayList8 = arrayList4;
                    for (ItemInfo itemInfo3 : list) {
                        if (itemInfo3 instanceof ShortcutInfo) {
                            folderInfo.add((ShortcutInfo) itemInfo3);
                        }
                    }
                    arrayList4 = arrayList8;
                }
            }
        }
        List<ItemInfo> list2 = (List) map.get(-100L);
        List<ItemInfo> list3 = (List) map.get(-101L);
        if ((list2 == null || list2.isEmpty()) && (list3 == null || list3.isEmpty())) {
            return importData;
        }
        HashMap map3 = new HashMap();
        map3.put(Long.valueOf(mainScreenId), new Pair(Integer.valueOf(importData.mainScreenId), 0));
        int i2 = importData.mainScreenId + 1;
        if (treeMapLoadScreens != null) {
            Iterator<Integer> it2 = treeMapLoadScreens.keySet().iterator();
            int i3 = 1;
            while (it2.hasNext()) {
                long jLongValue = treeMapLoadScreens.get(it2.next()).longValue();
                if (jLongValue != mainScreenId) {
                    map3.put(Long.valueOf(jLongValue), new Pair(Integer.valueOf(i2), Integer.valueOf(i3)));
                    i2++;
                    i3++;
                    it2 = it2;
                }
            }
        }
        int i4 = iRound2 + 1;
        int i5 = iRound2 + 2;
        int i6 = iRound + 1;
        ItemInfo[] itemInfoArr = null;
        if (list3 == null || list3.isEmpty()) {
            arrayList = arrayList7;
        } else {
            Collections.sort(list3, new Comparator() { // from class: com.voxel.simplesearchlauncher.importer.-$$Lambda$LauncherImportHelper$UeeCrOH7r_JvO2ATXnZiDRFty2k
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Integer.valueOf(((ItemInfo) obj).cellX).compareTo(Integer.valueOf(((ItemInfo) obj2).cellX));
                }
            });
            ItemInfo[] itemInfoArr2 = new ItemInfo[i6];
            if (list3.size() >= i6) {
                for (int i7 = 0; i7 < itemInfoArr2.length; i7++) {
                    itemInfoArr2[i7] = (ItemInfo) list3.get(i7);
                }
            } else {
                int i8 = ((ItemInfo) list3.get(list3.size() - 1)).cellX;
                int i9 = i8 - iRound;
                if (i9 <= 0) {
                    for (ItemInfo itemInfo4 : list3) {
                        itemInfoArr2[itemInfo4.cellX] = itemInfo4;
                    }
                } else {
                    int i10 = i8 + 1;
                    ArrayList arrayList9 = new ArrayList(i10);
                    for (int i11 = 0; i11 < i10; i11++) {
                        arrayList9.add(null);
                    }
                    for (ItemInfo itemInfo5 : list3) {
                        arrayList9.set(itemInfo5.cellX, itemInfo5);
                    }
                    for (int i12 = 0; i12 < i9; i12++) {
                        removeMiddleNullElement(arrayList9);
                    }
                    for (int i13 = 0; i13 < itemInfoArr2.length; i13++) {
                        itemInfoArr2[i13] = (ItemInfo) arrayList9.get(i13);
                    }
                }
            }
            int i14 = 0;
            while (i14 < itemInfoArr2.length) {
                ItemInfo itemInfo6 = itemInfoArr2[i14];
                if (itemInfo6 != null) {
                    itemInfo6.f510id = -1L;
                    itemInfo6.container = -100L;
                    itemInfo6.screenId = importData.mainScreenId;
                    itemInfo6.cellX = i14;
                    itemInfo6.cellY = i4;
                    arrayList2 = arrayList7;
                    arrayList2.add(itemInfo6);
                } else {
                    arrayList2 = arrayList7;
                }
                i14++;
                arrayList7 = arrayList2;
            }
            arrayList = arrayList7;
            itemInfoArr = itemInfoArr2;
        }
        if (list2 != null) {
            for (ItemInfo itemInfo7 : list2) {
                if (itemInfoArr != null) {
                    int length = itemInfoArr.length;
                    int i15 = 0;
                    while (true) {
                        if (i15 >= length) {
                            z = false;
                            break;
                        }
                        ItemInfo itemInfo8 = itemInfoArr[i15];
                        if (itemInfo8 != null && itemInfo8.cellX == itemInfo7.cellX && itemInfo8.cellY == itemInfo7.cellY) {
                            z = true;
                            break;
                        }
                        i15++;
                    }
                    if (!z) {
                        j = -1;
                    }
                } else {
                    j = -1;
                }
                itemInfo7.f510id = j;
                itemInfo7.container = -100L;
                Pair pair = (Pair) map3.get(Long.valueOf(itemInfo7.screenId));
                if (pair != null) {
                    itemInfo7.screenId = ((Integer) pair.first).intValue();
                    arrayList.add(itemInfo7);
                }
            }
        }
        for (FolderInfo folderInfo2 : map2.values()) {
            for (ShortcutInfo shortcutInfo : folderInfo2.contents) {
                shortcutInfo.f510id = -1L;
                shortcutInfo.container = folderInfo2.f510id;
                shortcutInfo.screenId = 0L;
            }
        }
        importData.itemInfos = arrayList;
        importData.screens = new HashSet(map3.values());
        importData.rows = i5;
        importData.cols = i6;
        float maxWorkspaceIconScale = dynamicGrid.getDeviceProfile().getCellParamsForType(DeviceProfile.ParamType.WORKSPACE).iconScale / dynamicGrid.getDeviceProfile().getMaxWorkspaceIconScale(context);
        CellParams cellParamsForType = dynamicGrid.getDeviceProfile().getCellParamsForType(DeviceProfile.ParamType.WORKSPACE);
        cellParamsForType.numColumns = i6;
        cellParamsForType.numRows = i5;
        dynamicGrid.getDeviceProfile().updateAvailableDimensions(context);
        importData.iconScale = maxWorkspaceIconScale * dynamicGrid.getDeviceProfile().getMaxWorkspaceIconScale(context);
        return importData;
    }

    private static boolean removeMiddleNullElement(List<?> list) {
        if (list == null || list.isEmpty()) {
            return false;
        }
        int size = list.size() / 2;
        boolean z = true;
        boolean z2 = true;
        int i = 1;
        while (true) {
            if (!z && !z2) {
                return false;
            }
            if (size >= list.size()) {
                z = false;
            } else if (size < 0) {
                z2 = false;
            } else if (list.get(size) == null) {
                list.remove(size);
                return true;
            }
            size += i;
            i = (i + 1) * (-1);
        }
    }

    public static void importItems(Context context, ImportData importData, LayoutSettingsManager layoutSettingsManager) {
        for (Pair<Integer, Integer> pair : importData.screens) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_id", (Integer) pair.first);
            contentValues.put("screenRank", (Integer) pair.second);
            context.getContentResolver().insert(LauncherSettings.WorkspaceScreens.CONTENT_URI, contentValues);
        }
        for (ItemInfo itemInfo : importData.itemInfos) {
            LauncherModel.addItemToDatabase(context, itemInfo, itemInfo.container, itemInfo.screenId, itemInfo.cellX, itemInfo.cellY, false);
            if (itemInfo instanceof FolderInfo) {
                FolderInfo folderInfo = (FolderInfo) itemInfo;
                for (ShortcutInfo shortcutInfo : folderInfo.contents) {
                    shortcutInfo.container = folderInfo.f510id;
                    shortcutInfo.screenId = 0L;
                    LauncherModel.addItemToDatabase(context, shortcutInfo, folderInfo.f510id, 0L, shortcutInfo.cellX, shortcutInfo.cellY, false);
                }
            }
        }
        CellParams cellParams = new CellParams();
        cellParams.numRows = importData.rows;
        cellParams.numColumns = importData.cols;
        cellParams.iconScale = importData.iconScale;
        cellParams.enabled = true;
        cellParams.showLabels = true;
        layoutSettingsManager.setLayout(context, DeviceProfile.ParamType.WORKSPACE, cellParams);
    }
}
