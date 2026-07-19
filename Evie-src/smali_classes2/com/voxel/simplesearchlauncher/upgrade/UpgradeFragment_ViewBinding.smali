.class public Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment_ViewBinding;
.super Ljava/lang/Object;
.source "UpgradeFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;Landroid/view/View;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;

    const-string v0, "field \'mContainer\'"

    const v1, 0x7f0a00ae

    .line 20
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mContainer:Landroid/view/View;

    const-string v0, "field \'mBackground\'"

    const v1, 0x7f0a0059

    .line 21
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mBackground:Landroid/view/View;

    const-string v0, "field \'mCloseButton\'"

    const v1, 0x7f0a00a0

    .line 22
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mCloseButton:Landroid/view/View;

    const-string v0, "field \'mDoneButton\'"

    const v1, 0x7f0a00d7

    .line 23
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mDoneButton:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;

    .line 33
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mContainer:Landroid/view/View;

    .line 34
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mBackground:Landroid/view/View;

    .line 35
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mCloseButton:Landroid/view/View;

    .line 36
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mDoneButton:Landroid/view/View;

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
