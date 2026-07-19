.class Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$1;
.super Ljava/lang/Object;
.source "DesktopSettingsFragment.java"

# interfaces
.implements Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->setupControls(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)V

    return-void
.end method

.method public onStartTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 2

    .line 216
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getWorkspaceGridLineController()Lcom/voxel/simplesearchlauncher/view/GridLineController;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->access$200(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->access$200(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    iget v1, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/view/GridLineController;->updateGridLines(II)V

    .line 218
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/GridLineController;->showGridLines()V

    return-void
.end method

.method public onStopTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0

    .line 223
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getWorkspaceGridLineController()Lcom/voxel/simplesearchlauncher/view/GridLineController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/GridLineController;->hideGridLines()V

    return-void
.end method
