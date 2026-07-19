.class public Lcom/voxel/simplesearchlauncher/view/SpringySearchView;
.super Landroidx/appcompat/widget/SearchView;
.source "SpringySearchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/view/SpringySearchView$KeyboardRulesHandler;,
        Lcom/voxel/simplesearchlauncher/view/SpringySearchView$OnFactorChangeListener;
    }
.end annotation


# instance fields
.field private alternateHintText:Landroid/widget/TextView;

.field private backgroundOpacityMax:F

.field private backgroundOpacityMin:F

.field private crossOverFactor:F

.field private currentFactor:F

.field private editText:Landroid/widget/EditText;

.field private factorDistance:I

.field private forcedEndValueSpringListener:Lcom/facebook/rebound/SpringListener;

.field private isDragDown:Z

.field private keyboardRulesHandler:Lcom/voxel/simplesearchlauncher/view/SpringySearchView$KeyboardRulesHandler;

.field private limitOpacityBounds:Z

.field private limitTextPaddingBounds:Z

.field private mBackgroundAlternativeFactorOffset:F

.field protected mBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private mBackgroundDrawableCornerRadius:F

.field private mBackgroundOpacityMaxSubtle:F

.field protected mDensity:F

.field protected mFlingThresholdVelocity:I

.field private mInverseHintColorMax:I

.field private mInverseHintColorMin:I

.field private mInverseHintOpacityMax:I

.field private mInverseHintOpacityMin:I

.field private mInverseTextColorMax:I

.field private mInverseTextColorMin:I

.field private mIsTouching:Z

.field protected mMinFlingVelocity:I

.field protected mMinSnapVelocity:I

.field private mOnFactorChangeListener:Lcom/voxel/simplesearchlauncher/view/SpringySearchView$OnFactorChangeListener;

.field private mRounder:Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;

.field public mSubtleBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

.field protected mSubtleBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mUseInverseColors:Z

.field private mUseSubtleBackground:Z

.field private motionFactor:F

.field private opacityMax:F

.field private opacityMin:F

.field private previousY:F

.field private reactiveEndValueSpringListener:Lcom/facebook/rebound/SpringListener;

.field private searchButton:Landroid/widget/ImageView;

.field private spring:Lcom/facebook/rebound/Spring;

.field private springAlternativeHintAlpha:Lcom/facebook/rebound/Spring;

.field private springSystem:Lcom/facebook/rebound/SpringSystem;

.field private textPaddingDistanceMax:I

.field private textPaddingDistanceMin:I

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private voiceButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->limitTextPaddingBounds:Z

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->limitOpacityBounds:Z

    const/4 p1, 0x0

    .line 123
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->previousY:F

    .line 148
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mIsTouching:Z

    return p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;ZZZZ)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->notifyListenerBeginIfNeeded(ZZZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;D)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->updateSpringEndValue(D)V

    return-void
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)F
    .locals 0

    .line 53
    iget p0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->crossOverFactor:F

    return p0
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;ZZZZ)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->notifyListenerEndIfNeeded(ZZZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)F
    .locals 0

    .line 53
    iget p0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mBackgroundDrawableCornerRadius:F

    return p0
.end method

.method static synthetic access$600(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)F
    .locals 0

    .line 53
    iget p0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->currentFactor:F

    return p0
.end method

