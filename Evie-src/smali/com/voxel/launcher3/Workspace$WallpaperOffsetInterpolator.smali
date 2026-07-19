.class Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperOffsetInterpolator"
.end annotation


# instance fields
.field private final ANIMATION_DURATION:I

.field private final MIN_PARALLAX_PAGE_SPAN:I

.field mAnimating:Z

.field mAnimationStartOffset:F

.field mAnimationStartTime:J

.field mChoreographer:Landroid/view/Choreographer;

.field mCurrentOffset:F

.field mFinalOffset:F

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mNumScreens:I

.field mScrollingWallpaperType:Z

.field mWaitingForUpdate:Z

.field runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/voxel/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/Workspace;)V
    .locals 1

    .line 1349
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1335
    iput p1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 1336
    iput p1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    const/16 p1, 0xfa

    .line 1343
    iput p1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->ANIMATION_DURATION:I

    const/4 p1, 0x3

    .line 1345
    iput p1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->MIN_PARALLAX_PAGE_SPAN:I

    const/4 p1, 0x0

    .line 1348
    iput-boolean p1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mScrollingWallpaperType:Z

    .line 1418
    new-instance p1, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator$1;

    invoke-direct {p1, p0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator$1;-><init>(Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;)V

    iput-object p1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->runnable:Ljava/lang/Runnable;

    .line 1350
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mChoreographer:Landroid/view/Choreographer;

    .line 1351
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$500(Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;)V
    .locals 0

    .line 1334
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->setWallpaperOffsetSteps()V

    return-void
.end method

.method private animateToFinal()V
    .locals 2

    const/4 v0, 0x1

    .line 1536
    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mAnimating:Z

    .line 1537
    iget v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    iput v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mAnimationStartOffset:F

    .line 1538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mAnimationStartTime:J

    return-void
.end method

.method private getNumScreensExcludingEmptyAndCustom()I
    .locals 2

    .line 1513
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v0

    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->numEmptyScreensToIgnore()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1515
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    iget-object v1, v1, Lcom/voxel/launcher3/Workspace;->mCustomContentCallbacks:Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    iget-object v1, v1, Lcom/voxel/launcher3/Workspace;->mCustomContentCallbacks:Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    invoke-interface {v1}, Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;->shouldIncludeInWallpaperScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1516
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Workspace;->numCustomPages()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private numEmptyScreensToIgnore()I
    .locals 2

    .line 1504
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Workspace;->numCustomPages()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private scheduleUpdate()V
    .locals 1

    .line 1565
    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    if-nez v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x1

    .line 1567
    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    :cond_0
    return-void
.end method

.method private setWallpaperOffsetSteps()V
    .locals 3

    .line 1542
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v0}, Lcom/voxel/launcher3/Workspace;->access$700(Lcom/voxel/launcher3/Workspace;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v0}, Lcom/voxel/launcher3/Workspace;->access$700(Lcom/voxel/launcher3/Workspace;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 1546
    iget-object v2, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v2}, Lcom/voxel/launcher3/Workspace;->access$800(Lcom/voxel/launcher3/Workspace;)F

    move-result v2

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    .line 1547
    iget-object v2, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v2}, Lcom/voxel/launcher3/Workspace;->access$200(Lcom/voxel/launcher3/Workspace;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 1548
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v1, v0}, Lcom/voxel/launcher3/Workspace;->access$802(Lcom/voxel/launcher3/Workspace;F)F

    :cond_1
    return-void
.end method

