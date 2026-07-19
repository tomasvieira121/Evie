.class public final synthetic Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$4O3Q1F7JwPSllsJjt11YbMpR4Q8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$4O3Q1F7JwPSllsJjt11YbMpR4Q8;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    iput p2, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$4O3Q1F7JwPSllsJjt11YbMpR4Q8;->f$1:I

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$4O3Q1F7JwPSllsJjt11YbMpR4Q8;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$4O3Q1F7JwPSllsJjt11YbMpR4Q8;->f$1:I

    check-cast p1, Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;

    invoke-static {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->lambda$requestAvailableRestoreData$3(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;ILcom/google/android/gms/drive/DriveApi$MetadataBufferResult;)V

    return-void
.end method
