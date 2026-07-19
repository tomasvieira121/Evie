.class public Lcom/voxel/launcher3/LauncherBackupAgentHelper;
.super Landroid/app/backup/BackupAgentHelper;
.source "LauncherBackupAgentHelper.java"


# static fields
.field private static sBackupManager:Landroid/app/backup/BackupManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method public static dataChanged(Landroid/content/Context;)V
    .locals 1

    .line 50
    sget-object v0, Lcom/voxel/launcher3/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/voxel/launcher3/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    .line 53
    :cond_0
    sget-object p0, Lcom/voxel/launcher3/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 69
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherBackupAgentHelper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_restore_enabled"

    const/4 v2, 0x1

    .line 68
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v0, "LauncherBackupAgentHelper"

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    const-string v3, "enabled"

    goto :goto_1

    :cond_1
    const-string v3, "disabled"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LP"

    .line 72
    new-instance v1, Lcom/voxel/launcher3/LauncherPreferencesBackupHelper;

    .line 74
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2}, Lcom/voxel/launcher3/LauncherPreferencesBackupHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/LauncherBackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "LLP"

    .line 76
    new-instance v1, Lcom/voxel/launcher3/LauncherPreferencesBackupHelper;

    .line 78
    invoke-static {}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2}, Lcom/voxel/launcher3/LauncherPreferencesBackupHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/LauncherBackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "L"

    .line 80
    new-instance v1, Lcom/voxel/launcher3/LauncherBackupHelper;

    invoke-direct {v1, p0, v2}, Lcom/voxel/launcher3/LauncherBackupHelper;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/LauncherBackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 61
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/LauncherBackupAgentHelper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 63
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onDestroy()V

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 90
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherBackupAgentHelper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 92
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    .line 93
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-nez p2, :cond_0

    const-string p1, "LauncherBackupAgentHelper"

    const-string p2, "Nothing was restored, clearing DB"

    .line 96
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getLauncherProvider()Lcom/voxel/launcher3/LauncherProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherProvider;->createEmptyDB()V

    :cond_0
    return-void
.end method
