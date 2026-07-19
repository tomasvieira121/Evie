.class public Lcom/voxel/simplesearchlauncher/popup/PopupFragment_ViewBinding;
.super Ljava/lang/Object;
.source "PopupFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;Landroid/view/View;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    const-string v0, "field \'mPopupContainer\'"

    .line 20
    const-class v1, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    const v2, 0x7f0a0200

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mPopupContainer:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    const-string v0, "field \'mBackgroundWash\'"

    const v1, 0x7f0a005c

    .line 21
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mBackgroundWash:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    .line 31
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mPopupContainer:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    .line 32
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mBackgroundWash:Landroid/view/View;

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
