.class Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;


# direct methods
.method constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 78
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 79
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 87
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1, p2, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
