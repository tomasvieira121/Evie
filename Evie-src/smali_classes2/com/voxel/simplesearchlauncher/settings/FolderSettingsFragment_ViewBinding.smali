.class public Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment_ViewBinding;
.super Ljava/lang/Object;
.source "FolderSettingsFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    const-string v0, "field \'mScrollView\'"

    .line 23
    const-class v1, Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0a022d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const-string v0, "field \'mMockView\'"

    .line 24
    const-class v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a01a5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockView:Landroid/view/ViewGroup;

    const-string v0, "field \'mMockTarget\'"

    .line 25
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a01a7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockTarget:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;

    .line 35
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 36
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockView:Landroid/view/ViewGroup;

    .line 37
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/settings/FolderSettingsFragment;->mMockTarget:Landroid/widget/LinearLayout;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
