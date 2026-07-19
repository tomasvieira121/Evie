.class public Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;
.super Landroidx/fragment/app/Fragment;
.source "FolderFragment.java"

# interfaces
.implements Lcom/voxel/launcher3/FolderInfo$FolderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$BottomLeftRowItemSorter;,
        Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TopRightRowItemSorter;,
        Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$BottomRightRowItemSorter;,
        Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TopLeftRowItemSorter;,
        Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;,
        Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;,
        Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;,
        Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$OnFolderFragmentInteractionListener;,
        Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$FolderFragmentListener;
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

.field private static final MIN_DURATION_MS:I

.field private static final REVERSE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final RUBBERBANDING_CONFIG:Lcom/facebook/rebound/SpringConfig;


# instance fields
.field private fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$OnFolderFragmentInteractionListener;

.field private mAllTransitionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundWashDrawable:Landroid/graphics/drawable/Drawable;

.field private mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

.field private mCoverClick:Landroid/view/View;

.field private mCurrentAnimators:Landroid/animation/AnimatorSet;

.field private mCurrentAnimatorsListener:Landroid/animation/Animator$AnimatorListener;

.field private mCurrentInterpolator:Landroid/animation/TimeInterpolator;

.field private mFolder:Lcom/voxel/launcher3/Folder;

.field private mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

.field private mFromXOffset:I

.field private mFromYOffset:I

.field private mIsExiting:Z

.field private mListener:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$FolderFragmentListener;

.field private mMainFactor:F

.field private mMainFactorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mMainMaxFactor:F

.field private mOtherTransitionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewTransitionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;",
            ">;"
        }
    .end annotation
.end field

.field private toXOffset:I

