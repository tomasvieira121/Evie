.class Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;
.super Ljava/lang/Object;
.source "FolderSettingsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->setupMockTarget()V
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

    .line 250
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 253
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockTarget:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 254
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07021d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockTarget:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 256
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 257
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 258
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 259
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 262
    new-array v1, v4, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v0, v1, v3

    .line 265
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockTarget:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    invoke-static {v4}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->access$100(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;

    move-result-object v4

    invoke-interface {v4}, Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {v0, v4, v1, v2}, Lcom/voxel/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 267
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    aget v1, v1, v3

    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->access$202(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;F)F

    .line 268
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->access$200(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method
