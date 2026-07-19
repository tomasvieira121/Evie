.class Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$1;
.super Ljava/lang/Object;
.source "FolderSettingsFragment.java"

# interfaces
.implements Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)V

    return-void
.end method

.method public onStartTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0

    return-void
.end method
