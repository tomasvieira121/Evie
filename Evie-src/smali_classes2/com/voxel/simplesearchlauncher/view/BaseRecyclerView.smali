.class public abstract Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "BaseRecyclerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollListener;,
        Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;
    }
.end annotation


# instance fields
.field protected mBackgroundPadding:Landroid/graphics/Rect;

.field private mDeltaThreshold:F

.field private mDownX:I

.field private mDownY:I

.field mDy:I

.field private mLastY:I

.field protected mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mDy:I

    .line 66
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 78
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x40800000    # 4.0f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mDeltaThreshold:F

    .line 79
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;-><init>(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    .line 81
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollListener;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollListener;-><init>(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    iput v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mLastY:I

    .line 146
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mDownX:I

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mDownY:I

    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mLastY:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->handleTouchEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->onFastScrollCompleted()V

    .line 151
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mDownX:I

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mDownY:I

    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mLastY:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->handleTouchEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    .line 137
    :pswitch_2
    iput v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mDownX:I

    .line 138
    iput v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mLastY:I

    iput v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mDownY:I

    .line 139
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->shouldStopScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->stopScroll()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mDownX:I

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mDownY:I

    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mLastY:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->handleTouchEvent(Landroid/view/MotionEvent;III)V

    .line 154
    :goto_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->isDraggingThumb()Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 240
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->onUpdateScrollbar(I)V

    .line 242
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected getAvailableScrollBarHeight()I
    .locals 2

    .line 213
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getVisibleHeight()I

    move-result v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->getThumbHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getAvailableScrollHeight(I)I
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getTop(I)I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getPaddingBottom()I

    move-result p1

    add-int/2addr v0, p1

    .line 204
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getVisibleHeight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getBackgroundPadding()Landroid/graphics/Rect;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected abstract getCurScrollState(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;)V
.end method

.method public getFastScrollerThumbInactiveColor(I)I
    .locals 0

    return p1
.end method

.method public getFastScrollerTrackColor(I)I
    .locals 0

    return p1
.end method

.method public getMaxScrollbarWidth()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->getThumbMaxWidth()I

    move-result v0

    return v0
.end method

.method public getScrollBar()Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    return-object v0
.end method

.method protected getScrollTop(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;)I
    .locals 2

    .line 295
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getPaddingTop()I

    move-result v0

    iget v1, p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getTop(I)I

    move-result v1

    add-int/2addr v0, v1

    iget p1, p1, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    sub-int/2addr v0, p1

    return v0
.end method

.method protected abstract getTop(I)I
.end method

.method protected getVisibleHeight()I
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected onFastScrollCompleted()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 108
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onFinishInflate()V

    .line 109
    invoke-virtual {p0, p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 118
    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 123
    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method protected abstract onUpdateScrollbar(I)V
.end method

.method protected abstract scrollToPositionAtProgress(F)Ljava/lang/String;
.end method

.method protected shouldStopScroll(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 168
    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mDy:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mDeltaThreshold:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getScrollState()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method protected supportsFastScrolling()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected synchronizeScrollBarThumbOffsetToViewScroll(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;I)V
    .locals 2

    .line 257
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getAvailableScrollBarHeight()I

    move-result v0

    .line 258
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getAvailableScrollHeight(I)I

    move-result p2

    if-gtz p2, :cond_0

    .line 260
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p2}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    return-void

    .line 267
    :cond_0
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getScrollTop(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView$ScrollPositionState;)I

    move-result p1

    .line 268
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, v0

    mul-float p1, p1, p2

    float-to-int p1, p1

    add-int/2addr v1, p1

    .line 273
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 274
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->getThumbWidth()I

    move-result p2

    sub-int/2addr p1, p2

    .line 278
    :goto_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->mScrollbar:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;

    invoke-virtual {p2, p1, v1}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    return-void
.end method
