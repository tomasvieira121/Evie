.class public Lcom/evie/common/iconpack/IconPackFilter;
.super Ljava/lang/Object;
.source "IconPackFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IconPackFilter"


# instance fields
.field iconPackres:Landroid/content/res/Resources;

.field private mAppFilterDrawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppFilterLoaded:Z

.field private final mBackImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarPrefixes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDrawableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawableListLoaded:Z

.field private mDrawableListVerified:Z

.field private mFactor:F

.field private mFrontImage:Landroid/graphics/Bitmap;

.field private mMaskImage:Landroid/graphics/Bitmap;

.field private final mPackageName:Ljava/lang/String;

.field private mShader:Lcom/evie/common/iconpack/shader/IconPackShader;

.field private final mVersionCode:I

.field private totalIcons:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mAppFilterLoaded:Z

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/evie/common/iconpack/IconPackFilter;->mAppFilterDrawables:Ljava/util/HashMap;

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/evie/common/iconpack/IconPackFilter;->mCalendarPrefixes:Ljava/util/HashMap;

    .line 66
    iput-boolean v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mDrawableListLoaded:Z

    .line 67
    iput-boolean v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mDrawableListVerified:Z

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mDrawableList:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mBackImages:Ljava/util/List;

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mMaskImage:Landroid/graphics/Bitmap;

    .line 72
    iput-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mFrontImage:Landroid/graphics/Bitmap;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 73
    iput v1, p0, Lcom/evie/common/iconpack/IconPackFilter;->mFactor:F

    .line 76
    iput-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mShader:Lcom/evie/common/iconpack/shader/IconPackShader;

    .line 78
    iput-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->iconPackres:Landroid/content/res/Resources;

    .line 81
    iput-object p1, p0, Lcom/evie/common/iconpack/IconPackFilter;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/evie/common/iconpack/IconPackFilter;->mPackageName:Ljava/lang/String;

    .line 83
    iput p3, p0, Lcom/evie/common/iconpack/IconPackFilter;->mVersionCode:I

    .line 85
    invoke-virtual {p0}, Lcom/evie/common/iconpack/IconPackFilter;->load()V

    return-void
.end method

