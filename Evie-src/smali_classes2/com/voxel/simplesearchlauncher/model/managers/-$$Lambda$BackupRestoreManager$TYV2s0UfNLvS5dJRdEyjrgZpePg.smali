.class public final synthetic Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$TYV2s0UfNLvS5dJRdEyjrgZpePg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

.field private final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$TYV2s0UfNLvS5dJRdEyjrgZpePg;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$TYV2s0UfNLvS5dJRdEyjrgZpePg;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$TYV2s0UfNLvS5dJRdEyjrgZpePg;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$TYV2s0UfNLvS5dJRdEyjrgZpePg;->f$1:Landroid/app/Activity;

    check-cast p1, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;

    invoke-static {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->lambda$restoreFromDriveId$5(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Landroid/app/Activity;Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;)V

    return-void
.end method
