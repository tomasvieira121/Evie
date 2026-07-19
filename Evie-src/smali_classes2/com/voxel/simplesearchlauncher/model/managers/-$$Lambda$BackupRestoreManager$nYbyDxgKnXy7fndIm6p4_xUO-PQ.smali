.class public final synthetic Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$nYbyDxgKnXy7fndIm6p4_xUO-PQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$nYbyDxgKnXy7fndIm6p4_xUO-PQ;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    iput-boolean p2, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$nYbyDxgKnXy7fndIm6p4_xUO-PQ;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$nYbyDxgKnXy7fndIm6p4_xUO-PQ;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    iget-boolean v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$nYbyDxgKnXy7fndIm6p4_xUO-PQ;->f$1:Z

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-static {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->lambda$null$10(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;ZLcom/google/android/gms/common/api/Status;)V

    return-void
.end method
