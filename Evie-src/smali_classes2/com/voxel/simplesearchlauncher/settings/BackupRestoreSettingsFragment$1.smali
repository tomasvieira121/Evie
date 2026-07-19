.class Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$1;
.super Ljava/lang/Object;
.source "BackupRestoreSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;)Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;)Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getAccountEmail()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;)Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->isRestoreAvailable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->updateUI(Ljava/lang/String;Z)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;)Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->connect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
