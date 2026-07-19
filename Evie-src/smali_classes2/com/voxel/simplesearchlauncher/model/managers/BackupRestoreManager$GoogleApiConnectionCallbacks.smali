.class Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;
.super Ljava/lang/Object;
.source "BackupRestoreManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoogleApiConnectionCallbacks"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Landroid/app/Activity;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;->this$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .line 768
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GoogleApiClient connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;->this$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->access$200(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 770
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;->this$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getGoogleAccountEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->access$202(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;Ljava/lang/String;)Ljava/lang/String;

    .line 772
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;->this$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->access$200(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 773
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;->this$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->access$100(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;)V

    return-void

    .line 777
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;->this$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->refreshRestoreAvailable()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 779
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnConnected called, but not actually connected"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;->this$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->access$100(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;)V

    :goto_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 747
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleApiClient connection failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 754
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$GoogleApiConnectionCallbacks;->this$0:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->access$100(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    .line 786
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GoogleApiClient disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
