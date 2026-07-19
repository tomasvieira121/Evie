.class public Lme/relex/photodraweeview/ScaleDragDetector;
.super Ljava/lang/Object;
.source "ScaleDragDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field private mActivePointerId:I

.field private mActivePointerIndex:I

.field private mIsDragging:Z

.field mLastTouchX:F

.field mLastTouchY:F

.field private final mMinimumVelocity:F

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private final mScaleDragGestureListener:Lme/relex/photodraweeview/OnScaleDragGestureListener;

.field private final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lme/relex/photodraweeview/OnScaleDragGestureListener;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mActivePointerId:I

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mActivePointerIndex:I

    .line 44
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 45
    iput-object p2, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mScaleDragGestureListener:Lme/relex/photodraweeview/OnScaleDragGestureListener;

    .line 47
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mMinimumVelocity:F

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mTouchSlop:F

    return-void
.end method

.method private getActiveX(Landroid/view/MotionEvent;)F
    .locals 1

    .line 81
    :try_start_0
    iget v0, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mActivePointerIndex:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 83
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method private getActiveY(Landroid/view/MotionEvent;)F
    .locals 1

    .line 89
    :try_start_0
    iget v0, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mActivePointerIndex:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 91
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method private onTouchActivePointer(ILandroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 106
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mActivePointerId:I

    goto :goto_1

    .line 113
    :cond_0
    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result p1

    .line 114
    invoke-static {p2, p1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 115
    iget v3, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mActivePointerId:I

    if-ne v0, v3, :cond_3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 117
    :goto_0
    invoke-static {p2, p1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mActivePointerId:I

    .line 118
    invoke-static {p2, p1}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mLastTouchX:F

    .line 119
    invoke-static {p2, p1}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mLastTouchY:F

    goto :goto_1

    .line 110
    :cond_2
    :pswitch_1
    iput v1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mActivePointerId:I

    .line 125
    :cond_3
    :goto_1
    iget p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mActivePointerId:I

    if-eq p1, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-static {p2, p1}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mActivePointerIndex:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onTouchDragEvent(ILandroid/view/MotionEvent;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 165
    :pswitch_0
    iget-object p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_4

    .line 166
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 167
    iput-object v0, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 144
    :pswitch_1
    invoke-direct {p0, p2}, Lme/relex/photodraweeview/ScaleDragDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result p1

    .line 145
    invoke-direct {p0, p2}, Lme/relex/photodraweeview/ScaleDragDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v0

    .line 146
    iget v2, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mLastTouchX:F

    sub-float v2, p1, v2

    iget v3, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mLastTouchY:F

    sub-float v3, v0, v3

    .line 148
    iget-boolean v4, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mIsDragging:Z

    if-nez v4, :cond_1

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    .line 149
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget v6, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mTouchSlop:F

    float-to-double v6, v6

    cmpl-double v8, v4, v6

    if-ltz v8, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mIsDragging:Z

    .line 152
    :cond_1
    iget-boolean v1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mIsDragging:Z

    if-eqz v1, :cond_4

    .line 153
    iget-object v1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mScaleDragGestureListener:Lme/relex/photodraweeview/OnScaleDragGestureListener;

    invoke-interface {v1, v2, v3}, Lme/relex/photodraweeview/OnScaleDragGestureListener;->onDrag(FF)V

    .line 154
    iput p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mLastTouchX:F

    .line 155
    iput v0, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mLastTouchY:F

    .line 157
    iget-object p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_4

    .line 158
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 173
    :pswitch_2
    iget-boolean p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mIsDragging:Z

    if-eqz p1, :cond_2

    .line 174
    iget-object p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_2

    .line 175
    invoke-direct {p0, p2}, Lme/relex/photodraweeview/ScaleDragDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mLastTouchX:F

    .line 176
    invoke-direct {p0, p2}, Lme/relex/photodraweeview/ScaleDragDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mLastTouchY:F

    .line 178
    iget-object p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 179
    iget-object p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 181
    iget-object p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    iget-object p2, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 182
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p2

    .line 184
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mMinimumVelocity:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 185
    iget-object v1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mScaleDragGestureListener:Lme/relex/photodraweeview/OnScaleDragGestureListener;

    iget v2, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mLastTouchX:F

    iget v3, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mLastTouchY:F

    neg-float p1, p1

    neg-float p2, p2

    invoke-interface {v1, v2, v3, p1, p2}, Lme/relex/photodraweeview/OnScaleDragGestureListener;->onFling(FFFF)V

    .line 189
    :cond_2
    iget-object p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_4

    .line 190
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 191
    iput-object v0, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 132
    :pswitch_3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 133
    iget-object p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_3

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 137
    :cond_3
    invoke-direct {p0, p2}, Lme/relex/photodraweeview/ScaleDragDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mLastTouchX:F

    .line 138
    invoke-direct {p0, p2}, Lme/relex/photodraweeview/ScaleDragDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mLastTouchY:F

    .line 139
    iput-boolean v1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mIsDragging:Z

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isDragging()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mIsDragging:Z

    return v0
.end method

.method public isScaling()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 53
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 55
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object v1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mScaleDragGestureListener:Lme/relex/photodraweeview/OnScaleDragGestureListener;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-interface {v1, v0, v2, p1}, Lme/relex/photodraweeview/OnScaleDragGestureListener;->onScale(FFF)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mScaleDragGestureListener:Lme/relex/photodraweeview/OnScaleDragGestureListener;

    invoke-interface {p1}, Lme/relex/photodraweeview/OnScaleDragGestureListener;->onScaleEnd()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 96
    iget-object v0, p0, Lme/relex/photodraweeview/ScaleDragDetector;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 97
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 98
    invoke-direct {p0, v0, p1}, Lme/relex/photodraweeview/ScaleDragDetector;->onTouchActivePointer(ILandroid/view/MotionEvent;)V

    .line 99
    invoke-direct {p0, v0, p1}, Lme/relex/photodraweeview/ScaleDragDetector;->onTouchDragEvent(ILandroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method
