.class public Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding;
.super Ljava/lang/Object;
.source "AppOptionsFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

.field private view7f0a009f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;Landroid/view/View;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    const-string v0, "field \'mIconImageView\'"

    .line 26
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0158

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconImageView:Landroid/widget/ImageView;

    const-string v0, "field \'mIconLabel\'"

    .line 27
    const-class v1, Lcom/voxel/launcher3/ExtendedEditText;

    const v2, 0x7f0a02aa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/ExtendedEditText;

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    const-string v0, "field \'mRevertButton\' and method \'onCloseClick\'"

    const v1, 0x7f0a009f

    .line 28
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 29
    iput-object p2, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mRevertButton:Landroid/view/View;

    .line 30
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding;->view7f0a009f:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding$1;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding;Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    .line 46
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconImageView:Landroid/widget/ImageView;

    .line 47
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    .line 48
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mRevertButton:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding;->view7f0a009f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment_ViewBinding;->view7f0a009f:Landroid/view/View;

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
