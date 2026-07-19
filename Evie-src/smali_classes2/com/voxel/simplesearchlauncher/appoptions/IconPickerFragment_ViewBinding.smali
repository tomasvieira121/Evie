.class public Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment_ViewBinding;
.super Ljava/lang/Object;
.source "IconPickerFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

.field private view7f0a023c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;Landroid/view/View;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    const-string v0, "field \'mRecyclerView\'"

    .line 26
    const-class v1, Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    const v2, 0x7f0a0218

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    const-string v0, "field \'mTitleBar\'"

    const v1, 0x7f0a02bb

    .line 27
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mTitleBar:Landroid/view/View;

    const-string v0, "field \'mSearchBar\'"

    const v1, 0x7f0a0236

    .line 28
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchBar:Landroid/view/View;

    const-string v0, "field \'mSearchEditText\'"

    .line 29
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a0255

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchEditText:Landroid/widget/EditText;

    const-string v0, "field \'mLoadingIndicator\'"

    const v1, 0x7f0a018e

    .line 30
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mLoadingIndicator:Landroid/view/View;

    const-string v0, "method \'onSearchButtonClick\'"

    const v1, 0x7f0a023c

    .line 31
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment_ViewBinding;->view7f0a023c:Landroid/view/View;

    .line 33
    new-instance v0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment_ViewBinding$1;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment_ViewBinding;Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment_ViewBinding;->target:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    .line 48
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    .line 49
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mTitleBar:Landroid/view/View;

    .line 50
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchBar:Landroid/view/View;

    .line 51
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchEditText:Landroid/widget/EditText;

    .line 52
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mLoadingIndicator:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment_ViewBinding;->view7f0a023c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment_ViewBinding;->view7f0a023c:Landroid/view/View;

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
