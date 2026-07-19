.class public interface abstract Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;
.super Ljava/lang/Object;
.source "BackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BackupRestoreUI"
.end annotation


# virtual methods
.method public abstract handleAvailableRestoreData(Lcom/google/android/gms/drive/MetadataBuffer;I)V
.end method

.method public abstract onBackupFailure()V
.end method

.method public abstract onBackupSuccess()V
.end method

.method public abstract onDeleteFailure()V
.end method

.method public abstract onDeleteSuccess()V
.end method

.method public abstract onRestoreFailure()V
.end method

.method public abstract onRestoreSuccess()V
.end method

.method public abstract updateUI(Ljava/lang/String;Z)V
.end method
