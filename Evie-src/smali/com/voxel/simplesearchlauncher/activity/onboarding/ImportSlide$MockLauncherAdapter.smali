.class Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ImportSlide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MockLauncherAdapter"
.end annotation


# instance fields
.field mImporterInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;",
            ">;"
        }
    .end annotation
.end field

.field mScale:F

.field mViewHolders:[Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;Landroid/app/Activity;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;",
            ">;)V"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 310
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->mImporterInfos:Ljava/util/List;

    .line 311
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->mImporterInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->mViewHolders:[Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;

    const/4 v0, 0x0

    .line 314
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_0

    if-ge v0, v2, :cond_0

    .line 316
    invoke-direct {p0, p2, v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->makeView(Landroid/content/Context;I)Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;

    move-result-object v1

    .line 317
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->mViewHolders:[Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0701b9

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 321
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 322
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0701b8

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 324
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$100(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result v1

    mul-int/lit8 v3, p3, 0x2

    sub-int/2addr v1, v3

    sub-int/2addr v1, p2

    .line 325
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$100(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result p2

    add-int/2addr p3, v0

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    .line 327
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 328
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 329
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 330
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$300(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 331
    invoke-virtual {p1, p3, v0}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 332
    invoke-virtual {p1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 333
    new-instance p3, Landroid/util/DisplayMetrics;

    invoke-direct {p3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 334
    invoke-virtual {p1, p3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    int-to-float p1, p2

    .line 336
    iget p2, v2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, v1

    .line 337
    iget p3, v2, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 339
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->mScale:F

    return-void
.end method

.method private makeView(Landroid/content/Context;I)Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;
    .locals 23

    move-object/from16 v0, p0

    .line 359
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->mImporterInfos:Ljava/util/List;

    move/from16 v2, p2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;

    .line 360
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0075

    const/4 v4, 0x0

    .line 362
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 363
    new-instance v4, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;

    iget-object v5, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-direct {v4, v5, v3}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;Landroid/view/View;)V

    .line 364
    iget-object v3, v4, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v3, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$500(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v5, 0x7f0d0077

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    .line 366
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 367
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 368
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 370
    iget-object v5, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-static {v5}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$600(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 373
    invoke-static/range {p1 .. p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    .line 377
    :try_start_0
    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getBuiltInDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 387
    :goto_0
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 388
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 389
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 390
    iget-object v9, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-static {v9}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$300(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 391
    invoke-virtual {v9, v6, v7}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 392
    invoke-virtual {v9, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 393
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 394
    invoke-virtual {v9, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 396
    new-instance v9, Lcom/voxel/launcher3/CellParams;

    invoke-direct {v9}, Lcom/voxel/launcher3/CellParams;-><init>()V

    .line 397
    iget-object v11, v1, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->importData:Lcom/voxel/simplesearchlauncher/importer/ImportData;

    iget v11, v11, Lcom/voxel/simplesearchlauncher/importer/ImportData;->rows:I

    int-to-float v11, v11

    iput v11, v9, Lcom/voxel/launcher3/CellParams;->numRows:F

    .line 398
    iget-object v11, v1, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->importData:Lcom/voxel/simplesearchlauncher/importer/ImportData;

    iget v11, v11, Lcom/voxel/simplesearchlauncher/importer/ImportData;->cols:I

    int-to-float v11, v11

    iput v11, v9, Lcom/voxel/launcher3/CellParams;->numColumns:F

    .line 399
    iget-object v11, v1, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->importData:Lcom/voxel/simplesearchlauncher/importer/ImportData;

    iget v11, v11, Lcom/voxel/simplesearchlauncher/importer/ImportData;->iconScale:F

    iput v11, v9, Lcom/voxel/launcher3/CellParams;->iconScale:F

    .line 400
    iput-boolean v3, v9, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    .line 401
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 402
    sget-object v11, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v3, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    new-instance v9, Lcom/voxel/launcher3/DynamicGrid;

    iget-object v11, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-static {v11}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$300(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    iget-object v11, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    .line 405
    invoke-static {v11}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$300(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget v11, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 406
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v15

    iget v6, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    .line 407
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v16

    iget v6, v8, Landroid/graphics/Point;->x:I

    iget v7, v8, Landroid/graphics/Point;->y:I

    iget v8, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 409
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v11

    invoke-virtual {v11}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarDesktopEnabled()Z

    move-result v22

    move-object v12, v9

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v10

    move-object/from16 v21, v3

    invoke-direct/range {v12 .. v22}, Lcom/voxel/launcher3/DynamicGrid;-><init>(Landroid/content/Context;Landroid/content/res/Resources;IIIIIILjava/util/Map;Z)V

    invoke-virtual {v9}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v10

    .line 410
    iget-object v3, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    move-object/from16 v6, p1

    invoke-static {v3, v2, v10, v6, v5}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$700(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;Landroid/view/View;Lcom/voxel/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 412
    iget-object v7, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    iget-object v3, v1, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->importData:Lcom/voxel/simplesearchlauncher/importer/ImportData;

    iget-object v11, v3, Lcom/voxel/simplesearchlauncher/importer/ImportData;->itemInfos:Ljava/util/List;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->importData:Lcom/voxel/simplesearchlauncher/importer/ImportData;

    iget v12, v1, Lcom/voxel/simplesearchlauncher/importer/ImportData;->mainScreenId:I

    move-object v8, v2

    move-object/from16 v9, p1

    invoke-static/range {v7 .. v12}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$800(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;Landroid/view/View;Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile;Ljava/util/List;I)V

    .line 414
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->access$900(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v3, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;

    invoke-direct {v3, v0, v2, v4}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter$1;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;Landroid/view/View;Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-object v4
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 448
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->mImporterInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->mViewHolders:[Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;

    aget-object v1, v0, p2

    if-eqz v1, :cond_0

    .line 347
    aget-object v1, v0, p2

    const/4 v2, 0x0

    .line 348
    aput-object v2, v0, p2

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;->makeView(Landroid/content/Context;I)Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;

    move-result-object v1

    .line 353
    :goto_0
    iget-object p2, v1, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 354
    iget-object p1, v1, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;->view:Landroid/view/View;

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
