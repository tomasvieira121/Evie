.class Lme/relex/photodraweeview/Attacher$FlingRunnable;
.super Ljava/lang/Object;
.source "Attacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/photodraweeview/Attacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mCurrentX:I

.field private mCurrentY:I

.field private final mScroller:Landroidx/core/widget/ScrollerCompat;

.field final synthetic this$0:Lme/relex/photodraweeview/Attacher;


# direct methods
.method public constructor <init>(Lme/relex/photodraweeview/Attacher;Landroid/content/Context;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    invoke-static {p2}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroidx/core/widget/ScrollerCompat;

    move-result-object p1

    iput-object p1, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mScroller:Landroidx/core/widget/ScrollerCompat;

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 1

    .line 485
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    return-void
.end method

.method public fling(IIII)V
    .locals 14

    move-object v0, p0

    .line 489
    iget-object v1, v0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v1}, Lme/relex/photodraweeview/Attacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 494
    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v2, p1

    int-to-float v2, v2

    .line 497
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v5, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 499
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v9, v2

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    move v8, v4

    move v9, v8

    .line 504
    :goto_0
    iget v2, v1, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move/from16 v3, p2

    int-to-float v3, v3

    .line 505
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_2

    .line 507
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v11, v1

    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    move v10, v2

    move v11, v10

    .line 512
    :goto_1
    iput v4, v0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mCurrentX:I

    .line 513
    iput v2, v0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mCurrentY:I

    if-ne v4, v9, :cond_3

    if-eq v2, v11, :cond_4

    .line 516
    :cond_3
    iget-object v3, v0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mScroller:Landroidx/core/widget/ScrollerCompat;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v5, v2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v13}, Landroidx/core/widget/ScrollerCompat;->fling(IIIIIIIIII)V

    :cond_4
    return-void
.end method

.method public run()V
    .locals 6

    .line 521
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v1, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getCurrX()I

    move-result v1

    .line 529
    iget-object v2, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroidx/core/widget/ScrollerCompat;->getCurrY()I

    move-result v2

    .line 530
    iget-object v3, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-static {v3}, Lme/relex/photodraweeview/Attacher;->access$400(Lme/relex/photodraweeview/Attacher;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mCurrentX:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mCurrentY:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 531
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->invalidate()V

    .line 532
    iput v1, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mCurrentX:I

    .line 533
    iput v2, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mCurrentY:I

    .line 534
    iget-object v1, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-static {v1, v0, p0}, Lme/relex/photodraweeview/Attacher;->access$100(Lme/relex/photodraweeview/Attacher;Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
