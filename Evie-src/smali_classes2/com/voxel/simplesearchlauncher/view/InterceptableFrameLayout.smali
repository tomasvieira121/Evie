.class public Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "InterceptableFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout$OnBackListener;
    }
.end annotation


# instance fields
.field private mIgnoreDisallowIntercept:Z

.field private mOnBackListener:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout$OnBackListener;

.field private mOnInterceptTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->mIgnoreDisallowIntercept:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->mIgnoreDisallowIntercept:Z

    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->mOnBackListener:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout$OnBackListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v2

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->mOnBackListener:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout$OnBackListener;

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout$OnBackListener;->onBack()V

    return v2

    .line 96
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getOnBackListener()Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout$OnBackListener;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->mOnBackListener:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout$OnBackListener;

    return-object v0
.end method

.method public getOnInterceptTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->mOnInterceptTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->mOnInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 64
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->mIgnoreDisallowIntercept:Z

    if-nez v0, :cond_0

    .line 74
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return-void
.end method

.method public setIgnoreDisallowIntercept(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->mIgnoreDisallowIntercept:Z

    return-void
.end method

.method public setOnBackListener(Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout$OnBackListener;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->mOnBackListener:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout$OnBackListener;

    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->mOnInterceptTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method
