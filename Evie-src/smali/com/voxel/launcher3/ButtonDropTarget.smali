.class public Lcom/voxel/launcher3/ButtonDropTarget;
.super Landroid/widget/TextView;
.source "ButtonDropTarget.java"

# interfaces
.implements Lcom/voxel/launcher3/DropTarget;
.implements Lcom/voxel/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field protected mActive:Z

.field private mBottomDragPadding:I

.field protected mHoverColor:I

.field protected mLauncher:Lcom/voxel/launcher3/Launcher;

.field protected mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

.field protected final mTransitionDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/voxel/launcher3/ButtonDropTarget;->mHoverColor:I

    .line 59
    invoke-virtual {p0}, Lcom/voxel/launcher3/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b001f

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/voxel/launcher3/ButtonDropTarget;->mTransitionDuration:I

    const p2, 0x7f070109

    .line 61
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/ButtonDropTarget;->mBottomDragPadding:I

    return-void
.end method

.method private isRtl()Z
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/voxel/launcher3/ButtonDropTarget;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public acceptDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 86
    invoke-virtual {p0}, Lcom/voxel/launcher3/ButtonDropTarget;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 3

    .line 134
    invoke-super {p0, p1}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 135
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/voxel/launcher3/ButtonDropTarget;->mBottomDragPadding:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x2

    .line 137
    new-array v0, v0, [I

    .line 138
    iget-object v1, p0, Lcom/voxel/launcher3/ButtonDropTarget;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    const/4 v1, 0x0

    .line 139
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method

.method public getHoverColor()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/voxel/launcher3/ButtonDropTarget;->mHoverColor:I

    return v0
.end method

.method getIconRect(IIII)Landroid/graphics/Rect;
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/voxel/launcher3/ButtonDropTarget;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 150
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 151
    invoke-virtual {v0, p0, v1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 159
    invoke-direct {p0}, Lcom/voxel/launcher3/ButtonDropTarget;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget v0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/voxel/launcher3/ButtonDropTarget;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int v2, v0, p3

    goto :goto_0

    .line 163
    :cond_0
    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/voxel/launcher3/ButtonDropTarget;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    add-int v0, v2, p3

    .line 167
    :goto_0
    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/voxel/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, p4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int v4, v3, p4

    .line 170
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    sub-int/2addr p1, p3

    neg-int p1, p1

    .line 173
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p4

    neg-int p2, p2

    .line 174
    div-int/lit8 p2, p2, 0x2

    .line 175
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    return-object v1
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/voxel/launcher3/ButtonDropTarget;->mActive:Z

    return v0
.end method

.method public onDragEnd()V
    .locals 0

    return-void
.end method

.method public onDragEnter(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 1

    .line 100
    iget-object p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    iget v0, p0, Lcom/voxel/launcher3/ButtonDropTarget;->mHoverColor:I

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/dragndrop/DragView;->setColor(I)V

    return-void
.end method

.method public onDragExit(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 1

    .line 110
    iget-object p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/dragndrop/DragView;->setColor(I)V

    return-void
.end method

.method public onDragOver(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragStart(Lcom/voxel/launcher3/DropTarget$DragObject;Lcom/voxel/launcher3/dragndrop/DragOptions;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 0

    return-void
.end method

.method public onFlingToDelete(Lcom/voxel/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method setLauncher(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/voxel/launcher3/ButtonDropTarget;->mLauncher:Lcom/voxel/launcher3/Launcher;

    return-void
.end method

.method public setSearchDropTargetBar(Lcom/voxel/launcher3/SearchDropTargetBar;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/voxel/launcher3/ButtonDropTarget;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    return-void
.end method
