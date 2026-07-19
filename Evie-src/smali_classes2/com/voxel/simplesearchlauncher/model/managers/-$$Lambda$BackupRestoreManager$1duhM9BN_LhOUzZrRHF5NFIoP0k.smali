.class public final synthetic Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$1duhM9BN_LhOUzZrRHF5NFIoP0k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

.field private final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$1duhM9BN_LhOUzZrRHF5NFIoP0k;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$1duhM9BN_LhOUzZrRHF5NFIoP0k;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$1duhM9BN_LhOUzZrRHF5NFIoP0k;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$BackupRestoreManager$1duhM9BN_LhOUzZrRHF5NFIoP0k;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->lambda$restoreFromZipInputStream$4(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Landroid/app/Activity;)V

    return-void
.end method
