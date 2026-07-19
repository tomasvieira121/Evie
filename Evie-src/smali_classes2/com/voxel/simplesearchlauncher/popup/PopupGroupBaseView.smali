.class public abstract Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;
.super Landroid/widget/FrameLayout;
.source "PopupGroupBaseView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$CloseInterpolator;,
        Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;
    }
.end annotation


# static fields
.field protected static final sTempPoint:Landroid/graphics/Point;


# instance fields
.field private final mBackgroundClipPaint:Landroid/graphics/Paint;

.field protected final mIsRtl:Z

.field private final mMatrix:Landroid/graphics/Matrix;

.field protected mOpenAnimationProgress:F

.field protected final mPillRect:Landroid/graphics/Rect;

.field private mRoundedCornerBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->sTempPoint:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    .line 56
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mMatrix:Landroid/graphics/Matrix;

    .line 70
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mPillRect:Landroid/graphics/Rect;

    .line 73
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getBackgroundRadius()F

    move-result p1

    float-to-int p1, p1

    .line 74
    sget-object p2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    .line 75
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 76
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    new-instance v1, Landroid/graphics/RectF;

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    const/4 p2, 0x0

    invoke-direct {v1, p2, p2, p1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 78
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 79
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 81
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mIsRtl:Z

    return-void
.end method

.method public static synthetic lambda$createZoomCloseAnimation$1(Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 165
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->setAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$createZoomOpenAnimation$0(Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 143
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public abstract createCloseAnimation(ZZJ)Landroid/animation/Animator;
.end method

.method public abstract createOpenAnimation(ZZ)Landroid/animation/Animator;
.end method

.method protected createZoomCloseAnimation(Landroid/view/View;ZZJ)Landroid/animation/Animator;
    .locals 11

    move-object v9, p0

    .line 153
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getIconCenter()Landroid/graphics/Point;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, v9, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mIsRtl:Z

    xor-int/2addr v2, p3

    if-eqz v2, :cond_0

    const v2, 0x7f0701c1

    goto :goto_0

    :cond_0
    const v2, 0x7f0701c0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 158
    sget-boolean v2, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v2, :cond_1

    .line 159
    new-instance v10, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget-object v4, v9, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mPillRect:Landroid/graphics/Rect;

    int-to-float v8, v1

    move-object v0, v10

    move v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;-><init>(IILandroid/graphics/Rect;Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;Landroid/view/View;ZZF)V

    const/4 v0, 0x1

    .line 161
    invoke-virtual {v10, p0, v0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    move-object v2, v0

    move-wide v0, p4

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    .line 163
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 164
    new-instance v1, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupGroupBaseView$bD13EgvPpKf43xu1KlCHszhiBIE;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupGroupBaseView$bD13EgvPpKf43xu1KlCHszhiBIE;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v2, v0

    move-wide v0, p4

    :goto_1
    long-to-float v0, v0

    .line 170
    iget v1, v9, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mOpenAnimationProgress:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 171
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$CloseInterpolator;

    iget v1, v9, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mOpenAnimationProgress:F

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$CloseInterpolator;-><init>(F)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 172
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$1;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected createZoomOpenAnimation(Landroid/view/View;ZZ)Landroid/animation/Animator;
    .locals 12

    .line 131
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getIconCenter()Landroid/graphics/Point;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mIsRtl:Z

    xor-int/2addr v2, p3

    if-eqz v2, :cond_0

    const v2, 0x7f0701c1

    goto :goto_0

    :cond_0
    const v2, 0x7f0701c0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 136
    sget-boolean v2, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v2, :cond_1

    .line 137
    new-instance v2, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mPillRect:Landroid/graphics/Rect;

    int-to-float v11, v1

    move-object v3, v2

    move-object v7, p0

    move-object v8, p1

    move v9, p2

    move v10, p3

    invoke-direct/range {v3 .. v11}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;-><init>(IILandroid/graphics/Rect;Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;Landroid/view/View;ZZF)V

    const/4 p1, 0x0

    .line 139
    invoke-virtual {v2, p0, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView$ZoomRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    .line 141
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 142
    new-instance p2, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupGroupBaseView$qjG6Hrdu8YNl5u0mMLkAKn03rNM;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupGroupBaseView$qjG6Hrdu8YNl5u0mMLkAKn03rNM;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_1
    const/4 p2, 0x0

    .line 146
    iput p2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mOpenAnimationProgress:F

    .line 147
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 92
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 94
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isAtLeastO()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f

    .line 97
    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    .line 98
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 100
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 101
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 103
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 104
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 106
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b40000    # 90.0f

    int-to-float v6, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    int-to-float v8, v2

    div-float/2addr v8, v7

    invoke-virtual {v4, v5, v6, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 107
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 108
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 110
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v4, v5, v6, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 111
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 112
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 114
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v1, v4, v6, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 115
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 116
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 118
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public abstract getArrowColor(Z)I
.end method

.method protected getBackgroundRadius()F
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getIconCenter()Landroid/graphics/Point;
    .locals 3

    .line 189
    sget-object v0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->sTempPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 190
    sget-object v0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->sTempPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 191
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->sTempPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getMeasuredWidth()I

    move-result v1

    sget-object v2, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->sTempPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 194
    :cond_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->sTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public isOpenOrOpening()Z
    .locals 2

    .line 182
    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mOpenAnimationProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 123
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mOpenAnimationProgress:F

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 87
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->mPillRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
