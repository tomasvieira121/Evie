.class public Lcom/evie/sidescreen/webviewer/NestedWebView;
.super Landroid/webkit/WebView;
.source "NestedWebView.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild;


# instance fields
.field private mActivePointerId:I

.field private mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private mLastY:I

.field private mNestedOffsetY:I

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010085

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/evie/sidescreen/webviewer/NestedWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 16
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mScrollOffset:[I

    .line 17
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mScrollConsumed:[I

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mActivePointerId:I

    .line 32
    new-instance p1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/webviewer/NestedWebView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 110
    iget v2, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 114
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mLastY:I

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mActivePointerId:I

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 40
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 43
    iput v2, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mNestedOffsetY:I

    .line 46
    :cond_0
    iget v3, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mNestedOffsetY:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v3, -0x1

    packed-switch v1, :pswitch_data_0

    .line 101
    :pswitch_0
    invoke-super {p0, v0}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_1

    .line 96
    :pswitch_1
    invoke-super {p0, v0}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 97
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/webviewer/NestedWebView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 98
    iget v0, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mLastY:I

    goto/16 :goto_1

    .line 89
    :pswitch_2
    invoke-super {p0, v0}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mLastY:I

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mActivePointerId:I

    goto/16 :goto_1

    .line 49
    :pswitch_3
    iget v1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    goto/16 :goto_1

    .line 54
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 55
    iget v1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mLastY:I

    sub-int/2addr v1, p1

    .line 57
    iget-object v3, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mScrollConsumed:[I

    iget-object v5, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mScrollOffset:[I

    invoke-virtual {p0, v2, v1, v3, v5}, Lcom/evie/sidescreen/webviewer/NestedWebView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 58
    iget-object v2, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mScrollConsumed:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 59
    iget-object v2, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mScrollOffset:[I

    aget v5, v2, v3

    sub-int/2addr p1, v5

    iput p1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mLastY:I

    .line 60
    aget p1, v2, v3

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, v4, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 61
    iget p1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mNestedOffsetY:I

    iget-object v2, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mScrollOffset:[I

    aget v2, v2, v3

    add-int/2addr p1, v2

    iput p1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mNestedOffsetY:I

    move v9, v1

    goto :goto_0

    :cond_2
    move v9, v1

    .line 63
    :goto_0
    invoke-super {p0, v0}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v6, 0x0

    .line 66
    iget-object v10, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mScrollOffset:[I

    aget v7, v10, v3

    const/4 v8, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/evie/sidescreen/webviewer/NestedWebView;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 67
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mScrollOffset:[I

    aget p1, p1, v3

    int-to-float p1, p1

    invoke-virtual {v0, v4, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 68
    iget p1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mNestedOffsetY:I

    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mScrollOffset:[I

    aget v1, v0, v3

    add-int/2addr p1, v1

    iput p1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mNestedOffsetY:I

    .line 69
    iget p1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mLastY:I

    aget v0, v0, v3

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mLastY:I

    goto :goto_1

    .line 82
    :pswitch_4
    invoke-super {p0, v0}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 84
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/NestedWebView;->stopNestedScroll()V

    .line 85
    iput v3, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mActivePointerId:I

    goto :goto_1

    .line 73
    :pswitch_5
    invoke-super {p0, v0}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 74
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mLastY:I

    .line 75
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mActivePointerId:I

    const/4 p1, 0x2

    .line 78
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/webviewer/NestedWebView;->startNestedScroll(I)Z

    move v2, v1

    :cond_3
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/NestedWebView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
