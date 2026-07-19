.class Lcom/voxel/launcher3/Launcher$16;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Launcher;
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

    .line 2893
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFactorBeginChanging()V
    .locals 3

    .line 2897
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mAllAppsContainer:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2898
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1400(Lcom/voxel/launcher3/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2899
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->onTransitionPrepare()V

    .line 2900
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1000(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2901
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2902
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onFactorChanged(F)V
    .locals 5

    .line 2909
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mAllAppsContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1}, Lcom/voxel/launcher3/Launcher;->access$100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->getFactorDistance()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 2910
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mAllAppsContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->limitAlpha(F)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float v2, v2, v0

    .line 2912
    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->limitAlpha(F)F

    move-result v0

    .line 2915
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v2}, Lcom/voxel/launcher3/Launcher;->access$1400(Lcom/voxel/launcher3/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-float v2, v1, v0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2921
    :goto_0
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v3}, Lcom/voxel/launcher3/Launcher;->access$900(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2922
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v3}, Lcom/voxel/launcher3/Launcher;->access$900(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    .line 2924
    :cond_1
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v3}, Lcom/voxel/launcher3/Launcher;->access$1000(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2925
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v3}, Lcom/voxel/launcher3/Launcher;->access$1000(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    .line 2927
    :cond_2
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v3}, Lcom/voxel/launcher3/Launcher;->access$1100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2928
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v3}, Lcom/voxel/launcher3/Launcher;->access$1100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    .line 2930
    :cond_3
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v3}, Lcom/voxel/launcher3/Launcher;->access$1200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2931
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v3}, Lcom/voxel/launcher3/Launcher;->access$1200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    :cond_4
    sub-float v2, p1, v1

    .line 2935
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v3}, Lcom/voxel/launcher3/Launcher;->access$100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->getFactorDistance()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v2, v2, v3

    .line 2936
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v3, v3, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    if-eqz v3, :cond_5

    .line 2937
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v3, v3, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v3, v2}, Lcom/voxel/launcher3/Workspace;->setTranslationY(F)V

    .line 2939
    :cond_5
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v3, v3, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    if-eqz v3, :cond_6

    .line 2940
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v3, v3, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    invoke-virtual {v3, v2}, Lcom/voxel/launcher3/Hotseat;->setTranslationY(F)V

    .line 2942
    :cond_6
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v3, v3, Lcom/voxel/launcher3/Launcher;->mHotseatBg:Lcom/voxel/simplesearchlauncher/view/HotseatImageView;

    if-eqz v3, :cond_7

    .line 2943
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v3, v3, Lcom/voxel/launcher3/Launcher;->mHotseatBg:Lcom/voxel/simplesearchlauncher/view/HotseatImageView;

    invoke-virtual {v3, v2}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->setTranslationY(F)V

    .line 2945
    :cond_7
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v3, v3, Lcom/voxel/launcher3/Launcher;->mIndicatorContainer:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    if-eqz v3, :cond_8

    .line 2946
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v3, v3, Lcom/voxel/launcher3/Launcher;->mIndicatorContainer:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    invoke-virtual {v3, v2}, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->setTranslationY(F)V

    .line 2948
    :cond_8
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v3, v3, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    if-eqz v3, :cond_9

    .line 2949
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v3}, Lcom/voxel/launcher3/Launcher;->access$3100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->put(Ljava/lang/Object;F)V

    :cond_9
    const/4 v2, 0x0

    cmpl-float v3, v0, v1

    if-ltz v3, :cond_a

    const/4 v3, 0x4

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    .line 2959
    :goto_1
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v4, v4, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    if-eqz v4, :cond_b

    .line 2960
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v4, v4, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v4, v3}, Lcom/voxel/launcher3/Workspace;->setVisibility(I)V

    .line 2962
    :cond_b
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v4, v4, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    if-eqz v4, :cond_c

    .line 2963
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v4, v4, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    invoke-virtual {v4, v3}, Lcom/voxel/launcher3/Hotseat;->setVisibility(I)V

    .line 2968
    :cond_c
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v4, v4, Lcom/voxel/launcher3/Launcher;->mHotseatBg:Lcom/voxel/simplesearchlauncher/view/HotseatImageView;

    if-eqz v4, :cond_d

    .line 2969
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v4, v4, Lcom/voxel/launcher3/Launcher;->mHotseatBg:Lcom/voxel/simplesearchlauncher/view/HotseatImageView;

    invoke-virtual {v4, v3}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->setVisibility(I)V

    .line 2971
    :cond_d
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v4, v4, Lcom/voxel/launcher3/Launcher;->mIndicatorContainer:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    if-eqz v4, :cond_e

    .line 2972
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v4, v4, Lcom/voxel/launcher3/Launcher;->mIndicatorContainer:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    invoke-virtual {v4, v3}, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->setVisibility(I)V

    .line 2974
    :cond_e
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v4, v4, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    if-eqz v4, :cond_f

    .line 2975
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v4, v4, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    invoke-virtual {v4, v3}, Lcom/voxel/launcher3/SearchDropTargetBar;->setVisibility(I)V

    .line 2978
    :cond_f
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v3, v3, Lcom/voxel/launcher3/Launcher;->mAllAppsBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    if-eqz v3, :cond_10

    .line 2979
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v3, v3, Lcom/voxel/launcher3/Launcher;->mAllAppsBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setImageAlpha(I)V

    .line 2983
    :cond_10
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_11

    .line 2985
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$3200(Lcom/voxel/launcher3/Launcher;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->onFocusChanged(Landroid/os/Handler;Z)V

    goto :goto_2

    :cond_11
    cmpl-float p1, p1, v1

    if-nez p1, :cond_12

    .line 2987
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$3200(Lcom/voxel/launcher3/Launcher;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->onFocusChanged(Landroid/os/Handler;Z)V

    :cond_12
    :goto_2
    return-void
.end method

.method public onFactorEndChanging()V
    .locals 3

    .line 2994
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mAllAppsContainer:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2995
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mAllAppsContainer:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2997
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    if-eqz v0, :cond_1

    .line 2998
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->onTransitionEnd()V

    .line 3000
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1000(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3001
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1000(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3003
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3004
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3006
    :cond_3
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3007
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$16;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$1100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method
