.class Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$2;
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

    .line 222
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->access$500(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)V

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
