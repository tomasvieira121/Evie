.class public Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;
.super Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;
.source "WindowInsetBackgroundFrameLayout.java"


# static fields
.field private static sDrawRect:Landroid/graphics/Rect;


# instance fields
.field private mBottomDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mBottomGradientColors:[I

.field private mDrawBottom:Z

.field private mDrawTop:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mTopDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mTopGradientColors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->sDrawRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 21
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 24
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mDrawTop:Z

    .line 25
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mDrawBottom:Z

    const/4 p1, 0x2

    .line 27
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mTopGradientColors:[I

    .line 28
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mBottomGradientColors:[I

    .line 33
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mTopDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 34
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mTopDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 35
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mBottomDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 36
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mBottomDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 37
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mTopGradientColors:[I

    const/4 v1, 0x0

    aput v1, p1, v1

    .line 38
    aput v1, p1, v0

    .line 39
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mBottomGradientColors:[I

    aput v1, p1, v1

    .line 40
    aput v1, p1, v0

    .line 45
    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 21
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 24
    iput-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mDrawTop:Z

    .line 25
    iput-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mDrawBottom:Z

    const/4 p1, 0x2

    .line 27
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mTopGradientColors:[I

    .line 28
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mBottomGradientColors:[I

    .line 33
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mTopDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 34
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mTopDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 35
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mBottomDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 36
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mBottomDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 37
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mTopGradientColors:[I

    const/4 v0, 0x0

    aput v0, p1, v0

    .line 38
    aput v0, p1, p2

    .line 39
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mBottomGradientColors:[I

    aput v0, p1, v0

    .line 40
    aput v0, p1, p2

    .line 50
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 65
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 66
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mChildWindowInsets:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mChildWindowInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    .line 68
    sget-object v1, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->sDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 69
    sget-object v1, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->sDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 70
    sget-object v1, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->sDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 71
    sget-object v1, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->sDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 73
    :cond_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->sDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mChildInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 76
    :goto_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->sDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mDrawTop:Z

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mTopDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    sget-object v3, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->sDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 78
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mTopDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 80
    :cond_1
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->sDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mDrawBottom:Z

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mBottomDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    sget-object v3, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->sDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 82
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mBottomDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    .line 96
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->invalidate()V

    return p1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 89
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->invalidate()V

    return-object p1
.end method

.method public setBottomEndInsetBackgroundColor(I)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mBottomGradientColors:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 136
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mBottomDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 137
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->invalidate()V

    return-void
.end method

.method public setBottomStartInsetBackgroundColor(I)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mBottomGradientColors:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 130
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mBottomDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 131
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->invalidate()V

    return-void
.end method

.method public setDrawBottom(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mDrawBottom:Z

    .line 157
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->invalidate()V

    return-void
.end method

.method public setDrawTop(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mDrawTop:Z

    .line 152
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->invalidate()V

    return-void
.end method

.method public setEndInsetBackgroundColor(I)V
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->setTopEndInsetBackgroundColor(I)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->setBottomEndInsetBackgroundColor(I)V

    return-void
.end method

.method public setStartInsetBackgroundColor(I)V
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->setTopStartInsetBackgroundColor(I)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->setBottomStartInsetBackgroundColor(I)V

    return-void
.end method

.method public setTopEndInsetBackgroundColor(I)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mTopGradientColors:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 124
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mTopDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 125
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->invalidate()V

    return-void
.end method

.method public setTopStartInsetBackgroundColor(I)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mTopGradientColors:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 118
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->mTopDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 119
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->invalidate()V

    return-void
.end method
