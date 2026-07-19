.class Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderPreviewAnimation"
.end annotation


# instance fields
.field a:Landroid/animation/Animator;

.field child:Landroid/view/View;

.field finalDeltaX:F

.field finalDeltaY:F

.field finalScale:F

.field initDeltaX:F

.field initDeltaY:F

.field initScale:F

.field mode:I

.field repeating:Z

.field final synthetic this$0:Lcom/voxel/launcher3/CellLayout;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/CellLayout;Landroid/view/View;IIIIIII)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p3

    move-object/from16 v8, p1

    .line 2235
    iput-object v8, v0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    .line 2225
    iput-boolean v9, v0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->repeating:Z

    .line 2236
    invoke-static/range {p1 .. p1}, Lcom/voxel/launcher3/CellLayout;->access$300(Lcom/voxel/launcher3/CellLayout;)[I

    move-result-object v7

    move-object/from16 v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-virtual/range {v2 .. v7}, Lcom/voxel/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2237
    invoke-static/range {p1 .. p1}, Lcom/voxel/launcher3/CellLayout;->access$300(Lcom/voxel/launcher3/CellLayout;)[I

    move-result-object v2

    aget v10, v2, v9

    .line 2238
    invoke-static/range {p1 .. p1}, Lcom/voxel/launcher3/CellLayout;->access$300(Lcom/voxel/launcher3/CellLayout;)[I

    move-result-object v2

    const/4 v11, 0x1

    aget v12, v2, v11

    .line 2239
    invoke-static/range {p1 .. p1}, Lcom/voxel/launcher3/CellLayout;->access$300(Lcom/voxel/launcher3/CellLayout;)[I

    move-result-object v7

    move-object/from16 v2, p1

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-virtual/range {v2 .. v7}, Lcom/voxel/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2240
    invoke-static/range {p1 .. p1}, Lcom/voxel/launcher3/CellLayout;->access$300(Lcom/voxel/launcher3/CellLayout;)[I

    move-result-object v2

    aget v2, v2, v9

    .line 2241
    invoke-static/range {p1 .. p1}, Lcom/voxel/launcher3/CellLayout;->access$300(Lcom/voxel/launcher3/CellLayout;)[I

    move-result-object v3

    aget v3, v3, v11

    sub-int/2addr v2, v10

    sub-int/2addr v3, v12

    const/4 v4, 0x0

    .line 2244
    iput v4, v0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    .line 2245
    iput v4, v0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    if-nez v1, :cond_0

    const/4 v11, -0x1

    :cond_0
    if-ne v2, v3, :cond_1

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    if-nez v3, :cond_2

    neg-int v3, v11

    int-to-float v3, v3

    int-to-float v2, v2

    .line 2250
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float v3, v3, v2

    invoke-static/range {p1 .. p1}, Lcom/voxel/launcher3/CellLayout;->access$400(Lcom/voxel/launcher3/CellLayout;)F

    move-result v2

    mul-float v3, v3, v2

    iput v3, v0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    neg-int v2, v11

    int-to-float v2, v2

    int-to-float v3, v3

    .line 2252
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float v2, v2, v3

    invoke-static/range {p1 .. p1}, Lcom/voxel/launcher3/CellLayout;->access$400(Lcom/voxel/launcher3/CellLayout;)F

    move-result v3

    mul-float v2, v2, v3

    iput v2, v0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    goto :goto_0

    :cond_3
    int-to-float v3, v3

    int-to-float v2, v2

    div-float v4, v3, v2

    float-to-double v4, v4

    .line 2254
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    neg-int v6, v11

    int-to-float v6, v6

    .line 2255
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float v2, v2, v6

    float-to-double v9, v2

    .line 2256
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static/range {p1 .. p1}, Lcom/voxel/launcher3/CellLayout;->access$400(Lcom/voxel/launcher3/CellLayout;)F

    move-result v2

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v11

    double-to-int v2, v9

    int-to-float v2, v2

    iput v2, v0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    .line 2257
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float v6, v6, v2

    float-to-double v2, v6

    .line 2258
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Lcom/voxel/launcher3/CellLayout;->access$400(Lcom/voxel/launcher3/CellLayout;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    iput v2, v0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    .line 2261
    :goto_0
    iput v1, v0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->mode:I

    .line 2262
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iput v1, v0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    .line 2263
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iput v1, v0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    const v1, 0x3f7851ec    # 0.97f

    .line 2264
    iput v1, v0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->finalScale:F

    .line 2265
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v1

    iput v1, v0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    move-object/from16 v1, p2

    .line 2266
    iput-object v1, v0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    return-void
.end method

.method static synthetic access$600(Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;)V
    .locals 0

    .line 2216
    invoke-direct {p0}, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->completeAnimationImmediately()V

    return-void
.end method

.method private cancel()V
    .locals 1

    .line 2313
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2314
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private completeAnimationImmediately()V
    .locals 9

    .line 2319
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2320
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2323
    :cond_0
    invoke-static {}, Lcom/voxel/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 2324
    iput-object v0, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    const/4 v1, 0x4

    .line 2325
    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    const-string v3, "scaleX"

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 2326
    invoke-static {v2, v3, v5}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    const-string v3, "scaleY"

    new-array v5, v4, [F

    aput v6, v5, v7

    .line 2327
    invoke-static {v2, v3, v5}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    const-string v5, "translationX"

    new-array v6, v4, [F

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 2328
    invoke-static {v3, v5, v6}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    const-string v5, "translationY"

    new-array v4, v4, [F

    aput v8, v4, v7

    .line 2329
    invoke-static {v3, v5, v4}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2325
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x96

    .line 2331
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2332
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2333
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static synthetic lambda$animate$0(Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 2289
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2290
    iget v0, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->mode:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->repeating:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v0, p1

    .line 2291
    :goto_0
    iget v2, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    mul-float v2, v2, v0

    sub-float v3, v1, v0

    iget v4, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    .line 2292
    iget v4, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    mul-float v0, v0, v4

    iget v4, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    mul-float v3, v3, v4

    add-float/2addr v0, v3

    .line 2293
    iget-object v3, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 2294
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2295
    iget v0, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->finalScale:F

    mul-float v0, v0, p1

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 2296
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 2297
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method animate()V
    .locals 5

    .line 2270
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-static {v0}, Lcom/voxel/launcher3/CellLayout;->access$500(Lcom/voxel/launcher3/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2271
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-static {v0}, Lcom/voxel/launcher3/CellLayout;->access$500(Lcom/voxel/launcher3/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;

    .line 2272
    invoke-direct {v0}, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->cancel()V

    .line 2273
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-static {v0}, Lcom/voxel/launcher3/CellLayout;->access$500(Lcom/voxel/launcher3/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2274
    iget v0, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2275
    invoke-direct {p0}, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->completeAnimationImmediately()V

    return-void

    .line 2279
    :cond_0
    iget v0, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    .line 2282
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2283
    iput-object v0, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    .line 2284
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v1, -0x1

    .line 2285
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2286
    iget v1, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->mode:I

    if-nez v1, :cond_2

    const-wide/16 v1, 0x15e

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x12c

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2287
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2288
    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$CellLayout$ReorderPreviewAnimation$u5pvzT5ebbfvDaO046UyHdWha3Y;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/-$$Lambda$CellLayout$ReorderPreviewAnimation$u5pvzT5ebbfvDaO046UyHdWha3Y;-><init>(Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2299
    new-instance v1, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation$1;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation$1;-><init>(Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2308
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-static {v1}, Lcom/voxel/launcher3/CellLayout;->access$500(Lcom/voxel/launcher3/CellLayout;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2309
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
