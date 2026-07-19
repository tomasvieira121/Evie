.class public Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SelectAppFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;Landroid/view/View;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;

    const-string v0, "field \'mAllAppsRecyclerView\'"

    .line 21
    const-class v1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;

    const v2, 0x7f0a0218

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;

    iput-object p2, p1, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mAllAppsRecyclerView:Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;

    .line 31
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mAllAppsRecyclerView:Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
