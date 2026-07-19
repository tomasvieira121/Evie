.class public Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# instance fields
.field final mItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field final mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 75
    new-instance v0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate$1;-><init>(Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 35
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 61
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 62
    const-class v0, Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 63
    instance-of v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lcom/voxel/recyclerview/widget/RecyclerView;

    .line 65
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 53
    const-class p1, Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 40
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 44
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
