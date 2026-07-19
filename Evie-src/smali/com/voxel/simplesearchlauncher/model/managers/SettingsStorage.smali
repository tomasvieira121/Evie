.class public Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;
.super Ljava/lang/Object;
.source "SettingsStorage.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsStorage"

.field private static instance:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;


# instance fields
.field private desktopUnlockedAt:J

.field private launcherConfigModelLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/evie/config/LauncherConfigModel;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/evie/config/LauncherConfigModel;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "settings_storage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    .line 118
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->launcherConfigModelLazy:Ldagger/Lazy;

    .line 119
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->upgradeIfNeeded()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;
    .locals 3

    const-class v0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    monitor-enter v0

    .line 108
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->instance:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->instance:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 109
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Instance must be initialized before trying to use."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getIntentKeyForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Ljava/lang/String;
    .locals 2

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom_gesture."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".intent"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getKeyForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Ljava/lang/String;
    .locals 2

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom_gesture."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getSharedPreferencesKey()Ljava/lang/String;
    .locals 1

    const-string v0, "settings_storage"

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/evie/config/LauncherConfigModel;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->instance:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 97
    monitor-exit v0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 104
    :try_start_1
    new-instance v1, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    invoke-direct {v1, p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;-><init>(Landroid/content/Context;Ldagger/Lazy;)V

    sput-object v1, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->instance:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    monitor-exit v0

    return-void

    .line 101
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context must be provided."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic lambda$onUpgrade$0(Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;Lcom/evie/common/data/Lce;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Lcom/evie/common/data/Lce;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/config/LauncherConfigData;

    .line 147
    invoke-virtual {p1}, Lcom/evie/config/LauncherConfigData;->isSidescreenEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setSideScreenEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;
    .locals 2

    .line 483
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getKeyForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Ljava/lang/String;

    move-result-object p1

    .line 484
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    sget-object p1, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->NONE:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    return-object p1

    .line 489
    :cond_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->NONE:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    .line 491
    :try_start_0
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    :catch_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 494
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 495
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-object v1
.end method

.method public getAllAppsDisplayType()Ljava/lang/String;
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "all_apps_display_type"

    const-string v2, "list"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "grid"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "list"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "all_apps_display_type"

    .line 264
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "list"

    :cond_0
    return-object v0
.end method

.method public getAllAppsIndexType()I
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "all_apps_index_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAllAppsShowNewApps()Z
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "all_apps_show_new"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCurrentVersion()I
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "current_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDoubleTapLockType()I
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "double_tap_to_lock_type"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 192
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isDoubleTapLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getFolderAlphabetSortEnabled()Z
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "folder_alpha_sort_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFolderShapeResourceId()I
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getFolderShapeStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a permitted value!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x7f0800bb

    return v0

    :pswitch_1
    const v0, 0x7f0800bc

    return v0

    :pswitch_2
    const v0, 0x7f0800ba

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFolderShapeStyle()I
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "folder_shape_style"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIconNormalizationSetting()Z
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "icon_normalization"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIntentForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Landroid/content/Intent;
    .locals 3

    .line 516
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getIntentKeyForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Ljava/lang/String;

    move-result-object p1

    .line 517
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 524
    :try_start_0
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    :catch_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 527
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 528
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-object v1
.end method

.method public getScrollingWallpaperType()Z
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "scrolling_wallpaper_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public getSearchBarDesktopEnabled()Z
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "search_bar_desktop_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSearchBarStyle()I
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "search_bar_style"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSearchDoneButtonBehavior()I
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "search_done_button_behavior"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->saveSearchDoneButtonBehavior(I)V

    :cond_0
    return v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSideScreenEnabled()Z
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "side_screen_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUseCelsius()Z
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "use_celsius"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAppDrawerHintEnabled()Z
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "app_drawer_hint_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDesktopLocked()Z
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "desktop_locked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDesktopLockedCurrently()Z
    .locals 6

    .line 320
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isDesktopLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 323
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->desktopUnlockedAt:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1d4c0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isDoubleTapLockEnabled()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "double_tap_to_lock_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isGoogleNowSwipeUpEnabled()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "google_now_swipe_up_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHomeToSearchEnabled()Z
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "home_to_search_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onUpgrade(II)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 130
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setSearchBarDesktopEnabled(Z)V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 134
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setSearchBarStyle(I)V

    const/4 p1, 0x2

    :cond_1
    const/4 p2, 0x3

    if-ge p1, p2, :cond_6

    .line 140
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->launcherConfigModelLazy:Ldagger/Lazy;

    if-eqz p1, :cond_2

    .line 141
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/config/LauncherConfigModel;

    invoke-virtual {p1}, Lcom/evie/config/LauncherConfigModel;->getContent()Lio/reactivex/Observable;

    move-result-object p1

    .line 142
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$SettingsStorage$YZ_v3XgfWlJc_ysdmzfLIwLSpZ8;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$SettingsStorage$YZ_v3XgfWlJc_ysdmzfLIwLSpZ8;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;)V

    .line 143
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 152
    :cond_2
    sget-object p1, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->SWIPE_DOWN:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    sget-object p2, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->EVIE_SEARCH:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V

    .line 153
    sget-object p1, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->SWIPE_UP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    sget-object p2, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->APP_DRAWER:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V

    .line 155
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isGoogleNowSwipeUpEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 156
    sget-object p1, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->TWO_FINGER_SWIPE_UP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    sget-object p2, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->GOOGLE_NOW:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V

    .line 158
    :cond_3
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isDoubleTapLockEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 159
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getDoubleTapLockType()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 161
    sget-object p1, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->DOUBLE_TAP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    sget-object p2, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->SCREEN_LOCK_DEVICE_ADMIN:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V

    goto :goto_0

    :cond_4
    if-ne p1, v0, :cond_5

    .line 163
    sget-object p1, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->DOUBLE_TAP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    sget-object p2, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->SCREEN_LOCK_WRITE_SETTINGS:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V

    .line 166
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isHomeToSearchEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 167
    sget-object p1, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->HOME:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    sget-object p2, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->EVIE_SEARCH:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V

    :cond_6
    return-void
