.class Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView$1;
.super Ljava/lang/Object;
.source "GridSettingsView.java"

# interfaces
.implements Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_1

    .line 106
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->access$000(Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;)Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsSeekBarViewHolder;->getDiscreteSeekBar()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->updateIconSize()V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->updateGrid()V

    .line 113
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->access$100(Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;)Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->access$100(Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;)Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;->onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->access$100(Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;)Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->access$100(Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;)Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;->onStartTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->access$100(Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;)Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;->access$100(Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;)Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;->onStopTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V

    :cond_0
    return-void
.end method
