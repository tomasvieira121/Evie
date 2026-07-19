.class public final synthetic Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$cunaWN85F6rQfXiU_OE-3r219GE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$cunaWN85F6rQfXiU_OE-3r219GE;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$cunaWN85F6rQfXiU_OE-3r219GE;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$cunaWN85F6rQfXiU_OE-3r219GE;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$cunaWN85F6rQfXiU_OE-3r219GE;->f$1:Landroid/content/Context;

    check-cast p1, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;

    invoke-static {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->lambda$requestBackup$1(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Landroid/content/Context;Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;)V

    return-void
.end method