.method private generateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 410
    :cond_0
    iget-object v3, v0, Lcom/evie/common/iconpack/IconPackFilter;->mBackImages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 412
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, v0, Lcom/evie/common/iconpack/IconPackFilter;->mBackImages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    .line 413
    iget-object v4, v0, Lcom/evie/common/iconpack/IconPackFilter;->mBackImages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 414
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 415
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 418
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 419
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    .line 422
    invoke-virtual {v7, v3, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 424
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {v3, v11, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 425
    new-instance v9, Landroid/graphics/Rect;

    int-to-float v10, v4

    iget v12, v0, Lcom/evie/common/iconpack/IconPackFilter;->mFactor:F

    mul-float v10, v10, v12

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v12, v5

    iget v13, v0, Lcom/evie/common/iconpack/IconPackFilter;->mFactor:F

    mul-float v12, v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-direct {v9, v11, v11, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 426
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int v10, v4, v10

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int v12, v5, v12

    div-int/lit8 v12, v12, 0x2

    invoke-virtual {v9, v10, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 428
    iget-object v10, v0, Lcom/evie/common/iconpack/IconPackFilter;->mMaskImage:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_2

    .line 430
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 431
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 432
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 433
    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 435
    new-instance v14, Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/evie/common/iconpack/IconPackFilter;->mMaskImage:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    iget-object v8, v0, Lcom/evie/common/iconpack/IconPackFilter;->mMaskImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v14, v11, v11, v15, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 436
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v11, v11, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 438
    invoke-virtual {v12, v1, v3, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 439
    iget-object v1, v0, Lcom/evie/common/iconpack/IconPackFilter;->mMaskImage:Landroid/graphics/Bitmap;

    invoke-virtual {v12, v1, v14, v8, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 442
    invoke-virtual {v7, v10, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 443
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 446
    :cond_2
    invoke-virtual {v7, v1, v3, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 450
    :goto_0
    iget-object v1, v0, Lcom/evie/common/iconpack/IconPackFilter;->mFrontImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 452
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-gt v1, v3, :cond_4

    iget-object v1, v0, Lcom/evie/common/iconpack/IconPackFilter;->mFrontImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v1, v3, :cond_3

    goto :goto_1

    .line 456
    :cond_3
    iget-object v1, v0, Lcom/evie/common/iconpack/IconPackFilter;->mFrontImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 453
    :cond_4
    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/evie/common/iconpack/IconPackFilter;->mFrontImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, v0, Lcom/evie/common/iconpack/IconPackFilter;->mFrontImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v1, v11, v11, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 454
    iget-object v3, v0, Lcom/evie/common/iconpack/IconPackFilter;->mFrontImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v3, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 461
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/evie/common/iconpack/IconPackFilter;->mShader:Lcom/evie/common/iconpack/shader/IconPackShader;

    if-eqz v1, :cond_6

    .line 462
    invoke-virtual {v1, v6}, Lcom/evie/common/iconpack/shader/IconPackShader;->processBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_6
    return-object v6
.end method

.method private loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->iconPackres:Landroid/content/res/Resources;

    const-string v1, "drawable"

    iget-object v2, p0, Lcom/evie/common/iconpack/IconPackFilter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->iconPackres:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 323
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 324
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getDrawableList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 311
    iget-boolean v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mDrawableListLoaded:Z

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mDrawableList:Ljava/util/List;

    monitor-enter v0

    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/evie/common/iconpack/IconPackFilter;->loadDrawableList()V

    .line 314
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 316
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mDrawableList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIconForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 348
    iget-boolean v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mAppFilterLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/evie/common/iconpack/IconPackFilter;->load()V

    .line 350
    :cond_0
    iget-boolean v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mAppFilterLoaded:Z

    if-nez v0, :cond_1

    return-object p3

    :cond_1
    const-string v0, ""

    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    .line 359
    iget-object p2, p0, Lcom/evie/common/iconpack/IconPackFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 360
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 362
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 364
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/evie/common/iconpack/IconPackFilter;->mAppFilterDrawables:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 370
    iget-object p2, p0, Lcom/evie/common/iconpack/IconPackFilter;->mCalendarPrefixes:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 371
    iget-object p1, p0, Lcom/evie/common/iconpack/IconPackFilter;->mCalendarPrefixes:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "%s%d"

    const/4 v2, 0x2

    .line 372
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 377
    invoke-direct {p0, p1}, Lcom/evie/common/iconpack/IconPackFilter;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    const-string p1, "{"

    .line 381
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v1

    const-string v1, "}"

    .line 382
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-le v1, p1, :cond_6

    .line 384
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 385
    iget-object v1, p0, Lcom/evie/common/iconpack/IconPackFilter;->iconPackres:Landroid/content/res/Resources;

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/evie/common/iconpack/IconPackFilter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_6

    .line 386
    invoke-direct {p0, p1}, Lcom/evie/common/iconpack/IconPackFilter;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_6
    :goto_1
    if-nez p2, :cond_7

    .line 392
    invoke-direct {p0, v0, p3}, Lcom/evie/common/iconpack/IconPackFilter;->generateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 394
    :cond_7
    iget-object p1, p0, Lcom/evie/common/iconpack/IconPackFilter;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, p4}, Lcom/voxel/simplesearchlauncher/utils/BitmapUtil;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 472
    iget v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mVersionCode:I

    return v0
.end method

.method public isCalendarApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    .line 343
    iget-object p2, p0, Lcom/evie/common/iconpack/IconPackFilter;->mCalendarPrefixes:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDrawableListVerified()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mDrawableListVerified:Z

    return v0
.end method

.method public load()V
    .locals 8

    .line 117
    iget-boolean v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mAppFilterLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/evie/common/iconpack/IconPackFilter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->iconPackres:Landroid/content/res/Resources;

    .line 126
    iget-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->iconPackres:Landroid/content/res/Resources;

    const-string v1, "appfilter"

    const-string v2, "xml"

    iget-object v3, p0, Lcom/evie/common/iconpack/IconPackFilter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 128
    iget-object v3, p0, Lcom/evie/common/iconpack/IconPackFilter;->iconPackres:Landroid/content/res/Resources;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v3, v0

    goto :goto_1

    .line 132
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->iconPackres:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "appfilter.xml"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 134
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 135
    invoke-virtual {v3, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 136
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    const-string v4, "utf-8"

    .line 137
    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v1

    .line 139
    :goto_0
    :try_start_3
    sget-object v4, Lcom/evie/common/iconpack/IconPackFilter;->TAG:Ljava/lang/String;

    const-string v5, "No appfilter.xml file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v3, :cond_f

    .line 144
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_2
    if-eq v0, v2, :cond_f

    const/4 v4, 0x2

    if-ne v0, v4, :cond_e

    .line 147
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "iconback"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 148
    :goto_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-ge v4, v0, :cond_e

    .line 149
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "img"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-direct {p0, v0}, Lcom/evie/common/iconpack/IconPackFilter;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v5, p0, Lcom/evie/common/iconpack/IconPackFilter;->mBackImages:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 156
    :cond_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "iconmask"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_e

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "img"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 158
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-direct {p0, v0}, Lcom/evie/common/iconpack/IconPackFilter;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mMaskImage:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    .line 161
    :cond_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "iconupon"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_e

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "img"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 163
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-direct {p0, v0}, Lcom/evie/common/iconpack/IconPackFilter;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mFrontImage:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    .line 166
    :cond_5
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "scale"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 167
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_e

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "factor"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_e

    :try_start_4
    const-string v0, "factor"

    .line 169
    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mFactor:F
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_8

    .line 174
    :cond_6
    :try_start_5
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "item"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    move-object v5, v0

    .line 178
    :goto_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v4, v6, :cond_9

    .line 179
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "component"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 180
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 181
    :cond_7
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 182
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 185
    :cond_9
    iget-object v4, p0, Lcom/evie/common/iconpack/IconPackFilter;->mAppFilterDrawables:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 186
    iget-object v4, p0, Lcom/evie/common/iconpack/IconPackFilter;->mAppFilterDrawables:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->totalIcons:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->totalIcons:I

    goto :goto_8

    .line 189
    :cond_a
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "calendar"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, v1

    move-object v5, v0

    .line 192
    :goto_6
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v4, v6, :cond_e

    .line 193
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "component"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 194
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 195
    :cond_b
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "prefix"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 196
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    :cond_c
    :goto_7
    if-eqz v0, :cond_d

    if-eqz v5, :cond_d

    .line 199
    iget-object v6, p0, Lcom/evie/common/iconpack/IconPackFilter;->mCalendarPrefixes:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 203
    :catch_2
    :cond_e
    :goto_8
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_2

    .line 207
    :cond_f
    new-instance v0, Lcom/evie/common/iconpack/shader/IconPackShader;

    iget-object v1, p0, Lcom/evie/common/iconpack/IconPackFilter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/evie/common/iconpack/IconPackFilter;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/evie/common/iconpack/IconPackFilter;->mVersionCode:I

    invoke-direct {v0, v1, v3, v4}, Lcom/evie/common/iconpack/shader/IconPackShader;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mShader:Lcom/evie/common/iconpack/shader/IconPackShader;

    .line 208
    iput-boolean v2, p0, Lcom/evie/common/iconpack/IconPackFilter;->mAppFilterLoaded:Z
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    .line 214
    sget-object v1, Lcom/evie/common/iconpack/IconPackFilter;->TAG:Ljava/lang/String;

    const-string v2, "IOException during loading of appfilter.xml"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_4
    move-exception v0

    .line 212
    sget-object v1, Lcom/evie/common/iconpack/IconPackFilter;->TAG:Ljava/lang/String;

    const-string v2, "Cannot parse icon pack appfilter.xml"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_5
    move-exception v0

    .line 210
    sget-object v1, Lcom/evie/common/iconpack/IconPackFilter;->TAG:Ljava/lang/String;

    const-string v2, "Cannot load icon pack"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-void
.end method

.method public loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->iconPackres:Landroid/content/res/Resources;

    const-string v1, "drawable"

    iget-object v2, p0, Lcom/evie/common/iconpack/IconPackFilter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->iconPackres:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public loadDrawableList()V
    .locals 8

    .line 219
    iget-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mDrawableList:Ljava/util/List;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-boolean v1, p0, Lcom/evie/common/iconpack/IconPackFilter;->mDrawableListLoaded:Z

    if-eqz v1, :cond_0

    .line 221
    monitor-exit v0

    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/evie/common/iconpack/IconPackFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :try_start_1
    iget-object v2, p0, Lcom/evie/common/iconpack/IconPackFilter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/common/iconpack/IconPackFilter;->iconPackres:Landroid/content/res/Resources;

    .line 229
    iget-object v1, p0, Lcom/evie/common/iconpack/IconPackFilter;->iconPackres:Landroid/content/res/Resources;

    const-string v2, "drawable"

    const-string v3, "xml"

    iget-object v4, p0, Lcom/evie/common/iconpack/IconPackFilter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_1

    .line 231
    iget-object v4, p0, Lcom/evie/common/iconpack/IconPackFilter;->iconPackres:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v1

    goto :goto_1

    .line 235
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/evie/common/iconpack/IconPackFilter;->iconPackres:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "drawable.xml"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 237
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 238
    invoke-virtual {v4, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 239
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v5, "utf-8"

    .line 240
    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, v2

    .line 242
    :goto_0
    :try_start_4
    sget-object v5, Lcom/evie/common/iconpack/IconPackFilter;->TAG:Ljava/lang/String;

    const-string v6, "No drawable.xml file"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v4, :cond_5

    .line 247
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_2
    if-eq v1, v3, :cond_5

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    .line 250
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "item"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move-object v5, v2

    .line 253
    :goto_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 254
    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 255
    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 259
    :cond_3
    iget-object v1, p0, Lcom/evie/common/iconpack/IconPackFilter;->mDrawableList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_2

    .line 266
    :cond_5
    iput-boolean v3, p0, Lcom/evie/common/iconpack/IconPackFilter;->mDrawableListLoaded:Z
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v1

    .line 273
    :try_start_5
    sget-object v2, Lcom/evie/common/iconpack/IconPackFilter;->TAG:Ljava/lang/String;

    const-string v3, "IOException during loading of drawable.xml"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_3
    move-exception v1

    .line 271
    sget-object v2, Lcom/evie/common/iconpack/IconPackFilter;->TAG:Ljava/lang/String;

    const-string v3, "Cannot parse icon pack drawable.xml"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_4
    move-exception v1

    .line 269
    sget-object v2, Lcom/evie/common/iconpack/IconPackFilter;->TAG:Ljava/lang/String;

    const-string v3, "Cannot load icon pack"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    :goto_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    return-void
.end method

.method public releaseMemory()V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mShader:Lcom/evie/common/iconpack/shader/IconPackShader;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Lcom/evie/common/iconpack/shader/IconPackShader;->releaseRegisters()V

    :cond_0
    return-void
.end method

.method public verifyDrawableList()V
    .locals 6

    .line 288
    iget-object v0, p0, Lcom/evie/common/iconpack/IconPackFilter;->mDrawableList:Ljava/util/List;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-boolean v1, p0, Lcom/evie/common/iconpack/IconPackFilter;->mDrawableListLoaded:Z

    if-nez v1, :cond_0

    .line 290
    monitor-exit v0

    return-void

    .line 292
    :cond_0
    iget-boolean v1, p0, Lcom/evie/common/iconpack/IconPackFilter;->mDrawableListVerified:Z

    if-eqz v1, :cond_1

    .line 293
    monitor-exit v0

    return-void

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/evie/common/iconpack/IconPackFilter;->mDrawableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 298
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 300
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/evie/common/iconpack/IconPackFilter;->iconPackres:Landroid/content/res/Resources;

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/evie/common/iconpack/IconPackFilter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 301
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    .line 304
    iput-boolean v1, p0, Lcom/evie/common/iconpack/IconPackFilter;->mDrawableListVerified:Z

    .line 305
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method
