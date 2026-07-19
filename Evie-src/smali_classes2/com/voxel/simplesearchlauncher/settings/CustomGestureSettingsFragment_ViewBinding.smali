.class public Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment_ViewBinding;
.super Ljava/lang/Object;
.source "CustomGestureSettingsFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    const-string v0, "field \'mRecyclerView\'"

    .line 22
    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0a0218

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;

    .line 32
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/settings/CustomGestureSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
