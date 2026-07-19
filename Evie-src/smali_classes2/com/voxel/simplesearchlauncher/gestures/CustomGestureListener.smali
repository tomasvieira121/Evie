.class public Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;
.super Ljava/lang/Object;
.source "CustomGestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field private final mCustomGestureManager:Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;

.field private final mGestureScaleDistance:I

.field private final mGestureScrollDistance:I

.field private mHandledGesture:Z

.field private final mMinimumFlingVelocity:I

.field private mScrollDistanceY:F

.field private mStartSpan:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mStartSpan:F

    .line 20
    iput v0, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mScrollDistanceY:F

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mGestureScaleDistance:I

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mGestureScrollDistance:I

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07015b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mMinimumFlingVelocity:I

    .line 26
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mCustomGestureManager:Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;

    return-void
.end method


# virtual methods
.method public isGestureHandled()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 38
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mCustomGestureManager:Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;

    sget-object v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->DOUBLE_TAP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;->onGesture(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    .line 39
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->reset()V

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 89
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 92
    :cond_0
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mMinimumFlingVelocity:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x0

    cmpg-float p1, p4, p1

    if-gez p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mCustomGestureManager:Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;

    sget-object p2, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->SWIPE_UP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;->onGesture(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mCustomGestureManager:Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;

    sget-object p2, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->SWIPE_DOWN:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;->onGesture(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    .line 99
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    return p1
.end method

.method public onHomeButtonPressed()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mCustomGestureManager:Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->HOME:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;->onGesture(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Z

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 104
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    .line 108
    iget v0, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mStartSpan:F

    iget v1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mGestureScaleDistance:I

    int-to-float v2, v1

    add-float/2addr v2, v0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 109
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mCustomGestureManager:Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;

    sget-object v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->EXPAND:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;->onGesture(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    goto :goto_0

    :cond_1
    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 111
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mCustomGestureManager:Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;

    sget-object v0, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->PINCH:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;->onGesture(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    .line 114
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 119
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mStartSpan:F

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 65
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_1

    .line 69
    iget p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mScrollDistanceY:F

    add-float/2addr p1, p4

    iput p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mScrollDistanceY:F

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mScrollDistanceY:F

    .line 74
    :goto_0
    iget p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mScrollDistanceY:F

    iget p2, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mGestureScrollDistance:I

    int-to-float p3, p2

    cmpl-float p3, p1, p3

    if-lez p3, :cond_2

    .line 75
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mCustomGestureManager:Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;

    sget-object p2, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->TWO_FINGER_SWIPE_UP:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;->onGesture(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    goto :goto_1

    :cond_2
    neg-int p2, p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    .line 77
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mCustomGestureManager:Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;

    sget-object p2, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->TWO_FINGER_SWIPE_DOWN:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;->onGesture(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    .line 79
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mHandledGesture:Z

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mStartSpan:F

    .line 135
    iput v0, p0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->mScrollDistanceY:F

    return-void
.end method
