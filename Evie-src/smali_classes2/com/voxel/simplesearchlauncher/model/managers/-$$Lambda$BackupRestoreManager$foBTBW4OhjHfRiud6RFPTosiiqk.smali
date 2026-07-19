.class public final synthetic Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$foBTBW4OhjHfRiud6RFPTosiiqk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$foBTBW4OhjHfRiud6RFPTosiiqk;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$foBTBW4OhjHfRiud6RFPTosiiqk;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-static {v0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->lambda$signOut$6(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
