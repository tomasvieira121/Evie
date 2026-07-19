.class public Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BadgeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BadgeDrawable"

.field private static sBitmap:Landroid/graphics/Bitmap; = null

.field private static sScaleFactor:F = 0.85f

.field private static sStyle:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;


# instance fields
.field private mAnimationScaleFactor:F

.field private mBadgeEnabled:Z

.field private mBadgeText:Ljava/lang/String;

.field private mBaseBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mDebugPaint:Landroid/graphics/Paint;

.field private mIconPalette:Lcom/voxel/launcher3/graphics/IconPalette;

.field private mIconSizePx:I

.field private mMaxBounds:Landroid/graphics/Rect;

.field private mMinWidth:F

.field private mNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mPaddingHorizontal:F

.field private mPaddingTop:F

.field private mPlacement:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

.field private mScaleFactor:F

.field private mTextHeight:F

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/voxel/launcher3/graphics/IconPalette;)V
    .locals 3

    .line 73
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBadgeEnabled:Z

    .line 74
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41480000    # 12.5f

    .line 76
    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->dpToPx(F)F

    move-result v1

    iput v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mTextHeight:F

    const/high16 v1, 0x41400000    # 12.0f

    .line 77
    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->dpToPx(F)F

    move-result v1

    iput v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mMinWidth:F

    const/high16 v1, 0x40b00000    # 5.5f

    .line 78
    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->dpToPx(F)F

    move-result v1

    iput v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mPaddingHorizontal:F

    const/high16 v1, 0x40f00000    # 7.5f

    .line 79
    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->dpToPx(F)F

    move-result v1

    iput v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mPaddingTop:F

    .line 80
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getBadgeScale()F

    move-result v1

    sput v1, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->sScaleFactor:F

    .line 82
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getBadgeStyle()Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    move-result-object p1

    sput-object p1, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->sStyle:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 83
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mScaleFactor:F

    .line 84
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mAnimationScaleFactor:F

    .line 87
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mDebugPaint:Landroid/graphics/Paint;

    .line 88
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->dpToPx(F)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mDebugPaint:Landroid/graphics/Paint;

    const-string v1, "#D24436"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    .line 94
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mTextHeight:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setIconPalette(Lcom/voxel/launcher3/graphics/IconPalette;)V

    .line 100
    sget-object p1, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;->TOP_RIGHT:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mPlacement:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    .line 102
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->createNinePatch()V

    return-void
.end method

.method private computeLayout()V
    .locals 11

    .line 208
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->hasBadge()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBaseBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mMaxBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 211
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mIconSizePx:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    sget v2, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->sScaleFactor:F

    mul-float v0, v0, v2

    iput v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mScaleFactor:F

    .line 213
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mTextHeight:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 214
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 215
    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mMinWidth:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_1

    move v0, v2

    .line 218
    :cond_1
    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mPaddingHorizontal:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    .line 220
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    .line 224
    iget v4, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mScaleFactor:F

    mul-float v5, v0, v4

    mul-float v4, v4, v2

    .line 228
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->getTotalScaleFactor()F

    move-result v6

    mul-float v6, v6, v0

    .line 229
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->getTotalScaleFactor()F

    move-result v7

    mul-float v7, v7, v2

    .line 231
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const v9, 0x3f4ccccd    # 0.8f

    .line 236
    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mPlacement:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    iget v10, v10, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;->left:I

    if-nez v10, :cond_2

    .line 237
    iget-object v9, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBaseBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    const v10, 0x3e4ccccc    # 0.19999999f

    mul-float v10, v10, v5

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 238
    iget v9, v8, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mMaxBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-ge v9, v10, :cond_3

    .line 239
    iget-object v9, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mMaxBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iput v9, v8, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 241
    :cond_2
    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBaseBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    mul-float v9, v9, v5

    sub-float/2addr v10, v9

    float-to-int v9, v10

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 242
    iget v9, v8, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v9, v5

    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mMaxBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    .line 243
    iget-object v9, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mMaxBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    float-to-int v10, v5

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 245
    :cond_3
    :goto_0
    iget-object v9, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mPlacement:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    iget v9, v9, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;->top:I

    if-nez v9, :cond_4

    .line 246
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBaseBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v9, 0x0

    mul-float v9, v9, v4

    sub-float/2addr v1, v9

    float-to-int v1, v1

    iput v1, v8, Landroid/graphics/Rect;->top:I

    .line 247
    iget v1, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mMaxBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-ge v1, v9, :cond_5

    .line 248
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v8, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 250
    :cond_4
    iget-object v9, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBaseBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    mul-float v1, v1, v4

    sub-float/2addr v9, v1

    float-to-int v1, v9

    iput v1, v8, Landroid/graphics/Rect;->top:I

    .line 251
    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    iget-object v9, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mMaxBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    cmpl-float v1, v1, v9

    if-lez v1, :cond_5

    .line 252
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    float-to-int v9, v4

    sub-int/2addr v1, v9

    iput v1, v8, Landroid/graphics/Rect;->top:I

    .line 256
    :cond_5
    :goto_1
    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v5, v6

    div-float/2addr v5, v3

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v8, Landroid/graphics/Rect;->left:I

    .line 257
    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v4, v7

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v8, Landroid/graphics/Rect;->top:I

    .line 259
    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v8, Landroid/graphics/Rect;->right:I

    .line 260
    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, v8, Landroid/graphics/Rect;->bottom:I

    .line 263
    invoke-virtual {p0, v8}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 266
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    float-to-int v0, v0

    float-to-int v2, v2

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public static declared-synchronized getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    const-class v0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->sBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f080070

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->sBitmap:Landroid/graphics/Bitmap;

    .line 109
    :cond_0
    sget-object p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->sBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getTotalScaleFactor()F
    .locals 2

    .line 195
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mAnimationScaleFactor:F

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mScaleFactor:F

    mul-float v0, v0, v1

    return v0
