.class public abstract Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "PopupViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;,
        Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$FullScreenRectMaker;,
        Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;",
        ">",
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "TP;>;"
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final REVERSE_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private final mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

.field mAttribution:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAttributionButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private mCardHideHeight:I

.field private mCardShown:Z

.field public mContentView:Landroid/view/View;

.field private mInitialShowIndex:I

.field mInterceptableFrameLayout:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mOverlay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPassthroughTarget:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final mPopupView:Landroid/view/ViewGroup;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTargetView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final mTopEmptyItemPresenter:Lcom/evie/sidescreen/TopEmptyItemPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 39
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->REVERSE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    .line 70
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mCardShown:Z

    .line 65
    new-instance v1, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-direct {v1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;-><init>()V

    iput-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    .line 66
    new-instance v1, Lcom/evie/sidescreen/TopEmptyItemPresenter;

    invoke-direct {v1}, Lcom/evie/sidescreen/TopEmptyItemPresenter;-><init>()V

    iput-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mTopEmptyItemPresenter:Lcom/evie/sidescreen/TopEmptyItemPresenter;

    .line 71
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mPopupView:Landroid/view/ViewGroup;

    .line 73
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mInterceptableFrameLayout:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    new-instance v1, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$2XlmVkZ-azeOrlAd_wesuIjj4Js;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$2XlmVkZ-azeOrlAd_wesuIjj4Js;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V

    invoke-virtual {p2, v1}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 79
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 82
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    .line 83
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mPassthroughTarget:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v1, v0}, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;-><init>(Landroid/view/View;IZ)V

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 84
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 85
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 86
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 87
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$1;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 95
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$2;

    invoke-direct {p2, p0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$2;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 103
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mPopupView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->setCardHideHeight(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->handleTopEmptyItem()V

    return-void
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->handleCardHideHeight()V

    return-void
.end method

.method static synthetic access$500(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)Landroid/view/ViewGroup;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mPopupView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$600(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->centerInside(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;IIII)F
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->calculateScaleDifference(IIII)F

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->scaleRectFromCenter(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private animateToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;Landroid/animation/Animator$AnimatorListener;Z)V
    .locals 14

    move-object v9, p0

    move-object v2, p1

    move-object/from16 v10, p5

    .line 192
    new-instance v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v5, v0, v1, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 193
    iget-object v0, v9, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    new-instance v11, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v11, v0, v1, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 196
    iget-object v0, v9, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x2

    .line 198
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 200
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 201
    new-instance v13, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/widget/AbsoluteLayout$LayoutParams;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;Landroid/widget/AbsoluteLayout$LayoutParams;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 229
    new-instance v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$3;

    move-object/from16 v1, p2

    invoke-direct {v0, p0, v11, v1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$3;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/graphics/Rect;)V

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p6, :cond_0

    .line 257
    sget-object v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 259
    :cond_0
    sget-object v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->REVERSE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_0
    if-eqz v10, :cond_1

    .line 263
    invoke-virtual {v12, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 265
    :cond_1
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateWashAndOverlayAlpha(FF)V
    .locals 2

    const/4 v0, 0x2

    .line 152
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$upUPf1i_vxQkbstWLLjeEhK_TgU;

    invoke-direct {v1, p0, p2, p1}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$upUPf1i_vxQkbstWLLjeEhK_TgU;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 161
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private calculateScaleDifference(IIII)F
    .locals 2

    mul-int v0, p1, p4

    mul-int v1, p3, p2

    if-le v0, v1, :cond_0

    int-to-float v0, p4

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    int-to-float v0, p3

    int-to-float v1, p1

    div-float/2addr v0, v1

    :goto_0
    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 354
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr v0, p1

    return v0
.end method

.method private centerInside(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 378
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 380
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, p1, p2

    if-lez v2, :cond_0

    div-float/2addr p1, p2

    .line 383
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p1

    .line 384
    iget p1, p3, Landroid/graphics/Rect;->left:I

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 385
    iget p1, p3, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 386
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, v1

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 387
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    div-float/2addr p2, p1

    .line 390
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    .line 391
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, v1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 392
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 393
    iget p1, p3, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 394
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-object v0
.end method

.method private factorRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 3

    .line 400
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float v0, v0, p4

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p4

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 401
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float v0, v0, p4

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 402
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float v0, v0, p4

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 403
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    mul-float p2, p2, p4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    mul-float p1, p1, v2

    add-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private handleCardHideHeight()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mTopEmptyItemPresenter:Lcom/evie/sidescreen/TopEmptyItemPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/TopEmptyItemPresenter;->getHeight()I

    move-result v0

    neg-int v0, v0

    .line 306
    :goto_0
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mPopupView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mTopEmptyItemPresenter:Lcom/evie/sidescreen/TopEmptyItemPresenter;

    invoke-virtual {v2}, Lcom/evie/sidescreen/TopEmptyItemPresenter;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->setCardHideHeight(I)V

    return-void
.end method

.method private handleTopEmptyItem()V
    .locals 3

    .line 281
    iget v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mInitialShowIndex:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mTopEmptyItemPresenter:Lcom/evie/sidescreen/TopEmptyItemPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/TopEmptyItemPresenter;->hasCustomHeight()Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mPopupView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    .line 284
    :goto_0
    iget v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mInitialShowIndex:I

    if-gt v1, v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 291
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 293
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mTopEmptyItemPresenter:Lcom/evie/sidescreen/TopEmptyItemPresenter;

    invoke-virtual {v1, v0}, Lcom/evie/sidescreen/TopEmptyItemPresenter;->setHeight(I)V

    .line 294
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->handleCardHideHeight()V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$animateFullScreen$3(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$animateToRect$4(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/widget/AbsoluteLayout$LayoutParams;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 202
    invoke-virtual {p8}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Ljava/lang/Float;

    invoke-virtual {p8}, Ljava/lang/Float;->floatValue()F

    move-result p8

    .line 203
    invoke-direct {p0, p1, p2, p3, p8}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->factorRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 205
    iget p1, p3, Landroid/graphics/Rect;->left:I

    iput p1, p4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 206
    iget p1, p3, Landroid/graphics/Rect;->top:I

    iput p1, p4, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 207
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p4, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 208
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p4, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 210
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mTargetView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-interface {p5}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 213
    invoke-interface {p6}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;->getRect()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-direct {p0, p1, p2, p3, p8}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->factorRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 220
    iget p1, p3, Landroid/graphics/Rect;->left:I

    iget p2, p4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    sub-int/2addr p1, p2

    iput p1, p7, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 221
    iget p1, p3, Landroid/graphics/Rect;->top:I

    iget p2, p4, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    sub-int/2addr p1, p2

    iput p1, p7, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 222
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p7, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 223
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p7, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 225
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mContentView:Landroid/view/View;

    invoke-virtual {p1, p7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$animateWashAndOverlayAlpha$2(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;FFLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 154
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    mul-float p1, p1, p3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    .line 156
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast p2, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;

    invoke-virtual {p2, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->onImagePopped(F)V

    .line 157
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 158
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mOverlay:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mInterceptableFrameLayout:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$setContentAlpha$1(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;FFLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 136
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    mul-float p1, p1, p3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    .line 138
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mContentView:Landroid/view/View;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private scaleRectFromCenter(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 4

    .line 361
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 362
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    .line 363
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    .line 364
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    mul-float p1, p1, v3

    .line 366
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    sub-float v3, v0, v2

    .line 368
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->left:I

    add-float/2addr v0, v2

    .line 369
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    sub-float v0, v1, p1

    .line 370
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    add-float/2addr v1, p1

    .line 371
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    return-object p2
.end method


# virtual methods
.method public animateFullScreen(Landroid/graphics/Rect;)V
    .locals 11

    .line 178
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mContentView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mContentView:Landroid/view/View;

    new-instance v1, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$KWmkf_ggYrEx-KsQY2jD6cvnCJ4;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$KWmkf_ggYrEx-KsQY2jD6cvnCJ4;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    new-instance v6, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mPopupView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mPopupView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v6, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 181
    new-instance v7, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;

    const/4 v0, 0x0

    invoke-direct {v7, p0, p1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/graphics/Rect;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$1;)V

    new-instance v8, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$FullScreenRectMaker;

    invoke-direct {v8, p0, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$FullScreenRectMaker;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$1;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->animateToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;Landroid/animation/Animator$AnimatorListener;Z)V

    return-void
.end method

.method public animateToRect(Landroid/graphics/Rect;Landroid/animation/Animator$AnimatorListener;)V
    .locals 7

    .line 186
    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mTargetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mTargetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 187
    new-instance v3, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$FullScreenRectMaker;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$FullScreenRectMaker;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$1;)V

    new-instance v4, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;

    invoke-direct {v4, p0, p1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$OriginalRectMaker;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/graphics/Rect;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$1;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->animateToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder$RectMaker;Landroid/animation/Animator$AnimatorListener;Z)V

    return-void
.end method

.method public dismissPopup()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mPopupView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public abstract getWidthAndHeight(Landroid/view/View;)[I
.end method

.method public onAttributionClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->onAttributionClicked()V

    return-void
.end method

.method public onBackButton()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->onBackButtonClicked()V

    return-void
.end method

.method public setCardHideHeight(I)V
    .locals 1

    .line 322
    iput p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mCardHideHeight:I

    .line 323
    iget-boolean p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mCardShown:Z

    if-nez p1, :cond_0

    .line 324
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mCardHideHeight:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setCardShown(Z)V
    .locals 2

    .line 310
    iget-boolean v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mCardShown:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :cond_0
    iget v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mCardHideHeight:I

    int-to-float v0, v0

    .line 312
    :goto_0
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 314
    :cond_1
    iput-boolean p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mCardShown:Z

    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mContentView:Landroid/view/View;

    return-void
.end method

.method public setContentAlpha(FLandroid/animation/Animator$AnimatorListener;Z)V
    .locals 2

    if-eqz p3, :cond_1

    .line 133
    iget-object p3, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mContentView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p3

    float-to-int p3, p3

    invoke-static {p3}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->intToFloatAlpha(I)F

    move-result p3

    const/4 v0, 0x2

    .line 134
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 135
    new-instance v1, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$iQ10TRqKKOq4no24SHmoxOrdJ8k;

    invoke-direct {v1, p0, p1, p3}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$iQ10TRqKKOq4no24SHmoxOrdJ8k;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 144
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 146
    :cond_1
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mContentView:Landroid/view/View;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setImageFullScreen()V
    .locals 3

    .line 127
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 128
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPresenters(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    .line 273
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mTopEmptyItemPresenter:Lcom/evie/sidescreen/TopEmptyItemPresenter;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    .line 276
    :cond_1
    iput p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mInitialShowIndex:I

    .line 277
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-virtual {p2, p1, v0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->setItemPresenters(Ljava/util/List;Z)V

    return-void
.end method

.method public setWashAndOverlayAlpha(FZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 166
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result p2

    invoke-static {p2}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->intToFloatAlpha(I)F

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->animateWashAndOverlayAlpha(FF)V

    .line 167
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 169
    :cond_0
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 170
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mOverlay:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 171
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public showAttribution(Ljava/lang/String;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mAttribution:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mAttributionButton:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public abstract showContent(Ljava/lang/String;)V
.end method

.method public showPopup()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mPopupView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public toggleCardShown()V
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mCardShown:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->setCardShown(Z)V

    return-void
.end method