.method private updateOffset(Z)V
    .locals 3

    .line 1362
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v0}, Lcom/voxel/launcher3/Workspace;->access$300(Lcom/voxel/launcher3/Workspace;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v0}, Lcom/voxel/launcher3/Workspace;->access$300(Lcom/voxel/launcher3/Workspace;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1365
    :cond_0
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getScrollingWallpaperType()Z

    move-result v0

    .line 1366
    iget-boolean v1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mScrollingWallpaperType:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1367
    :goto_0
    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mScrollingWallpaperType:Z

    if-nez v1, :cond_2

    .line 1369
    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_6

    .line 1370
    :cond_2
    iput-boolean v2, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    if-nez v1, :cond_3

    .line 1371
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v0}, Lcom/voxel/launcher3/Workspace;->access$400(Lcom/voxel/launcher3/Workspace;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1373
    :cond_3
    :try_start_0
    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mScrollingWallpaperType:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    .line 1377
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->runnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/voxel/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1379
    :cond_4
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->runnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_5
    const/high16 p1, 0x3f000000    # 0.5f

    .line 1402
    :try_start_1
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v0}, Lcom/voxel/launcher3/Workspace;->access$200(Lcom/voxel/launcher3/Workspace;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v1}, Lcom/voxel/launcher3/Workspace;->access$400(Lcom/voxel/launcher3/Workspace;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p1}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1408
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v0}, Lcom/voxel/launcher3/Workspace;->access$000(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Lcom/voxel/launcher3/Launcher;->setWallpaperOffsets(FF)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "Launcher.Workspace"

    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error updating wallpaper offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 7

    .line 1457
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    .line 1462
    :cond_0
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->numEmptyScreensToIgnore()I

    move-result v0

    .line 1463
    iget-object v3, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    iget-object v3, v3, Lcom/voxel/launcher3/Workspace;->mCustomContentCallbacks:Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    iget-object v3, v3, Lcom/voxel/launcher3/Workspace;->mCustomContentCallbacks:Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    invoke-interface {v3}, Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;->shouldIncludeInWallpaperScroll()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    .line 1464
    invoke-virtual {v3}, Lcom/voxel/launcher3/Workspace;->numCustomPages()I

    move-result v3

    .line 1466
    :goto_1
    iget-object v5, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v5}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    sub-int v0, v5, v0

    .line 1467
    iget-object v5, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    iget-boolean v5, v5, Lcom/voxel/launcher3/Workspace;->mIsRtl:Z

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v6, v3

    move v3, v0

    move v0, v6

    .line 1473
    :goto_2
    iget-object v5, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v5, v0}, Lcom/voxel/launcher3/Workspace;->getScrollForPage(I)I

    move-result v0

    .line 1474
    iget-object v5, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v5, v3}, Lcom/voxel/launcher3/Workspace;->getScrollForPage(I)I

    move-result v3

    sub-int/2addr v3, v0

    if-nez v3, :cond_4

    return v1

    .line 1481
    :cond_4
    iget-object v5, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    .line 1482
    invoke-virtual {v5}, Lcom/voxel/launcher3/Workspace;->getScrollX()I

    move-result v5

    sub-int/2addr v5, v0

    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, v4}, Lcom/voxel/launcher3/Workspace;->getLayoutTransitionOffsetForPage(I)I

    move-result v0

    sub-int/2addr v5, v0

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v5, v5

    int-to-float v3, v3

    div-float/2addr v5, v3

    .line 1483
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1484
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1487
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->getNumScreensExcludingEmptyAndCustom()I

    move-result v1

    .line 1489
    iget-object v3, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v3}, Lcom/voxel/launcher3/Workspace;->access$600(Lcom/voxel/launcher3/Workspace;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v3, v1, -0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x3

    add-int/lit8 v5, v1, -0x1

    .line 1492
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1494
    :goto_3
    iget-object v5, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v5, v3}, Lcom/voxel/launcher3/Workspace;->access$702(Lcom/voxel/launcher3/Workspace;I)I

    .line 1498
    iget-object v5, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    iget-boolean v5, v5, Lcom/voxel/launcher3/Workspace;->mIsRtl:Z

    if-eqz v5, :cond_6

    sub-int v4, v3, v1

    add-int/2addr v4, v2

    :cond_6
    add-int/2addr v4, v1

    sub-int/2addr v4, v2

    int-to-float v1, v4

    mul-float v0, v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 8

    .line 1438
    iget v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 1439
    iget-boolean v1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mAnimating:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mAnimationStartTime:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    const/high16 v6, 0x437a0000    # 250.0f

    div-float/2addr v1, v6

    .line 1442
    iget-object v6, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 1443
    iget v6, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mAnimationStartOffset:F

    iget v7, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    sub-float/2addr v7, v6

    mul-float v7, v7, v1

    add-float/2addr v6, v7

    iput v6, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    const-wide/16 v6, 0xfa

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1445
    :goto_0
    iput-boolean v1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mAnimating:Z

    goto :goto_1

    .line 1447
    :cond_1
    iget v1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    iput v1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 1450
    :goto_1
    iget v1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    iget v4, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v4, 0x33d6bf95    # 1.0E-7f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 1451
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->scheduleUpdate()V

    .line 1453
    :cond_2
    iget v1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public doFrame(J)V
    .locals 0

    const/4 p1, 0x0

    .line 1356
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->updateOffset(Z)V

    return-void
.end method

.method public getCurrX()F
    .locals 1

    .line 1528
    iget v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    return v0
.end method

.method public jumpToFinal()V
    .locals 1

    .line 1572
    iget v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    iput v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mCurrentOffset:F

    return-void
.end method

.method public setFinalX(F)V
    .locals 1

    .line 1553
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->scheduleUpdate()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1554
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mFinalOffset:F

    .line 1555
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->getNumScreensExcludingEmptyAndCustom()I

    move-result p1

    iget v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mNumScreens:I

    if-eq p1, v0, :cond_1

    if-lez v0, :cond_0

    .line 1558
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->animateToFinal()V

    .line 1560
    :cond_0
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->getNumScreensExcludingEmptyAndCustom()I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->mNumScreens:I

    :cond_1
    return-void
.end method

.method public syncWithScroll()V
    .locals 2

    .line 1522
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->wallpaperOffsetForCurrentScroll()F

    move-result v0

    .line 1523
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    iget-object v1, v1, Lcom/voxel/launcher3/Workspace;->mWallpaperOffset:Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    const/4 v0, 0x1

    .line 1524
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->updateOffset(Z)V

    return-void
.end method
