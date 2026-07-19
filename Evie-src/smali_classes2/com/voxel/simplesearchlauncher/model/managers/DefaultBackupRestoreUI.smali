.class Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;
.super Ljava/lang/Object;
.source "DefaultBackupRestoreUI.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic lambda$onBackupFailure$1(Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;->mActivity:Landroid/app/Activity;

    const v1, 0x7f120073

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$onBackupSuccess$0(Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;->mActivity:Landroid/app/Activity;

    const v1, 0x7f120078

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$onDeleteFailure$5(Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;->mActivity:Landroid/app/Activity;

    const v1, 0x7f120082

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$onDeleteSuccess$4(Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;->mActivity:Landroid/app/Activity;

    const v1, 0x7f12007d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$onRestoreFailure$3(Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;->mActivity:Landroid/app/Activity;

    const v1, 0x7f120087

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$onRestoreSuccess$2(Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;->mActivity:Landroid/app/Activity;

    const v1, 0x7f120085

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public handleAvailableRestoreData(Lcom/google/android/gms/drive/MetadataBuffer;I)V
    .locals 0

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/drive/MetadataBuffer;->release()V

    return-void
.end method

.method public onBackupFailure()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    new-instance v1, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$DefaultBackupRestoreUI$IgpGdvC3wokNtjjHwkOd65JrxRk;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$DefaultBackupRestoreUI$IgpGdvC3wokNtjjHwkOd65JrxRk;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackupSuccess()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    new-instance v1, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$DefaultBackupRestoreUI$NqGRbEDx3ejrHDz4XjvrwhlOoZA;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$DefaultBackupRestoreUI$NqGRbEDx3ejrHDz4XjvrwhlOoZA;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeleteFailure()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance v1, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$DefaultBackupRestoreUI$uacUOae6xBcy6s7TgDqs0-M9CQ4;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$DefaultBackupRestoreUI$uacUOae6xBcy6s7TgDqs0-M9CQ4;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeleteSuccess()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance v1, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$DefaultBackupRestoreUI$vTtErGoIjlEtS9lbmn5GvtxVFkM;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$DefaultBackupRestoreUI$vTtErGoIjlEtS9lbmn5GvtxVFkM;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRestoreFailure()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance v1, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$DefaultBackupRestoreUI$VrGjxUhldw_vi98K8Tn2JW6FVjA;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$DefaultBackupRestoreUI$VrGjxUhldw_vi98K8Tn2JW6FVjA;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRestoreSuccess()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    new-instance v1, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$DefaultBackupRestoreUI$RTnzKZEQH6Wcpi-L6b2ru-C32E0;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$DefaultBackupRestoreUI$RTnzKZEQH6Wcpi-L6b2ru-C32E0;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/DefaultBackupRestoreUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateUI(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
