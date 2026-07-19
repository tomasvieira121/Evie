.class Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$1;
.super Ljava/lang/Object;
.source "DockSettingsFragment.java"

# interfaces
.implements Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->setupControls(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-static {p2}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->getIconSizeViewHolder()Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    move-result-object p2

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->mDiscreteSeekBar:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    if-ne p1, p2, :cond_1

    .line 183
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->access$200(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)V

    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 2

    .line 191
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->access$300(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getHotseatGridLineController()Lcom/voxel/simplesearchlauncher/view/GridLineController;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->access$400(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/voxel/simplesearchlauncher/view/GridLineController;->updateGridLines(II)V

    .line 193
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/GridLineController;->showGridLines()V

    return-void
.end method

.method public onStopTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0

    .line 198
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->access$300(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)Lcom/voxel/simplesearchlauncher/view/MockLauncherController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->getHotseatGridLineController()Lcom/voxel/simplesearchlauncher/view/GridLineController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/GridLineController;->hideGridLines()V

    return-void
.end method
