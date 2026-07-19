package com.voxel.simplesearchlauncher.model.managers;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.evie.common.data.Lce;
import com.evie.config.LauncherConfigData;
import com.evie.config.LauncherConfigModel;
import com.voxel.launcher3.LauncherAppState;
import com.voxel.simplesearchlauncher.gestures.GestureType;
import com.voxel.simplesearchlauncher.gestures.action.CustomGestureAction;
import com.voxel.simplesearchlauncher.utils.UpgradeUtil;
import dagger.Lazy;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import is.shortcut.R;
import java.net.URISyntaxException;

/* JADX INFO: loaded from: classes.dex */
public class SettingsStorage implements UpgradeUtil.UpgradableComponent {
    private static final String TAG = "SettingsStorage";
    private static SettingsStorage instance;
    private long desktopUnlockedAt;
    private Lazy<LauncherConfigModel> launcherConfigModelLazy;
    private SharedPreferences sharedPref;

    public static String getSharedPreferencesKey() {
        return "settings_storage";
    }

    public static synchronized void init(Context context, Lazy<LauncherConfigModel> lazy) {
        if (instance != null) {
            return;
        }
        if (context == null) {
            throw new IllegalArgumentException("Context must be provided.");
        }
        instance = new SettingsStorage(context, lazy);
    }

    public static synchronized SettingsStorage getInstance() {
        if (instance == null) {
            throw new IllegalStateException("Instance must be initialized before trying to use.");
        }
        return instance;
    }

    private SettingsStorage(Context context, Lazy<LauncherConfigModel> lazy) {
        this.sharedPref = context.getApplicationContext().getSharedPreferences("settings_storage", 0);
        this.launcherConfigModelLazy = lazy;
        upgradeIfNeeded();
    }

    public void upgradeIfNeeded() {
        UpgradeUtil.processUpgrade(this.sharedPref, this, 3);
    }

