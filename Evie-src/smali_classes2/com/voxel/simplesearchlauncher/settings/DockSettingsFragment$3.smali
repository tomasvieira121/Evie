.class Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;
.super Ljava/lang/Object;
.source "DockSettingsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->setupMockLauncher(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

.field final synthetic val$mockTarget:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;Landroid/view/View;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;->val$mockTarget:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 262
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;->val$mockTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 264
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07021d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 265
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;->val$mockTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->access$600(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 266
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->access$600(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 267
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->access$600(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 268
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->access$600(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    const/4 v1, 0x2

    .line 270
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v0, v1, v3

    .line 273
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;->val$mockTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-static {v4}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->access$700(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    move-result-object v4

    invoke-interface {v4}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {v0, v4, v1, v2}, Lcom/voxel/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 275
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    aget v1, v1, v3

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->access$600(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->access$802(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;F)F

    .line 276
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->access$600(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;->access$800(Lcom/voxel/simplesearchlauncher/settings/DockSettingsFragment;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
