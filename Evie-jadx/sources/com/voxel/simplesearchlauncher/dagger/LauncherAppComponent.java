package com.voxel.simplesearchlauncher.dagger;

import android.app.Application;
import android.content.Context;
import com.evie.common.utils.MemoryWatcher;
import com.evie.sidescreen.SideScreenSharedDependencies;
import com.voxel.launcher3.BaseApplication;
import com.voxel.launcher3.FlavorInitializer;
import com.voxel.launcher3.LauncherAppState;
import com.voxel.launcher3.LauncherModel;
import com.voxel.simplesearchlauncher.model.managers.BackupRestoreManager;
import com.voxel.simplesearchlauncher.search.SearchUiHelper;

/* JADX INFO: loaded from: classes.dex */
public abstract class LauncherAppComponent implements SideScreenSharedDependencies {

    public interface Builder {
        Builder application(Application application);

        LauncherAppComponent build();

        Builder context(Context context);

        Builder memoryWatcher(MemoryWatcher memoryWatcher);
    }

    public abstract void inject(BaseApplication baseApplication);

    public abstract void inject(FlavorInitializer flavorInitializer);

    public abstract void inject(LauncherAppState launcherAppState);

    public abstract void inject(LauncherModel launcherModel);

    public abstract void inject(BackupRestoreManager backupRestoreManager);

    public abstract void inject(SearchUiHelper searchUiHelper);
}
