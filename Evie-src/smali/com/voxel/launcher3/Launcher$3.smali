.class Lcom/voxel/launcher3/Launcher$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 4

    .line 989
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 993
    :goto_0
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v3, v3, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v3}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 994
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v3, v3, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v3, v0}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 997
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    invoke-virtual {v0, v2, v1}, Lcom/voxel/launcher3/SearchDropTargetBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 999
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getOpenFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1000
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, v1, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->setPivotX(F)V

    .line 1001
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, v1, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->setPivotY(F)V

    .line 1002
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->access$1300(Lcom/voxel/launcher3/Launcher;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    return-void
.end method

.method public onAnimationStart()V
    .locals 4

    .line 958
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->clearAnimation()V

    .line 962
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 963
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->buildLayer()V

    const/4 v0, 0x0

    .line 965
    :goto_0
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v3, v3, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v3}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 966
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v3, v3, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v3, v0}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 967
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v3, v3, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v3, v0}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->buildLayer()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 969
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    invoke-virtual {v0, v2, v1}, Lcom/voxel/launcher3/SearchDropTargetBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 970
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/voxel/launcher3/SearchDropTargetBar;->buildLayer()V

    return-void
.end method

.method public onAnimationUpdate()V
    .locals 2

    .line 975
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$700(Lcom/voxel/launcher3/Launcher;)V

    .line 979
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$800(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->getAnimatedRatio()F

    move-result v0

    .line 981
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->access$900(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    .line 982
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->access$1000(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    .line 983
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->access$1100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    .line 984
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$3;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->access$1200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    return-void
.end method
