.class public Lcom/voxel/launcher3/SearchDropTargetBar;
.super Landroid/widget/FrameLayout;
.source "SearchDropTargetBar.java"

# interfaces
.implements Lcom/voxel/launcher3/dragndrop/DragController$DragListener;


# static fields
.field protected static final DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private mDeferOnDragEnd:Z

.field private mDropTargetBar:Landroid/view/View;

.field private mDropTargetBarVisible:Z

.field private mQSBSearchBar:Landroid/view/View;

.field private mRemoveDropTarget:Lcom/voxel/launcher3/ButtonDropTarget;

.field private mSearchBarForceHiddenOverride:Z

.field private mSearchBarVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/SearchDropTargetBar;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/launcher3/SearchDropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mDropTargetBarVisible:Z

    const/4 p2, 0x1

    .line 43
    iput-boolean p2, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mSearchBarVisible:Z

    .line 44
    iput-boolean p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mSearchBarForceHiddenOverride:Z

    .line 50
    iput-boolean p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mDeferOnDragEnd:Z

    return-void
.end method

.method private animateDropTargetBarVisibility(Z)V
    .locals 2

    .line 124
    iget-boolean v0, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mDropTargetBarVisible:Z

    if-eq v0, p1, :cond_1

    .line 125
    iput-boolean p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mDropTargetBarVisible:Z

    .line 128
    iget-object p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 130
    iget-boolean p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mDropTargetBarVisible:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/voxel/launcher3/SearchDropTargetBar;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xaf

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method

.method private animateSearchBarVisibility(Z)V
    .locals 2

    .line 107
    iget-boolean v0, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mSearchBarVisible:Z

    if-eq v0, p1, :cond_1

    .line 108
    iput-boolean p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mSearchBarVisible:Z

    .line 111
    iget-object p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 113
    iget-boolean p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mSearchBarVisible:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/voxel/launcher3/SearchDropTargetBar;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xaf

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method


# virtual methods
.method public deferOnDragEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mDeferOnDragEnd:Z

    return-void
.end method

.method public getSearchBarBounds()Landroid/graphics/Rect;
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 181
    new-array v1, v1, [I

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 184
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    .line 185
    aget v3, v1, v2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    .line 186
    aget v4, v1, v3

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 187
    aget v2, v1, v2

    iget-object v4, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 188
    aget v1, v1, v3

    iget-object v2, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideSearchBar(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 96
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/SearchDropTargetBar;->animateSearchBarVisibility(Z)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 99
    iget-object p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 102
    :goto_0
    iput-boolean v0, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mSearchBarForceHiddenOverride:Z

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mSearchBarVisible:Z

    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .line 167
    iget-boolean v0, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mDeferOnDragEnd:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0, v1}, Lcom/voxel/launcher3/SearchDropTargetBar;->animateDropTargetBarVisibility(Z)V

    .line 171
    iget-boolean v0, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mSearchBarForceHiddenOverride:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 172
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/SearchDropTargetBar;->animateSearchBarVisibility(Z)V

    goto :goto_0

    .line 175
    :cond_0
    iput-boolean v1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mDeferOnDragEnd:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onDragStart(Lcom/voxel/launcher3/DropTarget$DragObject;Lcom/voxel/launcher3/dragndrop/DragOptions;)V
    .locals 0

    .line 145
    iget-boolean p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->isDesktopLocked:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 149
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/SearchDropTargetBar;->animateDropTargetBarVisibility(Z)V

    .line 150
    iget-boolean p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mSearchBarForceHiddenOverride:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/SearchDropTargetBar;->animateSearchBarVisibility(Z)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 69
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a00de

    .line 72
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v1, 0x7f0a021a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/ButtonDropTarget;

    iput-object v0, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mRemoveDropTarget:Lcom/voxel/launcher3/ButtonDropTarget;

    .line 76
    iget-object v0, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mRemoveDropTarget:Lcom/voxel/launcher3/ButtonDropTarget;

    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/ButtonDropTarget;->setSearchDropTargetBar(Lcom/voxel/launcher3/SearchDropTargetBar;)V

    return-void
.end method

.method public setup(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/dragndrop/DragController;)V
    .locals 0

    .line 63
    iget-object p2, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mRemoveDropTarget:Lcom/voxel/launcher3/ButtonDropTarget;

    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/ButtonDropTarget;->setLauncher(Lcom/voxel/launcher3/Launcher;)V

    .line 64
    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getQsbBar()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    return-void
.end method

.method public showSearchBar(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 86
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/SearchDropTargetBar;->animateSearchBarVisibility(Z)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 89
    iget-object p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mSearchBarForceHiddenOverride:Z

    .line 92
    iput-boolean v0, p0, Lcom/voxel/launcher3/SearchDropTargetBar;->mSearchBarVisible:Z

    return-void
.end method
