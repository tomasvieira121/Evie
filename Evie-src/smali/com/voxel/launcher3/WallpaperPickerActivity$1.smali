.class Lcom/voxel/launcher3/WallpaperPickerActivity$1;
.super Ljava/lang/Object;
.source "WallpaperPickerActivity.java"

# interfaces
.implements Lcom/voxel/launcher3/CropView$TouchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/WallpaperPickerActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mAnim:Landroid/view/ViewPropertyAnimator;

.field final synthetic this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/WallpaperPickerActivity;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onTouchDown$0(Lcom/voxel/launcher3/WallpaperPickerActivity$1;)V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object v0, v0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onTap()V
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-boolean v0, v0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mIgnoreNextTap:Z

    .line 499
    iget-object v1, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/voxel/launcher3/WallpaperPickerActivity;->mIgnoreNextTap:Z

    if-nez v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->mAnim:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object v0, v0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object v0, v0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->mAnim:Landroid/view/ViewPropertyAnimator;

    .line 506
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->mAnim:Landroid/view/ViewPropertyAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 507
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 508
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 509
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->mAnim:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method public onTouchDown()V
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->mAnim:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object v0, v0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mIgnoreNextTap:Z

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    iget-object v0, v0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->mAnim:Landroid/view/ViewPropertyAnimator;

    .line 486
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->mAnim:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 487
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$1$UkMjStDwRkqPG1tuD8auFC9GddM;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/-$$Lambda$WallpaperPickerActivity$1$UkMjStDwRkqPG1tuD8auFC9GddM;-><init>(Lcom/voxel/launcher3/WallpaperPickerActivity$1;)V

    .line 488
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 489
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->mAnim:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 490
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->mAnim:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public onTouchUp()V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/voxel/launcher3/WallpaperPickerActivity$1;->this$0:Lcom/voxel/launcher3/WallpaperPickerActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/voxel/launcher3/WallpaperPickerActivity;->mIgnoreNextTap:Z

    return-void
.end method
