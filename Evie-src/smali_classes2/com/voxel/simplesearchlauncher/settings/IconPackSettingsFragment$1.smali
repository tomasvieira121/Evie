.class Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;
.super Ljava/lang/Object;
.source "IconPackSettingsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->setupMockLauncher(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;

.field final synthetic val$mockTarget:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;Landroid/view/View;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;->val$mockTarget:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;->val$mockTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 240
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07021d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 241
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;->val$mockTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 242
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 243
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 244
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    const/4 v1, 0x2

    .line 246
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v0, v1, v3

    .line 249
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;->val$mockTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;

    invoke-static {v4}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    move-result-object v4

    invoke-interface {v4}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {v0, v4, v1, v2}, Lcom/voxel/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 251
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;

    aget v1, v1, v3

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->access$202(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;I)I

    .line 252
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;->access$200(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