.method private calculateEndValueWithVelocity(F)Ljava/lang/Float;
    .locals 2

    .line 829
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mFlingThresholdVelocity:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const/4 p1, 0x0

    .line 830
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_0
    neg-float p1, p1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 832
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private calculateNewFactor(F)F
    .locals 5

    .line 784
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getCurrentFactor()F

    move-result v0

    .line 785
    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->motionFactor:F

    mul-float p1, p1, v1

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->factorDistance:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 786
    iget-boolean v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->isDragDown:Z

    if-nez v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    mul-float p1, p1, v1

    :cond_0
    add-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpl-float v4, v1, v2

    if-lez v4, :cond_1

    cmpl-float v4, p1, v3

    if-lez v4, :cond_1

    .line 791
    invoke-direct {p0, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->calculateOvershootFactor(F)F

    move-result v2

    goto :goto_0

    :cond_1
    cmpg-float v4, v1, v3

    if-gez v4, :cond_2

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    .line 793
    invoke-direct {p0, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->calculateOvershootFactor(F)F

    move-result v2

    :cond_2
    :goto_0
    div-float/2addr p1, v2

    add-float/2addr p1, v0

    return p1
.end method

.method private calculateOvershootFactor(F)F
    .locals 3

    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    mul-float v1, p1, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 808
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr p1, v1

    mul-float v1, p1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method private colorWithAlphaAndRgb(II)I
    .locals 2

    const/16 v0, 0xff

    .line 902
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 903
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 904
    invoke-static {p1, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private estimateStopPosition(FFFFF)F
    .locals 2

    sub-float v0, p2, p1

    mul-float v0, v0, p4

    mul-float p5, p5, p3

    sub-float/2addr v0, p5

    .line 768
    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->crossOverFactor:F

    sub-float/2addr p2, v1

    mul-float p4, p4, p2

    sub-float/2addr p4, p5

    add-float/2addr v0, p4

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    mul-float p3, p3, p3

    neg-float p3, p3

    mul-float v0, v0, p2

    div-float/2addr p3, v0

    add-float/2addr p1, p3

    return p1
.end method

.method private getTint(Landroid/graphics/Bitmap;)I
    .locals 8

    const/16 v0, 0x80

    const/16 v1, 0xff

    .line 418
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 423
    :try_start_0
    new-instance v2, Landroidx/palette/graphics/Palette$Builder;

    invoke-direct {v2, p1}, Landroidx/palette/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x4

    .line 430
    invoke-virtual {v2, p1}, Landroidx/palette/graphics/Palette$Builder;->maximumColorCount(I)Landroidx/palette/graphics/Palette$Builder;

    .line 431
    invoke-virtual {v2}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object p1

    .line 433
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 434
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 438
    :cond_0
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getDominantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object p1

    const/4 v1, 0x3

    .line 439
    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 440
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 441
    aget v3, p1, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const p1, 0x3d8f5c29    # 0.07f

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x1

    .line 448
    aget v4, v1, v3

    mul-float v4, v4, v2

    invoke-static {p1, v4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const v2, 0x3df5c28f    # 0.12f

    const v4, 0x3eb33333    # 0.35f

    const/4 v5, 0x2

    .line 449
    aget v6, v1, v5

    mul-float v6, v6, v4

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v4, 0x0

    const v6, 0x3ecccccd    # 0.4f

    .line 450
    aget v7, v1, v3

    sub-float/2addr v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, v1, v3

    const/high16 p1, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 451
    aget v4, v1, v5

    add-float/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, v1, v5

    .line 453
    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p1

    .line 455
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1

    :catch_0
    return v1
.end method

.method private initialize()V
    .locals 9

    .line 158
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mDensity:F

    .line 159
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mDensity:F

    const v1, 0x44bb8000    # 1500.0f

    mul-float v2, v0, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mFlingThresholdVelocity:I

    const/high16 v2, 0x437a0000    # 250.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 160
    iput v2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mMinFlingVelocity:I

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 161
    iput v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mMinSnapVelocity:I

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 164
    iput v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->factorDistance:I

    const/4 v1, 0x1

    .line 165
    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->isDragDown:Z

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 166
    iput v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->textPaddingDistanceMin:I

    const/4 v0, 0x0

    .line 167
    iput v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->textPaddingDistanceMax:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 168
    iput v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->opacityMin:F

    .line 169
    iput v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->opacityMax:F

    .line 170
    iput v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->backgroundOpacityMin:F

    const v2, 0x3f666666    # 0.9f

    .line 171
    iput v2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->backgroundOpacityMax:F

    const/4 v2, 0x0

    .line 173
    iput v2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mBackgroundOpacityMaxSubtle:F

    const/16 v3, 0x52

    .line 175
    iput v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mInverseHintColorMin:I

    const/16 v3, 0xff

    .line 176
    iput v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mInverseHintColorMax:I

    .line 177
    iput v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mInverseHintOpacityMin:I

    const/high16 v4, 0x43190000    # 153.0f

    .line 178
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mInverseHintOpacityMax:I

    .line 179
    iput v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mInverseTextColorMin:I

    .line 180
    iput v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mInverseTextColorMax:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 182
    iput v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->crossOverFactor:F

    const v3, 0x7f0a0255

    .line 184
    invoke-virtual {p0, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    const v3, 0x3f2aaaab

    .line 186
    iput v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->motionFactor:F

    const v3, 0x7f0a0254

    .line 188
    invoke-virtual {p0, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->alternateHintText:Landroid/widget/TextView;

    const v3, 0x7f0a0222

    .line 190
    invoke-virtual {p0, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;

    iput-object v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mRounder:Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;

    const v3, 0x7f0a0059

    .line 191
    invoke-virtual {p0, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    iput-object v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mSubtleBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    .line 193
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 195
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v3

    iput-object v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->springSystem:Lcom/facebook/rebound/SpringSystem;

    .line 196
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->springSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v3}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v3

    iput-object v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    .line 197
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v4, v5}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 198
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    new-instance v4, Lcom/facebook/rebound/SpringConfig;

    const-wide v5, 0x4076800000000000L    # 360.0

    const-wide/high16 v7, 0x4044000000000000L    # 40.0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {v3, v4}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    const v3, 0x7f0a024d

    .line 200
    invoke-virtual {p0, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->searchButton:Landroid/widget/ImageView;

    const v3, 0x7f0a0259

    .line 201
    invoke-virtual {p0, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->voiceButton:Landroid/widget/ImageView;

    .line 202
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mRounder:Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->setVisibility(I)V

    .line 206
    new-instance v3, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$1;

    invoke-direct {v3, p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$1;-><init>(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)V

    iput-object v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->reactiveEndValueSpringListener:Lcom/facebook/rebound/SpringListener;

    .line 248
    new-instance v3, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$2;

    invoke-direct {v3, p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$2;-><init>(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)V

    iput-object v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->forcedEndValueSpringListener:Lcom/facebook/rebound/SpringListener;

    .line 277
    invoke-virtual {p0, v1, v0, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->applyFactor(FZF)V

    return-void
.end method

.method private initializeAlternativeHintSpringIfNeeded()V
    .locals 6

    .line 839
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->springAlternativeHintAlpha:Lcom/facebook/rebound/Spring;

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->springSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->springAlternativeHintAlpha:Lcom/facebook/rebound/Spring;

    .line 841
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->springAlternativeHintAlpha:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 842
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->springAlternativeHintAlpha:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$4;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$4;-><init>(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$refreshSubtleBackgroundDrawable$0(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;Z)V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mSubtleBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mSubtleBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mUseInverseColors:Z

    .line 399
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mRounder:Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->setAlpha(F)V

    .line 400
    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->currentFactor:F

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->applyFactor(FZF)V

    .line 401
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mRounder:Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->invalidate()V

    return-void
.end method

.method public static synthetic lambda$refreshSubtleBackgroundDrawable$1(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mSubtleBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 408
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mUseInverseColors:Z

    .line 409
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mRounder:Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;

    const/high16 v2, 0x3f200000    # 0.625f

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->setAlpha(F)V

    .line 410
    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->currentFactor:F

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->applyFactor(FZF)V

    .line 411
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mRounder:Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->invalidate()V

    return-void
.end method

.method private notifyListenerBeginIfNeeded(ZZZZ)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mOnFactorChangeListener:Lcom/voxel/simplesearchlauncher/view/SpringySearchView$OnFactorChangeListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    .line 544
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mOnFactorChangeListener:Lcom/voxel/simplesearchlauncher/view/SpringySearchView$OnFactorChangeListener;

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$OnFactorChangeListener;->onFactorBeginChanging()V

    :cond_0
    return-void
.end method

.method private notifyListenerEndIfNeeded(ZZZZ)V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mOnFactorChangeListener:Lcom/voxel/simplesearchlauncher/view/SpringySearchView$OnFactorChangeListener;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    .line 560
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mOnFactorChangeListener:Lcom/voxel/simplesearchlauncher/view/SpringySearchView$OnFactorChangeListener;

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$OnFactorChangeListener;->onFactorEndChanging()V

    :cond_0
    return-void
.end method

.method private setBackgroundAlpha(I)V
    .locals 3

    .line 667
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0xff

    int-to-float p1, p1

    .line 668
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private setTextPadding(I)V
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 658
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 659
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->alternateHintText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 662
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 663
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->alternateHintText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSpringEndValue(D)V
    .locals 3

    .line 821
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->crossOverFactor:F

    float-to-double v0, v0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    .line 822
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_0

    .line 824
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    :goto_0
    return-void
.end method


# virtual methods
.method public applyFactor(FZF)V
    .locals 11

    .line 569
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->currentFactor:F

    .line 571
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->textPaddingDistanceMax:I

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->textPaddingDistanceMin:I

    sub-int/2addr v0, v1

    .line 572
    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->opacityMax:F

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->opacityMin:F

    sub-float/2addr v1, v2

    .line 573
    iget-boolean v2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mUseSubtleBackground:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mBackgroundOpacityMaxSubtle:F

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->backgroundOpacityMax:F

    :goto_0
    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->backgroundOpacityMin:F

    sub-float/2addr v2, v3

    .line 575
    iget v4, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mBackgroundAlternativeFactorOffset:F

    add-float/2addr v4, p1

    .line 577
    iget v5, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->textPaddingDistanceMin:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    add-int/2addr v5, v0

    .line 578
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->opacityMin:F

    mul-float v1, v1, v4

    add-float/2addr v0, v1

    mul-float v2, v2, v4

    add-float/2addr v3, v2

    .line 584
    iget-boolean v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mUseSubtleBackground:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v6, 0xff

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mUseInverseColors:Z

    if-eqz v1, :cond_1

    .line 585
    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mInverseTextColorMin:I

    int-to-float v1, v1

    sub-float v7, v2, v4

    mul-float v1, v1, v7

    iget v8, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mInverseTextColorMax:I

    int-to-float v8, v8

    mul-float v8, v8, v4

    add-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 586
    iget v8, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mInverseHintColorMin:I

    int-to-float v8, v8

    mul-float v8, v8, v7

    iget v9, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mInverseHintColorMax:I

    int-to-float v9, v9

    mul-float v9, v9, v4

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 587
    iget v9, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mInverseHintOpacityMin:I

    int-to-float v9, v9

    mul-float v9, v9, v7

    iget v7, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mInverseHintOpacityMax:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    add-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_1

    :cond_1
    const/high16 v1, -0x1000000

    const/16 v8, 0x52

    const/16 v4, 0xff

    :goto_1
    const/4 v7, 0x0

    const/4 v9, 0x0

    if-eqz p2, :cond_7

    cmpl-float p2, p1, v2

    if-gez p2, :cond_5

    .line 595
    iget p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->crossOverFactor:F

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_2

    cmpl-float p2, p3, v9

    if-lez p2, :cond_2

    goto :goto_3

    :cond_2
    cmpg-float p2, p1, v9

    if-lez p2, :cond_3

    .line 601
    iget p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->crossOverFactor:F

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_7

    cmpg-float p2, p3, v9

    if-gez p2, :cond_7

    .line 602
    :cond_3
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->keyboardRulesHandler:Lcom/voxel/simplesearchlauncher/view/SpringySearchView$KeyboardRulesHandler;

    const/4 p3, 0x1

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$KeyboardRulesHandler;->canDisplayKeyboard()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 603
    :goto_2
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_7

    if-nez p2, :cond_7

    .line 604
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->requestFocus()Z

    .line 605
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v10, "input_method"

    invoke-virtual {p2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 606
    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {p2, v10}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 607
    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {p2, v10, p3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_4

    .line 596
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 597
    :cond_6
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->clearFocus()V

    .line 598
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->clearFocus()V

    .line 612
    :cond_7
    :goto_4
    iget-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->limitTextPaddingBounds:Z

    if-eqz p2, :cond_8

    .line 613
    iget p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->textPaddingDistanceMin:I

    iget p3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->textPaddingDistanceMax:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 614
    iget p3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->textPaddingDistanceMin:I

    iget v10, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->textPaddingDistanceMax:I

    invoke-static {p3, v10}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 615
    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 617
    :cond_8
    iget-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->limitOpacityBounds:Z

    if-eqz p2, :cond_9

    .line 618
    iget p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->opacityMin:F

    iget p3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->opacityMax:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 619
    iget p3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->opacityMin:F

    iget v10, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->opacityMax:F

    invoke-static {p3, v10}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 620
    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 623
    :cond_9
    invoke-direct {p0, v5}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setTextPadding(I)V

    .line 624
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setAlpha(F)V

    .line 625
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p2, :cond_a

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float v3, v3, p2

    .line 626
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setBackgroundAlpha(I)V

    .line 629
    :cond_a
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    invoke-direct {p0, v6, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->colorWithAlphaAndRgb(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 630
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    invoke-direct {p0, v4, v8}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->colorWithAlphaAndRgb(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 631
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->alternateHintText:Landroid/widget/TextView;

    invoke-direct {p0, v4, v8}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->colorWithAlphaAndRgb(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 633
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->searchButton:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v8}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->colorWithAlphaAndRgb(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 634
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->searchButton:Landroid/widget/ImageView;

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {v7, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 635
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->voiceButton:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v8}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->colorWithAlphaAndRgb(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 636
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->voiceButton:Landroid/widget/ImageView;

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {v7, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 638
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->springAlternativeHintAlpha:Lcom/facebook/rebound/Spring;

    if-eqz p2, :cond_d

    .line 639
    invoke-virtual {p2}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide p2

    double-to-float p2, p2

    sub-float p3, v2, p2

    .line 642
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->currentFactor:F

    sub-float/2addr v2, v0

    mul-float p2, p2, v2

    add-float/2addr p3, p2

    const/high16 p2, 0x3f000000    # 0.5f

    cmpg-float v0, p3, p2

    if-gez v0, :cond_b

    sub-float v0, p2, p3

    div-float/2addr v0, p2

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    .line 644
    :goto_5
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->limitAlpha(F)F

    move-result v0

    cmpl-float v1, p3, p2

    if-lez v1, :cond_c

    sub-float/2addr p3, p2

    div-float v9, p3, p2

    .line 645
    :cond_c
    invoke-static {v9}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->limitAlpha(F)F

    move-result p2

    .line 647
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->alternateHintText:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 648
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setAlpha(F)V

    .line 651
    :cond_d
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mOnFactorChangeListener:Lcom/voxel/simplesearchlauncher/view/SpringySearchView$OnFactorChangeListener;

    if-eqz p2, :cond_e

    .line 652
    invoke-interface {p2, p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$OnFactorChangeListener;->onFactorChanged(F)V

    :cond_e
    return-void
.end method

.method public cancelMotion()V
    .locals 4

    .line 815
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getCurrentFactor()F

    move-result v0

    .line 816
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setVelocity(D)Lcom/facebook/rebound/Spring;

    float-to-double v0, v0

    .line 817
    invoke-direct {p0, v0, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->updateSpringEndValue(D)V

    return-void
.end method

.method public getAlternateHintTextModeTarget()F
    .locals 2

    .line 871
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->springAlternativeHintAlpha:Lcom/facebook/rebound/Spring;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 874
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getCrossOverFactor()F
    .locals 1

    .line 505
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->crossOverFactor:F

    return v0
.end method

.method public getCurrentFactor()F
    .locals 1

    .line 779
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->currentFactor:F

    return v0
.end method

.method public getEndValueIfAvailable()Ljava/lang/Float;
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFactorDistance()I
    .locals 1

    .line 497
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->factorDistance:I

    return v0
.end method

.method public hideAlternateHintTextMode(Z)V
    .locals 3

    .line 861
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->initializeAlternativeHintSpringIfNeeded()V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 863
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->springAlternativeHintAlpha:Lcom/facebook/rebound/Spring;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_0

    .line 865
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->springAlternativeHintAlpha:Lcom/facebook/rebound/Spring;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 866
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->springAlternativeHintAlpha:Lcom/facebook/rebound/Spring;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(DZ)Lcom/facebook/rebound/Spring;

    :goto_0
    return-void
.end method

.method public hideSearchProgressSpinner()V
    .locals 3

    const v0, 0x7f0a024d

    .line 470
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0252

    .line 471
    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 473
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x8

    .line 474
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-ne v1, v3, :cond_0

    move/from16 v3, p4

    if-eq v2, v3, :cond_4

    .line 284
    :cond_0
    iget-object v3, v0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 285
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v5, 0x1e

    .line 286
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 288
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v6, -0x1

    .line 289
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v6, 0x2

    .line 291
    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v6, v4

    const/4 v3, 0x1

    aput-object v5, v6, v3

    .line 295
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 296
    iget-object v7, v0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v3, v0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 297
    iget-object v13, v0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v3, v0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mDensity:F

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const v3, 0x7f0a0236

    .line 298
    invoke-virtual {v0, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, v0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 300
    sget-boolean v3, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v3, :cond_1

    .line 301
    new-instance v3, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$3;

    invoke-direct {v3, v0, v1, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$3;-><init>(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;II)V

    invoke-virtual {v0, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_1
    int-to-float v3, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 311
    iput v3, v0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mBackgroundDrawableCornerRadius:F

    const/4 v5, 0x0

    .line 312
    :goto_0
    iget-object v6, v0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 313
    iget-object v6, v0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    iget v7, v0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mBackgroundDrawableCornerRadius:F

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 316
    :cond_2
    sget-boolean v5, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v5, :cond_3

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->invalidateOutline()V

    .line 320
    :cond_3
    iget-object v5, v0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mRounder:Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;

    invoke-virtual {v5, v3}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->setCornerRadius(F)V

    .line 322
    new-instance v3, Landroid/view/TouchDelegate;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    invoke-direct {v3, v5, v1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 324
    iget v1, v0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->currentFactor:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->applyFactor(FZF)V

    :cond_4
    return-void
.end method

.method public refreshSubtleBackgroundDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 8

    .line 329
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 335
    :try_start_0
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 337
    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->isWallpaperDrawableValid(Landroid/graphics/drawable/Drawable;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 347
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    if-eqz v2, :cond_5

    if-nez p2, :cond_5

    const/4 p1, 0x2

    .line 351
    new-array p2, p1, [I

    .line 352
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getLocationOnScreen([I)V

    .line 353
    aget v0, p2, v1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v0, v3

    aput v0, p2, v1

    .line 355
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 v0, 0x3e800000    # 0.25f

    .line 360
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    aget v5, p2, v4

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 361
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    if-lez v3, :cond_4

    if-gtz v5, :cond_2

    goto :goto_2

    .line 366
    :cond_2
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 367
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 370
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 371
    aget v7, p2, v1

    neg-int v7, v7

    int-to-float v7, v7

    mul-float v7, v7, v0

    .line 372
    aget p2, p2, v4

    neg-int p2, p2

    int-to-float p2, p2

    mul-float p2, p2, v0

    .line 374
    invoke-virtual {v6, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 375
    invoke-virtual {v6, p2, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 377
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 378
    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 379
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 380
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 383
    invoke-direct {p0, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getTint(Landroid/graphics/Bitmap;)I

    move-result p2

    .line 384
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 385
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 386
    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 389
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {v0, v2, p2}, Lcom/voxel/simplesearchlauncher/utils/ColorUtil;->rgbToHsl(III)[F

    move-result-object p2

    .line 390
    aget p1, p2, p1

    const p2, 0x3f666666    # 0.9f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 393
    :goto_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0xa

    const v0, 0x3f333333    # 0.7f

    invoke-static {p1, v3, p2, v0}, Lcom/voxel/simplesearchlauncher/utils/Blur;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 394
    new-instance p2, Lcom/voxel/launcher3/FastBitmapDrawable;

    invoke-direct {p2, p1}, Lcom/voxel/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mSubtleBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 396
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/-$$Lambda$SpringySearchView$gGpnx8kpsls8IV8lGvINAhtTDKI;

    invoke-direct {p1, p0, v1}, Lcom/voxel/simplesearchlauncher/view/-$$Lambda$SpringySearchView$gGpnx8kpsls8IV8lGvINAhtTDKI;-><init>(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;Z)V

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_4
    :goto_2
    return-void

    .line 406
    :cond_5
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/-$$Lambda$SpringySearchView$o_X_zcrJsFtY9SYDqUMTsa-hSXQ;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/view/-$$Lambda$SpringySearchView$o_X_zcrJsFtY9SYDqUMTsa-hSXQ;-><init>(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)V

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->post(Ljava/lang/Runnable;)Z

    :goto_3
    return-void
.end method

.method public sendMotionEvent(Landroid/view/MotionEvent;)V
    .locals 12

    .line 679
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 683
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->wasAtRest()Z

    move-result v0

    xor-int/2addr v0, v3

    .line 684
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v4}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 687
    iget-boolean v4, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mIsTouching:Z

    .line 688
    iput-boolean v3, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mIsTouching:Z

    .line 690
    iget-boolean v5, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mIsTouching:Z

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->notifyListenerBeginIfNeeded(ZZZZ)V

    .line 692
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->previousY:F

    cmpl-float v1, v0, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 695
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 696
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->previousY:F

    .line 697
    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->calculateNewFactor(F)F

    move-result p1

    invoke-virtual {p0, p1, v3, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->applyFactor(FZF)V

    goto/16 :goto_5

    .line 693
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->previousY:F

    goto/16 :goto_5

    .line 701
    :cond_2
    iput v2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->previousY:F

    .line 703
    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->currentFactor:F

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_9

    .line 705
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getCurrentFactor()F

    move-result v5

    .line 706
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    .line 707
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->reactiveEndValueSpringListener:Lcom/facebook/rebound/SpringListener;

    invoke-virtual {p1, v0}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 708
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 710
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->motionFactor:F

    mul-float p1, p1, v0

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->factorDistance:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-direct {p0, v5}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->calculateOvershootFactor(F)F

    move-result v0

    div-float/2addr p1, v0

    .line 711
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->isDragDown:Z

    if-eqz v0, :cond_3

    const/high16 v0, -0x40800000    # -1.0f

    mul-float p1, p1, v0

    move v7, p1

    goto :goto_1

    :cond_3
    move v7, p1

    .line 714
    :goto_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    float-to-double v8, v5

    invoke-virtual {p1, v8, v9}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 715
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    float-to-double v10, v7

    invoke-virtual {p1, v10, v11}, Lcom/facebook/rebound/Spring;->setVelocity(D)Lcom/facebook/rebound/Spring;

    .line 718
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->calculateEndValueWithVelocity(F)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 720
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 722
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setEndValue(F)V

    goto :goto_2

    .line 724
    :cond_4
    invoke-direct {p0, v8, v9}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->updateSpringEndValue(D)V

    .line 725
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v8

    double-to-float v6, v8

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    iget-wide v8, p1, Lcom/facebook/rebound/SpringConfig;->tension:D

    double-to-float v8, v8

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    iget-wide v9, p1, Lcom/facebook/rebound/SpringConfig;->friction:D

    double-to-float v9, v9

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->estimateStopPosition(FFFFF)F

    move-result v0

    .line 728
    :goto_2
    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->crossOverFactor:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_6

    .line 729
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 730
    :cond_5
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->clearFocus()V

    .line 731
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_4

    .line 734
    :cond_6
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->keyboardRulesHandler:Lcom/voxel/simplesearchlauncher/view/SpringySearchView$KeyboardRulesHandler;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView$KeyboardRulesHandler;->canDisplayKeyboard()Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    .line 735
    :goto_3
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_8

    .line 736
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->requestFocus()Z

    .line 737
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 738
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 739
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->editText:Landroid/widget/EditText;

    invoke-virtual {p1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 743
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->wasAtRest()Z

    move-result p1

    xor-int/2addr p1, v3

    .line 744
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v0

    xor-int/2addr v0, v3

    .line 746
    iget-boolean v2, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mIsTouching:Z

    .line 747
    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mIsTouching:Z

    .line 749
    iget-boolean v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mIsTouching:Z

    invoke-direct {p0, v2, v1, p1, v0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->notifyListenerEndIfNeeded(ZZZZ)V

    :cond_9
    :goto_5
    return-void
.end method

.method public setBackgroundAlternativeFactorOffset(F)V
    .locals 2

    .line 884
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mBackgroundAlternativeFactorOffset:F

    .line 885
    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->currentFactor:F

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->applyFactor(FZF)V

    return-void
.end method

.method public setCrossOverFactor(F)V
    .locals 0

    .line 509
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->crossOverFactor:F

    return-void
.end method

.method public setEndValue(F)V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    .line 520
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->forcedEndValueSpringListener:Lcom/facebook/rebound/SpringListener;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 521
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 522
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->spring:Lcom/facebook/rebound/Spring;

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->currentFactor:F

    float-to-double v0, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(DZ)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method public setFactorDistance(I)V
    .locals 0

    .line 501
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->factorDistance:I

    return-void
.end method

.method public setKeyboardRulesHandler(Lcom/voxel/simplesearchlauncher/view/SpringySearchView$KeyboardRulesHandler;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->keyboardRulesHandler:Lcom/voxel/simplesearchlauncher/view/SpringySearchView$KeyboardRulesHandler;

    return-void
.end method

.method public setOnFactorChangeListener(Lcom/voxel/simplesearchlauncher/view/SpringySearchView$OnFactorChangeListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mOnFactorChangeListener:Lcom/voxel/simplesearchlauncher/view/SpringySearchView$OnFactorChangeListener;

    return-void
.end method

.method public setSubtleOffsets(FF)V
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mSubtleBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setOffsets(FF)V

    .line 880
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mRounder:Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->invalidate()V

    return-void
.end method

.method public setUseSubtleBackground(Z)V
    .locals 2

    .line 513
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mUseSubtleBackground:Z

    .line 514
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mRounder:Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/MaskRoundedFrameLayout;->setVisibility(I)V

    .line 515
    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->currentFactor:F

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->applyFactor(FZF)V

    return-void
.end method

.method public showSearchProgressSpinner()V
    .locals 3

    const v0, 0x7f0a024d

    .line 461
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0252

    .line 462
    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    .line 464
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 465
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
