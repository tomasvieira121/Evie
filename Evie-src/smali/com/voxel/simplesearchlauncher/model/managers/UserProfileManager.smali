.class public Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;
.super Ljava/lang/Object;
.source "UserProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;,
        Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static instance:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->context:Landroid/content/Context;

    return-void
.end method

.method private getActionDefaultItemsSharedPref()Landroid/content/SharedPreferences;
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->context:Landroid/content/Context;

    const-string v1, "action_default_items_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->instance:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    if-eqz v1, :cond_0

    .line 84
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->instance:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 81
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

.method private getUserProfilePref()Landroid/content/SharedPreferences;
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->context:Landroid/content/Context;

    const-string v1, "user_profile_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->instance:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 68
    monitor-exit v0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 75
    :try_start_1
    new-instance v1, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->instance:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    monitor-exit v0

    return-void

    .line 72
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must be provided."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public clearDefaultActionItem(Ljava/lang/String;)V
    .locals 1

    .line 286
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getActionDefaultItemsSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 288
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getBackupUserData(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    .line 119
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "launcher_data_favorites"

    .line 125
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    new-instance v0, Lcom/voxel/launcher3/LauncherBackupHelper;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/voxel/launcher3/LauncherBackupHelper;-><init>(Landroid/content/Context;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    :try_start_1
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherBackupHelper;->getSerializedFavorites()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 130
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 133
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 135
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v4, :cond_1

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 140
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 142
    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "class"

    .line 143
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "value"

    .line 144
    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_5

    return-object v1

    .line 152
    :cond_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "dataType"

    .line 153
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 154
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    :catch_1
    move-exception p1

    .line 158
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method public getDefaultActionItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 273
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getActionDefaultItemsSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 274
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGoogleAccountEmail()Ljava/lang/String;
    .locals 3

    .line 268
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getUserProfilePref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "google_account_email"

    const/4 v2, 0x0

    .line 269
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLauncherDefaultState()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;
    .locals 3

    .line 239
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getUserProfilePref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "launcher_default_state"

    const/4 v2, 0x0

    .line 240
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;->UNKNOWN:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    return-object v0

    .line 244
    :cond_0
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;->valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    move-result-object v0

    return-object v0
.end method

.method public getRestorableUserDataTypeIds()[Ljava/lang/String;
    .locals 4

    .line 104
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getRestorableUserDataTypes()[Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;

    move-result-object v0

    .line 105
    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 106
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 107
    aget-object v3, v0, v2

    .line 108
    invoke-virtual {p0, v3}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getUserDataTypeId(Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_0
    array-length v2, v0

    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 111
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-static {}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 112
    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    invoke-static {}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 113
    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    return-object v1
.end method

.method public getRestorableUserDataTypes()[Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;
    .locals 3

    const/4 v0, 0x1

    .line 88
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;->PROFILE_DATA:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getUserDataTypeId(Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;)Ljava/lang/String;
    .locals 3

    .line 94
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$1;->$SwitchMap$com$voxel$simplesearchlauncher$model$managers$UserProfileManager$UserDataType:[I

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User data type not handled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p1, "launcher_data_favorites"

    return-object p1

    :pswitch_1
    const-string p1, "user_profile_pref"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public saveRestoreLauncherFavoritesData(Lorg/json/JSONObject;)V
    .locals 4

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 224
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 227
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 230
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 234
    :cond_0
    new-instance p1, Lcom/voxel/launcher3/LauncherBackupHelper;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Lcom/voxel/launcher3/LauncherBackupHelper;-><init>(Landroid/content/Context;Z)V

    .line 235
    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/LauncherBackupHelper;->restoreSerializedFavorites(Ljava/util/Map;)V

    return-void
.end method

.method public saveRestoredUserData(Lorg/json/JSONObject;)V
    .locals 6

    :try_start_0
    const-string v0, "dataType"

    .line 167
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string p1, "launcher_data_favorites"

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->saveRestoreLauncherFavoritesData(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 178
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 179
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 182
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 184
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "class"

    .line 186
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    .line 187
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 188
    const-class v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 190
    :cond_2
    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 191
    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 192
    :cond_3
    const-class v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 193
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_4

    .line 194
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 195
    :cond_4
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 196
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->floatValue()F

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 198
    :cond_5
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 200
    :cond_6
    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 201
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 202
    :cond_7
    const-class v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 203
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_8

    .line 204
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 206
    :cond_8
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 208
    :cond_9
    const-class v5, Ljava/util/Set;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    check-cast v3, Ljava/util/Set;

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 213
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 217
    :cond_a
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void

    :catch_1
    move-exception p1

    .line 170
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public setDefaultActionItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 278
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getActionDefaultItemsSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 280
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "has_set_default_action_item"

    const/4 p2, 0x1

    .line 281
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setGoogleAccount(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 3

    .line 255
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getUserProfilePref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "google_account_id"

    .line 258
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "google_account_email"

    .line 259
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    const-string v1, "google_account_id"

    .line 261
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "google_account_email"

    .line 262
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 264
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLauncherDefaultState(Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;)V
    .locals 2

    .line 248
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getUserProfilePref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launcher_default_state"

    .line 250
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
