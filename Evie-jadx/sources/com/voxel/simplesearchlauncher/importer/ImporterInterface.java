package com.voxel.simplesearchlauncher.importer;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import com.voxel.launcher3.ItemInfo;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public interface ImporterInterface {
    public static final ImporterInterface[] IMPORTER_INTERFACES = {new NovaLauncher(), new TouchWizLauncher(), new GoogleAndroidLauncher(), new Trebuchet(), new AndroidLauncher3(), new LGLauncher2(), new BlurLauncher(), new HTCLauncher(), new AndroidLauncher(), new PixelLauncher(), new LGLauncher3(), new ActionLauncher3()};

    boolean canImport(Context context);

    Cursor getCursor(ContentResolver contentResolver);

    long getMainScreenId(TreeMap<Integer, Long> treeMap);

    String getPackageName();

    ItemInfo loadItem(Cursor cursor, Context context);

    TreeMap<Integer, Long> loadScreens(ContentResolver contentResolver);
}
