.class Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$1;
.super Ljava/lang/Object;
.source "AppDrawerSettingsFragment.java"

# interfaces
.implements Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->setupControls(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 173
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;)V

    :cond_0
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
