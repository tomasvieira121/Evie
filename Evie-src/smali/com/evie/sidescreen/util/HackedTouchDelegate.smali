.class public Lcom/evie/sidescreen/util/HackedTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "HackedTouchDelegate.java"


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mDelegateTargeted:Z

.field private mDelegateView:Landroid/view/View;

.field private mSlop:I

.field private mSlopBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 2

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 77
    iput-object p1, p0, Lcom/evie/sidescreen/util/HackedTouchDelegate;->mBounds:Landroid/graphics/Rect;

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/evie/sidescreen/util/HackedTouchDelegate;->mSlop:I

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/evie/sidescreen/util/HackedTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 81
    iget-object p1, p0, Lcom/evie/sidescreen/util/HackedTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget v0, p0, Lcom/evie/sidescreen/util/HackedTouchDelegate;->mSlop:I

    neg-int v1, v0

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 82
    iput-object p2, p0, Lcom/evie/sidescreen/util/HackedTouchDelegate;->mDelegateView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_0

    .line 122
    :pswitch_0
    iget-boolean v0, p0, Lcom/evie/sidescreen/util/HackedTouchDelegate;->mDelegateTargeted:Z

    .line 123
    iput-boolean v4, p0, Lcom/evie/sidescreen/util/HackedTouchDelegate;->mDelegateTargeted:Z

    move v2, v0

    goto :goto_0

    .line 113
    :pswitch_1
    iget-boolean v2, p0, Lcom/evie/sidescreen/util/HackedTouchDelegate;->mDelegateTargeted:Z

    if-eqz v2, :cond_1

    .line 115
    iget-object v3, p0, Lcom/evie/sidescreen/util/HackedTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 116
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v2, p0, Lcom/evie/sidescreen/util/HackedTouchDelegate;->mBounds:Landroid/graphics/Rect;

    .line 103
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iput-boolean v3, p0, Lcom/evie/sidescreen/util/HackedTouchDelegate;->mDelegateTargeted:Z

    const/4 v2, 0x1

    goto :goto_0

    .line 107
    :cond_0
    iput-boolean v4, p0, Lcom/evie/sidescreen/util/HackedTouchDelegate;->mDelegateTargeted:Z

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 127
    iget-object v0, p0, Lcom/evie/sidescreen/util/HackedTouchDelegate;->mDelegateView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 131
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 135
    :cond_2
    iget v1, p0, Lcom/evie/sidescreen/util/HackedTouchDelegate;->mSlop:I

    mul-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    .line 136
    invoke-virtual {p1, v1, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 138
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :cond_3
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
