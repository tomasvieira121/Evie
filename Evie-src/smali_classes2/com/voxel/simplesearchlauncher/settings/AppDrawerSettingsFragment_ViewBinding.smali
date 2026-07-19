.class public Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment_ViewBinding;
.super Ljava/lang/Object;
.source "AppDrawerSettingsFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    const-string v0, "field \'mScrollView\'"

    .line 23
    const-class v1, Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0a022d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const-string v0, "field \'mMockView\'"

    const v1, 0x7f0a01a5

    .line 24
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockView:Landroid/view/View;

    const-string v0, "field \'mMockTarget\'"

    .line 25
    const-class v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a01a7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockTarget:Landroid/view/ViewGroup;

    const-string v0, "field \'mGridSettingsView\'"

    .line 26
    const-class v1, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    const v2, 0x7f0a013a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    iput-object p2, p1, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;

    .line 36
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 37
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockView:Landroid/view/View;

    .line 38
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mMockTarget:Landroid/view/ViewGroup;

    .line 39
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/settings/AppDrawerSettingsFragment;->mGridSettingsView:Lcom/voxel/simplesearchlauncher/settings/gridsettings/GridSettingsView;

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
