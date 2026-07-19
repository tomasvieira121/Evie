.class public abstract Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;
.super Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;
.source "SpringCardFragment.java"


# static fields
.field protected static final FASTER_RUBBERBANDING_CONFIG:Lcom/facebook/rebound/SpringConfig;

.field private static final PREFIX:Ljava/lang/String;

.field protected static final RUBBERBANDING_CONFIG:Lcom/facebook/rebound/SpringConfig;

.field private static final SPRING_SCALE_KEY:Ljava/lang/String;


# instance fields
.field private mBackgroundWashDrawable:Landroid/graphics/drawable/Drawable;

.field private mChoreographer:Lcom/voxel/simplesearchlauncher/utils/Choreographer;

.field private mContainer:Landroid/widget/FrameLayout;

.field private final mEntranceSpringListener:Lcom/facebook/rebound/SpringListener;

.field private mInsetContainer:Landroid/view/View;

.field private mNavBarBackground:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private final mSpringScale:Lcom/facebook/rebound/Spring;

.field protected final mSpringSystem:Lcom/facebook/rebound/SpringSystem;

.field protected final mSpringY:Lcom/facebook/rebound/Spring;

.field private mTotalSpringDistance:I

.field private mTotalSpringDistanceOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    const-class v0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->PREFIX:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".spring_scale_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->SPRING_SCALE_KEY:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/facebook/rebound/SpringConfig;

    const-wide v1, 0x407f400000000000L    # 500.0

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->RUBBERBANDING_CONFIG:Lcom/facebook/rebound/SpringConfig;

    .line 49
    new-instance v0, Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->FASTER_RUBBERBANDING_CONFIG:Lcom/facebook/rebound/SpringConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 71
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mTotalSpringDistance:I

    .line 59
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->getInstance()Lcom/voxel/simplesearchlauncher/utils/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mChoreographer:Lcom/voxel/simplesearchlauncher/utils/Choreographer;

    .line 61
    new-instance v0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mEntranceSpringListener:Lcom/facebook/rebound/SpringListener;

    .line 72
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 73
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    .line 74
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->RUBBERBANDING_CONFIG:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 75
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setOvershootClampingEnabled(Z)Lcom/facebook/rebound/Spring;

    .line 76
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    .line 77
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    .line 78
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    new-instance v3, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$2;

    invoke-direct {v3, p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$2;-><init>(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)V

    invoke-virtual {v0, v3}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 100
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringScale:Lcom/facebook/rebound/Spring;

    .line 101
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringScale:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 102
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringScale:Lcom/facebook/rebound/Spring;

    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->RUBBERBANDING_CONFIG:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 103
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringScale:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$3;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$3;-><init>(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Lcom/voxel/simplesearchlauncher/utils/Choreographer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mChoreographer:Lcom/voxel/simplesearchlauncher/utils/Choreographer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mBackgroundWashDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mTotalSpringDistance:I

    return p0
.end method

.method static synthetic access$302(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mTotalSpringDistance:I

    return p1
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mTotalSpringDistanceOffset:I

    return p0
.end method

.method static synthetic access$402(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mTotalSpringDistanceOffset:I

    return p1
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Lcom/facebook/rebound/SpringListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mEntranceSpringListener:Lcom/facebook/rebound/SpringListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mNavBarBackground:Landroid/view/View;

    return-object p0
.end method

.method private getNavBarHeight()I
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mInsetContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$null$3(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;Lcom/facebook/rebound/SpringListener;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    invoke-interface {p1, v0}, Lcom/facebook/rebound/SpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;Landroid/view/View;)V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->shouldCloseOnBackgroundClick()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->runExitAnimation()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$onCreateView$2(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)V
    .locals 3

    .line 189
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->getNavBarHeight()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mNavBarBackground:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mNavBarBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 195
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 196
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mNavBarBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic lambda$runExitAnimation$4(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->FASTER_RUBBERBANDING_CONFIG:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 311
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mEntranceSpringListener:Lcom/facebook/rebound/SpringListener;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->removeListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 313
    new-instance v0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$5;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$5;-><init>(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)V

    .line 339
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v1, v0}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 341
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;

    if-eqz v1, :cond_0

    .line 343
    invoke-interface {v1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;->providesTransitionAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-static {}, Lcom/voxel/simplesearchlauncher/fragment/Executors;->getMainThreadExecutor()Lcom/voxel/launcher3/MainThreadExecutor;

    move-result-object v1

    new-instance v2, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$SpringCardFragment$sBA8VhxI1l8hMLTqXk-cWwPBWFU;

    invoke-direct {v2, p0, v0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$SpringCardFragment$sBA8VhxI1l8hMLTqXk-cWwPBWFU;-><init>(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;Lcom/facebook/rebound/SpringListener;)V

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/MainThreadExecutor;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 347
    :cond_0
    iget v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mTotalSpringDistance:I

    iget v1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mTotalSpringDistanceOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mTotalSpringDistance:I

    .line 348
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->getTotalSpringDistanceOffset()I

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mTotalSpringDistanceOffset:I

    .line 349
    iget v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mTotalSpringDistance:I

    iget v1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mTotalSpringDistanceOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mTotalSpringDistance:I

    .line 350
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mTotalSpringDistance:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    :goto_0
    return-void
.end method


# virtual methods
.method public focusFragment(Z)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_0

    .line 360
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringScale:Lcom/facebook/rebound/Spring;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_0

    .line 362
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringScale:Lcom/facebook/rebound/Spring;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 363
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringScale:Lcom/facebook/rebound/Spring;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    :goto_0
    return-void
.end method

.method protected getBackgroundWashAlphaFactor()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getMaxBackgroundWashAlpha()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method protected getTotalSpringDistanceOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected invalidateBackgroundWashAlpha()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    iget v2, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mTotalSpringDistance:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->limitAlpha(F)F

    move-result v0

    .line 273
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->getBackgroundWashAlphaFactor()F

    move-result v1

    mul-float v0, v0, v1

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->limitAlpha(F)F

    move-result v0

    .line 274
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mBackgroundWashDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->getMaxBackgroundWashAlpha()F

    move-result v2

    mul-float v2, v2, v0

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public final isTransitioning()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected abstract onCreateChildContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "SpringCardFragment onCreateView"

    .line 117
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    const v1, 0x7f0d0058

    .line 119
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mRootView:Landroid/view/View;

    .line 121
    new-instance p2, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$SpringCardFragment$7CzlyWZMjYxx9nHctTU1ay6aCOc;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$SpringCardFragment$7CzlyWZMjYxx9nHctTU1ay6aCOc;-><init>(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)V

    .line 128
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, 0xff

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mBackgroundWashDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mBackgroundWashDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 133
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mRootView:Landroid/view/View;

    const v0, 0x7f0a005c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 134
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mBackgroundWashDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mRootView:Landroid/view/View;

    const v0, 0x7f0a016c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mInsetContainer:Landroid/view/View;

    .line 138
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mRootView:Landroid/view/View;

    const v0, 0x7f0a00ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mContainer:Landroid/widget/FrameLayout;

    .line 139
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mContainer:Landroid/widget/FrameLayout;

    sget-object v0, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$SpringCardFragment$w9Q6f356IACBxhQgCddbfZqFUXQ;->INSTANCE:Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$SpringCardFragment$w9Q6f356IACBxhQgCddbfZqFUXQ;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->onCreateChildContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 151
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;

    invoke-direct {p2, p0, p3}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$4;-><init>(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 186
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f0a01b5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mNavBarBackground:Landroid/view/View;

    .line 188
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mNavBarBackground:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$SpringCardFragment$i05v3KBndpZ1vfB80ijTrnCQg3M;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$SpringCardFragment$i05v3KBndpZ1vfB80ijTrnCQg3M;-><init>(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 199
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/TraceUtil;->endSection()V

    .line 200
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method protected onFinishedEnterTransition()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_1

    .line 298
    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;->providesTransitionAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onPopLauncherStackedAppearance(Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 0

    return-void
.end method

.method public onPushLauncherStackedAppearance(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 238
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringScale:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_1

    .line 210
    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->SPRING_SCALE_KEY:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_1
    return-void
.end method

.method protected onStartedEnterTransition()V
    .locals 3

    .line 283
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;->providesTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 4

    .line 216
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringScale:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_1

    .line 222
    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->SPRING_SCALE_KEY:Ljava/lang/String;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    :cond_1
    return-void
.end method

.method public final runExitAnimation()V
    .locals 2

    .line 305
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->notifyFragmentWillRequestClose()V

    .line 307
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    new-instance v0, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$SpringCardFragment$Y9QkSzdLJ-z2yLP4TUnvhKNsM6s;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$SpringCardFragment$Y9QkSzdLJ-z2yLP4TUnvhKNsM6s;-><init>(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)V

    .line 354
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mChoreographer:Lcom/voxel/simplesearchlauncher/utils/Choreographer;

    invoke-virtual {v1, v0}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->postAnimationStart(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldCloseOnBackgroundClick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public unfocusFragment(Z)V
    .locals 2

    const-wide v0, 0x3fee666660000000L    # 0.949999988079071

    if-eqz p1, :cond_0

    .line 369
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringScale:Lcom/facebook/rebound/Spring;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_0

    .line 371
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringScale:Lcom/facebook/rebound/Spring;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 372
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->mSpringScale:Lcom/facebook/rebound/Spring;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    :goto_0
    return-void
.end method