    @Override // com.voxel.simplesearchlauncher.utils.UpgradeUtil.UpgradableComponent
    public void onUpgrade(int i, int i2) {
        if (i == -1) {
            setSearchBarDesktopEnabled(false);
        }
        if (i == 1) {
            setSearchBarStyle(0);
            i = 2;
        }
        if (i < 3) {
            Lazy<LauncherConfigModel> lazy = this.launcherConfigModelLazy;
            if (lazy != null) {
                lazy.get().getContent().subscribeOn(Schedulers.m548io()).subscribe(new Consumer() { // from class: com.voxel.simplesearchlauncher.model.managers.-$$Lambda$SettingsStorage$YZ_v3XgfWlJc_ysdmzfLIwLSpZ8
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) throws Exception {
                        SettingsStorage.lambda$onUpgrade$0(this.f$0, (Lce) obj);
                    }
                });
            }
            setActionForGestureType(GestureType.SWIPE_DOWN, CustomGestureAction.EVIE_SEARCH);
            setActionForGestureType(GestureType.SWIPE_UP, CustomGestureAction.APP_DRAWER);
            if (isGoogleNowSwipeUpEnabled()) {
                setActionForGestureType(GestureType.TWO_FINGER_SWIPE_UP, CustomGestureAction.GOOGLE_NOW);
            }
            if (isDoubleTapLockEnabled()) {
                int doubleTapLockType = getDoubleTapLockType();
                if (doubleTapLockType == 1) {
                    setActionForGestureType(GestureType.DOUBLE_TAP, CustomGestureAction.SCREEN_LOCK_DEVICE_ADMIN);
                } else if (doubleTapLockType == 2) {
                    setActionForGestureType(GestureType.DOUBLE_TAP, CustomGestureAction.SCREEN_LOCK_WRITE_SETTINGS);
                }
            }
            if (isHomeToSearchEnabled()) {
                setActionForGestureType(GestureType.HOME, CustomGestureAction.EVIE_SEARCH);
            }
        }
    }

    public static /* synthetic */ void lambda$onUpgrade$0(SettingsStorage settingsStorage, Lce lce) throws Exception {
        if (lce.getData() != null) {
            settingsStorage.setSideScreenEnabled(((LauncherConfigData) lce.getData()).isSidescreenEnabled());
        }
    }

    @Deprecated
    public boolean isGoogleNowSwipeUpEnabled() {
        return this.sharedPref.getBoolean("google_now_swipe_up_enabled", false);
    }

    @Deprecated
    public boolean isDoubleTapLockEnabled() {
        return this.sharedPref.getBoolean("double_tap_to_lock_enabled", false);
    }

    public int getDoubleTapLockType() {
        int i = this.sharedPref.getInt("double_tap_to_lock_type", -1);
        if (isDoubleTapLockEnabled() && i == -1) {
            return 1;
        }
        return i;
    }

    public int getSearchDoneButtonBehavior() {
        int i = this.sharedPref.getInt("search_done_button_behavior", -1);
        if (i != -1) {
            return i;
        }
        saveSearchDoneButtonBehavior(0);
        return 0;
    }

    public boolean isHomeToSearchEnabled() {
        return this.sharedPref.getBoolean("home_to_search_enabled", true);
    }

    public void saveSearchDoneButtonBehavior(int i) {
        SharedPreferences.Editor editorEdit = this.sharedPref.edit();
        editorEdit.putInt("search_done_button_behavior", i);
        editorEdit.apply();
    }

    public int getAllAppsIndexType() {
        return this.sharedPref.getInt("all_apps_index_type", 0);
    }

    public void setAllAppsIndexType(int i) {
        switch (i) {
            case 0:
            case 1:
                break;
            default:
                i = 0;
                break;
        }
        SharedPreferences.Editor editorEdit = this.sharedPref.edit();
        editorEdit.putInt("all_apps_index_type", i);
        editorEdit.apply();
    }

    public String getAllAppsDisplayType() {
        String string = this.sharedPref.getString("all_apps_display_type", "list");
        if (string.equals("grid") || string.equals("list")) {
            return string;
        }
        SharedPreferences.Editor editorEdit = this.sharedPref.edit();
        editorEdit.remove("all_apps_display_type");
        editorEdit.apply();
        return "list";
    }

    public void setAllAppsDisplayType(String str) {
        if (!str.equals("grid") && !str.equals("list")) {
            throw new IllegalArgumentException("Must be an all apps display type");
        }
        SharedPreferences.Editor editorEdit = this.sharedPref.edit();
        editorEdit.putString("all_apps_display_type", str);
        editorEdit.apply();
    }

    public boolean getAllAppsShowNewApps() {
        return this.sharedPref.getBoolean("all_apps_show_new", true);
    }

    public void setAllAppsShowNewApps(boolean z) {
        SharedPreferences.Editor editorEdit = this.sharedPref.edit();
        editorEdit.putBoolean("all_apps_show_new", z);
        editorEdit.apply();
    }

    public boolean getScrollingWallpaperType() {
        return this.sharedPref.getInt("scrolling_wallpaper_type", 0) != 0;
    }

    public void setScrollingWallpaperType(boolean z) {
        SharedPreferences.Editor editorEdit = this.sharedPref.edit();
        editorEdit.putInt("scrolling_wallpaper_type", z ? 1 : 0);
        editorEdit.apply();
    }

    public boolean isDesktopLocked() {
        return this.sharedPref.getBoolean("desktop_locked", false);
    }

    public void setDesktopLocked(boolean z) {
        this.sharedPref.edit().putBoolean("desktop_locked", z).apply();
    }

    public boolean isDesktopLockedCurrently() {
        return isDesktopLocked() && System.currentTimeMillis() - this.desktopUnlockedAt > 120000;
    }

    public void setDesktopUnlockedTemporarily(boolean z) {
        if (z) {
            this.desktopUnlockedAt = System.currentTimeMillis();
        } else {
            this.desktopUnlockedAt = 0L;
        }
    }

    public int getSearchBarStyle() {
        return this.sharedPref.getInt("search_bar_style", 1);
    }

    public void setSearchBarStyle(int i) {
        if (i != 1 && i != 0) {
            throw new IllegalArgumentException();
        }
        SharedPreferences.Editor editorEdit = this.sharedPref.edit();
        editorEdit.putInt("search_bar_style", i);
        editorEdit.apply();
    }

    public boolean getSearchBarDesktopEnabled() {
        return this.sharedPref.getBoolean("search_bar_desktop_enabled", true);
    }

    public void setSearchBarDesktopEnabled(boolean z) {
        this.sharedPref.edit().putBoolean("search_bar_desktop_enabled", z).apply();
    }

    public boolean getFolderAlphabetSortEnabled() {
        return this.sharedPref.getBoolean("folder_alpha_sort_enabled", false);
    }

    public void setFolderAlphabetSortEnabled(boolean z) {
        this.sharedPref.edit().putBoolean("folder_alpha_sort_enabled", z).apply();
    }

    public int getFolderShapeStyle() {
        return this.sharedPref.getInt("folder_shape_style", 2);
    }

    public int getFolderShapeResourceId() {
        switch (getFolderShapeStyle()) {
            case 0:
                return R.drawable.folder_icon_background_circle;
            case 1:
                return R.drawable.folder_icon_background_squircle;
            case 2:
                return R.drawable.folder_icon_background_square;
            default:
                throw new IllegalArgumentException("Not a permitted value!");
        }
    }

    public void setFolderShapeStyle(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
                SharedPreferences.Editor editorEdit = this.sharedPref.edit();
                editorEdit.putInt("folder_shape_style", i);
                editorEdit.apply();
                return;
            default:
                throw new IllegalArgumentException("Not a permitted value!");
        }
    }

    public boolean getIconNormalizationSetting() {
        return this.sharedPref.getBoolean("icon_normalization", true);
    }

    public void setIconNormalizationSetting(boolean z) {
        SharedPreferences.Editor editorEdit = this.sharedPref.edit();
        editorEdit.putBoolean("icon_normalization", z);
        editorEdit.apply();
    }

    public boolean isAppDrawerHintEnabled() {
        return this.sharedPref.getBoolean("app_drawer_hint_enabled", true);
    }

    public void setAppDrawerHintEnabled(boolean z) {
        boolean zIsAppDrawerHintEnabled = isAppDrawerHintEnabled();
        SharedPreferences.Editor editorEdit = this.sharedPref.edit();
        editorEdit.putBoolean("app_drawer_hint_enabled", z);
        editorEdit.apply();
        if (zIsAppDrawerHintEnabled != z) {
            LauncherAppState.getInstance().getModel().forceReload();
        }
    }

    public boolean getSideScreenEnabled() {
        return this.sharedPref.getBoolean("side_screen_enabled", false);
    }

    public void setSideScreenEnabled(boolean z) {
        boolean sideScreenEnabled = getSideScreenEnabled();
        SharedPreferences.Editor editorEdit = this.sharedPref.edit();
        editorEdit.putBoolean("side_screen_enabled", z);
        editorEdit.apply();
        if (sideScreenEnabled != z) {
            LauncherAppState.getInstance().getModel().forceReload();
        }
    }

    public boolean getUseCelsius() {
        return this.sharedPref.getBoolean("use_celsius", false);
    }

    public void setUseCelsius(boolean z) {
        SharedPreferences.Editor editorEdit = this.sharedPref.edit();
        editorEdit.putBoolean("use_celsius", z);
        editorEdit.apply();
    }

    public void setFirstVersion(int i) {
        SharedPreferences.Editor editorEdit = this.sharedPref.edit();
        editorEdit.putInt("first_version", i);
        editorEdit.apply();
    }

    public void setCurrentVersion(int i) {
        SharedPreferences.Editor editorEdit = this.sharedPref.edit();
        editorEdit.putInt("current_version", i);
        editorEdit.apply();
    }

    public int getCurrentVersion() {
        return this.sharedPref.getInt("current_version", 0);
    }

    public SharedPreferences getSharedPreferences() {
        return this.sharedPref;
    }

    public void setActionForGestureType(GestureType gestureType, CustomGestureAction customGestureAction) {
        SharedPreferences.Editor editorEdit = this.sharedPref.edit();
        if (customGestureAction.equals(CustomGestureAction.NONE)) {
            editorEdit.remove(getKeyForGestureType(gestureType));
        } else {
            editorEdit.putString(getKeyForGestureType(gestureType), customGestureAction.name());
        }
        editorEdit.apply();
    }

    public CustomGestureAction getActionForGestureType(GestureType gestureType) {
        String keyForGestureType = getKeyForGestureType(gestureType);
        String string = this.sharedPref.getString(keyForGestureType, null);
        if (TextUtils.isEmpty(string)) {
            return CustomGestureAction.NONE;
        }
        CustomGestureAction customGestureAction = CustomGestureAction.NONE;
        try {
            return CustomGestureAction.valueOf(string);
        } catch (Exception unused) {
            SharedPreferences.Editor editorEdit = this.sharedPref.edit();
            editorEdit.remove(keyForGestureType);
            editorEdit.apply();
            return customGestureAction;
        }
    }

    public void setIntentForGestureType(GestureType gestureType, Intent intent) {
        String intentKeyForGestureType = getIntentKeyForGestureType(gestureType);
        SharedPreferences.Editor editorEdit = this.sharedPref.edit();
        if (intent == null) {
            editorEdit.remove(intentKeyForGestureType);
        } else {
            editorEdit.putString(intentKeyForGestureType, intent.toUri(0));
        }
        editorEdit.apply();
    }

    public Intent getIntentForGestureType(GestureType gestureType) {
        String intentKeyForGestureType = getIntentKeyForGestureType(gestureType);
        String string = this.sharedPref.getString(intentKeyForGestureType, null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            return Intent.parseUri(string, 0);
        } catch (URISyntaxException unused) {
            SharedPreferences.Editor editorEdit = this.sharedPref.edit();
            editorEdit.remove(intentKeyForGestureType);
            editorEdit.apply();
            return null;
        }
    }

    private String getKeyForGestureType(GestureType gestureType) {
        return "custom_gesture." + gestureType.name();
    }

    private String getIntentKeyForGestureType(GestureType gestureType) {
        return "custom_gesture." + gestureType.name() + ".intent";
    }
}