.end method

.method public static setScaleFactor(F)V
    .locals 0

    .line 113
    sput p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->sScaleFactor:F

    return-void
.end method

.method public static setStyle(Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;)V
    .locals 0

    .line 117
    sput-object p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->sStyle:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    return-void
.end method


# virtual methods
.method protected createNinePatch()V
    .locals 7

    .line 271
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 272
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    .line 273
    invoke-static {v4}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    return-void

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find a 9-patch resources for badge"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dpToPx(F)F
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 282
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->hasBadge()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBaseBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mMaxBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->computeLayout()V

    .line 288
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->sStyle:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->DOTS:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    if-ne v0, v1, :cond_1

    .line 289
    invoke-static {}, Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;->getInstance()Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;

    move-result-object v2

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mIconPalette:Lcom/voxel/launcher3/graphics/IconPalette;

    .line 290
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->getBaseBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v7, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mIconSizePx:I

    iget v8, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mScaleFactor:F

    iget v9, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mAnimationScaleFactor:F

    move-object v3, p1

    .line 289
    invoke-virtual/range {v2 .. v9}, Lcom/voxel/simplesearchlauncher/view/BadgeRenderer;->draw(Landroid/graphics/Canvas;Lcom/voxel/launcher3/graphics/IconPalette;Landroid/graphics/Rect;Landroid/graphics/Rect;IFF)V

    return-void

    .line 295
    :cond_1
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->getTotalScaleFactor()F

    move-result v0

    .line 298
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 299
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 300
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 301
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 302
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 303
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 313
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 314
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mTextHeight:F

    mul-float v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 315
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    const-string v4, "a"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 317
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mPaddingTop:F

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    .line 318
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 319
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBadgeText:Ljava/lang/String;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public getAnimationScale()F
    .locals 1

    .line 191
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mAnimationScaleFactor:F

    return v0
.end method

.method public getBaseBounds()Landroid/graphics/Rect;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBaseBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMaxBounds()Landroid/graphics/Rect;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mMaxBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public hasBadge()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBadgeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBadgeText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBadgeEnabled()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBadgeEnabled:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 328
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    return-void
.end method

.method public setAnimationScale(F)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mAnimationScaleFactor:F

    .line 187
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setBadge(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 128
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBadge(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    const-string p1, "99+"

    .line 130
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBadge(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBadge(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setBadge(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBadgeText:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->computeLayout()V

    .line 123
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setBadgeEnabled(Z)V
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBadgeEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 143
    :cond_0
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBadgeEnabled:Z

    return-void
.end method

.method public setBaseBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 170
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/voxel/launcher3/CellParams;->getIconSizePx()I

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mIconSizePx:I

    .line 172
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mBaseBounds:Landroid/graphics/Rect;

    .line 173
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setIconPalette(Lcom/voxel/launcher3/graphics/IconPalette;)V
    .locals 0

    if-nez p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/launcher3/graphics/IconPalette;->getBadgePalette(Landroid/content/res/Resources;)Lcom/voxel/launcher3/graphics/IconPalette;

    move-result-object p1

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mIconPalette:Lcom/voxel/launcher3/graphics/IconPalette;

    .line 155
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setMaxBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->mMaxBounds:Landroid/graphics/Rect;

    .line 182
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->invalidateSelf()V

    return-void
.end method