.field private toYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 63
    new-instance v0, Lcom/facebook/rebound/SpringConfig;

    const-wide v1, 0x4075e00000000000L    # 350.0

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->RUBBERBANDING_CONFIG:Lcom/facebook/rebound/SpringConfig;

    const/high16 v0, 0x43e10000    # 450.0f

    .line 68
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->MIN_DURATION_MS:I

    .line 72
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    const v0, 0x3eb33333    # 0.35f

    const v1, 0x3f451eb8    # 0.77f

    const v2, 0x3e428f5c    # 0.19f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 73
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    const v0, 0x3f4f5c29    # 0.81f

    const/4 v1, 0x0

    const v2, 0x3f266666    # 0.65f

    const v3, 0x3e6b851f    # 0.23f

    .line 74
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->REVERSE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 76
    sget-object v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mMainFactor:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    iput v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mMainMaxFactor:F

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mAllTransitionItems:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mPreviewTransitionItems:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mOtherTransitionItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mIsExiting:Z

    .line 108
    new-instance v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentAnimatorsListener:Landroid/animation/Animator$AnimatorListener;

    .line 149
    new-instance v0, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$FolderFragment$yKILN8e2dThFijse7KWcHsUb_DU;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$FolderFragment$yKILN8e2dThFijse7KWcHsUb_DU;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mMainFactorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/launcher3/Folder;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/launcher3/FolderIcon;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mPreviewTransitionItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;Ljava/util/List;FFJLandroid/animation/AnimatorSet;)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p6}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->runAnimatorsOnTransitionItems(Ljava/util/List;FFJLandroid/animation/AnimatorSet;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mOtherTransitionItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$FolderFragmentListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mListener:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$FolderFragmentListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Landroid/animation/TimeInterpolator;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method static synthetic access$1700(FFFF)F
    .locals 0

    .line 56
    invoke-static {p0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->distanceSquared(FFFF)F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mAllTransitionItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentAnimators:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$302(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentAnimators:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->updateTransitionParams()V

    return-void
.end method

.method static synthetic access$600(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;F)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->applyFactorToTransitionItem(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;F)V

    return-void
.end method

.method static synthetic access$700(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentAnimatorsListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$800()Landroid/view/animation/LinearInterpolator;
    .locals 1

    .line 56
    sget-object v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mMainFactorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method private applyFactorToTransitionItem(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;F)V
    .locals 16

    move-object/from16 v0, p1

    .line 381
    iget v1, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mMaxFactor:F

    mul-float v1, v1, p2

    .line 382
    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mBubbleTextView:Lcom/voxel/launcher3/BubbleTextView;

    .line 383
    iget-object v3, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mFromParams:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;

    .line 384
    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mToParams:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;

    .line 386
    iget v4, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->transX:F

    iget v5, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->transX:F

    sub-float/2addr v4, v5

    .line 387
    iget v5, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->transY:F

    iget v6, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->transY:F

    sub-float/2addr v5, v6

    .line 388
    iget v6, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->scale:F

    iget v7, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->scale:F

    sub-float/2addr v6, v7

    .line 389
    iget v7, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->alpha:F

    iget v8, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->alpha:F

    sub-float/2addr v7, v8

    .line 390
    iget v8, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingLeft:I

    iget v9, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingLeft:I

    sub-int/2addr v8, v9

    .line 391
    iget v9, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingTop:I

    iget v10, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingTop:I

    sub-int/2addr v9, v10

    .line 392
    iget v10, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingRight:I

    iget v11, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingRight:I

    sub-int/2addr v10, v11

    .line 393
    iget v11, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingBottom:I

    iget v12, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingBottom:I

    sub-int/2addr v11, v12

    .line 395
    iget v12, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->transX:F

    mul-float v4, v4, v1

    add-float/2addr v12, v4

    .line 396
    iget v4, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->transY:F

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    .line 397
    iget v5, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->scale:F

    mul-float v6, v6, v1

    add-float/2addr v5, v6

    .line 398
    iget v6, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->alpha:F

    mul-float v7, v7, v1

    add-float/2addr v6, v7

    invoke-static {v6}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->limitAlpha(F)F

    move-result v6

    .line 399
    iget v7, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingLeft:I

    int-to-float v7, v7

    int-to-float v8, v8

    mul-float v8, v8, v1

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 400
    iget v8, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingTop:I

    int-to-float v8, v8

    int-to-float v9, v9

    mul-float v9, v9, v1

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 401
    iget v9, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingRight:I

    int-to-float v9, v9

    int-to-float v10, v10

    mul-float v10, v10, v1

    add-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 402
    iget v3, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingBottom:I

    int-to-float v3, v3

    int-to-float v10, v11

    mul-float v10, v10, v1

    add-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 403
    iget v10, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseTextAlpha:I

    int-to-float v10, v10

    mul-float v10, v10, v6

    mul-float v10, v10, v1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 404
    iget v11, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseTextColor:I

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v11

    iget v13, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseTextColor:I

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v13

    iget v14, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseTextColor:I

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    invoke-static {v10, v11, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    .line 406
    iget v11, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowAlpha:I

    int-to-float v11, v11

    mul-float v11, v11, v6

    mul-float v11, v11, v1

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 407
    iget v13, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowColor:I

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v13

    iget v14, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowColor:I

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v14

    iget v15, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowColor:I

    invoke-static {v15}, Landroid/graphics/Color;->blue(I)I

    move-result v15

    invoke-static {v11, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    .line 412
    invoke-virtual {v2}, Lcom/voxel/launcher3/BubbleTextView;->isCustomShadowsEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 413
    iget v13, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowSmallAlpha:I

    int-to-float v13, v13

    mul-float v13, v13, v6

    mul-float v1, v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 414
    iget v13, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowColor:I

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v13

    iget v14, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowColor:I

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v14

    iget v0, v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowColor:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v13, v14, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 417
    :goto_0
    invoke-virtual {v2, v12}, Lcom/voxel/launcher3/BubbleTextView;->setTranslationX(F)V

    .line 418
    invoke-virtual {v2, v4}, Lcom/voxel/launcher3/BubbleTextView;->setTranslationY(F)V

    .line 419
    invoke-virtual {v2, v5}, Lcom/voxel/launcher3/BubbleTextView;->setScaleX(F)V

    .line 420
    invoke-virtual {v2, v5}, Lcom/voxel/launcher3/BubbleTextView;->setScaleY(F)V

    .line 421
    invoke-virtual {v2, v7, v8, v9, v3}, Lcom/voxel/launcher3/BubbleTextView;->setPadding(IIII)V

    .line 422
    invoke-virtual {v2, v10}, Lcom/voxel/launcher3/BubbleTextView;->setTextColor(I)V

    .line 423
    invoke-virtual {v2, v6}, Lcom/voxel/launcher3/BubbleTextView;->setDrawableAlpha(F)V

    .line 425
    invoke-virtual {v2}, Lcom/voxel/launcher3/BubbleTextView;->isCustomShadowsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    invoke-virtual {v2, v11}, Lcom/voxel/launcher3/BubbleTextView;->setCustomShadowLargeColor(I)V

    .line 427
    invoke-virtual {v2, v0}, Lcom/voxel/launcher3/BubbleTextView;->setCustomShadowSmallColor(I)V

    goto :goto_1

    .line 429
    :cond_1
    invoke-virtual {v2}, Lcom/voxel/launcher3/BubbleTextView;->getShadowRadius()F

    move-result v0

    invoke-virtual {v2}, Lcom/voxel/launcher3/BubbleTextView;->getShadowDx()F

    move-result v1

    invoke-virtual {v2}, Lcom/voxel/launcher3/BubbleTextView;->getShadowDy()F

    move-result v3

    invoke-virtual {v2, v0, v1, v3, v11}, Lcom/voxel/launcher3/BubbleTextView;->setShadowLayer(FFFI)V

    :goto_1
    return-void
.end method

.method private createNeededTransitionParams()V
    .locals 7

    .line 440
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/FolderPagedView;->getNextPage()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 441
    :goto_0
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v3}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/launcher3/FolderPagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/FolderPagedView;->getItemsForPage(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    .line 442
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mAllTransitionItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 446
    new-instance v4, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    invoke-direct {v4, p0, v5, v6}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 447
    iget v5, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mMainFactor:F

    iput v5, v4, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mFactor:F

    .line 448
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    iget-object v6, v4, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mBubbleTextView:Lcom/voxel/launcher3/BubbleTextView;

    invoke-virtual {v5, v6}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->addView(Landroid/view/View;)V

    .line 449
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mAllTransitionItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-gez v2, :cond_2

    .line 452
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    .line 454
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mAllTransitionItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 458
    :cond_2
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mPreviewTransitionItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 459
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mOtherTransitionItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_3
    if-ge v1, v0, :cond_3

    .line 462
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mPreviewTransitionItems:Ljava/util/List;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mAllTransitionItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 464
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mAllTransitionItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 465
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mOtherTransitionItems:Ljava/util/List;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mAllTransitionItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private static distanceSquared(FFFF)F
    .locals 0

    sub-float/2addr p0, p2

    mul-float p0, p0, p0

    sub-float/2addr p1, p3

    mul-float p1, p1, p1

    add-float/2addr p0, p1

    return p0
.end method

.method private getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 375
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    .line 376
    instance-of v0, p1, Lcom/voxel/launcher3/PreloadIconDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/voxel/launcher3/PreloadIconDrawable;

    iget-object p1, p1, Lcom/voxel/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p1
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 150
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mMainFactor:F

    .line 152
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentInterpolator:Landroid/animation/TimeInterpolator;

    iget v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mMainFactor:F

    invoke-interface {p1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 153
    iget v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mMainMaxFactor:F

    mul-float p1, p1, v0

    .line 154
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mBackgroundWashDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const v1, 0x3ecccccd    # 0.4f

    mul-float v1, v1, p1

    .line 155
    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Folder;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$onCreateView$1(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 224
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/voxel/launcher3/Folder;->isEditingName()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x2

    .line 227
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    .line 230
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Folder;->getEditTextRegion()Landroid/view/View;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    invoke-static {v1, v2, p1, v0}, Lcom/voxel/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 232
    new-instance v2, Landroid/graphics/Rect;

    aget v3, p1, v0

    const/4 v4, 0x1

    aget v5, p1, v4

    aget v0, p1, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v0, v6

    aget p1, p1, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {v2, v3, v5, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 234
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    xor-int/2addr p1, v4

    return p1

    :cond_0
    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic lambda$onCreateView$2(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;Landroid/view/View;)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/voxel/launcher3/Folder;->isEditingName()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Folder;->dismissEditingName()V

    goto :goto_0

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$OnFolderFragmentInteractionListener;

    if-eqz p1, :cond_1

    .line 245
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$OnFolderFragmentInteractionListener;

    invoke-interface {p1, p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$OnFolderFragmentInteractionListener;->onFolderFragmentRequestClose(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private runAnimatorsOnTransitionItems(Ljava/util/List;FFJLandroid/animation/AnimatorSet;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;",
            ">;FFJ",
            "Landroid/animation/AnimatorSet;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 340
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 344
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;

    move-object/from16 v3, p0

    .line 346
    iget-object v4, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v4}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object v4

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 349
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v6, v7

    .line 350
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    div-float v9, v5, v7

    .line 352
    iget-object v5, v2, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mFromParams:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;

    iget v10, v5, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->transX:F

    iget-object v5, v2, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mFromParams:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;

    iget v11, v5, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->transY:F

    .line 356
    invoke-virtual {v4}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v12

    .line 357
    invoke-virtual {v4}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v13

    .line 358
    invoke-virtual {v4}, Lcom/voxel/launcher3/CellLayout;->getCellWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v2, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mFromParams:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;

    iget v6, v6, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->scale:F

    mul-float v14, v5, v6

    .line 359
    invoke-virtual {v4}, Lcom/voxel/launcher3/CellLayout;->getCellHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mFromParams:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;

    iget v2, v2, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->scale:F

    mul-float v15, v5, v2

    .line 352
    invoke-static/range {v8 .. v15}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;->findBestRowItemSorter(FFFFIIFF)Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;

    move-result-object v2

    .line 361
    invoke-virtual {v4}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v5

    invoke-virtual {v4}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v4

    invoke-virtual {v2, v0, v5, v4}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;->sort(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 363
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 364
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;

    const/4 v7, 0x2

    .line 365
    new-array v7, v7, [F

    aput p2, v7, v1

    const/4 v8, 0x1

    aput p3, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 366
    sget-object v8, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 367
    invoke-static {v6}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->access$1400(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-wide/from16 v8, p4

    .line 368
    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    int-to-long v10, v2

    mul-long v10, v10, v4

    .line 369
    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    move-object/from16 v6, p6

    .line 370
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateTransitionItem(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;Lcom/voxel/launcher3/BubbleTextView;IIZ)V
    .locals 8

    .line 521
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/FolderPagedView;->getCurrentCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    .line 524
    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    .line 526
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v1

    .line 527
    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    .line 528
    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->FOLDER:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-lt p3, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    const/4 p3, 0x0

    .line 532
    :cond_1
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Lcom/voxel/launcher3/FolderIcon;->computePreviewItemDrawingParams(ILcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;)Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-result-object p3

    .line 533
    iget v4, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v6, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFromXOffset:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    iput v4, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 534
    iget v4, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v6, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFromYOffset:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    iput v4, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 538
    iget v4, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getCellWidth()I

    move-result v6

    invoke-virtual {v1}, Lcom/voxel/launcher3/CellParams;->getIconSizePx()I

    move-result v1

    sub-int/2addr v6, v1

    int-to-float v1, v6

    iget v6, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    mul-float v1, v1, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    sub-float/2addr v4, v1

    iput v4, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 540
    new-instance v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;

    invoke-direct {v1, v5}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;)V

    .line 541
    iget v4, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    iput v4, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->transX:F

    .line 542
    iget v4, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    iput v4, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->transY:F

    .line 543
    iget v4, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    iput v4, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->scale:F

    const/high16 v4, -0x41000000    # -0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p5, :cond_2

    const/high16 v3, 0x3fc00000    # 1.5f

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    const/high16 v3, -0x41000000    # -0.5f

    goto :goto_1

    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    .line 544
    :goto_1
    iput v3, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->alpha:F

    .line 545
    iput v2, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingLeft:I

    .line 546
    iput v2, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingTop:I

    .line 547
    iput v2, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingBottom:I

    .line 548
    iput v2, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingRight:I

    .line 549
    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->getCurrentTextColor()I

    move-result v3

    iput v3, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseTextColor:I

    .line 550
    iget v3, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseTextColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    iput v3, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseTextAlpha:I

    .line 551
    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->isCustomShadowsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->getCustomShadowLargeColor()I

    move-result v3

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->getShadowColor()I

    move-result v3

    :goto_2
    iput v3, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowColor:I

    .line 552
    iget v3, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    iput v3, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowAlpha:I

    .line 553
    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->isCustomShadowsEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->getCustomShadowSmallColor()I

    move-result v3

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    iput v3, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowSmallColor:I

    .line 554
    iget v3, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowSmallColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    iput v3, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowSmallAlpha:I

    .line 556
    new-instance v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;

    invoke-direct {v3, v5}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;)V

    .line 557
    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getCellWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v7

    rem-int v7, p4, v7

    mul-int v5, v5, v7

    iget v7, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->toXOffset:I

    add-int/2addr v5, v7

    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v7}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/voxel/launcher3/FolderPagedView;->getScrollX()I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    iput v5, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->transX:F

    .line 558
    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getCellHeight()I

    move-result v5

    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v0

    div-int/2addr p4, v0

    mul-int v5, v5, p4

    iget p4, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->toYOffset:I

    add-int/2addr v5, p4

    int-to-float p4, v5

    iput p4, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->transY:F

    .line 559
    iput v6, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->scale:F

    if-eqz p5, :cond_6

    goto :goto_4

    :cond_6
    const/high16 v4, 0x3f800000    # 1.0f

    .line 560
    :goto_4
    iput v4, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->alpha:F

    .line 561
    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result p4

    iput p4, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingLeft:I

    .line 562
    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->getPaddingTop()I

    move-result p4

    iput p4, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingTop:I

    .line 563
    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->getPaddingBottom()I

    move-result p4

    iput p4, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingBottom:I

    .line 564
    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->getPaddingRight()I

    move-result p4

    iput p4, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->paddingRight:I

    .line 565
    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->getCurrentTextColor()I

    move-result p4

    iput p4, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseTextColor:I

    .line 566
    iget p4, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseTextColor:I

    invoke-static {p4}, Landroid/graphics/Color;->alpha(I)I

    move-result p4

    iput p4, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseTextAlpha:I

    .line 567
    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->isCustomShadowsEnabled()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->getCustomShadowLargeColor()I

    move-result p4

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->getShadowColor()I

    move-result p4

    :goto_5
    iput p4, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowColor:I

    .line 568
    iget p4, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowColor:I

    invoke-static {p4}, Landroid/graphics/Color;->alpha(I)I

    move-result p4

    iput p4, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowAlpha:I

    .line 569
    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->isCustomShadowsEnabled()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->getCustomShadowSmallColor()I

    move-result p4

    goto :goto_6

    :cond_8
    const/4 p4, 0x0

    :goto_6
    iput p4, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowSmallColor:I

    .line 570
    iget p4, v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowSmallColor:I

    invoke-static {p4}, Landroid/graphics/Color;->alpha(I)I

    move-result p4

    iput p4, v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;->baseShadowSmallAlpha:I

    .line 572
    iget-object p4, p1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mBubbleTextView:Lcom/voxel/launcher3/BubbleTextView;

    invoke-virtual {p2}, Lcom/voxel/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p5

    invoke-virtual {p5}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object p5

    invoke-virtual {p4, p2, p5, v2, v2}, Lcom/voxel/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/IconCache;ZZ)V

    .line 574
    iget-object p2, p1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mBubbleTextView:Lcom/voxel/launcher3/BubbleTextView;

    iget p4, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    invoke-virtual {p2, p4}, Lcom/voxel/launcher3/BubbleTextView;->setTranslationX(F)V

    .line 575
    iget-object p2, p1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mBubbleTextView:Lcom/voxel/launcher3/BubbleTextView;

    iget p4, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    invoke-virtual {p2, p4}, Lcom/voxel/launcher3/BubbleTextView;->setTranslationY(F)V

    .line 576
    iget-object p2, p1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mBubbleTextView:Lcom/voxel/launcher3/BubbleTextView;

    iget p4, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    invoke-virtual {p2, p4}, Lcom/voxel/launcher3/BubbleTextView;->setScaleX(F)V

    .line 577
    iget-object p2, p1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mBubbleTextView:Lcom/voxel/launcher3/BubbleTextView;

    iget p3, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    invoke-virtual {p2, p3}, Lcom/voxel/launcher3/BubbleTextView;->setScaleY(F)V

    .line 579
    iput-object v1, p1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mFromParams:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;

    .line 580
    iput-object v3, p1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mToParams:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItemDrawingParams;

    return-void
.end method

.method private updateTransitionParams()V
    .locals 11

    .line 473
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x2

    .line 477
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 481
    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    .line 482
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v3}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/launcher3/FolderPagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/FolderPagedView;->getItemsForPage(I)Ljava/util/List;

    move-result-object v2

    .line 483
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 484
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    invoke-static {v3, v5, v1, v4}, Lcom/voxel/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 486
    aget v3, v1, v4

    iput v3, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->toXOffset:I

    const/4 v3, 0x1

    .line 487
    aget v1, v1, v3

    iput v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->toYOffset:I

    .line 490
    :cond_1
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->createNeededTransitionParams()V

    .line 492
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mAllTransitionItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 494
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v1

    sget-object v3, Lcom/voxel/launcher3/DeviceProfile$ParamType;->FOLDER:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v1, v3}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/CellParams;->getIconSizePx()I

    move-result v1

    .line 495
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    invoke-virtual {v3}, Lcom/voxel/launcher3/FolderIcon;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3, v1, v5}, Lcom/voxel/launcher3/FolderIcon;->computePreviewDrawingParams(II)V

    .line 498
    :cond_2
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/FolderPagedView;->getNextPage()I

    move-result v1

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v3}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/launcher3/FolderPagedView;->itemsPerPage()I

    move-result v3

    mul-int v1, v1, v3

    const/4 v3, 0x0

    .line 500
    :goto_0
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mPreviewTransitionItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 502
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/voxel/launcher3/BubbleTextView;

    .line 503
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mAllTransitionItems:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;

    const/4 v10, 0x1

    move-object v5, p0

    move v8, v3

    move v9, v3

    .line 505
    invoke-direct/range {v5 .. v10}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->updateTransitionItem(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;Lcom/voxel/launcher3/BubbleTextView;IIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 507
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mOtherTransitionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 509
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mOtherTransitionItems:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;

    .line 512
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/voxel/launcher3/BubbleTextView;

    add-int v8, v4, v1

    const/4 v10, 0x0

    move-object v5, p0

    move v9, v4

    .line 513
    invoke-direct/range {v5 .. v10}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->updateTransitionItem(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;Lcom/voxel/launcher3/BubbleTextView;IIZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public getFolder()Lcom/voxel/launcher3/Folder;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    return-object v0
.end method

.method public getFolderIcon()Lcom/voxel/launcher3/FolderIcon;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    return-object v0
.end method

.method protected final notifyFragmentExit()V
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->onCloseComplete()V

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$OnFolderFragmentInteractionListener;

    if-eqz v0, :cond_1

    .line 683
    invoke-interface {v0, p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$OnFolderFragmentInteractionListener;->onFolderFragmentExit(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V

    :cond_1
    return-void
.end method

.method protected final notifyFragmentWillExit()V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$OnFolderFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 673
    invoke-interface {v0, p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$OnFolderFragmentInteractionListener;->onFolderFragmentWillExit(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V

    :cond_0
    return-void
.end method

.method public onAdd(Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 659
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 664
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$OnFolderFragmentInteractionListener;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$OnFolderFragmentInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 666
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$OnFolderFragmentInteractionListener;

    .line 667
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 215
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0d0055

    .line 221
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    .line 223
    new-instance p1, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$FolderFragment$XuMkb5P6jzcuzVe9r_CzJxttaTU;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$FolderFragment$XuMkb5P6jzcuzVe9r_CzJxttaTU;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V

    .line 241
    new-instance p2, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$FolderFragment$i7gc-USRAa5QC7JW43GMr11g2DU;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$FolderFragment$i7gc-USRAa5QC7JW43GMr11g2DU;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V

    .line 250
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 251
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    const p2, 0x7f0a00b8

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCoverClick:Landroid/view/View;

    .line 254
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCoverClick:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$2;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$2;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 271
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/16 p2, 0xff

    invoke-static {p2, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mBackgroundWashDrawable:Landroid/graphics/drawable/Drawable;

    .line 272
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mBackgroundWashDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 274
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mBackgroundWashDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/voxel/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Folder;->getInfo()Lcom/voxel/launcher3/FolderInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/voxel/launcher3/FolderInfo;->opened:Z

    if-eqz p1, :cond_2

    .line 278
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    .line 279
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 280
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07013b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 281
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->getContentAreaHeight()I

    move-result v0

    if-ge v0, p2, :cond_0

    sub-int/2addr p2, v0

    .line 283
    div-int/lit8 p2, p2, 0x3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 286
    :cond_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/FolderPagedView;->getPageCount()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_1

    .line 289
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Folder;->getContent()Lcom/voxel/launcher3/FolderPagedView;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/voxel/launcher3/FolderPagedView;->setCurrentPage(I)V

    .line 291
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->addView(Landroid/view/View;)V

    .line 297
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->createNeededTransitionParams()V

    .line 299
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$3;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 332
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCoverClick:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 334
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    return-object p1

    .line 293
    :cond_2
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->notifyFragmentExit()V

    .line 294
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 982
    invoke-static {}, Lcom/voxel/launcher3/LauncherApplication;->getRefWatcher()Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v0

    .line 983
    invoke-virtual {v0, p0}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;)V

    .line 985
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mAllTransitionItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;

    .line 986
    invoke-virtual {v0, v2}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;)V

    .line 987
    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;->mBubbleTextView:Lcom/voxel/launcher3/BubbleTextView;

    invoke-virtual {v0, v2}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;)V

    goto :goto_0

    .line 990
    :cond_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    invoke-virtual {v0, v1}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;)V

    .line 992
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onItemsChanged()V
    .locals 0

    .line 710
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->updateTransitionParams()V

    return-void
.end method

.method public onRemove(Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 1

    .line 698
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$OnFolderFragmentInteractionListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$OnFolderFragmentInteractionListener;->isDragging()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Folder;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->runExitAnimation()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 589
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public runExitAnimation()V
    .locals 8

    .line 594
    monitor-enter p0

    .line 595
    :try_start_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mIsExiting:Z

    if-eqz v0, :cond_0

    .line 596
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 598
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mIsExiting:Z

    .line 599
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->notifyFragmentWillExit()V

    .line 602
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->updateTransitionParams()V

    .line 604
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCoverClick:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 606
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentAnimators:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 610
    :cond_1
    sget-object v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->REVERSE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentInterpolator:Landroid/animation/TimeInterpolator;

    .line 613
    iget v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mMainFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 614
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->notifyFragmentExit()V

    return-void

    .line 618
    :cond_2
    invoke-static {}, Lcom/voxel/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentAnimators:Landroid/animation/AnimatorSet;

    .line 619
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentAnimators:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentAnimatorsListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 620
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentAnimators:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$4;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$4;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 642
    iget v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mMainFactor:F

    iput v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mMainMaxFactor:F

    const/4 v0, 0x2

    .line 643
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 644
    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 645
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mMainFactorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 646
    sget v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->MIN_DURATION_MS:I

    const/high16 v2, 0x43e10000    # 450.0f

    iget v3, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mMainFactor:F

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 647
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 650
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mAllTransitionItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 651
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mPreviewTransitionItems:Ljava/util/List;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v5

    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentAnimators:Landroid/animation/AnimatorSet;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->runAnimatorsOnTransitionItems(Ljava/util/List;FFJLandroid/animation/AnimatorSet;)V

    .line 652
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mOtherTransitionItems:Ljava/util/List;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v5

    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentAnimators:Landroid/animation/AnimatorSet;

    invoke-direct/range {v1 .. v7}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->runAnimatorsOnTransitionItems(Ljava/util/List;FFJLandroid/animation/AnimatorSet;)V

    .line 654
    :cond_3
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mCurrentAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :catchall_0
    move-exception v0

    .line 599
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setFolder(Lcom/voxel/launcher3/Folder;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->getInfo()Lcom/voxel/launcher3/FolderInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/FolderInfo;->removeListener(Lcom/voxel/launcher3/FolderInfo$FolderListener;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    if-ne v0, v1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v1, v0}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->removeView(Landroid/view/View;)V

    .line 191
    :cond_1
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    .line 192
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/voxel/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mContentView:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    if-eqz p1, :cond_2

    .line 193
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->addView(Landroid/view/View;)V

    .line 195
    :cond_2
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolder:Lcom/voxel/launcher3/Folder;

    if-eqz p1, :cond_3

    .line 196
    invoke-virtual {p1}, Lcom/voxel/launcher3/Folder;->getInfo()Lcom/voxel/launcher3/FolderInfo;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/FolderInfo;->addListener(Lcom/voxel/launcher3/FolderInfo$FolderListener;)V

    :cond_3
    return-void
.end method

.method public setFolderIcon(Lcom/voxel/launcher3/FolderIcon;)V
    .locals 3

    .line 165
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    .line 167
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    .line 168
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 173
    invoke-virtual {p1}, Lcom/voxel/launcher3/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {p1, v2, v1, v0}, Lcom/voxel/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 175
    aget p1, v1, v0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    invoke-virtual {v0}, Lcom/voxel/launcher3/FolderIcon;->getPreviewOffsetX()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFromXOffset:I

    const/4 p1, 0x1

    .line 176
    aget p1, v1, p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    invoke-virtual {v0}, Lcom/voxel/launcher3/FolderIcon;->getPreviewOffsetY()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFromYOffset:I

    goto :goto_0

    .line 178
    :cond_0
    iput v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFromXOffset:I

    .line 179
    iput v0, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mFromYOffset:I

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public setListener(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$FolderFragmentListener;)V
    .locals 0

    .line 996
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->mListener:Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$FolderFragmentListener;

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 207
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 209
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method
