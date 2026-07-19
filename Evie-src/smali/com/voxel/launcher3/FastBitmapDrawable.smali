.class public Lcom/voxel/launcher3/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# static fields
.field static final CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final sCachedBrightnessFilter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static sGhostModeMatrix:Landroid/graphics/ColorMatrix;

.field private static final sTempMatrix:Landroid/graphics/ColorMatrix;


# instance fields
.field private mAlpha:I

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mBrightness:I

.field private mGhostModeEnabled:Z

.field private mIconPalette:Lcom/voxel/launcher3/graphics/IconPalette;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mPressedAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Lcom/voxel/launcher3/-$$Lambda$FastBitmapDrawable$94_cmWno2X3YOi0McNt4Jo7TdUk;->INSTANCE:Lcom/voxel/launcher3/-$$Lambda$FastBitmapDrawable$94_cmWno2X3YOi0McNt4Jo7TdUk;

    sput-object v0, Lcom/voxel/launcher3/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 52
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/FastBitmapDrawable;->sCachedBrightnessFilter:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mBrightness:I

    .line 69
    iput-boolean v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mGhostModeEnabled:Z

    .line 71
    iput-boolean v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPressed:Z

    const/16 v1, 0xff

    .line 75
    iput v1, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mAlpha:I

    .line 76
    iput-object p1, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, v0, v1, p1}, Lcom/voxel/launcher3/FastBitmapDrawable;->setBounds(IIII)V

    return-void
.end method

.method static synthetic lambda$static$0(F)F
    .locals 2

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    div-float/2addr p0, v0

    return p0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    return v1

    :cond_1
    sub-float/2addr v1, p0

    const p0, 0x3f333333    # 0.7f

    div-float/2addr v1, p0

    return v1
.end method

.method private static setBrightnessMatrix(Landroid/graphics/ColorMatrix;I)V
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 228
    invoke-virtual {p0, v0, v0, v0, v1}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 229
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p0

    const/4 v0, 0x4

    .line 234
    aput p1, p0, v0

    const/16 v0, 0x9

    .line 235
    aput p1, p0, v0

    const/16 v0, 0xe

    .line 236
    aput p1, p0, v0

    return-void
.end method

.method private updateFilter()V
    .locals 3

    .line 190
    iget-boolean v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mGhostModeEnabled:Z

    if-eqz v0, :cond_2

    .line 191
    sget-object v0, Lcom/voxel/launcher3/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    .line 193
    sget-object v0, Lcom/voxel/launcher3/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 197
    sget-object v0, Lcom/voxel/launcher3/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 202
    sget-object v0, Lcom/voxel/launcher3/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    sget-object v1, Lcom/voxel/launcher3/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 205
    :cond_0
    iget v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mBrightness:I

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v2, Lcom/voxel/launcher3/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 208
    :cond_1
    sget-object v1, Lcom/voxel/launcher3/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    invoke-static {v1, v0}, Lcom/voxel/launcher3/FastBitmapDrawable;->setBrightnessMatrix(Landroid/graphics/ColorMatrix;I)V

    .line 209
    sget-object v0, Lcom/voxel/launcher3/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    sget-object v1, Lcom/voxel/launcher3/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 210
    iget-object v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v2, Lcom/voxel/launcher3/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 212
    :cond_2
    iget v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mBrightness:I

    if-eqz v0, :cond_4

    .line 213
    sget-object v1, Lcom/voxel/launcher3/FastBitmapDrawable;->sCachedBrightnessFilter:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    if-nez v0, :cond_3

    .line 215
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mBrightness:I

    const/16 v2, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 217
    sget-object v1, Lcom/voxel/launcher3/FastBitmapDrawable;->sCachedBrightnessFilter:Landroid/util/SparseArray;

    iget v2, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mBrightness:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    :cond_3
    iget-object v1, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3efafafb
        0x0
        0x0
        0x0
        0x43020000    # 130.0f
        0x0
        0x3efafafb
        0x0
        0x0
        0x43020000    # 130.0f
        0x0
        0x0
        0x3efafafb
        0x0
        0x43020000    # 130.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 82
    invoke-virtual {p0}, Lcom/voxel/launcher3/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconPalette()Lcom/voxel/launcher3/graphics/IconPalette;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mIconPalette:Lcom/voxel/launcher3/graphics/IconPalette;

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/16 v1, 0x14

    .line 90
    invoke-static {v0, v1}, Lcom/voxel/launcher3/Utilities;->findDominantColorByHue(Landroid/graphics/Bitmap;I)I

    move-result v0

    const/4 v1, 0x1

    .line 89
    invoke-static {v0, v1}, Lcom/voxel/launcher3/graphics/IconPalette;->fromDominantColor(IZ)Lcom/voxel/launcher3/graphics/IconPalette;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mIconPalette:Lcom/voxel/launcher3/graphics/IconPalette;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mIconPalette:Lcom/voxel/launcher3/graphics/IconPalette;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/voxel/launcher3/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/voxel/launcher3/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 107
    iput p1, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mAlpha:I

    .line 108
    iget-object v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBrightness(I)V
    .locals 1

    .line 182
    iget v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mBrightness:I

    if-eq v0, p1, :cond_0

    .line 183
    iput p1, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mBrightness:I

    .line 184
    invoke-direct {p0}, Lcom/voxel/launcher3/FastBitmapDrawable;->updateFilter()V

    .line 185
    invoke-virtual {p0}, Lcom/voxel/launcher3/FastBitmapDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 114
    iget-object v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public setGhostModeEnabled(Z)V
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mGhostModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 151
    iput-boolean p1, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mGhostModeEnabled:Z

    .line 152
    invoke-direct {p0}, Lcom/voxel/launcher3/FastBitmapDrawable;->updateFilter()V

    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 3

    .line 157
    iget-boolean v0, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPressed:Z

    if-eq v0, p1, :cond_1

    .line 158
    iput-boolean p1, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPressed:Z

    .line 159
    iget-boolean p1, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPressed:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "brightness"

    const/4 v1, 0x1

    .line 160
    new-array v1, v1, [I

    const/16 v2, 0x64

    aput v2, v1, v0

    .line 161
    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    .line 162
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPressedAnimator:Landroid/animation/ObjectAnimator;

    .line 163
    iget-object p1, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPressedAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/voxel/launcher3/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    iget-object p1, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPressedAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/FastBitmapDrawable;->mPressedAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 167
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FastBitmapDrawable;->setBrightness(I)V

    .line 170
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/FastBitmapDrawable;->invalidateSelf()V

    return-void
.end method
