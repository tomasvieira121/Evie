.class public Lcom/voxel/launcher3/Launcher_ViewBinding;
.super Ljava/lang/Object;
.source "Launcher_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/voxel/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/Launcher;Landroid/view/View;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher_ViewBinding;->target:Lcom/voxel/launcher3/Launcher;

    const-string v0, "field \'mLauncherView\'"

    .line 39
    const-class v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v2, 0x7f0a0177

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mLauncherView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v0, "field \'mWorkspace\'"

    .line 40
    const-class v1, Lcom/voxel/launcher3/Workspace;

    const v2, 0x7f0a02fd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/Workspace;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    const-string v0, "field \'mMainLayer\'"

    .line 41
    const-class v1, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    const v2, 0x7f0a0196

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    const-string v0, "field \'mMainLayerBackground\'"

    .line 42
    const-class v1, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    const v2, 0x7f0a0197

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    const-string v0, "field \'mMainLayerDarken\'"

    .line 43
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0198

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mMainLayerDarken:Landroid/widget/ImageView;

    const-string v0, "field \'mIndicatorContainer\'"

    .line 44
    const-class v1, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    const v2, 0x7f0a0168

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mIndicatorContainer:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    const-string v0, "field \'mAllAppsUpChevron\'"

    .line 45
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a003b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mAllAppsUpChevron:Landroid/widget/ImageView;

    const-string v0, "field \'mPageIndicators\'"

    const v1, 0x7f0a01eb

    .line 46
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mPageIndicators:Landroid/view/View;

    const-string v0, "field \'mDragLayer\'"

    .line 47
    const-class v1, Lcom/voxel/launcher3/dragndrop/DragLayer;

    const v2, 0x7f0a00dd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/dragndrop/DragLayer;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    const-string v0, "field \'mHotseat\'"

    .line 48
    const-class v1, Lcom/voxel/launcher3/Hotseat;

    const v2, 0x7f0a0155

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/Hotseat;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    const-string v0, "field \'mHotseatBg\'"

    .line 49
    const-class v1, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;

    const v2, 0x7f0a0156

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mHotseatBg:Lcom/voxel/simplesearchlauncher/view/HotseatImageView;

    const-string v0, "field \'mOverviewPanel\'"

    .line 50
    const-class v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a01e7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    const-string v0, "field \'mSearchDropTargetBar\'"

    .line 51
    const-class v1, Lcom/voxel/launcher3/SearchDropTargetBar;

    const v2, 0x7f0a0242

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/SearchDropTargetBar;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    const-string v0, "field \'mSearchLayout\'"

    const v1, 0x7f0a024c

    .line 52
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mSearchLayout:Landroid/view/View;

    const-string v0, "field \'mQsb\'"

    const v1, 0x7f0a020e

    .line 53
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mQsb:Landroid/view/View;

    const-string v0, "field \'mQsbSearchView\'"

    .line 54
    const-class v1, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    const v2, 0x7f0a020f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    const-string v0, "field \'mQsbSearchViewEditText\'"

    .line 55
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a0255

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewEditText:Landroid/widget/EditText;

    const-string v0, "field \'mPullDownRecyclerView\'"

    .line 56
    const-class v1, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    const v2, 0x7f0a020d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    const-string v0, "field \'mBlurLayoutView\'"

    .line 57
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a0154

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mBlurLayoutView:Landroid/widget/FrameLayout;

    const-string v0, "field \'mBlurImageView\'"

    .line 58
    const-class v1, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    const v2, 0x7f0a0153

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mBlurImageView:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    const-string v0, "field \'mAllAppsBackground\'"

    .line 59
    const-class v1, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    const v2, 0x7f0a003a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mAllAppsBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    const-string v0, "field \'mAllAppsContainer\'"

    const v1, 0x7f0a003c

    .line 60
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mAllAppsContainer:Landroid/view/View;

    const-string v0, "field \'mGoogleNowAnimBackground\'"

    .line 61
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a0136

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimBackground:Landroid/widget/FrameLayout;

    const-string v0, "field \'mGoogleNowAnimIcon\'"

    .line 62
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0137

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimIcon:Landroid/widget/ImageView;

    const-string v0, "field \'mFocusHandler\'"

    .line 63
    const-class v1, Lcom/voxel/launcher3/FocusIndicatorView;

    const v2, 0x7f0a0118

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/FocusIndicatorView;

    iput-object v0, p1, Lcom/voxel/launcher3/Launcher;->mFocusHandler:Lcom/voxel/launcher3/FocusIndicatorView;

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0801cb

    .line 66
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p1, Lcom/voxel/launcher3/Launcher;->mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher_ViewBinding;->target:Lcom/voxel/launcher3/Launcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lcom/voxel/launcher3/Launcher_ViewBinding;->target:Lcom/voxel/launcher3/Launcher;

    .line 76
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mLauncherView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 77
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    .line 78
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    .line 79
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    .line 80
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mMainLayerDarken:Landroid/widget/ImageView;

    .line 81
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mIndicatorContainer:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    .line 82
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mAllAppsUpChevron:Landroid/widget/ImageView;

    .line 83
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mPageIndicators:Landroid/view/View;

    .line 84
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    .line 85
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    .line 86
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mHotseatBg:Lcom/voxel/simplesearchlauncher/view/HotseatImageView;

    .line 87
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    .line 88
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    .line 89
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mSearchLayout:Landroid/view/View;

    .line 90
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mQsb:Landroid/view/View;

    .line 91
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    .line 92
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewEditText:Landroid/widget/EditText;

    .line 93
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    .line 94
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mBlurLayoutView:Landroid/widget/FrameLayout;

    .line 95
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mBlurImageView:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    .line 96
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mAllAppsBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    .line 97
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mAllAppsContainer:Landroid/view/View;

    .line 98
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimBackground:Landroid/widget/FrameLayout;

    .line 99
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimIcon:Landroid/widget/ImageView;

    .line 100
    iput-object v1, v0, Lcom/voxel/launcher3/Launcher;->mFocusHandler:Lcom/voxel/launcher3/FocusIndicatorView;

    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
