package com.voxel.launcher3;

import android.appwidget.AppWidgetProviderInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Parcelable;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.MutableInt;
import android.util.Pair;
import com.voxel.launcher3.compat.LauncherActivityInfoCompat;
import com.voxel.launcher3.compat.LauncherAppsCompat;
import com.voxel.launcher3.compat.PackageInstallerCompat;
import com.voxel.launcher3.compat.UserHandleCompat;
import com.voxel.launcher3.compat.UserManagerCompat;
import com.voxel.launcher3.shortcuts.DeepShortcutInfoCompat;
import com.voxel.launcher3.shortcuts.DeepShortcutManager;
import com.voxel.launcher3.shortcuts.ShortcutKey;
import com.voxel.launcher3.util.FlagOp;
import com.voxel.launcher3.util.LongArrayMap;
import com.voxel.launcher3.util.MultiHashMap;
import com.voxel.launcher3.util.PackageManagerHelper;
import com.voxel.launcher3.util.StringFilter;
import com.voxel.simplesearchlauncher.model.AppsInfoLabelOverrideFilter;
import com.voxel.simplesearchlauncher.utils.DebugUtil;
import is.shortcut.R;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class LauncherModel extends BroadcastReceiver implements LauncherAppsCompat.OnAppsChangedCallbackCompat {
    public static final Comparator<AppInfo> APP_INSTALL_TIME_COMPARATOR;
    static final ArrayList<Runnable> mDeferredBindRunnables;
    static final ArrayList<LauncherAppWidgetInfo> sBgAppWidgets;
    static final HashMap<Object, byte[]> sBgDbIconCache;
    static final LongArrayMap<FolderInfo> sBgFolders;
    static final LongArrayMap<ItemInfo> sBgItemsIdMap;
    static final Object sBgLock;
    static final Map<ShortcutKey, MutableInt> sBgPinnedShortcutCounts;
    static final ArrayList<ItemInfo> sBgWorkspaceItems;
    static final ArrayList<Long> sBgWorkspaceScreens;
    static final HashMap<UserHandleCompat, HashSet<String>> sPendingPackages;
    private static final Handler sWorker;
    static final HandlerThread sWorkerThread = new HandlerThread("launcher-loader");
    private boolean mAllAppsLoaded;
    private final LauncherAppState mApp;
    private final boolean mAppsCanBeOnRemoveableStorage;
    AppsInfoLabelOverrideFilter mAppsInfoLabelOverrideFilter;
    AllAppsList mBgAllAppsList;
    private WeakReference<Callbacks> mCallbacks;
    DeepShortcutManager mDeepShortcutManager;
    private volatile boolean mFlushingWorkerThread;
    private boolean mHasLoaderCompletedOnce;
    private IconCache mIconCache;
    private boolean mIsLoaderTaskRunning;
    private final LauncherAppsCompat mLauncherApps;
    private LoaderTask mLoaderTask;
    private final boolean mOldContentProviderExists;
    protected int mPreviousConfigMcc;
    private final UserManagerCompat mUserManager;
    private boolean mWorkspaceLoaded;
    private final Object mLock = new Object();
    private DeferredHandler mHandler = new DeferredHandler();

    public interface Callbacks {
        void bindAllApplications(ArrayList<AppInfo> arrayList);

        void bindAppWidget(LauncherAppWidgetInfo launcherAppWidgetInfo);

        void bindAppsAdded(ArrayList<Long> arrayList, ArrayList<ItemInfo> arrayList2, ArrayList<ItemInfo> arrayList3, ArrayList<AppInfo> arrayList4);

        void bindAppsRestored(ArrayList<AppInfo> arrayList);

        void bindAppsUpdated(ArrayList<AppInfo> arrayList);

        void bindComponentsRemoved(HashSet<String> hashSet, HashSet<ComponentName> hashSet2, UserHandleCompat userHandleCompat);

        void bindFolders(LongArrayMap<FolderInfo> longArrayMap);

        void bindItems(ArrayList<ItemInfo> arrayList, int i, int i2, boolean z, boolean z2);

        void bindScreens(ArrayList<Long> arrayList);

        void bindShortcutsChanged(ArrayList<ShortcutInfo> arrayList, ArrayList<ShortcutInfo> arrayList2, UserHandleCompat userHandleCompat);

        void bindWidgetsRestored(ArrayList<LauncherAppWidgetInfo> arrayList);

        void dumpLogsToLocalData();

        void finishBindingItems(boolean z);

        int getCurrentWorkspaceScreen();

        boolean isAllAppsButtonRank(int i);

        void onPageBoundSynchronously(int i);

        boolean setLoadOnResume();

        void startBinding();

        void updatePackageBadge(String str);

        void updatePackageState(ArrayList<PackageInstallerCompat.PackageInstallInfo> arrayList);
    }

    public interface ItemInfoFilter {
        boolean filterItem(ItemInfo itemInfo, ItemInfo itemInfo2, ComponentName componentName);
    }

    @Override // com.voxel.launcher3.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesSuspended(String[] strArr, UserHandleCompat userHandleCompat) {
    }

    @Override // com.voxel.launcher3.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesUnsuspended(String[] strArr, UserHandleCompat userHandleCompat) {
    }

    static /* synthetic */ UserManagerCompat access$1000(LauncherModel launcherModel) {
        return launcherModel.mUserManager;
    }

    static /* synthetic */ Intent access$1100(LauncherModel launcherModel, Cursor cursor, Context context, Intent intent) {
        return launcherModel.getRestoredItemIntent(cursor, context, intent);
    }

    static /* synthetic */ ShortcutInfo access$1200(LauncherModel launcherModel, Cursor cursor, Context context, int i, int i2, int i3, int i4, int i5) {
        return launcherModel.getShortcutInfo(cursor, context, i, i2, i3, i4, i5);
    }

    static /* synthetic */ void access$1300(LauncherModel launcherModel, ShortcutKey shortcutKey, boolean z) {
        launcherModel.incrementPinnedShortcutCount(shortcutKey, z);
    }

    static /* synthetic */ FolderInfo access$1400(LongArrayMap longArrayMap, long j) {
        return findOrMakeFolder(longArrayMap, j);
    }

    static /* synthetic */ Handler access$1600() {
        return sWorker;
    }

    static /* synthetic */ TreeMap access$1700(Context context) {
        return loadWorkspaceScreensDb(context);
    }

    static {
        sWorkerThread.start();
        sWorker = new Handler(sWorkerThread.getLooper());
        mDeferredBindRunnables = new ArrayList<>();
        sBgLock = new Object();
        sBgItemsIdMap = new LongArrayMap<>();
        sBgWorkspaceItems = new ArrayList<>();
        sBgAppWidgets = new ArrayList<>();
        sBgFolders = new LongArrayMap<>();
        sBgDbIconCache = new HashMap<>();
        sBgWorkspaceScreens = new ArrayList<>();
        sBgPinnedShortcutCounts = new HashMap();
        sPendingPackages = new HashMap<>();
        APP_INSTALL_TIME_COMPARATOR = new Comparator() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$jRN9hc6IOn1pLGGb6waC64SY89k
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return LauncherModel.lambda$static$22((AppInfo) obj, (AppInfo) obj2);
            }
        };
    }

    LauncherModel(LauncherAppState launcherAppState, IconCache iconCache) {
        Context context = launcherAppState.getContext();
        this.mAppsCanBeOnRemoveableStorage = Environment.isExternalStorageRemovable();
        String string = context.getString(R.string.old_launcher_provider_uri);
        String authority = Uri.parse(string).getAuthority();
        boolean z = false;
        ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.android.launcher2.settings", 0);
        ProviderInfo providerInfoResolveContentProvider2 = context.getPackageManager().resolveContentProvider(authority, 0);
        Log.d("Launcher.Model", "Old launcher provider: " + string);
        if (providerInfoResolveContentProvider != null && providerInfoResolveContentProvider2 != null) {
            z = true;
        }
        this.mOldContentProviderExists = z;
        if (this.mOldContentProviderExists) {
            Log.d("Launcher.Model", "Old launcher provider exists.");
        } else {
            Log.d("Launcher.Model", "Old launcher provider does not exist.");
        }
        this.mApp = launcherAppState;
        this.mBgAllAppsList = new AllAppsList(iconCache);
        this.mIconCache = iconCache;
        this.mPreviousConfigMcc = context.getResources().getConfiguration().mcc;
        this.mLauncherApps = LauncherAppsCompat.getInstance(context);
        this.mUserManager = UserManagerCompat.getInstance(context);
    }

    public void onInject() {
        this.mDeepShortcutManager.addPermissionListener(new DeepShortcutManager.ShortcutHostPermissionChangedListener() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$savxDM6GV4uySVsy2a5Qna8kca8
            @Override // com.voxel.launcher3.shortcuts.DeepShortcutManager.ShortcutHostPermissionChangedListener
            public final void onShortcutHostPermissionChanged() {
                this.f$0.forceReload();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOnMainThread(Runnable runnable) {
        runOnMainThread(runnable, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOnMainThread(Runnable runnable, int i) {
        if (sWorkerThread.getThreadId() == Process.myTid()) {
            this.mHandler.post(runnable);
        } else {
            runnable.run();
        }
    }

    private static void runOnWorkerThread(Runnable runnable) {
        if (sWorkerThread.getThreadId() == Process.myTid()) {
            runnable.run();
        } else {
            sWorker.post(runnable);
        }
    }

    static boolean findNextAvailableIconSpaceInScreen(ArrayList<ItemInfo> arrayList, int[] iArr, long j) {
        CellParams cellParamsForType = LauncherAppState.getInstance().getDynamicGrid().getDeviceProfile().getCellParamsForType(DeviceProfile.ParamType.WORKSPACE);
        int i = (int) cellParamsForType.numColumns;
        int i2 = (int) cellParamsForType.numRows;
        boolean[][] zArr = (boolean[][]) Array.newInstance((Class<?>) boolean.class, i, i2);
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            ItemInfo itemInfo = arrayList.get(i3);
            if (itemInfo.container == -100 && itemInfo.screenId == j) {
                int i4 = itemInfo.cellX;
                int i5 = itemInfo.cellY;
                int i6 = itemInfo.spanX;
                int i7 = itemInfo.spanY;
                for (int i8 = i4; i8 >= 0 && i8 < i4 + i6 && i8 < i; i8++) {
                    for (int i9 = i5; i9 >= 0 && i9 < i5 + i7 && i9 < i2; i9++) {
                        zArr[i8][i9] = true;
                    }
                }
            }
        }
        return CellLayout.findVacantCell(iArr, 1, 1, i, i2, zArr);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    static Pair<Long, int[]> findNextAvailableIconSpace(Context context, String str, Intent intent, int i, ArrayList<Long> arrayList) {
        LauncherAppState launcherAppState = LauncherAppState.getInstance();
        LauncherModel model = launcherAppState.getModel();
        synchronized (launcherAppState) {
            if (sWorkerThread.getThreadId() != Process.myTid()) {
                model.flushWorkerThread();
            }
            ArrayList<ItemInfo> itemsInLocalCoordinates = getItemsInLocalCoordinates(context);
            int size = arrayList.size();
            for (int iMin = Math.min(i, arrayList.size()); iMin < size; iMin++) {
                int[] iArr = new int[2];
                if (findNextAvailableIconSpaceInScreen(itemsInLocalCoordinates, iArr, arrayList.get(iMin).longValue())) {
                    return new Pair<>(arrayList.get(iMin), iArr);
                }
            }
            return null;
        }
    }

    public void setPackageState(final ArrayList<PackageInstallerCompat.PackageInstallInfo> arrayList) {
        this.mHandler.post(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$i5CHKiVyvHdA_FjUmMUx8qZ7vq8
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel.lambda$setPackageState$1(this.f$0, arrayList);
            }
        });
    }

    public static /* synthetic */ void lambda$setPackageState$1(LauncherModel launcherModel, ArrayList arrayList) {
        WeakReference<Callbacks> weakReference = launcherModel.mCallbacks;
        Callbacks callbacks = weakReference != null ? weakReference.get() : null;
        if (callbacks != null) {
            callbacks.updatePackageState(arrayList);
        }
    }

    public void updatePackageBadge(final String str) {
        this.mHandler.post(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$bkQzEdKjn3QMZRHp6l_fTpq6c6g
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel.lambda$updatePackageBadge$2(this.f$0, str);
            }
        });
    }

    public static /* synthetic */ void lambda$updatePackageBadge$2(LauncherModel launcherModel, String str) {
        WeakReference<Callbacks> weakReference = launcherModel.mCallbacks;
        Callbacks callbacks = weakReference != null ? weakReference.get() : null;
        if (callbacks != null) {
            callbacks.updatePackageBadge(str);
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public void addAppsToAllApps(Context context, final ArrayList<AppInfo> arrayList) {
        WeakReference<Callbacks> weakReference = this.mCallbacks;
        final Callbacks callbacks = weakReference != null ? weakReference.get() : null;
        if (arrayList == null) {
            throw new RuntimeException("allAppsApps must not be null");
        }
        if (arrayList.isEmpty()) {
            return;
        }
        final ArrayList arrayList2 = new ArrayList();
        for (AppInfo appInfo : arrayList) {
            if (appWasPromise(context, appInfo.getIntent(), appInfo.user)) {
                arrayList2.add(appInfo);
            }
        }
        runOnWorkerThread(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$advjp7pNx-SsEHR-YelGG-DKbz0
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel launcherModel = this.f$0;
                launcherModel.runOnMainThread(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$NHTK9-D5bN1Is16A8r5SeOS4Dls
                    @Override // java.lang.Runnable
                    public final void run() {
                        LauncherModel.lambda$null$3(this.f$0, callbacks, arrayList, arrayList);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void lambda$null$3(LauncherModel launcherModel, Callbacks callbacks, ArrayList arrayList, ArrayList arrayList2) {
        WeakReference<Callbacks> weakReference = launcherModel.mCallbacks;
        Callbacks callbacks2 = weakReference != null ? weakReference.get() : null;
        if (callbacks != callbacks2 || callbacks2 == null) {
            return;
        }
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                AppInfo appInfo = (AppInfo) it.next();
                Intent intent = appInfo.getIntent();
                if (intent != null) {
                    launcherModel.mIconCache.deletePreloadedIcon(intent.getComponent(), appInfo.user);
                }
            }
            callbacks.bindAppsUpdated(arrayList);
        }
        callbacks.bindAppsAdded(null, null, null, arrayList2);
    }

    public void addAndBindAddedWorkspaceApps(final Context context, final ArrayList<ItemInfo> arrayList) {
        WeakReference<Callbacks> weakReference = this.mCallbacks;
        final Callbacks callbacks = weakReference != null ? weakReference.get() : null;
        if (arrayList == null) {
            throw new RuntimeException("workspaceApps and allAppsApps must not be null");
        }
        if (arrayList.isEmpty()) {
            return;
        }
        runOnWorkerThread(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$_KWO1weWtcDijqp8eoHcHkepT4E
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel.lambda$addAndBindAddedWorkspaceApps$6(this.f$0, context, arrayList, callbacks);
            }
        });
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static /* synthetic */ void lambda$addAndBindAddedWorkspaceApps$6(final LauncherModel launcherModel, Context context, ArrayList arrayList, final Callbacks callbacks) {
        ShortcutInfo shortcutInfoMakeShortcut;
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        final ArrayList arrayList4 = new ArrayList();
        ArrayList<Long> arrayList5 = new ArrayList<>();
        TreeMap<Integer, Long> treeMapLoadWorkspaceScreensDb = loadWorkspaceScreensDb(context);
        Iterator<Integer> it = treeMapLoadWorkspaceScreensDb.keySet().iterator();
        while (it.hasNext()) {
            arrayList5.add(Long.valueOf(treeMapLoadWorkspaceScreensDb.get(it.next()).longValue()));
        }
        synchronized (sBgLock) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ItemInfo itemInfo = (ItemInfo) it2.next();
                String string = itemInfo.title.toString();
                Intent intent = itemInfo.getIntent();
                if (shortcutExists(context, string, intent) && (itemInfo instanceof AppInfo) && appWasPromise(context, intent, itemInfo.user)) {
                    arrayList4.add((AppInfo) itemInfo);
                } else {
                    if (arrayList5.size() == 0) {
                        long jGenerateNewScreenId = LauncherAppState.getLauncherProvider().generateNewScreenId();
                        arrayList5.add(Long.valueOf(jGenerateNewScreenId));
                        arrayList3.add(Long.valueOf(jGenerateNewScreenId));
                    }
                    Pair<Long, int[]> pairFindNextAvailableIconSpace = findNextAvailableIconSpace(context, string, intent, 0, arrayList5);
                    if (pairFindNextAvailableIconSpace == null) {
                        LauncherProvider launcherProvider = LauncherAppState.getLauncherProvider();
                        for (int iMax = Math.max(1, 1 - arrayList5.size()); iMax > 0; iMax--) {
                            long jGenerateNewScreenId2 = launcherProvider.generateNewScreenId();
                            arrayList5.add(Long.valueOf(jGenerateNewScreenId2));
                            arrayList3.add(Long.valueOf(jGenerateNewScreenId2));
                        }
                        pairFindNextAvailableIconSpace = findNextAvailableIconSpace(context, string, intent, 0, arrayList5);
                    }
                    if (pairFindNextAvailableIconSpace == null) {
                        throw new RuntimeException("Coordinates should not be null");
                    }
                    if (itemInfo instanceof ShortcutInfo) {
                        shortcutInfoMakeShortcut = (ShortcutInfo) itemInfo;
                    } else if (itemInfo instanceof AppInfo) {
                        shortcutInfoMakeShortcut = ((AppInfo) itemInfo).makeShortcut();
                    } else {
                        throw new RuntimeException("Unexpected info type");
                    }
                    addItemToDatabase(context, shortcutInfoMakeShortcut, -100L, ((Long) pairFindNextAvailableIconSpace.first).longValue(), ((int[]) pairFindNextAvailableIconSpace.second)[0], ((int[]) pairFindNextAvailableIconSpace.second)[1], false);
                    arrayList2.add(shortcutInfoMakeShortcut);
                }
            }
        }
        launcherModel.updateWorkspaceScreenOrder(context, arrayList5);
        if (arrayList2.isEmpty()) {
            return;
        }
        launcherModel.runOnMainThread(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$ceex_B9pYgsm5jxLw73rUbtDD-Y
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel.lambda$null$5(this.f$0, callbacks, arrayList2, arrayList3, arrayList4);
            }
        });
    }

    public static /* synthetic */ void lambda$null$5(LauncherModel launcherModel, Callbacks callbacks, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        WeakReference<Callbacks> weakReference = launcherModel.mCallbacks;
        Callbacks callbacks2 = weakReference != null ? weakReference.get() : null;
        if (callbacks != callbacks2 || callbacks2 == null) {
            return;
        }
        ArrayList<ItemInfo> arrayList4 = new ArrayList<>();
        ArrayList<ItemInfo> arrayList5 = new ArrayList<>();
        if (!arrayList.isEmpty()) {
            long j = ((ItemInfo) arrayList.get(arrayList.size() - 1)).screenId;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ItemInfo itemInfo = (ItemInfo) it.next();
                if (itemInfo.screenId == j) {
                    arrayList4.add(itemInfo);
                } else {
                    arrayList5.add(itemInfo);
                }
            }
        }
        callbacks.bindAppsAdded(arrayList2, arrayList5, arrayList4, null);
        if (arrayList3.isEmpty()) {
            return;
        }
        callbacks.bindAppsUpdated(arrayList3);
    }

    public void unbindItemInfosAndClearQueuedBindRunnables() {
        if (sWorkerThread.getThreadId() == Process.myTid()) {
            throw new RuntimeException("Expected unbindLauncherItemInfos() to be called from the main thread");
        }
        synchronized (mDeferredBindRunnables) {
            mDeferredBindRunnables.clear();
        }
        this.mHandler.cancelAllRunnablesOfType(1);
        unbindWorkspaceItemsOnMainThread();
    }

    void unbindWorkspaceItemsOnMainThread() {
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        synchronized (sBgLock) {
            arrayList.addAll(sBgWorkspaceItems);
            arrayList2.addAll(sBgAppWidgets);
        }
        runOnMainThread(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$z_V1eZvDcUn_-uM5Mn3f4e7Vgxs
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel.lambda$unbindWorkspaceItemsOnMainThread$7(arrayList, arrayList2);
            }
        });
    }

    static /* synthetic */ void lambda$unbindWorkspaceItemsOnMainThread$7(ArrayList arrayList, ArrayList arrayList2) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((ItemInfo) it.next()).unbind();
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            ((ItemInfo) it2.next()).unbind();
        }
    }

    static void addOrMoveItemInDatabase(Context context, ItemInfo itemInfo, long j, long j2, int i, int i2) {
        if (itemInfo.container == -1) {
            addItemToDatabase(context, itemInfo, j, j2, i, i2, false);
        } else {
            moveItemInDatabase(context, itemInfo, j, j2, i, i2);
        }
    }

    static void checkItemInfoLocked(long j, ItemInfo itemInfo, StackTraceElement[] stackTraceElementArr) {
        ItemInfo itemInfo2 = sBgItemsIdMap.get(j);
        if (itemInfo2 == null || itemInfo == itemInfo2) {
            return;
        }
        if ((itemInfo2 instanceof ShortcutInfo) && (itemInfo instanceof ShortcutInfo)) {
            ShortcutInfo shortcutInfo = (ShortcutInfo) itemInfo2;
            ShortcutInfo shortcutInfo2 = (ShortcutInfo) itemInfo;
            if (shortcutInfo.title.toString().equals(shortcutInfo2.title.toString()) && shortcutInfo.intent.filterEquals(shortcutInfo2.intent) && shortcutInfo.f510id == shortcutInfo2.f510id && shortcutInfo.itemType == shortcutInfo2.itemType && shortcutInfo.container == shortcutInfo2.container && shortcutInfo.screenId == shortcutInfo2.screenId && shortcutInfo.cellX == shortcutInfo2.cellX && shortcutInfo.cellY == shortcutInfo2.cellY && shortcutInfo.spanX == shortcutInfo2.spanX && shortcutInfo.spanY == shortcutInfo2.spanY) {
                if (shortcutInfo.dropPos == null && shortcutInfo2.dropPos == null) {
                    return;
                }
                if (shortcutInfo.dropPos != null && shortcutInfo2.dropPos != null && shortcutInfo.dropPos[0] == shortcutInfo2.dropPos[0] && shortcutInfo.dropPos[1] == shortcutInfo2.dropPos[1]) {
                    return;
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("item: ");
        sb.append(itemInfo != null ? itemInfo.toString() : "null");
        sb.append("modelItem: ");
        sb.append(itemInfo2 != null ? itemInfo2.toString() : "null");
        sb.append("Error: ItemInfo passed to checkItemInfo doesn't match original");
        RuntimeException runtimeException = new RuntimeException(sb.toString());
        if (stackTraceElementArr != null) {
            runtimeException.setStackTrace(stackTraceElementArr);
        }
    }

    static void checkItemInfo(final ItemInfo itemInfo) {
        final StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        final long j = itemInfo.f510id;
        runOnWorkerThread(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$UfWWueD6oJSfuSoXsbN8jaUOzyY
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel.lambda$checkItemInfo$8(j, itemInfo, stackTrace);
            }
        });
    }

    static /* synthetic */ void lambda$checkItemInfo$8(long j, ItemInfo itemInfo, StackTraceElement[] stackTraceElementArr) {
        synchronized (sBgLock) {
            checkItemInfoLocked(j, itemInfo, stackTraceElementArr);
        }
    }

    static void updateItemInDatabaseHelper(Context context, final ContentValues contentValues, final ItemInfo itemInfo, String str) {
        final long j = itemInfo.f510id;
        final Uri contentUri = LauncherSettings.Favorites.getContentUri(j, false);
        final ContentResolver contentResolver = context.getContentResolver();
        final StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        runOnWorkerThread(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$1YZC2kdR0C-PQ7gWAx34CMOI44g
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel.lambda$updateItemInDatabaseHelper$9(contentResolver, contentUri, contentValues, itemInfo, j, stackTrace);
            }
        });
    }

    static /* synthetic */ void lambda$updateItemInDatabaseHelper$9(ContentResolver contentResolver, Uri uri, ContentValues contentValues, ItemInfo itemInfo, long j, StackTraceElement[] stackTraceElementArr) {
        contentResolver.update(uri, contentValues, null, null);
        updateItemArrays(itemInfo, j, stackTraceElementArr);
    }

    static void updateItemsInDatabaseHelper(Context context, final ArrayList<ContentValues> arrayList, final ArrayList<ItemInfo> arrayList2, String str) {
        final ContentResolver contentResolver = context.getContentResolver();
        final StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        runOnWorkerThread(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$ZITOsBKG0Ni1IkCYEOZLeSyAgHM
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel.lambda$updateItemsInDatabaseHelper$10(arrayList2, arrayList, stackTrace, contentResolver);
            }
        });
    }

    static /* synthetic */ void lambda$updateItemsInDatabaseHelper$10(ArrayList arrayList, ArrayList arrayList2, StackTraceElement[] stackTraceElementArr, ContentResolver contentResolver) {
        ArrayList<ContentProviderOperation> arrayList3 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ItemInfo itemInfo = (ItemInfo) arrayList.get(i);
            long j = itemInfo.f510id;
            Uri contentUri = LauncherSettings.Favorites.getContentUri(j, false);
            arrayList3.add(ContentProviderOperation.newUpdate(contentUri).withValues((ContentValues) arrayList2.get(i)).build());
            updateItemArrays(itemInfo, j, stackTraceElementArr);
        }
        try {
            contentResolver.applyBatch("com.voxel.launcher3.settings", arrayList3);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0064 A[Catch: all -> 0x0079, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0010, B:8:0x0016, B:10:0x0020, B:11:0x0045, B:13:0x004f, B:15:0x0055, B:17:0x005b, B:19:0x0060, B:25:0x0077, B:21:0x0064, B:23:0x006c, B:24:0x0072), top: B:30:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x006c A[Catch: all -> 0x0079, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0010, B:8:0x0016, B:10:0x0020, B:11:0x0045, B:13:0x004f, B:15:0x0055, B:17:0x005b, B:19:0x0060, B:25:0x0077, B:21:0x0064, B:23:0x006c, B:24:0x0072), top: B:30:0x0003 }] */
    static void updateItemArrays(ItemInfo itemInfo, long j, StackTraceElement[] stackTraceElementArr) {
        synchronized (sBgLock) {
            checkItemInfoLocked(j, itemInfo, stackTraceElementArr);
            if (itemInfo.container != -100 && itemInfo.container != -101 && !sBgFolders.containsKey(itemInfo.container)) {
                Log.e("Launcher.Model", "item: " + itemInfo + " container being set to: " + itemInfo.container + ", not in the list of folders");
            }
            ItemInfo itemInfo2 = sBgItemsIdMap.get(j);
            if (itemInfo2 != null && (itemInfo2.container == -100 || itemInfo2.container == -101)) {
                int i = itemInfo2.itemType;
                if (i != 6) {
                    switch (i) {
                        case 0:
                        case 1:
                        case 2:
                            if (!sBgWorkspaceItems.contains(itemInfo2)) {
                                sBgWorkspaceItems.add(itemInfo2);
                            }
                            break;
                    }
                } else if (!sBgWorkspaceItems.contains(itemInfo2)) {
                    sBgWorkspaceItems.add(itemInfo2);
                }
            } else {
                sBgWorkspaceItems.remove(itemInfo2);
            }
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public void flushWorkerThread() {
        this.mFlushingWorkerThread = true;
        Runnable runnable = new Runnable() { // from class: com.voxel.launcher3.LauncherModel.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (this) {
                    notifyAll();
                    LauncherModel.this.mFlushingWorkerThread = false;
                }
            }
        };
        synchronized (runnable) {
            try {
                runOnWorkerThread(runnable);
                if (this.mLoaderTask != null) {
                    synchronized (this.mLoaderTask) {
                        this.mLoaderTask.notify();
                    }
                }
                boolean z = false;
                while (!z) {
                    try {
                        runnable.wait();
                        z = true;
                    } catch (InterruptedException unused) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static void moveItemInDatabase(Context context, ItemInfo itemInfo, long j, long j2, int i, int i2) {
        itemInfo.container = j;
        itemInfo.cellX = i;
        itemInfo.cellY = i2;
        if ((context instanceof Launcher) && j2 < 0 && j == -101) {
            itemInfo.screenId = ((Launcher) context).getHotseat().getOrderInHotseat(i, i2);
        } else {
            itemInfo.screenId = j2;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("container", Long.valueOf(itemInfo.container));
        contentValues.put("cellX", Integer.valueOf(itemInfo.cellX));
        contentValues.put("cellY", Integer.valueOf(itemInfo.cellY));
        contentValues.put("rank", Integer.valueOf(itemInfo.rank));
        contentValues.put("screen", Long.valueOf(itemInfo.screenId));
        updateItemInDatabaseHelper(context, contentValues, itemInfo, "moveItemInDatabase");
    }

    static void moveItemsInDatabase(Context context, ArrayList<ItemInfo> arrayList, long j, int i) {
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ItemInfo itemInfo = arrayList.get(i2);
            itemInfo.container = j;
            if ((context instanceof Launcher) && i < 0 && j == -101) {
                itemInfo.screenId = ((Launcher) context).getHotseat().getOrderInHotseat(itemInfo.cellX, itemInfo.cellY);
            } else {
                itemInfo.screenId = i;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("container", Long.valueOf(itemInfo.container));
            contentValues.put("cellX", Integer.valueOf(itemInfo.cellX));
            contentValues.put("cellY", Integer.valueOf(itemInfo.cellY));
            contentValues.put("rank", Integer.valueOf(itemInfo.rank));
            contentValues.put("screen", Long.valueOf(itemInfo.screenId));
            arrayList2.add(contentValues);
        }
        updateItemsInDatabaseHelper(context, arrayList2, arrayList, "moveItemInDatabase");
    }

    static void modifyItemInDatabase(Context context, ItemInfo itemInfo, long j, long j2, int i, int i2, int i3, int i4) {
        itemInfo.container = j;
        itemInfo.cellX = i;
        itemInfo.cellY = i2;
        itemInfo.spanX = i3;
        itemInfo.spanY = i4;
        if ((context instanceof Launcher) && j2 < 0 && j == -101) {
            itemInfo.screenId = ((Launcher) context).getHotseat().getOrderInHotseat(i, i2);
        } else {
            itemInfo.screenId = j2;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("container", Long.valueOf(itemInfo.container));
        contentValues.put("cellX", Integer.valueOf(itemInfo.cellX));
        contentValues.put("cellY", Integer.valueOf(itemInfo.cellY));
        contentValues.put("rank", Integer.valueOf(itemInfo.rank));
        contentValues.put("spanX", Integer.valueOf(itemInfo.spanX));
        contentValues.put("spanY", Integer.valueOf(itemInfo.spanY));
        contentValues.put("screen", Long.valueOf(itemInfo.screenId));
        updateItemInDatabaseHelper(context, contentValues, itemInfo, "modifyItemInDatabase");
    }

    public static void updateItemInDatabase(Context context, ItemInfo itemInfo) {
        ContentValues contentValues = new ContentValues();
        itemInfo.onAddToDatabase(context, contentValues);
        updateItemInDatabaseHelper(context, contentValues, itemInfo, "updateItemInDatabase");
    }

    static boolean shortcutExists(Context context, String str, Intent intent) {
        Intent intent2;
        ContentResolver contentResolver = context.getContentResolver();
        if (intent.getComponent() == null) {
            intent2 = intent;
        } else if (intent.getPackage() != null) {
            intent2 = new Intent(intent).setPackage(null);
        } else {
            intent = new Intent(intent).setPackage(intent.getComponent().getPackageName());
            intent2 = intent;
        }
        Cursor cursorQuery = contentResolver.query(LauncherSettings.Favorites.CONTENT_URI, new String[]{"title", "intent"}, "title=? and (intent=? or intent=?)", new String[]{str, intent.toUri(0), intent2.toUri(0)}, null);
        try {
            return cursorQuery.moveToFirst();
        } finally {
            cursorQuery.close();
        }
    }

    static boolean appWasPromise(Context context, Intent intent, UserHandleCompat userHandleCompat) {
        ComponentName component = intent.getComponent();
        if (component == null) {
            return false;
        }
        return !getItemsByPackageName(component.getPackageName(), userHandleCompat).isEmpty();
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    static ArrayList<ItemInfo> getItemsInLocalCoordinates(Context context) {
        ArrayList<ItemInfo> arrayList = new ArrayList<>();
        Cursor cursorQuery = context.getContentResolver().query(LauncherSettings.Favorites.CONTENT_URI, new String[]{"itemType", "container", "screen", "cellX", "cellY", "spanX", "spanY", "profileId"}, null, null, null);
        int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("itemType");
        int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("container");
        int columnIndexOrThrow3 = cursorQuery.getColumnIndexOrThrow("screen");
        int columnIndexOrThrow4 = cursorQuery.getColumnIndexOrThrow("cellX");
        int columnIndexOrThrow5 = cursorQuery.getColumnIndexOrThrow("cellY");
        int columnIndexOrThrow6 = cursorQuery.getColumnIndexOrThrow("spanX");
        int columnIndexOrThrow7 = cursorQuery.getColumnIndexOrThrow("spanY");
        int columnIndexOrThrow8 = cursorQuery.getColumnIndexOrThrow("profileId");
        UserManagerCompat userManagerCompat = UserManagerCompat.getInstance(context);
        while (cursorQuery.moveToNext()) {
            try {
                try {
                    ItemInfo itemInfo = new ItemInfo();
                    itemInfo.cellX = cursorQuery.getInt(columnIndexOrThrow4);
                    itemInfo.cellY = cursorQuery.getInt(columnIndexOrThrow5);
                    itemInfo.spanX = Math.max(1, cursorQuery.getInt(columnIndexOrThrow6));
                    itemInfo.spanY = Math.max(1, cursorQuery.getInt(columnIndexOrThrow7));
                    itemInfo.container = cursorQuery.getInt(columnIndexOrThrow2);
                    itemInfo.itemType = cursorQuery.getInt(columnIndexOrThrow);
                    itemInfo.screenId = cursorQuery.getInt(columnIndexOrThrow3);
                    itemInfo.user = userManagerCompat.getUserForSerialNumber(cursorQuery.getInt(columnIndexOrThrow8));
                    if (itemInfo.user != null) {
                        arrayList.add(itemInfo);
                    }
                } catch (Exception unused) {
                    arrayList.clear();
                }
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        cursorQuery.close();
        return arrayList;
    }

    FolderInfo getFolderById(Context context, LongArrayMap<FolderInfo> longArrayMap, long j) {
        Cursor cursorQuery = context.getContentResolver().query(LauncherSettings.Favorites.CONTENT_URI, null, "_id=? and (itemType=? or itemType=?)", new String[]{String.valueOf(j), String.valueOf(2)}, null);
        try {
            FolderInfo folderInfoFindOrMakeFolder = null;
            if (!cursorQuery.moveToFirst()) {
                return null;
            }
            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("itemType");
            int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("title");
            int columnIndexOrThrow3 = cursorQuery.getColumnIndexOrThrow("container");
            int columnIndexOrThrow4 = cursorQuery.getColumnIndexOrThrow("screen");
            int columnIndexOrThrow5 = cursorQuery.getColumnIndexOrThrow("cellX");
            int columnIndexOrThrow6 = cursorQuery.getColumnIndexOrThrow("cellY");
            if (cursorQuery.getInt(columnIndexOrThrow) == 2) {
                folderInfoFindOrMakeFolder = findOrMakeFolder(longArrayMap, j);
            }
            folderInfoFindOrMakeFolder.title = cursorQuery.getString(columnIndexOrThrow2);
            folderInfoFindOrMakeFolder.f510id = j;
            folderInfoFindOrMakeFolder.container = cursorQuery.getInt(columnIndexOrThrow3);
            folderInfoFindOrMakeFolder.screenId = cursorQuery.getInt(columnIndexOrThrow4);
            folderInfoFindOrMakeFolder.cellX = cursorQuery.getInt(columnIndexOrThrow5);
            folderInfoFindOrMakeFolder.cellY = cursorQuery.getInt(columnIndexOrThrow6);
            return folderInfoFindOrMakeFolder;
        } finally {
            cursorQuery.close();
        }
    }

    public static void addItemToDatabase(Context context, final ItemInfo itemInfo, long j, long j2, int i, int i2, final boolean z) {
        itemInfo.container = j;
        itemInfo.cellX = i;
        itemInfo.cellY = i2;
        if ((context instanceof Launcher) && j2 < 0 && j == -101) {
            itemInfo.screenId = ((Launcher) context).getHotseat().getOrderInHotseat(i, i2);
        } else {
            itemInfo.screenId = j2;
        }
        final ContentValues contentValues = new ContentValues();
        final ContentResolver contentResolver = context.getContentResolver();
        itemInfo.onAddToDatabase(context, contentValues);
        itemInfo.f510id = LauncherAppState.getLauncherProvider().generateNewItemId();
        contentValues.put("_id", Long.valueOf(itemInfo.f510id));
        final StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        runOnWorkerThread(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$KdukSS0TS_KnMtUpgZNzh9xXPqc
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel.lambda$addItemToDatabase$11(contentResolver, z, contentValues, itemInfo, stackTrace);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002f A[Catch: all -> 0x008b, FALL_THROUGH, TryCatch #0 {, blocks: (B:7:0x000d, B:11:0x0021, B:27:0x0089, B:13:0x0025, B:14:0x002f, B:16:0x0037, B:19:0x0040, B:21:0x004a, B:23:0x006b, B:25:0x006f, B:22:0x0066, B:26:0x0082), top: B:32:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:22:0x0066 A[Catch: all -> 0x008b, TryCatch #0 {, blocks: (B:7:0x000d, B:11:0x0021, B:27:0x0089, B:13:0x0025, B:14:0x002f, B:16:0x0037, B:19:0x0040, B:21:0x004a, B:23:0x006b, B:25:0x006f, B:22:0x0066, B:26:0x0082), top: B:32:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:25:0x006f A[Catch: all -> 0x008b, TryCatch #0 {, blocks: (B:7:0x000d, B:11:0x0021, B:27:0x0089, B:13:0x0025, B:14:0x002f, B:16:0x0037, B:19:0x0040, B:21:0x004a, B:23:0x006b, B:25:0x006f, B:22:0x0066, B:26:0x0082), top: B:32:0x000d }] */
    static /* synthetic */ void lambda$addItemToDatabase$11(ContentResolver contentResolver, boolean z, ContentValues contentValues, ItemInfo itemInfo, StackTraceElement[] stackTraceElementArr) {
        contentResolver.insert(z ? LauncherSettings.Favorites.CONTENT_URI : LauncherSettings.Favorites.CONTENT_URI_NO_NOTIFICATION, contentValues);
        synchronized (sBgLock) {
            checkItemInfoLocked(itemInfo.f510id, itemInfo, stackTraceElementArr);
            sBgItemsIdMap.put(itemInfo.f510id, itemInfo);
            int i = itemInfo.itemType;
            if (i == 4) {
                sBgAppWidgets.add((LauncherAppWidgetInfo) itemInfo);
            } else if (i != 6) {
                switch (i) {
                    case 2:
                        sBgFolders.put(itemInfo.f510id, (FolderInfo) itemInfo);
                    case 0:
                    case 1:
                        if (itemInfo.container != -100 || itemInfo.container == -101) {
                            sBgWorkspaceItems.add(itemInfo);
                        } else if (!sBgFolders.containsKey(itemInfo.container)) {
                            Log.e("Launcher.Model", "adding item: " + itemInfo + " to a folder that  doesn't exist");
                        }
                        if (itemInfo.itemType == 6) {
                            LauncherAppState.getInstance().getModel().incrementPinnedShortcutCount(ShortcutKey.fromShortcutInfo((ShortcutInfo) itemInfo), true);
                        }
                        break;
                }
            } else {
                if (itemInfo.container != -100) {
                    sBgWorkspaceItems.add(itemInfo);
                } else {
                    sBgWorkspaceItems.add(itemInfo);
                }
                if (itemInfo.itemType == 6) {
                    LauncherAppState.getInstance().getModel().incrementPinnedShortcutCount(ShortcutKey.fromShortcutInfo((ShortcutInfo) itemInfo), true);
                }
            }
        }
    }

    private static ArrayList<ItemInfo> getItemsByPackageName(final String str, final UserHandleCompat userHandleCompat) {
        return filterItemInfos(sBgItemsIdMap, new ItemInfoFilter() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$w5H_AReJ1VN8yTLThAuVegQQ6E8
            @Override // com.voxel.launcher3.LauncherModel.ItemInfoFilter
            public final boolean filterItem(ItemInfo itemInfo, ItemInfo itemInfo2, ComponentName componentName) {
                return LauncherModel.lambda$getItemsByPackageName$12(str, userHandleCompat, itemInfo, itemInfo2, componentName);
            }
        });
    }

    static /* synthetic */ boolean lambda$getItemsByPackageName$12(String str, UserHandleCompat userHandleCompat, ItemInfo itemInfo, ItemInfo itemInfo2, ComponentName componentName) {
        return componentName != null && componentName.getPackageName().equals(str) && itemInfo2.user.equals(userHandleCompat);
    }

    public static void deleteComponentNameFromDatabase(Context context, ComponentName componentName, UserHandleCompat userHandleCompat) {
        deleteItemsFromDatabase(context, getItemInfoForComponentName(componentName, userHandleCompat));
    }

    static void deletePackageFromDatabase(Context context, String str, UserHandleCompat userHandleCompat) {
        deleteItemsFromDatabase(context, getItemsByPackageName(str, userHandleCompat));
    }

    public static void deleteItemFromDatabase(Context context, ItemInfo itemInfo) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(itemInfo);
        deleteItemsFromDatabase(context, arrayList);
    }

    static void deleteItemsFromDatabase(Context context, final ArrayList<? extends ItemInfo> arrayList) {
        final ContentResolver contentResolver = context.getContentResolver();
        runOnWorkerThread(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$qcX-PYkl0ZeNMLUzlwcnLIf30A8
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel.lambda$deleteItemsFromDatabase$13(arrayList, contentResolver);
            }
        });
    }

    static /* synthetic */ void lambda$deleteItemsFromDatabase$13(ArrayList arrayList, ContentResolver contentResolver) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            contentResolver.delete(LauncherSettings.Favorites.getContentUri(itemInfo.f510id, false), null, null);
            synchronized (sBgLock) {
                int i = itemInfo.itemType;
                if (i != 4) {
                    if (i != 6) {
                        switch (i) {
                            case 2:
                                sBgFolders.remove(itemInfo.f510id);
                                for (ItemInfo itemInfo2 : sBgItemsIdMap) {
                                    if (itemInfo2.container == itemInfo.f510id) {
                                        Log.e("Launcher.Model", "deleting a folder (" + itemInfo + ") which still contains items (" + itemInfo2 + ")");
                                    }
                                }
                                sBgWorkspaceItems.remove(itemInfo);
                                break;
                        }
                    } else {
                        LauncherAppState.getInstance().getModel().decrementPinnedShortcutCount(ShortcutKey.fromShortcutInfo((ShortcutInfo) itemInfo));
                    }
                    sBgWorkspaceItems.remove(itemInfo);
                } else {
                    sBgAppWidgets.remove(itemInfo);
                }
                sBgItemsIdMap.remove(itemInfo.f510id);
                sBgDbIconCache.remove(itemInfo);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0015 A[Catch: all -> 0x001c, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000d, B:9:0x001a, B:8:0x0015), top: B:14:0x0003 }] */
    private void decrementPinnedShortcutCount(ShortcutKey shortcutKey) {
        synchronized (sBgLock) {
            MutableInt mutableInt = sBgPinnedShortcutCounts.get(shortcutKey);
            if (mutableInt != null) {
                int i = mutableInt.value - 1;
                mutableInt.value = i;
                if (i == 0) {
                    this.mDeepShortcutManager.unpinShortcut(shortcutKey);
                }
            } else {
                this.mDeepShortcutManager.unpinShortcut(shortcutKey);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void incrementPinnedShortcutCount(ShortcutKey shortcutKey, boolean z) {
        synchronized (sBgLock) {
            MutableInt mutableInt = sBgPinnedShortcutCounts.get(shortcutKey);
            boolean z2 = true;
            if (Utilities.ATLEAST_LOLLIPOP) {
                if (mutableInt == null) {
                    mutableInt = new MutableInt(1);
                    sBgPinnedShortcutCounts.put(shortcutKey, mutableInt);
                } else {
                    mutableInt.value++;
                }
                if (mutableInt.value != 1) {
                    z2 = false;
                }
            }
            if (z && z2) {
                this.mDeepShortcutManager.pinShortcut(shortcutKey);
            }
        }
    }

    void updateWorkspaceScreenOrder(Context context, ArrayList<Long> arrayList) {
        Launcher.addDumpLog("Launcher.Model", "11683562 - updateWorkspaceScreenOrder()", true);
        Launcher.addDumpLog("Launcher.Model", "11683562 -   screens: " + TextUtils.join(", ", arrayList), true);
        final ArrayList arrayList2 = new ArrayList(arrayList);
        final ContentResolver contentResolver = context.getContentResolver();
        final Uri uri = LauncherSettings.WorkspaceScreens.CONTENT_URI;
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            if (((Long) it.next()).longValue() < 0) {
                it.remove();
            }
        }
        runOnWorkerThread(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$gItJclrrpS6M7RrkoaUFdPkqvJk
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel.lambda$updateWorkspaceScreenOrder$14(uri, arrayList2, contentResolver);
            }
        });
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    static /* synthetic */ void lambda$updateWorkspaceScreenOrder$14(Uri uri, ArrayList arrayList, ContentResolver contentResolver) {
        ArrayList<ContentProviderOperation> arrayList2 = new ArrayList<>();
        arrayList2.add(ContentProviderOperation.newDelete(uri).build());
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_id", Long.valueOf(((Long) arrayList.get(i)).longValue()));
            contentValues.put("screenRank", Integer.valueOf(i));
            arrayList2.add(ContentProviderOperation.newInsert(uri).withValues(contentValues).build());
        }
        try {
            contentResolver.applyBatch("com.voxel.launcher3.settings", arrayList2);
            synchronized (sBgLock) {
                sBgWorkspaceScreens.clear();
                sBgWorkspaceScreens.addAll(arrayList);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void deleteFolderContentsFromDatabase(Context context, final FolderInfo folderInfo) {
        final ContentResolver contentResolver = context.getContentResolver();
        runOnWorkerThread(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$5BKACnPCPBMTnenp7Wb7wM6F-eQ
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel.lambda$deleteFolderContentsFromDatabase$15(contentResolver, folderInfo);
            }
        });
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    static /* synthetic */ void lambda$deleteFolderContentsFromDatabase$15(ContentResolver contentResolver, FolderInfo folderInfo) {
        contentResolver.delete(LauncherSettings.Favorites.getContentUri(folderInfo.f510id, false), null, null);
        synchronized (sBgLock) {
            sBgItemsIdMap.remove(folderInfo.f510id);
            sBgFolders.remove(folderInfo.f510id);
            sBgDbIconCache.remove(folderInfo);
            sBgWorkspaceItems.remove(folderInfo);
        }
        contentResolver.delete(LauncherSettings.Favorites.CONTENT_URI_NO_NOTIFICATION, "container=" + folderInfo.f510id, null);
        synchronized (sBgLock) {
            for (ShortcutInfo shortcutInfo : folderInfo.contents) {
                sBgItemsIdMap.remove(shortcutInfo.f510id);
                sBgDbIconCache.remove(shortcutInfo);
            }
        }
    }

    public void initialize(Callbacks callbacks) {
        synchronized (this.mLock) {
            unbindItemInfosAndClearQueuedBindRunnables();
            this.mCallbacks = new WeakReference<>(callbacks);
        }
    }

    @Override // com.voxel.launcher3.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackageChanged(String str, UserHandleCompat userHandleCompat) {
        enqueueTask(new PackageUpdatedTask(2, new String[]{str}, userHandleCompat));
    }

    @Override // com.voxel.launcher3.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackageRemoved(String str, UserHandleCompat userHandleCompat) {
        enqueueTask(new PackageUpdatedTask(3, new String[]{str}, userHandleCompat));
    }

    @Override // com.voxel.launcher3.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackageAdded(String str, UserHandleCompat userHandleCompat) {
        enqueueTask(new PackageUpdatedTask(1, new String[]{str}, userHandleCompat));
    }

    @Override // com.voxel.launcher3.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesAvailable(String[] strArr, UserHandleCompat userHandleCompat, boolean z) {
        enqueueTask(new PackageUpdatedTask(2, strArr, userHandleCompat));
    }

    @Override // com.voxel.launcher3.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onPackagesUnavailable(String[] strArr, UserHandleCompat userHandleCompat, boolean z) {
        if (z) {
            return;
        }
        enqueueTask(new PackageUpdatedTask(4, strArr, userHandleCompat));
    }

    @Override // com.voxel.launcher3.compat.LauncherAppsCompat.OnAppsChangedCallbackCompat
    public void onShortcutsChanged(String str, List<DeepShortcutInfoCompat> list, UserHandleCompat userHandleCompat) {
        enqueueTask(new DeepShortcutsChangedTask(str, userHandleCompat));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.intent.action.LOCALE_CHANGED".equals(action)) {
            forceReload();
            return;
        }
        if ("android.intent.action.CONFIGURATION_CHANGED".equals(action)) {
            Configuration configuration = context.getResources().getConfiguration();
            if (this.mPreviousConfigMcc != configuration.mcc) {
                Log.d("Launcher.Model", "Reload apps on config change. curr_mcc:" + configuration.mcc + " prevmcc:" + this.mPreviousConfigMcc);
                forceReload();
            }
            this.mPreviousConfigMcc = configuration.mcc;
        }
    }

    public void forceReload() {
        resetLoadedState(true, true);
        startLoaderFromBackground();
    }

    public void resetLoadedState(boolean z, boolean z2) {
        synchronized (this.mLock) {
            stopLoaderLocked();
            if (z) {
                this.mAllAppsLoaded = false;
            }
            if (z2) {
                this.mWorkspaceLoaded = false;
            }
        }
    }

    public void startLoaderFromBackground() {
        Callbacks callbacks;
        DebugUtil.addVoxelDebugSyncLog("DEBUG-HOME-DELAY", ">>> startLoaderFromBackground() invoked.");
        WeakReference<Callbacks> weakReference = this.mCallbacks;
        if ((weakReference == null || (callbacks = weakReference.get()) == null || callbacks.setLoadOnResume()) ? false : true) {
            DebugUtil.addVoxelDebugSyncLog("DEBUG-HOME-DELAY", ">>> startLoaderFromBackground() - running task now.");
            startLoader(false, -1001);
        }
    }

    private boolean stopLoaderLocked() {
        LoaderTask loaderTask = this.mLoaderTask;
        if (loaderTask == null) {
            return false;
        }
        boolean zIsLaunching = loaderTask.isLaunching();
        loaderTask.stopLocked();
        return zIsLaunching;
    }

    public boolean isCurrentCallbacks(Callbacks callbacks) {
        WeakReference<Callbacks> weakReference = this.mCallbacks;
        return weakReference != null && weakReference.get() == callbacks;
    }

    public void startLoader(boolean z, int i) {
        startLoader(z, i, 0);
    }

    public void startLoader(boolean z, int i, int i2) {
        synchronized (this.mLock) {
            synchronized (mDeferredBindRunnables) {
                mDeferredBindRunnables.clear();
            }
            if (this.mCallbacks != null && this.mCallbacks.get() != null) {
                this.mLoaderTask = new LoaderTask(this.mApp.getContext(), z || stopLoaderLocked(), i2);
                if (i != -1001 && this.mAllAppsLoaded && this.mWorkspaceLoaded) {
                    this.mLoaderTask.runBindSynchronousPage(i);
                } else {
                    sWorkerThread.setPriority(5);
                    sWorker.post(this.mLoaderTask);
                }
            }
        }
    }

    void bindRemainingSynchronousPages() {
        Runnable[] runnableArr;
        if (mDeferredBindRunnables.isEmpty()) {
            return;
        }
        synchronized (mDeferredBindRunnables) {
            runnableArr = (Runnable[]) mDeferredBindRunnables.toArray(new Runnable[mDeferredBindRunnables.size()]);
            mDeferredBindRunnables.clear();
        }
        for (Runnable runnable : runnableArr) {
            this.mHandler.post(runnable, 1);
        }
    }

    public void stopLoader() {
        synchronized (this.mLock) {
            if (this.mLoaderTask != null) {
                this.mLoaderTask.stopLocked();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static TreeMap<Integer, Long> loadWorkspaceScreensDb(Context context) {
        Cursor cursorQuery = context.getContentResolver().query(LauncherSettings.WorkspaceScreens.CONTENT_URI, null, null, null, null);
        TreeMap<Integer, Long> treeMap = new TreeMap<>();
        try {
            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_id");
            int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("screenRank");
            while (cursorQuery.moveToNext()) {
                try {
                    treeMap.put(Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow2)), Long.valueOf(cursorQuery.getLong(columnIndexOrThrow)));
                } catch (Exception e) {
                    Launcher.addDumpLog("Launcher.Model", "Desktop items loading interrupted - invalid screens: " + e, true);
                }
            }
            cursorQuery.close();
            Launcher.addDumpLog("Launcher.Model", "11683562 - loadWorkspaceScreensDb()", true);
            ArrayList arrayList = new ArrayList();
            for (Integer num : treeMap.keySet()) {
                arrayList.add("{ " + num + ": " + treeMap.get(num) + " }");
            }
            Launcher.addDumpLog("Launcher.Model", "11683562 -   screens: " + TextUtils.join(", ", arrayList), true);
            return treeMap;
        } catch (Throwable th) {
            cursorQuery.close();
            throw th;
        }
    }

    boolean isLoadingWorkspace() {
        synchronized (this.mLock) {
            if (this.mLoaderTask == null) {
                return false;
            }
            return this.mLoaderTask.isLoadingWorkspace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class LoaderTask implements Runnable {
        private Context mContext;
        private int mFlags;
        private boolean mIsLaunching;
        private boolean mIsLoadingAndBindingWorkspace;
        private HashMap<Object, CharSequence> mLabelCache = new HashMap<>();
        private boolean mLoadAndBindStepFinished;
        private boolean mStopped;

        LoaderTask(Context context, boolean z, int i) {
            this.mContext = context;
            this.mIsLaunching = z;
            this.mFlags = i;
        }

        boolean isLaunching() {
            return this.mIsLaunching;
        }

        boolean isLoadingWorkspace() {
            return this.mIsLoadingAndBindingWorkspace;
        }

        private boolean loadAndBindWorkspace() {
            boolean zLoadWorkspace;
            this.mIsLoadingAndBindingWorkspace = true;
            if (LauncherModel.this.mWorkspaceLoaded) {
                zLoadWorkspace = false;
            } else {
                zLoadWorkspace = loadWorkspace();
                synchronized (this) {
                    if (this.mStopped) {
                        return zLoadWorkspace;
                    }
                    LauncherModel.this.mWorkspaceLoaded = true;
                }
            }
            bindWorkspace(-1, zLoadWorkspace);
            return zLoadWorkspace;
        }

        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        private void waitForIdle() {
            synchronized (this) {
                LauncherModel.this.mHandler.postIdle(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$LoaderTask$-88xr5ejVBageGZ5vn0oaf1oHis
                    @Override // java.lang.Runnable
                    public final void run() {
                        LauncherModel.LoaderTask.lambda$waitForIdle$0(this.f$0);
                    }
                });
                while (!this.mStopped && !this.mLoadAndBindStepFinished && !LauncherModel.this.mFlushingWorkerThread) {
                    try {
                        wait(1000L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }

        public static /* synthetic */ void lambda$waitForIdle$0(LoaderTask loaderTask) {
            synchronized (loaderTask) {
                loaderTask.mLoadAndBindStepFinished = true;
                loaderTask.notify();
            }
        }

        void runBindSynchronousPage(int i) {
            if (i != -1001) {
                if (LauncherModel.this.mAllAppsLoaded && LauncherModel.this.mWorkspaceLoaded) {
                    synchronized (LauncherModel.this.mLock) {
                        if (LauncherModel.this.mIsLoaderTaskRunning) {
                            throw new RuntimeException("Error! Background loading is already running");
                        }
                    }
                    LauncherModel.this.mHandler.flush();
                    bindWorkspace(i, false);
                    onlyBindAllApps();
                    return;
                }
                throw new RuntimeException("Expecting AllApps and Workspace to be loaded");
            }
            throw new RuntimeException("Should not call runBindSynchronousPage() without valid page index");
        }

        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        @Override // java.lang.Runnable
        public void run() {
            synchronized (LauncherModel.this.mLock) {
                LauncherModel.this.mIsLoaderTaskRunning = true;
            }
            synchronized (LauncherModel.this.mLock) {
                Process.setThreadPriority(this.mIsLaunching ? 0 : 10);
            }
            loadAndBindWorkspace();
            if (!this.mStopped) {
                synchronized (LauncherModel.this.mLock) {
                    if (this.mIsLaunching) {
                        Process.setThreadPriority(10);
                    }
                }
                waitForIdle();
                loadAndBindAllApps();
                synchronized (LauncherModel.this.mLock) {
                    Process.setThreadPriority(0);
                }
            }
            synchronized (LauncherModel.sBgLock) {
                for (Object obj : LauncherModel.sBgDbIconCache.keySet()) {
                    LauncherModel.this.updateSavedIcon(this.mContext, (ShortcutInfo) obj, LauncherModel.sBgDbIconCache.get(obj));
                }
                LauncherModel.sBgDbIconCache.clear();
            }
            if (LauncherAppState.isDisableAllApps()) {
                verifyApplications();
            }
            this.mContext = null;
            synchronized (LauncherModel.this.mLock) {
                if (LauncherModel.this.mLoaderTask == this) {
                    LauncherModel.this.mLoaderTask = null;
                }
                LauncherModel.this.mIsLoaderTaskRunning = false;
                LauncherModel.this.mHasLoaderCompletedOnce = true;
            }
        }

        public void stopLocked() {
            synchronized (this) {
                this.mStopped = true;
                notify();
            }
        }

        Callbacks tryGetCallbacks(Callbacks callbacks) {
            synchronized (LauncherModel.this.mLock) {
                if (this.mStopped) {
                    return null;
                }
                if (LauncherModel.this.mCallbacks == null) {
                    return null;
                }
                Callbacks callbacks2 = (Callbacks) LauncherModel.this.mCallbacks.get();
                if (callbacks2 != callbacks) {
                    return null;
                }
                if (callbacks2 != null) {
                    return callbacks2;
                }
                Log.w("Launcher.Model", "no mCallbacks");
                return null;
            }
        }

        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        private void verifyApplications() {
            Context context = LauncherModel.this.mApp.getContext();
            ArrayList<ItemInfo> arrayList = new ArrayList<>();
            synchronized (LauncherModel.sBgLock) {
                for (AppInfo appInfo : LauncherModel.this.mBgAllAppsList.data) {
                    if (LauncherModel.getItemInfoForComponentName(appInfo.componentName, appInfo.user).isEmpty()) {
                        arrayList.add(appInfo);
                        Log.e("Launcher.Model", "Missing Application on load: " + appInfo);
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            LauncherModel.this.addAndBindAddedWorkspaceApps(context, arrayList);
        }

        private boolean checkItemPlacement(HashMap<Long, ItemInfo[][]> map, ItemInfo itemInfo, AtomicBoolean atomicBoolean) {
            DeviceProfile deviceProfile = LauncherAppState.getInstance().getDynamicGrid().getDeviceProfile();
            CellParams cellParamsForType = deviceProfile.getCellParamsForType(DeviceProfile.ParamType.WORKSPACE);
            int i = (int) cellParamsForType.numColumns;
            int i2 = (int) cellParamsForType.numRows;
            int i3 = (int) deviceProfile.getCellParamsForType(DeviceProfile.ParamType.HOTSEAT).numColumns;
            long j = itemInfo.screenId;
            if (itemInfo.container == -101) {
                if (LauncherModel.this.mCallbacks == null || ((Callbacks) LauncherModel.this.mCallbacks.get()).isAllAppsButtonRank((int) itemInfo.screenId)) {
                    atomicBoolean.set(true);
                    Log.e("Launcher.Model", "Error loading shortcut into hotseat " + itemInfo + " into position (" + itemInfo.screenId + ":" + itemInfo.cellX + "," + itemInfo.cellY + ") occupied by all apps");
                    return false;
                }
                ItemInfo[][] itemInfoArr = map.get(-101L);
                if (itemInfo.screenId >= i3) {
                    Log.e("Launcher.Model", "Error loading shortcut " + itemInfo + " into hotseat position " + itemInfo.screenId + ", position out of bounds: (0 to " + (i3 - 1) + ")");
                    return false;
                }
                if (itemInfoArr != null) {
                    if (itemInfoArr[(int) itemInfo.screenId][0] != null) {
                        Log.e("Launcher.Model", "Error loading shortcut into hotseat " + itemInfo + " into position (" + itemInfo.screenId + ":" + itemInfo.cellX + "," + itemInfo.cellY + ") occupied by " + map.get(-101)[(int) itemInfo.screenId][0]);
                        return false;
                    }
                    itemInfoArr[(int) itemInfo.screenId][0] = itemInfo;
                    return true;
                }
                ItemInfo[][] itemInfoArr2 = (ItemInfo[][]) Array.newInstance((Class<?>) ItemInfo.class, i3, 1);
                itemInfoArr2[(int) itemInfo.screenId][0] = itemInfo;
                map.put(-101L, itemInfoArr2);
                return true;
            }
            if (itemInfo.container != -100) {
                return true;
            }
            if (!map.containsKey(Long.valueOf(itemInfo.screenId))) {
                map.put(Long.valueOf(itemInfo.screenId), (ItemInfo[][]) Array.newInstance((Class<?>) ItemInfo.class, i + 1, i2 + 1));
            }
            ItemInfo[][] itemInfoArr3 = map.get(Long.valueOf(itemInfo.screenId));
            if ((itemInfo.container == -100 && itemInfo.cellX < 0) || itemInfo.cellY < 0 || itemInfo.cellX + itemInfo.spanX > i || itemInfo.cellY + itemInfo.spanY > i2) {
                Log.e("Launcher.Model", "Error loading shortcut " + itemInfo + " into cell (" + j + "-" + itemInfo.screenId + ":" + itemInfo.cellX + "," + itemInfo.cellY + ") out of screen bounds ( " + i + "x" + i2 + ")");
                return false;
            }
            for (int i4 = itemInfo.cellX; i4 < itemInfo.cellX + itemInfo.spanX; i4++) {
                for (int i5 = itemInfo.cellY; i5 < itemInfo.cellY + itemInfo.spanY; i5++) {
                    if (itemInfoArr3[i4][i5] != null) {
                        Log.e("Launcher.Model", "Error loading shortcut " + itemInfo + " into cell (" + j + "-" + itemInfo.screenId + ":" + i4 + "," + i5 + ") occupied by " + itemInfoArr3[i4][i5]);
                        return false;
                    }
                }
            }
            for (int i6 = itemInfo.cellX; i6 < itemInfo.cellX + itemInfo.spanX; i6++) {
                for (int i7 = itemInfo.cellY; i7 < itemInfo.cellY + itemInfo.spanY; i7++) {
                    itemInfoArr3[i6][i7] = itemInfo;
                }
            }
            return true;
        }

        private void clearSBgDataStructures() {
            synchronized (LauncherModel.sBgLock) {
                LauncherModel.sBgWorkspaceItems.clear();
                LauncherModel.sBgAppWidgets.clear();
                LauncherModel.sBgFolders.clear();
                LauncherModel.sBgItemsIdMap.clear();
                LauncherModel.sBgDbIconCache.clear();
                LauncherModel.sBgWorkspaceScreens.clear();
                LauncherModel.sBgPinnedShortcutCounts.clear();
            }
        }

        /*  JADX ERROR: Type inference failed
            jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 58461. Try increasing type updates limit count.
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
            */
        private boolean loadWorkspace() {
            /*
                Method dump skipped, instruction units count: 5846
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.voxel.launcher3.LauncherModel.LoaderTask.loadWorkspace():boolean");
        }

        private void filterCurrentWorkspaceItems(long j, ArrayList<ItemInfo> arrayList, ArrayList<ItemInfo> arrayList2, ArrayList<ItemInfo> arrayList3) {
            Iterator<ItemInfo> it = arrayList.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    it.remove();
                }
            }
            HashSet hashSet = new HashSet();
            Collections.sort(arrayList, new Comparator() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$LoaderTask$vOuXeeiTPZ1OS1hTdT7xObBkpI8
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return LauncherModel.LoaderTask.lambda$filterCurrentWorkspaceItems$1((ItemInfo) obj, (ItemInfo) obj2);
                }
            });
            for (ItemInfo itemInfo : arrayList) {
                if (itemInfo.container == -100) {
                    if (itemInfo.screenId == j) {
                        arrayList2.add(itemInfo);
                        hashSet.add(Long.valueOf(itemInfo.f510id));
                    } else {
                        arrayList3.add(itemInfo);
                    }
                } else if (itemInfo.container == -101) {
                    arrayList2.add(itemInfo);
                    hashSet.add(Long.valueOf(itemInfo.f510id));
                } else if (hashSet.contains(Long.valueOf(itemInfo.container))) {
                    arrayList2.add(itemInfo);
                    hashSet.add(Long.valueOf(itemInfo.f510id));
                } else {
                    arrayList3.add(itemInfo);
                }
            }
        }

        static /* synthetic */ int lambda$filterCurrentWorkspaceItems$1(ItemInfo itemInfo, ItemInfo itemInfo2) {
            return (int) (itemInfo.container - itemInfo2.container);
        }

        private void filterCurrentAppWidgets(long j, ArrayList<LauncherAppWidgetInfo> arrayList, ArrayList<LauncherAppWidgetInfo> arrayList2, ArrayList<LauncherAppWidgetInfo> arrayList3) {
            for (LauncherAppWidgetInfo launcherAppWidgetInfo : arrayList) {
                if (launcherAppWidgetInfo != null) {
                    if (launcherAppWidgetInfo.container == -100 && launcherAppWidgetInfo.screenId == j) {
                        arrayList2.add(launcherAppWidgetInfo);
                    } else {
                        arrayList3.add(launcherAppWidgetInfo);
                    }
                }
            }
        }

        private void filterCurrentFolders(long j, LongArrayMap<ItemInfo> longArrayMap, LongArrayMap<FolderInfo> longArrayMap2, LongArrayMap<FolderInfo> longArrayMap3, LongArrayMap<FolderInfo> longArrayMap4) {
            int size = longArrayMap2.size();
            for (int i = 0; i < size; i++) {
                long jKeyAt = longArrayMap2.keyAt(i);
                FolderInfo folderInfoValueAt = longArrayMap2.valueAt(i);
                ItemInfo itemInfo = longArrayMap.get(jKeyAt);
                if (itemInfo != null && folderInfoValueAt != null) {
                    if (itemInfo.container == -100 && itemInfo.screenId == j) {
                        longArrayMap3.put(jKeyAt, folderInfoValueAt);
                    } else {
                        longArrayMap4.put(jKeyAt, folderInfoValueAt);
                    }
                }
            }
        }

        private void sortWorkspaceItemsSpatially(ArrayList<ItemInfo> arrayList) {
            CellParams cellParamsForType = LauncherAppState.getInstance().getDynamicGrid().getDeviceProfile().getCellParamsForType(DeviceProfile.ParamType.WORKSPACE);
            final int i = (int) cellParamsForType.numColumns;
            final int i2 = (int) cellParamsForType.numRows;
            Collections.sort(arrayList, new Comparator() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$LoaderTask$UY4bVYzdT6Zvn-JoAzSR8TCm2cY
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return LauncherModel.LoaderTask.lambda$sortWorkspaceItemsSpatially$2(i, i2, (ItemInfo) obj, (ItemInfo) obj2);
                }
            });
        }

        static /* synthetic */ int lambda$sortWorkspaceItemsSpatially$2(int i, int i2, ItemInfo itemInfo, ItemInfo itemInfo2) {
            int i3 = i2 * i;
            long j = i3 * 6;
            long j2 = i3;
            return (int) (((((itemInfo.container * j) + (itemInfo.screenId * j2)) + ((long) (itemInfo.cellY * i))) + ((long) itemInfo.cellX)) - ((((itemInfo2.container * j) + (itemInfo2.screenId * j2)) + ((long) (itemInfo2.cellY * i))) + ((long) itemInfo2.cellX)));
        }

        private void bindWorkspaceScreens(final Callbacks callbacks, final ArrayList<Long> arrayList) {
            LauncherModel.this.runOnMainThread(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$LoaderTask$oZ-NpVeXh8xRtxhmmRJnoEJZAHM
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherModel.LoaderTask.lambda$bindWorkspaceScreens$3(this.f$0, callbacks, arrayList);
                }
            }, 1);
        }

        public static /* synthetic */ void lambda$bindWorkspaceScreens$3(LoaderTask loaderTask, Callbacks callbacks, ArrayList arrayList) {
            Callbacks callbacksTryGetCallbacks = loaderTask.tryGetCallbacks(callbacks);
            if (callbacksTryGetCallbacks != null) {
                callbacksTryGetCallbacks.bindScreens(arrayList);
            }
        }

        private void bindWorkspaceItems(final Callbacks callbacks, final ArrayList<ItemInfo> arrayList, ArrayList<LauncherAppWidgetInfo> arrayList2, final LongArrayMap<FolderInfo> longArrayMap, ArrayList<Runnable> arrayList3) {
            boolean z = arrayList3 != null;
            int size = arrayList.size();
            final int i = 0;
            while (i < size) {
                int i2 = i + 6;
                final int i3 = i2 <= size ? 6 : size - i;
                Runnable runnable = new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$LoaderTask$eZUM34QssUZ_cjzojkvvUhQuc_Q
                    @Override // java.lang.Runnable
                    public final void run() {
                        LauncherModel.LoaderTask.lambda$bindWorkspaceItems$4(this.f$0, callbacks, arrayList, i, i3);
                    }
                };
                if (!z) {
                    LauncherModel.this.runOnMainThread(runnable, 1);
                } else {
                    synchronized (arrayList3) {
                        arrayList3.add(runnable);
                    }
                }
                i = i2;
            }
            if (!longArrayMap.isEmpty()) {
                Runnable runnable2 = new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$LoaderTask$TrzN1wt1_W1koHsj9RxmsZyaocI
                    @Override // java.lang.Runnable
                    public final void run() {
                        LauncherModel.LoaderTask.lambda$bindWorkspaceItems$5(this.f$0, callbacks, longArrayMap);
                    }
                };
                if (!z) {
                    LauncherModel.this.runOnMainThread(runnable2, 1);
                } else {
                    synchronized (arrayList3) {
                        arrayList3.add(runnable2);
                    }
                }
            }
            int size2 = arrayList2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                final LauncherAppWidgetInfo launcherAppWidgetInfo = arrayList2.get(i4);
                Runnable runnable3 = new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$LoaderTask$MH0VhMJwmhZ9AhZ9aL1Tn5xh5WU
                    @Override // java.lang.Runnable
                    public final void run() {
                        LauncherModel.LoaderTask.lambda$bindWorkspaceItems$6(this.f$0, callbacks, launcherAppWidgetInfo);
                    }
                };
                if (!z) {
                    LauncherModel.this.runOnMainThread(runnable3, 1);
                } else {
                    arrayList3.add(runnable3);
                }
            }
        }

        public static /* synthetic */ void lambda$bindWorkspaceItems$4(LoaderTask loaderTask, Callbacks callbacks, ArrayList arrayList, int i, int i2) {
            Callbacks callbacksTryGetCallbacks = loaderTask.tryGetCallbacks(callbacks);
            if (callbacksTryGetCallbacks != null) {
                callbacksTryGetCallbacks.bindItems(arrayList, i, i + i2, (loaderTask.mFlags & 4) != 0, (loaderTask.mFlags & 8) != 0);
            }
        }

        public static /* synthetic */ void lambda$bindWorkspaceItems$5(LoaderTask loaderTask, Callbacks callbacks, LongArrayMap longArrayMap) {
            Callbacks callbacksTryGetCallbacks = loaderTask.tryGetCallbacks(callbacks);
            if (callbacksTryGetCallbacks != null) {
                callbacksTryGetCallbacks.bindFolders(longArrayMap);
            }
        }

        public static /* synthetic */ void lambda$bindWorkspaceItems$6(LoaderTask loaderTask, Callbacks callbacks, LauncherAppWidgetInfo launcherAppWidgetInfo) {
            Callbacks callbacksTryGetCallbacks = loaderTask.tryGetCallbacks(callbacks);
            if (callbacksTryGetCallbacks != null) {
                callbacksTryGetCallbacks.bindAppWidget(launcherAppWidgetInfo);
            }
        }

        private void bindWorkspace(int i, final boolean z) {
            LongArrayMap<FolderInfo> longArrayMapClone;
            LongArrayMap<ItemInfo> longArrayMapClone2;
            final long jUptimeMillis = SystemClock.uptimeMillis();
            final Callbacks callbacks = (Callbacks) LauncherModel.this.mCallbacks.get();
            if (callbacks == null) {
                Log.w("Launcher.Model", "LoaderTask running with no launcher");
                return;
            }
            ArrayList<ItemInfo> arrayList = new ArrayList<>();
            ArrayList<LauncherAppWidgetInfo> arrayList2 = new ArrayList<>();
            new LongArrayMap();
            new LongArrayMap();
            ArrayList<Long> arrayList3 = new ArrayList<>();
            synchronized (LauncherModel.sBgLock) {
                arrayList.addAll(LauncherModel.sBgWorkspaceItems);
                arrayList2.addAll(LauncherModel.sBgAppWidgets);
                longArrayMapClone = LauncherModel.sBgFolders.clone();
                longArrayMapClone2 = LauncherModel.sBgItemsIdMap.clone();
                arrayList3.addAll(LauncherModel.sBgWorkspaceScreens);
            }
            int currentWorkspaceScreen = i;
            boolean z2 = currentWorkspaceScreen != -1001;
            if (!z2) {
                currentWorkspaceScreen = callbacks.getCurrentWorkspaceScreen();
            }
            int i2 = currentWorkspaceScreen >= arrayList3.size() ? -1001 : currentWorkspaceScreen;
            long jLongValue = i2 < 0 ? -1L : arrayList3.get(i2).longValue();
            LauncherModel.this.unbindWorkspaceItemsOnMainThread();
            ArrayList<ItemInfo> arrayList4 = new ArrayList<>();
            ArrayList<ItemInfo> arrayList5 = new ArrayList<>();
            ArrayList<LauncherAppWidgetInfo> arrayList6 = new ArrayList<>();
            ArrayList<LauncherAppWidgetInfo> arrayList7 = new ArrayList<>();
            LongArrayMap<FolderInfo> longArrayMap = new LongArrayMap<>();
            LongArrayMap<FolderInfo> longArrayMap2 = new LongArrayMap<>();
            long j = jLongValue;
            final int i3 = i2;
            filterCurrentWorkspaceItems(j, arrayList, arrayList4, arrayList5);
            filterCurrentAppWidgets(j, arrayList2, arrayList6, arrayList7);
            filterCurrentFolders(j, longArrayMapClone2, longArrayMapClone, longArrayMap, longArrayMap2);
            sortWorkspaceItemsSpatially(arrayList4);
            sortWorkspaceItemsSpatially(arrayList5);
            LauncherModel.this.runOnMainThread(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$LoaderTask$5UXiYgXVqDUUWTS2dbfhmAxuiCQ
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherModel.LoaderTask.lambda$bindWorkspace$7(this.f$0, callbacks);
                }
            }, 1);
            bindWorkspaceScreens(callbacks, arrayList3);
            bindWorkspaceItems(callbacks, arrayList4, arrayList6, longArrayMap, null);
            if (z2) {
                LauncherModel.this.runOnMainThread(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$LoaderTask$CrnhQQptRdaODCLHsDNT_UolRFE
                    @Override // java.lang.Runnable
                    public final void run() {
                        LauncherModel.LoaderTask.lambda$bindWorkspace$8(this.f$0, callbacks, i3);
                    }
                }, 1);
            }
            synchronized (LauncherModel.mDeferredBindRunnables) {
                LauncherModel.mDeferredBindRunnables.clear();
            }
            bindWorkspaceItems(callbacks, arrayList5, arrayList7, longArrayMap2, z2 ? LauncherModel.mDeferredBindRunnables : null);
            Runnable runnable = new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$LoaderTask$5XWH22eo08cz_5KIo-PRaQYOE3w
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherModel.LoaderTask.lambda$bindWorkspace$9(this.f$0, callbacks, z, jUptimeMillis);
                }
            };
            if (!z2) {
                LauncherModel.this.runOnMainThread(runnable, 1);
            } else {
                synchronized (LauncherModel.mDeferredBindRunnables) {
                    LauncherModel.mDeferredBindRunnables.add(runnable);
                }
            }
        }

        public static /* synthetic */ void lambda$bindWorkspace$7(LoaderTask loaderTask, Callbacks callbacks) {
            Callbacks callbacksTryGetCallbacks = loaderTask.tryGetCallbacks(callbacks);
            if (callbacksTryGetCallbacks != null) {
                callbacksTryGetCallbacks.startBinding();
            }
        }

        public static /* synthetic */ void lambda$bindWorkspace$8(LoaderTask loaderTask, Callbacks callbacks, int i) {
            Callbacks callbacksTryGetCallbacks = loaderTask.tryGetCallbacks(callbacks);
            if (callbacksTryGetCallbacks == null || i == -1001) {
                return;
            }
            callbacksTryGetCallbacks.onPageBoundSynchronously(i);
        }

        public static /* synthetic */ void lambda$bindWorkspace$9(LoaderTask loaderTask, Callbacks callbacks, boolean z, long j) {
            Callbacks callbacksTryGetCallbacks = loaderTask.tryGetCallbacks(callbacks);
            if (callbacksTryGetCallbacks != null) {
                callbacksTryGetCallbacks.finishBindingItems(z);
            }
            loaderTask.mIsLoadingAndBindingWorkspace = false;
        }

        private void loadAndBindAllApps() {
            if (!LauncherModel.this.mAllAppsLoaded) {
                synchronized (this) {
                    if (this.mStopped) {
                        return;
                    }
                    LauncherModel.this.mAllAppsLoaded = true;
                    return;
                }
            }
            onlyBindAllApps();
        }

        private void onlyBindAllApps() {
            final Callbacks callbacks = (Callbacks) LauncherModel.this.mCallbacks.get();
            if (callbacks == null) {
                Log.w("Launcher.Model", "LoaderTask running with no launcher (onlyBindAllApps)");
                return;
            }
            final ArrayList arrayList = (ArrayList) LauncherModel.this.mBgAllAppsList.data.clone();
            Runnable runnable = new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$LoaderTask$V3K7zXaF9Pm11aKd9UAyOGy_T6w
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherModel.LoaderTask.lambda$onlyBindAllApps$10(this.f$0, callbacks, arrayList);
                }
            };
            if (!(LauncherModel.sWorkerThread.getThreadId() != Process.myTid())) {
                LauncherModel.this.mHandler.post(runnable);
            } else {
                runnable.run();
            }
        }

        public static /* synthetic */ void lambda$onlyBindAllApps$10(LoaderTask loaderTask, Callbacks callbacks, ArrayList arrayList) {
            SystemClock.uptimeMillis();
            Callbacks callbacksTryGetCallbacks = loaderTask.tryGetCallbacks(callbacks);
            if (callbacksTryGetCallbacks != null) {
                callbacksTryGetCallbacks.bindAllApplications(arrayList);
            }
        }

        public void dumpState() {
            synchronized (LauncherModel.sBgLock) {
                Log.d("Launcher.Model", "mLoaderTask.mContext=" + this.mContext);
                Log.d("Launcher.Model", "mLoaderTask.mIsLaunching=" + this.mIsLaunching);
                Log.d("Launcher.Model", "mLoaderTask.mStopped=" + this.mStopped);
                Log.d("Launcher.Model", "mLoaderTask.mLoadAndBindStepFinished=" + this.mLoadAndBindStepFinished);
                Log.d("Launcher.Model", "mItems size=" + LauncherModel.sBgWorkspaceItems.size());
            }
        }
    }

    private void bindUpdatedShortcuts(ArrayList<ShortcutInfo> arrayList, UserHandleCompat userHandleCompat) {
        bindUpdatedShortcuts(arrayList, new ArrayList<>(), userHandleCompat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindUpdatedShortcuts(final ArrayList<ShortcutInfo> arrayList, final ArrayList<ShortcutInfo> arrayList2, final UserHandleCompat userHandleCompat) {
        if (arrayList.isEmpty() && arrayList2.isEmpty()) {
            return;
        }
        final Callbacks callback = getCallback();
        this.mHandler.post(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$_tU7pQPnHBmunLo8DuVFQEjbRww
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel.lambda$bindUpdatedShortcuts$16(this.f$0, callback, arrayList, arrayList2, userHandleCompat);
            }
        });
    }

    public static /* synthetic */ void lambda$bindUpdatedShortcuts$16(LauncherModel launcherModel, Callbacks callbacks, ArrayList arrayList, ArrayList arrayList2, UserHandleCompat userHandleCompat) {
        Callbacks callback = launcherModel.getCallback();
        if (callback == null || callbacks != callback) {
            return;
        }
        callback.bindShortcutsChanged(arrayList, arrayList2, userHandleCompat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enqueueTask(Runnable runnable) {
        sWorker.post(runnable);
    }

    private class AppsAvailabilityCheck extends BroadcastReceiver {
        private AppsAvailabilityCheck() {
        }

        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (LauncherModel.sBgLock) {
                LauncherAppsCompat launcherAppsCompat = LauncherAppsCompat.getInstance(LauncherModel.this.mApp.getContext());
                PackageManager packageManager = context.getPackageManager();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (Map.Entry<UserHandleCompat, HashSet<String>> entry : LauncherModel.sPendingPackages.entrySet()) {
                    UserHandleCompat key = entry.getKey();
                    arrayList.clear();
                    arrayList2.clear();
                    for (String str : entry.getValue()) {
                        if (!launcherAppsCompat.isPackageEnabledForProfile(str, key)) {
                            if (PackageManagerHelper.isAppOnSdcard(packageManager, str)) {
                                arrayList2.add(str);
                            } else {
                                Launcher.addDumpLog("Launcher.Model", "Package not found: " + str, true);
                                arrayList.add(str);
                            }
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        LauncherModel.this.enqueueTask(LauncherModel.this.new PackageUpdatedTask(3, (String[]) arrayList.toArray(new String[arrayList.size()]), key));
                    }
                    if (!arrayList2.isEmpty()) {
                        LauncherModel.this.enqueueTask(LauncherModel.this.new PackageUpdatedTask(4, (String[]) arrayList2.toArray(new String[arrayList2.size()]), key));
                    }
                }
                LauncherModel.sPendingPackages.clear();
            }
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static List<ItemInfo> getHotseatItems() {
        ArrayList arrayList = new ArrayList();
        synchronized (sBgLock) {
            for (ItemInfo itemInfo : sBgWorkspaceItems) {
                if (itemInfo.container == -101) {
                    arrayList.add(itemInfo);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static List<ItemInfo> getItemsForScreenPosition(int i) {
        long screenIdAtPosition = getScreenIdAtPosition(i);
        if (screenIdAtPosition == -1) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        synchronized (sBgLock) {
            for (ItemInfo itemInfo : sBgWorkspaceItems) {
                if (itemInfo.container == -100 && itemInfo.screenId == screenIdAtPosition) {
                    arrayList.add(itemInfo);
                }
            }
        }
        return arrayList;
    }

    public static int getScreenPosition(long j) {
        ArrayList<Long> arrayList = sBgWorkspaceScreens;
        if (arrayList == null) {
            return -1;
        }
        return arrayList.indexOf(Long.valueOf(j));
    }

    public static long getScreenIdAtPosition(int i) {
        ArrayList<Long> arrayList = sBgWorkspaceScreens;
        if (arrayList == null || i < 0 || i >= arrayList.size()) {
            return -1L;
        }
        return sBgWorkspaceScreens.get(i).longValue();
    }

    public void recheckRestoredItems(final Context context) {
        sWorker.post(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$2Yr80foAunWUFxKjtrhYaqpzDZg
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel.lambda$recheckRestoredItems$18(this.f$0, context);
            }
        });
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static /* synthetic */ void lambda$recheckRestoredItems$18(final LauncherModel launcherModel, Context context) {
        LauncherAppsCompat launcherAppsCompat = LauncherAppsCompat.getInstance(context);
        HashSet hashSet = new HashSet();
        UserHandleCompat userHandleCompatMyUserHandle = UserHandleCompat.myUserHandle();
        synchronized (sBgLock) {
            for (ItemInfo itemInfo : sBgItemsIdMap) {
                if (itemInfo instanceof ShortcutInfo) {
                    ShortcutInfo shortcutInfo = (ShortcutInfo) itemInfo;
                    if (shortcutInfo.isPromise() && shortcutInfo.getTargetComponent() != null && launcherAppsCompat.isPackageEnabledForProfile(shortcutInfo.getTargetComponent().getPackageName(), userHandleCompatMyUserHandle)) {
                        hashSet.add(shortcutInfo.getTargetComponent().getPackageName());
                    }
                } else if (itemInfo instanceof LauncherAppWidgetInfo) {
                    LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
                    if (launcherAppWidgetInfo.hasRestoreFlag(2) && launcherAppsCompat.isPackageEnabledForProfile(launcherAppWidgetInfo.providerName.getPackageName(), userHandleCompatMyUserHandle)) {
                        hashSet.add(launcherAppWidgetInfo.providerName.getPackageName());
                    }
                }
            }
        }
        if (hashSet.isEmpty()) {
            return;
        }
        final ArrayList arrayList = new ArrayList();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Iterator<LauncherActivityInfoCompat> it2 = launcherAppsCompat.getActivityList((String) it.next(), userHandleCompatMyUserHandle).iterator();
            while (it2.hasNext()) {
                arrayList.add(new AppInfo(context, it2.next(), userHandleCompatMyUserHandle, launcherModel.mIconCache, null));
            }
        }
        WeakReference<Callbacks> weakReference = launcherModel.mCallbacks;
        final Callbacks callbacks = weakReference != null ? weakReference.get() : null;
        if (arrayList.isEmpty()) {
            return;
        }
        launcherModel.mHandler.post(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$TLLNQzLj3jmLLioPWOzZoSSszQw
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel.lambda$null$17(this.f$0, callbacks, arrayList);
            }
        });
    }

    public static /* synthetic */ void lambda$null$17(LauncherModel launcherModel, Callbacks callbacks, ArrayList arrayList) {
        WeakReference<Callbacks> weakReference = launcherModel.mCallbacks;
        Callbacks callbacks2 = weakReference != null ? weakReference.get() : null;
        if (callbacks != callbacks2 || callbacks2 == null) {
            return;
        }
        callbacks.bindAppsRestored(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class PackageUpdatedTask implements Runnable {
        int mOp;
        String[] mPackages;
        UserHandleCompat mUser;

        public PackageUpdatedTask(int i, String[] strArr, UserHandleCompat userHandleCompat) {
            this.mOp = i;
            this.mPackages = strArr;
            this.mUser = userHandleCompat;
        }

        /* JADX WARN: Code duplicated, block: B:109:0x029c A[Catch: all -> 0x0451, TryCatch #0 {, blocks: (B:73:0x01d8, B:74:0x01de, B:76:0x01e4, B:78:0x01f0, B:80:0x01fa, B:82:0x0200, B:84:0x020a, B:86:0x0218, B:88:0x0221, B:90:0x0227, B:92:0x0233, B:94:0x023f, B:96:0x0248, B:98:0x0269, B:100:0x0273, B:104:0x0284, B:109:0x029c, B:110:0x02a0, B:113:0x02bf, B:115:0x02cd, B:117:0x02d1, B:119:0x02ea, B:129:0x030f, B:127:0x030a, B:105:0x0289, B:130:0x0313, B:132:0x031c, B:134:0x0321, B:136:0x032d, B:138:0x0334, B:140:0x0340, B:144:0x035e), top: B:191:0x01d8 }] */
        /* JADX WARN: Code duplicated, block: B:127:0x030a A[Catch: all -> 0x0451, TryCatch #0 {, blocks: (B:73:0x01d8, B:74:0x01de, B:76:0x01e4, B:78:0x01f0, B:80:0x01fa, B:82:0x0200, B:84:0x020a, B:86:0x0218, B:88:0x0221, B:90:0x0227, B:92:0x0233, B:94:0x023f, B:96:0x0248, B:98:0x0269, B:100:0x0273, B:104:0x0284, B:109:0x029c, B:110:0x02a0, B:113:0x02bf, B:115:0x02cd, B:117:0x02d1, B:119:0x02ea, B:129:0x030f, B:127:0x030a, B:105:0x0289, B:130:0x0313, B:132:0x031c, B:134:0x0321, B:136:0x032d, B:138:0x0334, B:140:0x0340, B:144:0x035e), top: B:191:0x01d8 }] */
        /* JADX WARN: Code duplicated, block: B:129:0x030f A[Catch: all -> 0x0451, TryCatch #0 {, blocks: (B:73:0x01d8, B:74:0x01de, B:76:0x01e4, B:78:0x01f0, B:80:0x01fa, B:82:0x0200, B:84:0x020a, B:86:0x0218, B:88:0x0221, B:90:0x0227, B:92:0x0233, B:94:0x023f, B:96:0x0248, B:98:0x0269, B:100:0x0273, B:104:0x0284, B:109:0x029c, B:110:0x02a0, B:113:0x02bf, B:115:0x02cd, B:117:0x02d1, B:119:0x02ea, B:129:0x030f, B:127:0x030a, B:105:0x0289, B:130:0x0313, B:132:0x031c, B:134:0x0321, B:136:0x032d, B:138:0x0334, B:140:0x0340, B:144:0x035e), top: B:191:0x01d8 }] */
        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        @Override // java.lang.Runnable
        public void run() {
            ArrayList<AppInfo> arrayList;
            final ArrayList<AppInfo> arrayList2;
            Callbacks callbacks;
            Callbacks callbacks2;
            Iterator<ItemInfo> it;
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            Bitmap bitmapCreateIconBitmap;
            final Callbacks callbacks3;
            if (LauncherModel.this.mHasLoaderCompletedOnce) {
                Context context = LauncherModel.this.mApp.getContext();
                String[] strArr = this.mPackages;
                int length = strArr.length;
                FlagOp flagOpRemoveFlag = FlagOp.NO_OP;
                StringFilter stringFilterM536of = StringFilter.m536of(new HashSet(Arrays.asList(strArr)));
                switch (this.mOp) {
                    case 1:
                        for (String str : strArr) {
                            LauncherModel.this.mIconCache.updateIconsForPkg(str, this.mUser);
                            LauncherModel.this.mBgAllAppsList.addPackage(context, str, this.mUser);
                        }
                        break;
                    case 2:
                        for (String str2 : strArr) {
                            LauncherModel.this.mIconCache.updateIconsForPkg(str2, this.mUser);
                            LauncherModel.this.mBgAllAppsList.updatePackage(context, str2, this.mUser);
                        }
                        flagOpRemoveFlag = FlagOp.removeFlag(2);
                        break;
                    case 3:
                        for (String str3 : strArr) {
                            LauncherModel.this.mIconCache.remove(str3, this.mUser);
                        }
                    case 4:
                        for (String str4 : strArr) {
                            LauncherModel.this.mBgAllAppsList.removePackage(str4, this.mUser);
                        }
                        flagOpRemoveFlag = FlagOp.addFlag(2);
                        break;
                }
                ArrayList arrayList3 = new ArrayList();
                if (LauncherModel.this.mBgAllAppsList.added.size() > 0) {
                    arrayList = new ArrayList<>(LauncherModel.this.mBgAllAppsList.added);
                    LauncherModel.this.mBgAllAppsList.added.clear();
                } else {
                    arrayList = null;
                }
                if (LauncherModel.this.mBgAllAppsList.modified.size() > 0) {
                    arrayList2 = new ArrayList(LauncherModel.this.mBgAllAppsList.modified);
                    LauncherModel.this.mBgAllAppsList.modified.clear();
                } else {
                    arrayList2 = null;
                }
                if (LauncherModel.this.mBgAllAppsList.removed.size() > 0) {
                    arrayList3.addAll(LauncherModel.this.mBgAllAppsList.removed);
                    LauncherModel.this.mBgAllAppsList.removed.clear();
                }
                final Callbacks callbacks4 = LauncherModel.this.mCallbacks != null ? (Callbacks) LauncherModel.this.mCallbacks.get() : null;
                if (callbacks4 == null) {
                    Log.w("Launcher.Model", "Nobody to tell about the new app.  Launcher is probably loading.");
                    return;
                }
                HashMap map = new HashMap();
                if (arrayList != null) {
                    if (LauncherAppState.isDisableAllApps()) {
                        LauncherModel.this.addAndBindAddedWorkspaceApps(context, new ArrayList<>(arrayList));
                    } else {
                        LauncherModel.this.addAppsToAllApps(context, arrayList);
                    }
                    for (AppInfo appInfo : arrayList) {
                        map.put(appInfo.componentName, appInfo);
                    }
                }
                if (arrayList2 != null) {
                    for (AppInfo appInfo2 : arrayList2) {
                        map.put(appInfo2.componentName, appInfo2);
                    }
                    for (AppInfo appInfo3 : arrayList2) {
                        for (ItemInfo itemInfo : LauncherModel.getItemInfoForComponentName(appInfo3.componentName, this.mUser)) {
                            if (LauncherModel.isShortcutInfoUpdateable(itemInfo)) {
                                ShortcutInfo shortcutInfo = (ShortcutInfo) itemInfo;
                                shortcutInfo.title = appInfo3.title.toString();
                                shortcutInfo.contentDescription = appInfo3.contentDescription;
                                LauncherModel.updateItemInDatabase(context, shortcutInfo);
                            }
                        }
                    }
                    LauncherModel.this.mHandler.post(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$PackageUpdatedTask$egGdxlkzGOh62O-gvjU0hwyRsio
                        @Override // java.lang.Runnable
                        public final void run() {
                            LauncherModel.PackageUpdatedTask.lambda$run$0(this.f$0, callbacks4, arrayList2);
                        }
                    });
                }
                if (this.mOp == 1 || flagOpRemoveFlag != FlagOp.NO_OP) {
                    final ArrayList arrayList4 = new ArrayList();
                    final ArrayList arrayList5 = new ArrayList();
                    final ArrayList arrayList6 = new ArrayList();
                    synchronized (LauncherModel.sBgLock) {
                        Iterator<ItemInfo> it2 = LauncherModel.sBgItemsIdMap.iterator();
                        while (it2.hasNext()) {
                            ItemInfo next = it2.next();
                            if ((next instanceof ShortcutInfo) && this.mUser.equals(next.user)) {
                                ShortcutInfo shortcutInfo2 = (ShortcutInfo) next;
                                if (shortcutInfo2.iconResource == null || !stringFilterM536of.matches(shortcutInfo2.iconResource.packageName) || (bitmapCreateIconBitmap = Utilities.createIconBitmap(shortcutInfo2.iconResource.packageName, shortcutInfo2.iconResource.resourceName, context)) == null) {
                                    z = false;
                                } else {
                                    shortcutInfo2.setIcon(bitmapCreateIconBitmap);
                                    shortcutInfo2.usingFallbackIcon = false;
                                    z = true;
                                }
                                ComponentName targetComponent = shortcutInfo2.getTargetComponent();
                                if (targetComponent != null) {
                                    z2 = z;
                                    if (stringFilterM536of.matches(targetComponent.getPackageName())) {
                                        AppInfo appInfo4 = (AppInfo) map.get(targetComponent);
                                        if (shortcutInfo2.isPromise()) {
                                            AppInfo appInfo5 = appInfo4;
                                            if (shortcutInfo2.hasStatusFlag(2)) {
                                                PackageManager packageManager = context.getPackageManager();
                                                it = it2;
                                                callbacks2 = callbacks4;
                                                if (packageManager.resolveActivity(new Intent("android.intent.action.MAIN").setComponent(targetComponent).addCategory("android.intent.category.LAUNCHER"), 65536) == null) {
                                                    Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(targetComponent.getPackageName());
                                                    if (launchIntentForPackage != null) {
                                                        appInfo5 = (AppInfo) map.get(launchIntentForPackage.getComponent());
                                                    }
                                                    if (launchIntentForPackage == null || appInfo5 == null) {
                                                        arrayList5.add(shortcutInfo2);
                                                        it2 = it;
                                                        callbacks4 = callbacks2;
                                                    } else {
                                                        shortcutInfo2.promisedIntent = launchIntentForPackage;
                                                        appInfo4 = appInfo5;
                                                        if (appInfo4 != null) {
                                                            shortcutInfo2.flags = appInfo4.flags;
                                                        }
                                                        shortcutInfo2.intent = shortcutInfo2.promisedIntent;
                                                        shortcutInfo2.promisedIntent = null;
                                                        shortcutInfo2.status = 0;
                                                        shortcutInfo2.updateIcon(LauncherModel.this.mIconCache);
                                                        z2 = true;
                                                    }
                                                }
                                            } else {
                                                callbacks2 = callbacks4;
                                                it = it2;
                                            }
                                            appInfo4 = appInfo5;
                                            if (appInfo4 != null) {
                                                shortcutInfo2.flags = appInfo4.flags;
                                            }
                                            shortcutInfo2.intent = shortcutInfo2.promisedIntent;
                                            shortcutInfo2.promisedIntent = null;
                                            shortcutInfo2.status = 0;
                                            shortcutInfo2.updateIcon(LauncherModel.this.mIconCache);
                                            z2 = true;
                                        } else {
                                            callbacks2 = callbacks4;
                                            it = it2;
                                        }
                                        if (appInfo4 != null && "android.intent.action.MAIN".equals(shortcutInfo2.intent.getAction()) && shortcutInfo2.itemType == 0) {
                                            shortcutInfo2.updateIcon(LauncherModel.this.mIconCache);
                                            shortcutInfo2.title = Utilities.trim(appInfo4.title);
                                            shortcutInfo2.contentDescription = appInfo4.contentDescription;
                                            z3 = true;
                                        } else {
                                            z3 = z2;
                                        }
                                        int i = shortcutInfo2.isDisabled;
                                        shortcutInfo2.isDisabled = flagOpRemoveFlag.apply(shortcutInfo2.isDisabled);
                                        z4 = shortcutInfo2.isDisabled != i;
                                        if (!z3 || z4) {
                                            arrayList4.add(shortcutInfo2);
                                        }
                                        if (z3) {
                                            LauncherModel.updateItemInDatabase(context, shortcutInfo2);
                                        }
                                        it2 = it;
                                        callbacks4 = callbacks2;
                                    }
                                } else {
                                    z2 = z;
                                }
                                callbacks2 = callbacks4;
                                it = it2;
                                z3 = z2;
                                z4 = false;
                                if (!z3) {
                                    arrayList4.add(shortcutInfo2);
                                } else {
                                    arrayList4.add(shortcutInfo2);
                                }
                                if (z3) {
                                    LauncherModel.updateItemInDatabase(context, shortcutInfo2);
                                }
                                it2 = it;
                                callbacks4 = callbacks2;
                            } else {
                                callbacks2 = callbacks4;
                                it = it2;
                                if (next instanceof LauncherAppWidgetInfo) {
                                    if (this.mOp == 1) {
                                        LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) next;
                                        if (this.mUser.equals(launcherAppWidgetInfo.user) && launcherAppWidgetInfo.hasRestoreFlag(2) && stringFilterM536of.matches(launcherAppWidgetInfo.providerName.getPackageName())) {
                                            launcherAppWidgetInfo.restoreStatus &= -11;
                                            launcherAppWidgetInfo.restoreStatus |= 4;
                                            arrayList6.add(launcherAppWidgetInfo);
                                            LauncherModel.updateItemInDatabase(context, launcherAppWidgetInfo);
                                        }
                                    }
                                }
                                it2 = it;
                                callbacks4 = callbacks2;
                            }
                        }
                        callbacks = callbacks4;
                    }
                    if (!arrayList4.isEmpty() || !arrayList5.isEmpty()) {
                        final Callbacks callback = LauncherModel.this.getCallback();
                        LauncherModel.this.mHandler.post(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$PackageUpdatedTask$Ca0_1k2xkjhRN38lUBgkT9CBHrA
                            @Override // java.lang.Runnable
                            public final void run() {
                                LauncherModel.PackageUpdatedTask.lambda$run$1(this.f$0, callback, arrayList4, arrayList5);
                            }
                        });
                        if (!arrayList5.isEmpty()) {
                            LauncherModel.deleteItemsFromDatabase(context, arrayList5);
                        }
                    }
                    if (!arrayList6.isEmpty()) {
                        final Callbacks callback2 = LauncherModel.this.getCallback();
                        LauncherModel.this.mHandler.post(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$PackageUpdatedTask$D9pI7pbDDr0lGZYj5HicR7ukl54
                            @Override // java.lang.Runnable
                            public final void run() {
                                LauncherModel.PackageUpdatedTask.lambda$run$2(this.f$0, callback2, arrayList6);
                            }
                        });
                    }
                } else {
                    callbacks = callbacks4;
                }
                final HashSet hashSet = new HashSet();
                final HashSet hashSet2 = new HashSet();
                int i2 = this.mOp;
                if (i2 == 3) {
                    hashSet.addAll(Arrays.asList(strArr));
                } else if (i2 == 2) {
                    for (String str5 : strArr) {
                        if (LauncherModel.isPackageDisabled(context, str5, this.mUser)) {
                            hashSet.add(str5);
                        }
                    }
                    Iterator it3 = arrayList3.iterator();
                    while (it3.hasNext()) {
                        hashSet2.add(((AppInfo) it3.next()).componentName);
                    }
                }
                if (hashSet.isEmpty() && arrayList3.isEmpty()) {
                    callbacks3 = callbacks;
                } else {
                    Iterator it4 = hashSet.iterator();
                    while (it4.hasNext()) {
                        LauncherModel.deletePackageFromDatabase(context, (String) it4.next(), this.mUser);
                    }
                    Iterator it5 = hashSet2.iterator();
                    while (it5.hasNext()) {
                        LauncherModel.deleteItemsFromDatabase(context, LauncherModel.getItemInfoForComponentName((ComponentName) it5.next(), this.mUser));
                    }
                    InstallShortcutReceiver.removeFromInstallQueue(context.getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0), hashSet);
                    callbacks3 = callbacks;
                    LauncherModel.this.mHandler.post(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$PackageUpdatedTask$2-w8RpcETTCCIKNOAcH97Lx436k
                        @Override // java.lang.Runnable
                        public final void run() {
                            LauncherModel.PackageUpdatedTask.lambda$run$3(this.f$0, callbacks3, hashSet, hashSet2);
                        }
                    });
                }
                LauncherModel.this.mHandler.post(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$PackageUpdatedTask$VdI_zFikssRazzH9GAGZ70fLXdk
                    @Override // java.lang.Runnable
                    public final void run() {
                        LauncherModel.PackageUpdatedTask.lambda$run$4(this.f$0, callbacks3);
                    }
                });
            }
        }

        public static /* synthetic */ void lambda$run$0(PackageUpdatedTask packageUpdatedTask, Callbacks callbacks, ArrayList arrayList) {
            Callbacks callbacks2 = LauncherModel.this.mCallbacks != null ? (Callbacks) LauncherModel.this.mCallbacks.get() : null;
            if (callbacks != callbacks2 || callbacks2 == null) {
                return;
            }
            callbacks.bindAppsUpdated(arrayList);
        }

        public static /* synthetic */ void lambda$run$1(PackageUpdatedTask packageUpdatedTask, Callbacks callbacks, ArrayList arrayList, ArrayList arrayList2) {
            Callbacks callback = LauncherModel.this.getCallback();
            if (callbacks != callback || callback == null) {
                return;
            }
            callbacks.bindShortcutsChanged(arrayList, arrayList2, packageUpdatedTask.mUser);
        }

        public static /* synthetic */ void lambda$run$2(PackageUpdatedTask packageUpdatedTask, Callbacks callbacks, ArrayList arrayList) {
            Callbacks callback = LauncherModel.this.getCallback();
            if (callbacks != callback || callback == null) {
                return;
            }
            callbacks.bindWidgetsRestored(arrayList);
        }

        public static /* synthetic */ void lambda$run$3(PackageUpdatedTask packageUpdatedTask, Callbacks callbacks, HashSet hashSet, HashSet hashSet2) {
            Callbacks callbacks2 = LauncherModel.this.mCallbacks != null ? (Callbacks) LauncherModel.this.mCallbacks.get() : null;
            if (callbacks != callbacks2 || callbacks2 == null) {
                return;
            }
            callbacks.bindComponentsRemoved(hashSet, hashSet2, packageUpdatedTask.mUser);
        }

        public static /* synthetic */ void lambda$run$4(PackageUpdatedTask packageUpdatedTask, Callbacks callbacks) {
            Callbacks callbacks2 = LauncherModel.this.mCallbacks != null ? (Callbacks) LauncherModel.this.mCallbacks.get() : null;
            if (callbacks != callbacks2 || callbacks2 == null) {
                return;
            }
            callbacks.dumpLogsToLocalData();
        }
    }

    public void updateDeepShortcutInfo(final DeepShortcutInfoCompat deepShortcutInfoCompat, final ShortcutInfo shortcutInfo) {
        enqueueTask(new Runnable() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$kK4SRGLzaFwLjd05TGmgd0OKKgI
            @Override // java.lang.Runnable
            public final void run() {
                LauncherModel.lambda$updateDeepShortcutInfo$19(this.f$0, shortcutInfo, deepShortcutInfoCompat);
            }
        });
    }

    public static /* synthetic */ void lambda$updateDeepShortcutInfo$19(LauncherModel launcherModel, ShortcutInfo shortcutInfo, DeepShortcutInfoCompat deepShortcutInfoCompat) {
        shortcutInfo.updateFromDeepShortcutInfo(deepShortcutInfoCompat, launcherModel.mDeepShortcutManager, LauncherAppState.getInstance().getContext());
        ArrayList<ShortcutInfo> arrayList = new ArrayList<>();
        arrayList.add(shortcutInfo);
        launcherModel.bindUpdatedShortcuts(arrayList, deepShortcutInfoCompat.getUserHandle());
    }

    private class DeepShortcutsChangedTask implements Runnable {
        private final String mPackageName;
        private final UserHandleCompat mUser;

        public DeepShortcutsChangedTask(String str, UserHandleCompat userHandleCompat) {
            this.mPackageName = str;
            this.mUser = userHandleCompat;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = new ArrayList();
            MultiHashMap multiHashMap = new MultiHashMap();
            for (ItemInfo itemInfo : LauncherModel.sBgItemsIdMap) {
                if (itemInfo.itemType == 6) {
                    ShortcutInfo shortcutInfo = (ShortcutInfo) itemInfo;
                    if (shortcutInfo.getPromisedIntent().getPackage().equals(this.mPackageName) && shortcutInfo.user.equals(this.mUser)) {
                        multiHashMap.addToList(shortcutInfo.getDeepShortcutId(), shortcutInfo);
                    }
                }
            }
            Context context = LauncherAppState.getInstance().getContext();
            ArrayList arrayList2 = new ArrayList();
            if (!multiHashMap.isEmpty()) {
                for (DeepShortcutInfoCompat deepShortcutInfoCompat : LauncherModel.this.mDeepShortcutManager.queryForFullDetails(this.mPackageName, new ArrayList(multiHashMap.keySet()), this.mUser)) {
                    List<ShortcutInfo> listRemove = multiHashMap.remove(deepShortcutInfoCompat.getId());
                    if (!deepShortcutInfoCompat.isPinned()) {
                        arrayList.addAll(listRemove);
                    } else {
                        for (ShortcutInfo shortcutInfo2 : listRemove) {
                            shortcutInfo2.updateFromDeepShortcutInfo(deepShortcutInfoCompat, LauncherModel.this.mDeepShortcutManager, context);
                            arrayList2.add(shortcutInfo2);
                        }
                    }
                }
            }
            Iterator it = multiHashMap.keySet().iterator();
            while (it.hasNext()) {
                arrayList.addAll(multiHashMap.get((String) it.next()));
            }
            LauncherModel.this.bindUpdatedShortcuts(arrayList2, arrayList, this.mUser);
            if (arrayList.isEmpty()) {
                return;
            }
            LauncherModel.deleteItemsFromDatabase(context, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isPackageDisabled(Context context, String str, UserHandleCompat userHandleCompat) {
        return !LauncherAppsCompat.getInstance(context).isPackageEnabledForProfile(str, userHandleCompat);
    }

    public static boolean isValidPackageActivity(Context context, ComponentName componentName, UserHandleCompat userHandleCompat) {
        if (componentName == null) {
            return false;
        }
        LauncherAppsCompat launcherAppsCompat = LauncherAppsCompat.getInstance(context);
        if (launcherAppsCompat.isPackageEnabledForProfile(componentName.getPackageName(), userHandleCompat)) {
            return launcherAppsCompat.isActivityEnabledForProfile(componentName, userHandleCompat);
        }
        return false;
    }

    public static boolean isValidPackage(Context context, String str, UserHandleCompat userHandleCompat) {
        if (str == null) {
            return false;
        }
        return LauncherAppsCompat.getInstance(context).isPackageEnabledForProfile(str, userHandleCompat);
    }

    public ShortcutInfo getRestoredItemInfo(Cursor cursor, int i, Intent intent, int i2) {
        ShortcutInfo shortcutInfo = new ShortcutInfo();
        shortcutInfo.user = UserHandleCompat.myUserHandle();
        this.mIconCache.getTitleAndIcon(shortcutInfo, intent, shortcutInfo.user, true);
        if ((i2 & 1) != 0) {
            String string = cursor != null ? cursor.getString(i) : null;
            if (!TextUtils.isEmpty(string)) {
                shortcutInfo.title = string;
            }
            shortcutInfo.status = 1;
        } else if ((i2 & 2) != 0) {
            if (TextUtils.isEmpty(shortcutInfo.title)) {
                shortcutInfo.title = cursor != null ? cursor.getString(i) : "";
            }
            shortcutInfo.status = 2;
        } else {
            throw new InvalidParameterException("Invalid restoreType " + i2);
        }
        shortcutInfo.contentDescription = this.mUserManager.getBadgedLabelForUser(shortcutInfo.title, shortcutInfo.user);
        shortcutInfo.itemType = 1;
        shortcutInfo.promisedIntent = intent;
        return shortcutInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Intent getRestoredItemIntent(Cursor cursor, Context context, Intent intent) {
        return getMarketIntent(intent.getComponent().getPackageName());
    }

    static Intent getMarketIntent(String str) {
        return new Intent("android.intent.action.VIEW").setData(new Uri.Builder().scheme("market").authority("details").appendQueryParameter("id", str).build());
    }

    public ShortcutInfo getAppShortcutInfo(PackageManager packageManager, Intent intent, UserHandleCompat userHandleCompat, Context context, Cursor cursor, int i, int i2, HashMap<Object, CharSequence> map, boolean z) {
        if (userHandleCompat == null) {
            Log.d("Launcher.Model", "Null user found in getAppShortcutInfo");
            return null;
        }
        ComponentName component = intent.getComponent();
        if (component == null) {
            Log.d("Launcher.Model", "Missing component found in getAppShortcutInfo: " + component);
            return null;
        }
        Intent intent2 = new Intent(intent.getAction(), (Uri) null);
        intent2.addCategory("android.intent.category.LAUNCHER");
        intent2.setComponent(component);
        LauncherActivityInfoCompat launcherActivityInfoCompatResolveActivity = this.mLauncherApps.resolveActivity(intent2, userHandleCompat);
        if (launcherActivityInfoCompatResolveActivity == null && !z) {
            Log.d("Launcher.Model", "Missing activity found in getAppShortcutInfo: " + component);
            return null;
        }
        ShortcutInfo shortcutInfo = new ShortcutInfo();
        Bitmap icon = this.mIconCache.getIcon(component, launcherActivityInfoCompatResolveActivity, map);
        if (icon == null && cursor != null) {
            icon = getIconFromCursor(cursor, i, context);
        }
        if (icon == null) {
            icon = this.mIconCache.getDefaultIcon(userHandleCompat);
            shortcutInfo.usingFallbackIcon = true;
        }
        shortcutInfo.setIcon(icon);
        if (map != null) {
            shortcutInfo.title = map.get(component);
        }
        String labelOverride = this.mAppsInfoLabelOverrideFilter.getLabelOverride(component.getPackageName(), component.getClassName());
        if (labelOverride != null) {
            if (map != null) {
                map.put(component, shortcutInfo.title);
            }
            shortcutInfo.title = labelOverride;
        }
        if (shortcutInfo.title == null && launcherActivityInfoCompatResolveActivity != null) {
            shortcutInfo.title = launcherActivityInfoCompatResolveActivity.getLabel();
            if (map != null) {
                map.put(component, shortcutInfo.title);
            }
        }
        if (shortcutInfo.title == null && cursor != null) {
            shortcutInfo.title = cursor.getString(i2);
        }
        if (shortcutInfo.title == null) {
            shortcutInfo.title = component.getClassName();
        }
        shortcutInfo.itemType = 0;
        shortcutInfo.user = userHandleCompat;
        shortcutInfo.contentDescription = this.mUserManager.getBadgedLabelForUser(shortcutInfo.title, shortcutInfo.user);
        shortcutInfo.flags = 0;
        if (launcherActivityInfoCompatResolveActivity != null) {
            int i3 = launcherActivityInfoCompatResolveActivity.getApplicationInfo().flags;
            if ((i3 & 1) == 0) {
                shortcutInfo.flags |= 1;
                if ((i3 & 128) != 0) {
                    shortcutInfo.flags |= 2;
                }
            }
        }
        return shortcutInfo;
    }

    static ArrayList<ItemInfo> filterItemInfos(Iterable<ItemInfo> iterable, ItemInfoFilter itemInfoFilter) {
        HashSet hashSet = new HashSet();
        for (ItemInfo itemInfo : iterable) {
            if (itemInfo instanceof ShortcutInfo) {
                ShortcutInfo shortcutInfo = (ShortcutInfo) itemInfo;
                if (itemInfoFilter.filterItem(null, shortcutInfo, shortcutInfo.getTargetComponent())) {
                    hashSet.add(shortcutInfo);
                }
            } else if (itemInfo instanceof FolderInfo) {
                FolderInfo folderInfo = (FolderInfo) itemInfo;
                if (itemInfoFilter.filterItem(null, itemInfo, null)) {
                    hashSet.add(itemInfo);
                }
                for (ShortcutInfo shortcutInfo2 : folderInfo.contents) {
                    if (itemInfoFilter.filterItem(folderInfo, shortcutInfo2, shortcutInfo2.getTargetComponent())) {
                        hashSet.add(shortcutInfo2);
                    }
                }
            } else if (itemInfo instanceof LauncherAppWidgetInfo) {
                LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
                if (itemInfoFilter.filterItem(null, launcherAppWidgetInfo, launcherAppWidgetInfo.providerName)) {
                    hashSet.add(launcherAppWidgetInfo);
                }
            }
        }
        return new ArrayList<>(hashSet);
    }

    public static ArrayList<ItemInfo> getItemInfoForComponentName(final ComponentName componentName, final UserHandleCompat userHandleCompat) {
        return filterItemInfos(sBgItemsIdMap, new ItemInfoFilter() { // from class: com.voxel.launcher3.-$$Lambda$LauncherModel$n1fKM2tOFDm0WYhbV2Y2F3DBLek
            @Override // com.voxel.launcher3.LauncherModel.ItemInfoFilter
            public final boolean filterItem(ItemInfo itemInfo, ItemInfo itemInfo2, ComponentName componentName2) {
                return LauncherModel.lambda$getItemInfoForComponentName$20(componentName, userHandleCompat, itemInfo, itemInfo2, componentName2);
            }
        });
    }

    static /* synthetic */ boolean lambda$getItemInfoForComponentName$20(ComponentName componentName, UserHandleCompat userHandleCompat, ItemInfo itemInfo, ItemInfo itemInfo2, ComponentName componentName2) {
        if (itemInfo2.user == null) {
            return Objects.equals(componentName2, componentName);
        }
        return Objects.equals(componentName2, componentName) && itemInfo2.user.equals(userHandleCompat);
    }

    public static boolean isShortcutInfoUpdateable(ItemInfo itemInfo) {
        if (!(itemInfo instanceof ShortcutInfo)) {
            return false;
        }
        ShortcutInfo shortcutInfo = (ShortcutInfo) itemInfo;
        Intent intent = shortcutInfo.intent;
        ComponentName component = intent.getComponent();
        if (shortcutInfo.itemType == 0 && "android.intent.action.MAIN".equals(intent.getAction()) && component != null) {
            return true;
        }
        return shortcutInfo.isPromise();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ShortcutInfo getShortcutInfo(Cursor cursor, Context context, int i, int i2, int i3, int i4, int i5) {
        Bitmap iconFromCursor;
        ShortcutInfo shortcutInfo = new ShortcutInfo();
        shortcutInfo.user = UserHandleCompat.myUserHandle();
        shortcutInfo.itemType = 1;
        shortcutInfo.title = cursor.getString(i5);
        switch (cursor.getInt(i)) {
            case 0:
                String string = cursor.getString(i2);
                String string2 = cursor.getString(i3);
                PackageManager packageManager = context.getPackageManager();
                shortcutInfo.customIcon = false;
                Bitmap bitmapCreateIconBitmap = null;
                try {
                    Resources resourcesForApplication = packageManager.getResourcesForApplication(string);
                    if (resourcesForApplication != null) {
                        bitmapCreateIconBitmap = Utilities.createIconBitmap(this.mIconCache.getFullResIcon(resourcesForApplication, resourcesForApplication.getIdentifier(string2, null, null)), context);
                    }
                } catch (Exception unused) {
                }
                iconFromCursor = bitmapCreateIconBitmap == null ? getIconFromCursor(cursor, i4, context) : bitmapCreateIconBitmap;
                if (iconFromCursor == null) {
                    iconFromCursor = this.mIconCache.getDefaultIcon(shortcutInfo.user);
                    shortcutInfo.usingFallbackIcon = true;
                }
                break;
            case 1:
                iconFromCursor = getIconFromCursor(cursor, i4, context);
                if (iconFromCursor == null) {
                    iconFromCursor = this.mIconCache.getDefaultIcon(shortcutInfo.user);
                    shortcutInfo.customIcon = false;
                    shortcutInfo.usingFallbackIcon = true;
                } else {
                    shortcutInfo.customIcon = true;
                }
                break;
            default:
                iconFromCursor = this.mIconCache.getDefaultIcon(shortcutInfo.user);
                shortcutInfo.usingFallbackIcon = true;
                shortcutInfo.customIcon = false;
                break;
        }
        shortcutInfo.setIcon(iconFromCursor);
        return shortcutInfo;
    }

    Bitmap getIconFromCursor(Cursor cursor, int i, Context context) {
        byte[] blob = cursor.getBlob(i);
        try {
            return Utilities.createIconBitmap(BitmapFactory.decodeByteArray(blob, 0, blob.length), context);
        } catch (Exception unused) {
            return null;
        }
    }

    public ShortcutInfo infoFromShortcutIntent(Context context, Intent intent) throws PackageManager.NameNotFoundException {
        Intent.ShortcutIconResource shortcutIconResource;
        Intent intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.shortcut.INTENT");
        String stringExtra = intent.getStringExtra("android.intent.extra.shortcut.NAME");
        Parcelable parcelableExtra = intent.getParcelableExtra("android.intent.extra.shortcut.ICON");
        Bitmap bitmapCreateIconBitmap = null;
        if (intent2 == null) {
            Log.e("Launcher.Model", "Can't construct ShorcutInfo with null intent");
            return null;
        }
        boolean z = false;
        if (parcelableExtra != null && (parcelableExtra instanceof Bitmap)) {
            Bitmap bitmapCreateIconBitmap2 = Utilities.createIconBitmap(new FastBitmapDrawable((Bitmap) parcelableExtra), context);
            shortcutIconResource = null;
            z = true;
            bitmapCreateIconBitmap = bitmapCreateIconBitmap2;
        } else {
            Parcelable parcelableExtra2 = intent.getParcelableExtra("android.intent.extra.shortcut.ICON_RESOURCE");
            if (parcelableExtra2 == null || !(parcelableExtra2 instanceof Intent.ShortcutIconResource)) {
                shortcutIconResource = null;
            } else {
                try {
                    shortcutIconResource = (Intent.ShortcutIconResource) parcelableExtra2;
                    try {
                        Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication(shortcutIconResource.packageName);
                        bitmapCreateIconBitmap = Utilities.createIconBitmap(this.mIconCache.getFullResIcon(resourcesForApplication, resourcesForApplication.getIdentifier(shortcutIconResource.resourceName, null, null)), context);
                    } catch (Exception unused) {
                        Log.w("Launcher.Model", "Could not load shortcut icon: " + parcelableExtra2);
                    }
                } catch (Exception unused2) {
                    shortcutIconResource = null;
                }
            }
        }
        ShortcutInfo shortcutInfo = new ShortcutInfo();
        shortcutInfo.user = UserHandleCompat.myUserHandle();
        if (bitmapCreateIconBitmap == null) {
            bitmapCreateIconBitmap = this.mIconCache.getDefaultIcon(shortcutInfo.user);
            shortcutInfo.usingFallbackIcon = true;
        }
        shortcutInfo.setIcon(bitmapCreateIconBitmap);
        shortcutInfo.title = stringExtra;
        shortcutInfo.contentDescription = this.mUserManager.getBadgedLabelForUser(shortcutInfo.title, shortcutInfo.user);
        shortcutInfo.intent = intent2;
        shortcutInfo.customIcon = z;
        shortcutInfo.iconResource = shortcutIconResource;
        return shortcutInfo;
    }

    boolean queueIconToBeChecked(HashMap<Object, byte[]> map, ShortcutInfo shortcutInfo, Cursor cursor, int i) {
        if (!this.mAppsCanBeOnRemoveableStorage || shortcutInfo.customIcon || shortcutInfo.usingFallbackIcon) {
            return false;
        }
        map.put(shortcutInfo, cursor.getBlob(i));
        return true;
    }

    void updateSavedIcon(Context context, ShortcutInfo shortcutInfo, byte[] bArr) {
        boolean zSameAs = true;
        if (bArr != null) {
            try {
                zSameAs = true ^ BitmapFactory.decodeByteArray(bArr, 0, bArr.length).sameAs(shortcutInfo.getIcon(this.mIconCache));
            } catch (Exception unused) {
            }
        }
        if (zSameAs) {
            Log.d("Launcher.Model", "going to save icon bitmap for info=" + shortcutInfo);
            updateItemInDatabase(context, shortcutInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static FolderInfo findOrMakeFolder(LongArrayMap<FolderInfo> longArrayMap, long j) {
        FolderInfo folderInfo = longArrayMap.get(j);
        if (folderInfo != null) {
            return folderInfo;
        }
        FolderInfo folderInfo2 = new FolderInfo();
        longArrayMap.put(j, folderInfo2);
        return folderInfo2;
    }

    static /* synthetic */ int lambda$static$22(AppInfo appInfo, AppInfo appInfo2) {
        if (appInfo.firstInstallTime < appInfo2.firstInstallTime) {
            return 1;
        }
        return appInfo.firstInstallTime > appInfo2.firstInstallTime ? -1 : 0;
    }

    static boolean isValidProvider(AppWidgetProviderInfo appWidgetProviderInfo) {
        return (appWidgetProviderInfo == null || appWidgetProviderInfo.provider == null || appWidgetProviderInfo.provider.getPackageName() == null) ? false : true;
    }

    public void dumpState() {
        Log.d("Launcher.Model", "mCallbacks=" + this.mCallbacks);
        AppInfo.dumpApplicationInfoList("Launcher.Model", "mAllAppsList.data", this.mBgAllAppsList.data);
        AppInfo.dumpApplicationInfoList("Launcher.Model", "mAllAppsList.added", this.mBgAllAppsList.added);
        AppInfo.dumpApplicationInfoList("Launcher.Model", "mAllAppsList.removed", this.mBgAllAppsList.removed);
        AppInfo.dumpApplicationInfoList("Launcher.Model", "mAllAppsList.modified", this.mBgAllAppsList.modified);
        LoaderTask loaderTask = this.mLoaderTask;
        if (loaderTask != null) {
            loaderTask.dumpState();
        } else {
            Log.d("Launcher.Model", "mLoaderTask=null");
        }
    }

    public Callbacks getCallback() {
        WeakReference<Callbacks> weakReference = this.mCallbacks;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public static Looper getWorkerLooper() {
        return sWorkerThread.getLooper();
    }
}
