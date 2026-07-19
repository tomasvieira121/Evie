.class public Lcom/voxel/launcher3/LauncherPreferencesBackupHelper;
.super Landroid/app/backup/SharedPreferencesBackupHelper;
.source "LauncherPreferencesBackupHelper.java"


# instance fields
.field private final mRestoreEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 33
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 34
    iput-boolean p3, p0, Lcom/voxel/launcher3/LauncherPreferencesBackupHelper;->mRestoreEnabled:Z

    return-void
.end method


# virtual methods
.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 2

    .line 39
    iget-boolean v0, p0, Lcom/voxel/launcher3/LauncherPreferencesBackupHelper;->mRestoreEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "LauncherPreferencesBackupHelper"

    const-string v1, "restoring preferences"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-super {p0, p1}, Landroid/app/backup/SharedPreferencesBackupHelper;->restoreEntity(Landroid/app/backup/BackupDataInputStream;)V

    :cond_0
    return-void
.end method