.end method

.method public saveSearchDoneButtonBehavior(I)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "search_done_button_behavior"

    .line 229
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 473
    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->NONE:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {p2, v1}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getKeyForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 476
    :cond_0
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getKeyForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 478
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAllAppsDisplayType(Ljava/lang/String;)V
    .locals 2

    const-string v0, "grid"

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "list"

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be an all apps display type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "all_apps_display_type"

    .line 279
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 280
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAllAppsIndexType(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    .line 253
    :pswitch_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "all_apps_index_type"

    .line 254
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setAllAppsShowNewApps(Z)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "all_apps_show_new"

    .line 289
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAppDrawerHintEnabled(Z)V
    .locals 3

    .line 410
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isAppDrawerHintEnabled()Z

    move-result v0

    .line 412
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "app_drawer_hint_enabled"

    .line 413
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 414
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eq v0, p1, :cond_0

    .line 417
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    :cond_0
    return-void
.end method

.method public setCurrentVersion(I)V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_version"

    .line 455
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 456
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDesktopLocked(Z)V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "desktop_locked"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDesktopUnlockedTemporarily(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->desktopUnlockedAt:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 330
    iput-wide v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->desktopUnlockedAt:J

    :goto_0
    return-void
.end method

.method public setFirstVersion(I)V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_version"

    .line 449
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 450
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFolderAlphabetSortEnabled(Z)V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "folder_alpha_sort_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFolderShapeStyle(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 387
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a permitted value!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 390
    :pswitch_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "folder_shape_style"

    .line 391
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 392
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setIconNormalizationSetting(Z)V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "icon_normalization"

    .line 401
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 402
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIntentForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Landroid/content/Intent;)V
    .locals 2

    .line 501
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getIntentKeyForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Ljava/lang/String;

    move-result-object p1

    .line 502
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p2, :cond_0

    .line 504
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 506
    invoke-virtual {p2, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 508
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setScrollingWallpaperType(Z)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "scrolling_wallpaper_type"

    .line 302
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSearchBarDesktopEnabled(Z)V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "search_bar_desktop_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSearchBarStyle(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 342
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "search_bar_style"

    .line 343
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSideScreenEnabled(Z)V
    .locals 3

    .line 426
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSideScreenEnabled()Z

    move-result v0

    .line 428
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "side_screen_enabled"

    .line 429
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 430
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eq v0, p1, :cond_0

    .line 433
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    :cond_0
    return-void
.end method

.method public setUseCelsius(Z)V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "use_celsius"

    .line 443
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 444
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public upgradeIfNeeded()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->sharedPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x3

    invoke-static {v0, p0, v1}, Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil;->processUpgrade(Landroid/content/SharedPreferences;Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;I)Z

    return-void
.end method
