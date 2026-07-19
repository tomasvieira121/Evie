.class public Lcom/voxel/recyclerview/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;,
        Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;,
        Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Lcom/voxel/recyclerview/widget/RecyclerView$State;,
        Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;,
        Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObservable;,
        Lcom/voxel/recyclerview/widget/RecyclerView$SmoothScroller;,
        Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObserver;,
        Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;,
        Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;,
        Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerListener;,
        Lcom/voxel/recyclerview/widget/RecyclerView$OnScrollListener;,
        Lcom/voxel/recyclerview/widget/RecyclerView$OnItemTouchListener;,
        Lcom/voxel/recyclerview/widget/RecyclerView$ItemDecoration;,
        Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;,
        Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;,
        Lcom/voxel/recyclerview/widget/RecyclerView$ViewCacheExtension;,
        Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;,
        Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;,
        Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;,
        Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;,
        Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;
    }
.end annotation


# static fields
.field private static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field private static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Lcom/voxel/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field private mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

.field mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

.field private mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

.field mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

.field private mClipToPadding:Z

.field private mDataSetHasChangedAfterLayout:Z

.field final mDisappearingViewsInLayoutPass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEatRequestLayout:Z

.field private mFirstLayoutComplete:Z

.field private mHasFixedSize:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mIsAttached:Z

.field mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field protected final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

.field private mLayoutRequestEaten:Z

.field private mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mObserver:Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;

.field private final mPostUpdatesOnAnimation:Z

.field private mPostedAnimatorRunner:Z

.field final mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

.field private mRecyclerListener:Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

.field protected mRunningLayoutOrScroll:Z

.field private mScrollFactor:F

.field private mScrollListener:Lcom/voxel/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mScrollPointerId:I

.field private mScrollState:I

.field final mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

.field private mTouchSlop:I

.field private final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewFlinger:Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/voxel/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 315
    new-instance v0, Lcom/voxel/recyclerview/widget/RecyclerView$3;

    invoke-direct {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$3;-><init>()V

    sput-object v0, Lcom/voxel/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 327
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 331
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    new-instance p2, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$1;)V

    iput-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mObserver:Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    .line 170
    new-instance p2, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-direct {p2, p0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    iput-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    .line 179
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    .line 193
    new-instance p2, Lcom/voxel/recyclerview/widget/RecyclerView$1;

    invoke-direct {p2, p0}, Lcom/voxel/recyclerview/widget/RecyclerView$1;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    iput-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 214
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 218
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 219
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 235
    iput-boolean p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 245
    iput-boolean p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    .line 249
    new-instance v0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 274
    iput p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v0, -0x1

    .line 275
    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    const/4 v0, 0x1

    .line 285
    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollFactor:F

    .line 287
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->createViewFlinger()Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mViewFlinger:Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;

    .line 289
    new-instance v0, Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-direct {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$State;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    .line 294
    iput-boolean p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 295
    iput-boolean p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 296
    new-instance v0, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v0, p0, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$1;)V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 298
    iput-boolean p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    const/4 p3, 0x2

    .line 303
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 305
    new-instance v0, Lcom/voxel/recyclerview/widget/RecyclerView$2;

    invoke-direct {v0, p0}, Lcom/voxel/recyclerview/widget/RecyclerView$2;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 332
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 333
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 334
    :goto_0
    iput-boolean v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mPostUpdatesOnAnimation:Z

    .line 336
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 337
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 338
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    .line 339
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 340
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result p1

    if-ne p1, p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 342
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 343
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->initAdapterManager()V

    .line 344
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->initChildrenHelper()V

    .line 346
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_2

    .line 348
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 351
    :cond_2
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    .line 352
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 353
    new-instance p1, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {p1, p0}, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    return-void
.end method

.method static synthetic access$100(Lcom/voxel/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    return p0
.end method

.method static synthetic access$2000()Landroid/view/animation/Interpolator;
    .locals 1

    .line 129
    sget-object v0, Lcom/voxel/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/voxel/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    return-void
.end method

.method static synthetic access$2400(Lcom/voxel/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mPostUpdatesOnAnimation:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/voxel/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/voxel/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mIsAttached:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/voxel/recyclerview/widget/RecyclerView;)Ljava/lang/Runnable;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/voxel/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    return p1
.end method

.method static synthetic access$2900()Z
    .locals 1

    .line 129
    sget-boolean v0, Lcom/voxel/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    return v0
.end method

.method static synthetic access$300(Lcom/voxel/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayoutRequestEaten:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/voxel/recyclerview/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerListener;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecyclerListener:Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerListener;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->addToDisappearingList(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->removeFromDisappearingList(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/voxel/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void
.end method

.method static synthetic access$4000(Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getAdapterPositionFor(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mViewFlinger:Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;)Z
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/voxel/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    return p1
.end method

.method static synthetic access$600(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/recyclerview/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$900(Lcom/voxel/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method private addAnimatingView(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 770
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 771
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 772
    :goto_0
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 773
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 775
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    const/4 v1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/voxel/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 777
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {p1, v0, v2}, Lcom/voxel/recyclerview/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 779
    :cond_2
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->hide(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private addToDisappearingList(Landroid/view/View;)V
    .locals 1

    .line 6930
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6931
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private animateAppearance(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Landroid/graphics/Rect;II)V
    .locals 8

    .line 2423
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2424
    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-ne v1, p3, :cond_0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-eq v1, p4, :cond_1

    .line 2427
    :cond_0
    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2431
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    move-object v3, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->animateMove(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2434
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_0

    .line 2440
    :cond_1
    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2441
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p2, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->animateAdd(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2442
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    :cond_2
    :goto_0
    return-void
.end method

.method private animateChange(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 9

    const/4 v0, 0x0

    .line 2480
    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2481
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->addAnimatingView(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2482
    iput-object p2, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2483
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2487
    iget-object v1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 2488
    iget-object v1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    if-eqz p2, :cond_1

    .line 2490
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2494
    :cond_0
    iget-object v1, p2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2495
    iget-object v2, p2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2496
    invoke-virtual {p2, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2497
    iput-object p1, p2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move v7, v1

    move v8, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v5

    move v8, v6

    .line 2499
    :goto_1
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->animateChange(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2501
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    :cond_2
    return-void
.end method

.method private animateDisappearance(Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;)V
    .locals 8

    .line 2448
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2449
    iget-object v1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->addAnimatingView(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2450
    iget v4, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->left:I

    .line 2451
    iget v5, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->top:I

    .line 2452
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 2453
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    const/4 v1, 0x0

    if-ne v4, v6, :cond_1

    if-eq v5, v7, :cond_0

    goto :goto_0

    .line 2472
    :cond_0
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2473
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->animateRemove(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2474
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_1

    .line 2455
    :cond_1
    :goto_0
    iget-object v2, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2457
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v6

    .line 2458
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v7

    .line 2456
    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2463
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v3, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual/range {v2 .. v7}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->animateMove(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2465
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    :cond_2
    :goto_1
    return-void
.end method

.method private cancelTouch()V
    .locals 1

    .line 1839
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1840
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1842
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->releaseGlows()V

    const/4 v0, 0x0

    .line 1843
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method private defaultOnMeasure(II)V
    .locals 4

    .line 1953
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1954
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1955
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1956
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 1968
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result p1

    :cond_0
    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    .line 1979
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p2

    .line 1983
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method private didChildRangeChange(II)Z
    .locals 6

    .line 2353
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_6

    .line 2358
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v4, v3}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 2359
    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 2362
    :cond_3
    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-lt v4, p1, :cond_5

    if-le v4, p2, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return v1

    :cond_6
    return v2
.end method

.method private dispatchChildAttached(Landroid/view/View;)V
    .locals 2

    .line 4898
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 4899
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4901
    :cond_0
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    return-void
.end method

.method private dispatchChildDetached(Landroid/view/View;)V
    .locals 2

    .line 4891
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 4892
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4894
    :cond_0
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1632
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1633
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/voxel/recyclerview/widget/RecyclerView$OnItemTouchListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1636
    iput-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/voxel/recyclerview/widget/RecyclerView$OnItemTouchListener;

    goto :goto_0

    .line 1638
    :cond_0
    invoke-interface {v1, p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    if-ne v0, v2, :cond_2

    .line 1641
    :cond_1
    iput-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/voxel/recyclerview/widget/RecyclerView$OnItemTouchListener;

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1650
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_5

    .line 1652
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 1653
    invoke-interface {v4, p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1654
    iput-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/voxel/recyclerview/widget/RecyclerView$OnItemTouchListener;

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 1617
    iput-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/voxel/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 1620
    :cond_1
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 1622
    iget-object v5, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 1623
    invoke-interface {v5, p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v0, v1, :cond_2

    .line 1624
    iput-object v5, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/voxel/recyclerview/widget/RecyclerView$OnItemTouchListener;

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 8

    .line 2327
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2329
    aput v2, p1, v2

    .line 2330
    aput v2, p1, v1

    return-void

    :cond_0
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2336
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v6, v3}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 2337
    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2340
    :cond_1
    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    if-ge v6, v4, :cond_2

    move v4, v6

    :cond_2
    if-le v6, v5, :cond_3

    move v5, v6

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2348
    :cond_4
    aput v4, p1, v2

    .line 2349
    aput v5, p1, v1

    return-void
.end method

.method private getAdapterPositionFor(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    const/16 v0, 0x20c

    .line 7522
    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7524
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7527
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    iget p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2865
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method private getScrollFactor()F
    .locals 4

    .line 1900
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollFactor:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1901
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1902
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1905
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1904
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollFactor:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1911
    :cond_1
    :goto_0
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollFactor:F

    return v0
.end method

.method private initChildrenHelper()V
    .locals 2

    .line 375
    new-instance v0, Lcom/voxel/recyclerview/widget/ChildHelper;

    new-instance v1, Lcom/voxel/recyclerview/widget/RecyclerView$4;

    invoke-direct {v1, p0}, Lcom/voxel/recyclerview/widget/RecyclerView$4;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/voxel/recyclerview/widget/ChildHelper;-><init>(Lcom/voxel/recyclerview/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1856
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1857
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1860
    :goto_0
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 1861
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 1862
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private postAnimationRunner()V
    .locals 1

    .line 2038
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 2039
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 2040
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    :cond_0
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    .line 2045
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    .line 2055
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 2058
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->reset()V

    .line 2059
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 2060
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onItemsChanged(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    .line 2065
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2066
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->preProcess()V

    goto :goto_0

    .line 2068
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 2070
    :goto_0
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_3

    .line 2071
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->supportsChangeAnimations()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 2072
    :goto_2
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-boolean v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_5

    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2074
    invoke-static {v4}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->access$1700(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    iget-boolean v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    .line 2075
    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    .line 2072
    :goto_3
    invoke-static {v3, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1602(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    .line 2076
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1600(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_8

    .line 2078
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 2076
    :cond_8
    invoke-static {v3, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1402(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    return-void
.end method

.method private processDisappearingList(Landroidx/collection/ArrayMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 2398
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2400
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2401
    invoke-static {v2}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 2402
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v3, v3, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;

    .line 2403
    iget-object v5, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v5}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2404
    iget-object v5, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v5, v5, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v5, v4}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2406
    :cond_0
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2407
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v3, v2, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 2411
    invoke-direct {p0, v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->animateDisappearance(Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;)V

    goto :goto_1

    .line 2414
    :cond_2
    new-instance v9, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2415
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    .line 2414
    invoke-direct {p0, v9}, Lcom/voxel/recyclerview/widget/RecyclerView;->animateDisappearance(Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2418
    :cond_3
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private removeAnimatingView(Landroid/view/View;)Z
    .locals 2

    .line 790
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->eatRequestLayout()V

    .line 791
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 794
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 795
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x0

    .line 800
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->resumeRequestLayout(Z)V

    return v0
.end method

.method private removeFromDisappearingList(Landroid/view/View;)V
    .locals 1

    .line 6926
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private setDataSetChangedAfterLayout()V
    .locals 4

    .line 2800
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2803
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 2804
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2806
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2807
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x200

    .line 2808
    invoke-virtual {v2, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2811
    :cond_2
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    return-void
.end method

.method private stopScrollersInternal()V
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mViewFlinger:Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;

    invoke-interface {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;->stop()V

    .line 1327
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1328
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected absorbGlows(II)V
    .locals 2

    if-gez p1, :cond_0

    .line 1389
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 1390
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 1392
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 1393
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 1397
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 1398
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_1

    :cond_2
    if-lez p2, :cond_3

    .line 1400
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 1401
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0, p2}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 1405
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1519
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onAddFocusables(Lcom/voxel/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1520
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 1577
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1579
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1582
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 2604
    instance-of v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->checkLayoutParams(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method clearOldPositions()V
    .locals 4

    .line 2646
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2648
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 2649
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2650
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2653
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->clearOldPositions()V

    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .line 1149
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .line 1126
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .line 1169
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .line 1212
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .line 1191
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .line 1232
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected considerReleasingGlowsOnScroll(II)V
    .locals 2

    .line 1370
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1373
    :goto_0
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 1374
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    or-int/2addr v0, p1

    .line 1376
    :cond_1
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    .line 1377
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    or-int/2addr v0, p1

    .line 1379
    :cond_2
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    .line 1380
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_3
    if-eqz v0, :cond_4

    .line 1383
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method protected consumePendingUpdateOperations()V
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected createViewFlinger()Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;
    .locals 1

    .line 3130
    new-instance v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-direct {v0, p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewFlinger;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    return-object v0
.end method

.method dispatchLayout()V
    .locals 17

    move-object/from16 v0, p0

    .line 2104
    iget-object v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    if-nez v1, :cond_0

    const-string v1, "RecyclerView"

    const-string v2, "No adapter attached; skipping layout"

    .line 2105
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2108
    :cond_0
    iget-object v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    const-string v1, "RecyclerView"

    const-string v2, "No layout manager attached; skipping layout"

    .line 2109
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2112
    :cond_1
    iget-object v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2113
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->eatRequestLayout()V

    const/4 v1, 0x1

    .line 2114
    iput-boolean v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    .line 2116
    invoke-direct/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 2118
    iget-object v2, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1600(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_2

    .line 2119
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->supportsChangeAnimations()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    iput-object v3, v2, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mOldChangedHolders:Landroidx/collection/ArrayMap;

    const/4 v2, 0x0

    .line 2120
    iput-boolean v2, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v2, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 2122
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1400(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v5

    invoke-static {v3, v5}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1502(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    .line 2123
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v5, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v5}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    iput v5, v3, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 2124
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {v0, v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 2126
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1600(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2128
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v3, v3, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->clear()V

    .line 2129
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v3, v3, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->clear()V

    .line 2130
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_5

    .line 2132
    iget-object v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v6, v5}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 2133
    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v7}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 2136
    :cond_3
    iget-object v7, v6, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2137
    iget-object v8, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v13, v8, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    new-instance v14, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;

    .line 2138
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v12

    move-object v7, v14

    move-object v8, v6

    invoke-direct/range {v7 .. v12}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    .line 2137
    invoke-virtual {v13, v6, v14}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2141
    :cond_5
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1400(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2148
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->saveOldPositions()V

    .line 2150
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v3, v3, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mOldChangedHolders:Landroidx/collection/ArrayMap;

    if-eqz v3, :cond_7

    .line 2151
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_7

    .line 2153
    iget-object v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v6, v5}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 2154
    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isChanged()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_6

    .line 2155
    invoke-virtual {v0, v6}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChangedHolderKey(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v7

    .line 2156
    iget-object v9, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v9, v9, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mOldChangedHolders:Landroidx/collection/ArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7, v6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    iget-object v7, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v7, v7, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v7, v6}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2162
    :cond_7
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1200(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v3

    .line 2163
    iget-object v5, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v5, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1202(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    .line 2165
    iget-object v5, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v7, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v5, v6, v7}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)V

    .line 2166
    iget-object v5, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v5, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1202(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    .line 2168
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    const/4 v5, 0x0

    .line 2169
    :goto_4
    iget-object v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 2171
    iget-object v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v6, v5}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2172
    invoke-static {v6}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    .line 2175
    :goto_5
    iget-object v8, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v8, v8, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v8}, Landroidx/collection/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 2176
    iget-object v8, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v8, v8, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v8, v7}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2177
    iget-object v8, v8, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v8, v6, :cond_9

    const/4 v7, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    :goto_6
    if-nez v7, :cond_b

    .line 2183
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    .line 2184
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2183
    invoke-virtual {v3, v6, v7}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2188
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->clearOldPositions()V

    .line 2189
    iget-object v5, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {v5}, Lcom/voxel/recyclerview/widget/AdapterHelper;->consumePostponedUpdates()V

    goto :goto_9

    .line 2191
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->clearOldPositions()V

    .line 2193
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 2194
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v3, v3, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mOldChangedHolders:Landroidx/collection/ArrayMap;

    if-eqz v3, :cond_f

    .line 2195
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v3, :cond_f

    .line 2197
    iget-object v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v6, v5}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 2198
    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isChanged()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_e

    .line 2199
    invoke-virtual {v0, v6}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChangedHolderKey(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v7

    .line 2200
    iget-object v9, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v9, v9, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mOldChangedHolders:Landroidx/collection/ArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7, v6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2201
    iget-object v7, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v7, v7, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v7, v6}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_f
    move-object v3, v4

    .line 2206
    :goto_9
    iget-object v5, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    iput v6, v5, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 2207
    iget-object v5, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v5, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1002(Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I

    .line 2210
    iget-object v5, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v5, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1502(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    .line 2211
    iget-object v5, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v7, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v5, v6, v7}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)V

    .line 2213
    iget-object v5, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v5, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1202(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    .line 2214
    iput-object v4, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mPendingSavedState:Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;

    .line 2217
    iget-object v5, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v5}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1600(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    :goto_a
    invoke-static {v5, v6}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1602(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    .line 2219
    iget-object v5, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v5}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1600(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2221
    iget-object v5, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v5, v5, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mOldChangedHolders:Landroidx/collection/ArrayMap;

    if-eqz v5, :cond_11

    new-instance v5, Landroidx/collection/ArrayMap;

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    goto :goto_b

    :cond_11
    move-object v5, v4

    .line 2223
    :goto_b
    iget-object v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v6, :cond_14

    .line 2225
    iget-object v8, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v8, v7}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    .line 2226
    invoke-virtual {v8}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-eqz v9, :cond_12

    goto :goto_d

    .line 2229
    :cond_12
    iget-object v9, v8, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2230
    invoke-virtual {v0, v8}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChangedHolderKey(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v10

    if-eqz v5, :cond_13

    .line 2231
    iget-object v12, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v12, v12, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mOldChangedHolders:Landroidx/collection/ArrayMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_13

    .line 2232
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 2234
    :cond_13
    iget-object v10, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v15, v10, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroidx/collection/ArrayMap;

    new-instance v14, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;

    .line 2235
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v16

    move-object v9, v14

    move-object v10, v8

    move-object v4, v14

    move/from16 v14, v16

    invoke-direct/range {v9 .. v14}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    .line 2234
    invoke-virtual {v15, v8, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_c

    .line 2238
    :cond_14
    invoke-direct {v0, v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->processDisappearingList(Landroidx/collection/ArrayMap;)V

    .line 2240
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v4, v4, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_e
    if-ltz v4, :cond_16

    .line 2242
    iget-object v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v6, v6, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v6, v4}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2243
    iget-object v7, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v7, v7, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v7, v6}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 2244
    iget-object v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v6, v6, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v6, v4}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;

    .line 2245
    iget-object v7, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v7, v7, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v7, v4}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2247
    iget-object v7, v6, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2248
    iget-object v7, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v8, v6, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v7, v8}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2249
    invoke-direct {v0, v6}, Lcom/voxel/recyclerview/widget/RecyclerView;->animateDisappearance(Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;)V

    :cond_15
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .line 2253
    :cond_16
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v4, v4, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_1a

    sub-int/2addr v4, v1

    :goto_f
    if-ltz v4, :cond_1a

    .line 2256
    iget-object v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v6, v6, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v6, v4}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2257
    iget-object v7, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v7, v7, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v7, v4}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;

    .line 2258
    iget-object v8, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v8, v8, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v8}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_17

    iget-object v8, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v8, v8, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    .line 2259
    invoke-virtual {v8, v6}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 2260
    :cond_17
    iget-object v8, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v8, v8, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v8, v4}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    if-eqz v3, :cond_18

    .line 2261
    iget-object v8, v6, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2262
    invoke-virtual {v3, v8}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    goto :goto_10

    :cond_18
    const/4 v8, 0x0

    .line 2263
    :goto_10
    iget v9, v7, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->left:I

    iget v7, v7, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->top:I

    invoke-direct {v0, v6, v8, v9, v7}, Lcom/voxel/recyclerview/widget/RecyclerView;->animateAppearance(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Landroid/graphics/Rect;II)V

    :cond_19
    add-int/lit8 v4, v4, -0x1

    goto :goto_f

    .line 2269
    :cond_1a
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v3, v3, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_1d

    .line 2271
    iget-object v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v6, v6, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v6, v4}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2272
    iget-object v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v6, v6, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v6, v4}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;

    .line 2273
    iget-object v7, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v7, v7, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v7, v8}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;

    if-eqz v7, :cond_1c

    if-eqz v6, :cond_1c

    .line 2275
    iget v9, v7, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->left:I

    iget v10, v6, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->left:I

    if-ne v9, v10, :cond_1b

    iget v9, v7, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->top:I

    iget v10, v6, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->top:I

    if-eq v9, v10, :cond_1c

    .line 2276
    :cond_1b
    invoke-virtual {v8, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2281
    iget-object v9, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    iget v10, v7, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->left:I

    iget v11, v7, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->top:I

    iget v12, v6, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->left:I

    iget v6, v6, Lcom/voxel/recyclerview/widget/RecyclerView$ItemHolderInfo;->top:I

    move-object v7, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->animateMove(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2283
    invoke-direct/range {p0 .. p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 2289
    :cond_1d
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v3, v3, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mOldChangedHolders:Landroidx/collection/ArrayMap;

    if-eqz v3, :cond_1e

    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v3, v3, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mOldChangedHolders:Landroidx/collection/ArrayMap;

    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->size()I

    move-result v3

    goto :goto_12

    :cond_1e
    const/4 v3, 0x0

    :goto_12
    sub-int/2addr v3, v1

    :goto_13
    if-ltz v3, :cond_21

    .line 2292
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v4, v4, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mOldChangedHolders:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v3}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2293
    iget-object v4, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget-object v4, v4, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mOldChangedHolders:Landroidx/collection/ArrayMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2294
    iget-object v8, v4, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2295
    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v8

    if-eqz v8, :cond_1f

    goto :goto_14

    .line 2300
    :cond_1f
    iget-object v8, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-static {v8}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->access$1800(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_20

    iget-object v8, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    .line 2301
    invoke-static {v8}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->access$1800(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 2302
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {v0, v4, v6}, Lcom/voxel/recyclerview/widget/RecyclerView;->animateChange(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_20
    :goto_14
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 2308
    :cond_21
    invoke-virtual {v0, v2}, Lcom/voxel/recyclerview/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2309
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v4, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v3, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    .line 2310
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iget v4, v3, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mItemCount:I

    invoke-static {v3, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1902(Lcom/voxel/recyclerview/widget/RecyclerView$State;I)I

    .line 2311
    iput-boolean v2, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 2312
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v3, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1602(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    .line 2313
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v3, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1402(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    .line 2314
    iput-boolean v2, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    .line 2315
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-static {v3, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->access$1702(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;Z)Z

    .line 2316
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->access$1800(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 2317
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->access$1800(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2319
    :cond_22
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mOldChangedHolders:Landroidx/collection/ArrayMap;

    .line 2321
    iget-object v3, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v4, v3, v2

    aget v1, v3, v1

    invoke-direct {v0, v4, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2322
    invoke-virtual {v0, v2, v2}, Lcom/voxel/recyclerview/widget/RecyclerView;->notifyOnScrolled(II)V

    :cond_23
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 2533
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2535
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2537
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/recyclerview/widget/RecyclerView$ItemDecoration;

    iget-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2542
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2543
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2544
    iget-boolean v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    .line 2545
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2546
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2547
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 2548
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 2550
    :goto_3
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2551
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2552
    iget-boolean v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_4

    .line 2553
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2555
    :cond_4
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v4, :cond_5

    invoke-virtual {v4, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    or-int/2addr v3, v4

    .line 2556
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2558
    :cond_6
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2559
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2560
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v4

    .line 2561
    iget-boolean v5, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    .line 2562
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v4, v4

    int-to-float v4, v4

    .line 2563
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2564
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v4, :cond_8

    invoke-virtual {v4, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    or-int/2addr v3, v4

    .line 2565
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2567
    :cond_9
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2568
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v4, 0x43340000    # 180.0f

    .line 2569
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2570
    iget-boolean v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_a

    .line 2571
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    .line 2573
    :cond_a
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2575
    :goto_7
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v4, :cond_b

    invoke-virtual {v4, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v1, 0x1

    :cond_b
    or-int/2addr v1, v3

    .line 2576
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_8

    :cond_c
    move v1, v3

    :goto_8
    if-nez v1, :cond_d

    .line 2582
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 2583
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    if-eqz v1, :cond_e

    .line 2588
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_e
    return-void
.end method

.method eatRequestLayout()V
    .locals 1

    .line 1237
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mEatRequestLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1238
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mEatRequestLayout:Z

    const/4 v0, 0x0

    .line 1239
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayoutRequestEaten:Z

    :cond_0
    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 1450
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    return-void

    .line 1453
    :cond_0
    new-instance v0, Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    .line 1454
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1455
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1456
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1455
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 1458
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureLeftGlow()V
    .locals 4

    .line 1410
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    return-void

    .line 1413
    :cond_0
    new-instance v0, Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    .line 1414
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1415
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1416
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1415
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 1418
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureRightGlow()V
    .locals 4

    .line 1423
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    return-void

    .line 1426
    :cond_0
    new-instance v0, Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    .line 1427
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1428
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1429
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1428
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 1431
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    .line 1436
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    return-void

    .line 1439
    :cond_0
    new-instance v0, Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    .line 1440
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1441
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1442
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1441
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 1444
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    :goto_0
    return-void
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 5

    .line 3025
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3027
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3028
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v2

    .line 3029
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v3

    .line 3030
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    .line 3031
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpg-float v2, p1, v4

    if-gtz v2, :cond_0

    .line 3032
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    .line 3033
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method findViewHolderForPosition(IZ)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 2974
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2976
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2977
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    .line 2979
    iget v3, v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v3, p1, :cond_1

    return-object v2

    .line 2982
    :cond_0
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public fling(II)Z
    .locals 4

    .line 1291
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 1292
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1296
    :cond_0
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1297
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v0, :cond_1

    .line 1298
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v0, v3, :cond_2

    :cond_1
    const/4 p1, 0x0

    :cond_2
    if-eqz v2, :cond_3

    .line 1301
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v0, v2, :cond_4

    :cond_3
    const/4 p2, 0x0

    .line 1304
    :cond_4
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v2, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1305
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v2, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    return v1

    .line 1307
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mViewFlinger:Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;

    invoke-interface {v0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;->fling(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .line 1470
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1474
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 1475
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1476
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 1477
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->eatRequestLayout()V

    .line 1478
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 1479
    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->resumeRequestLayout(Z)V

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    .line 1481
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2609
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 2612
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 2610
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2617
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 2620
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p1

    return-object p1

    .line 2618
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView has no LayoutManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2625
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 2628
    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p1

    return-object p1

    .line 2626
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView has no LayoutManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAdapter()Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method getChangedHolderKey(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)J
    .locals 2

    .line 2390
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 0

    .line 2884
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2885
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 0

    .line 2899
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2900
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 2853
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 2855
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2858
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getCompatAccessibilityDelegate()Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getItemAnimator()Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;
    .locals 1

    .line 2026
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .line 3092
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 3093
    iget-boolean v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_0

    .line 3094
    iget-object p1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object p1

    .line 3097
    :cond_0
    iget-object v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 3098
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3099
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 3101
    iget-object v5, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3102
    iget-object v5, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/recyclerview/widget/RecyclerView$ItemDecoration;

    iget-object v6, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v5, v6, p1, p0, v7}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$State;)V

    .line 3103
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 3104
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 3105
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 3106
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3108
    :cond_1
    iput-boolean v2, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    return-object v1
.end method

.method public getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getRecycledViewPool()Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .line 871
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method initAdapterManager()V
    .locals 2

    .line 459
    new-instance v0, Lcom/voxel/recyclerview/widget/AdapterHelper;

    new-instance v1, Lcom/voxel/recyclerview/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Lcom/voxel/recyclerview/widget/RecyclerView$5;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/voxel/recyclerview/widget/AdapterHelper;-><init>(Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    return-void
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    .line 1463
    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    return-void
.end method

.method markItemDecorInsetsDirty()V
    .locals 4

    .line 2523
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2525
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2526
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2528
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .line 2819
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2821
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2822
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    .line 2823
    invoke-virtual {v2, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2826
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 2827
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    return-void
.end method

.method protected notifyOnScrolled(II)V
    .locals 1

    const/4 v0, 0x0

    .line 3360
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 3361
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollListener:Lcom/voxel/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 3362
    invoke-virtual {v0, p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Lcom/voxel/recyclerview/widget/RecyclerView;II)V

    :cond_0
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3

    .line 3085
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3087
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3

    .line 3047
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3049
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5

    .line 2691
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2693
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2694
    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 2699
    invoke-virtual {v3, p2, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 2700
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1202(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2703
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 2704
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9

    .line 2657
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, p2, :cond_0

    const/4 v2, -0x1

    move v2, p1

    move v3, p2

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    move v3, p1

    move v2, p2

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_4

    .line 2670
    iget-object v7, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v7, v6}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2671
    iget v8, v7, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v8, v2, :cond_3

    iget v8, v7, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v8, v3, :cond_1

    goto :goto_3

    .line 2678
    :cond_1
    iget v8, v7, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v8, p1, :cond_2

    sub-int v8, p2, p1

    .line 2679
    invoke-virtual {v7, v8, v5}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 2681
    :cond_2
    invoke-virtual {v7, v4, v5}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 2684
    :goto_2
    iget-object v7, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v7, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1202(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2686
    :cond_4
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 2687
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7

    add-int v0, p1, p2

    .line 2710
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2712
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2713
    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2714
    iget v4, v3, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v5, 0x1

    if-lt v4, v0, :cond_0

    neg-int v4, p2

    .line 2720
    invoke-virtual {v3, v4, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 2721
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v3, v5}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1202(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    goto :goto_1

    .line 2722
    :cond_0
    iget v4, v3, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_1

    add-int/lit8 v4, p1, -0x1

    neg-int v6, p2

    .line 2727
    invoke-virtual {v3, v4, v6, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 2729
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v3, v5}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1202(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2733
    :cond_2
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 2734
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1526
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1527
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mIsAttached:Z

    const/4 v0, 0x0

    .line 1528
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 1529
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 1530
    invoke-virtual {v1, p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    .line 1532
    :cond_0
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1537
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1538
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 1539
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_0
    const/4 v0, 0x0

    .line 1541
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 1543
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 1544
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 1545
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 1546
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1548
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 2594
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2596
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2598
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1868
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1871
    :cond_0
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getSource(Landroid/view/MotionEvent;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 1872
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    .line 1874
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    .line 1876
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1880
    :goto_0
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xa

    .line 1882
    invoke-static {p1, v3}, Landroidx/core/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    cmpl-float v3, v0, v2

    if-nez v3, :cond_3

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_4

    .line 1888
    :cond_3
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getScrollFactor()F

    move-result v2

    mul-float p1, p1, v2

    float-to-int p1, p1

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 1889
    invoke-virtual {p0, p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_4
    return v1
.end method

.method protected onIdleTouchUp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1664
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1665
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->cancelTouch()V

    return v1

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1670
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    .line 1672
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    .line 1673
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1675
    :cond_1
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1677
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1678
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 1728
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 1694
    :pswitch_2
    invoke-static {p1, v4}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 1695
    invoke-static {p1, v4}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 1696
    invoke-static {p1, v4}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_3

    .line 1736
    :pswitch_3
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_3

    .line 1700
    :pswitch_4
    iget v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-static {p1, v3}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    if-gez v3, :cond_2

    const-string p1, "RecyclerView"

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 1707
    :cond_2
    invoke-static {p1, v3}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 1708
    invoke-static {p1, v3}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    .line 1709
    iget v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollState:I

    if-eq v3, v1, :cond_7

    .line 1710
    iget v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    sub-int/2addr v4, v3

    .line 1711
    iget v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    sub-int/2addr p1, v3

    const/4 v3, -0x1

    if-eqz v0, :cond_4

    .line 1713
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v6, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-le v0, v6, :cond_4

    .line 1714
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    if-gez v4, :cond_3

    const/4 v4, -0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    :goto_0
    mul-int v6, v6, v4

    add-int/2addr v0, v6

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchX:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v2, :cond_6

    .line 1717
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-le v2, v4, :cond_6

    .line 1718
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    if-gez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    :goto_2
    mul-int v4, v4, v3

    add-int/2addr v0, v4

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchY:I

    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    .line 1722
    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->setScrollState(I)V

    goto :goto_3

    .line 1732
    :pswitch_5
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_3

    .line 1682
    :pswitch_6
    invoke-static {p1, v5}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 1683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 1684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 1686
    iget p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 1688
    invoke-virtual {p0, v5}, Lcom/voxel/recyclerview/widget/RecyclerView;->setScrollState(I)V

    return v1

    .line 1739
    :cond_7
    :goto_3
    iget p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne p1, v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2507
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->eatRequestLayout()V

    .line 2508
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->dispatchLayout()V

    const/4 p1, 0x0

    .line 2509
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->resumeRequestLayout(Z)V

    const/4 p1, 0x1

    .line 2510
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1916
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1917
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->eatRequestLayout()V

    .line 1918
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 1920
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1400(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1925
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1502(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    goto :goto_0

    .line 1928
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 1929
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1502(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    .line 1931
    :goto_0
    iput-boolean v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 1932
    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1935
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 1936
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, v2, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mItemCount:I

    goto :goto_1

    .line 1938
    :cond_2
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    iput v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 1940
    :goto_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_3

    .line 1941
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    goto :goto_2

    .line 1943
    :cond_3
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;II)V

    .line 1946
    :goto_2
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {p1, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1502(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 754
    check-cast p1, Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mPendingSavedState:Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;

    .line 755
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mPendingSavedState:Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 756
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mPendingSavedState:Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz p1, :cond_0

    .line 757
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mPendingSavedState:Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 740
    new-instance v0, Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 741
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mPendingSavedState:Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 742
    invoke-static {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;->access$1300(Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;)V

    goto :goto_0

    .line 743
    :cond_0
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 744
    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 746
    iput-object v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    :goto_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1988
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 1990
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->invalidateGlows()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1744
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1745
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->cancelTouch()V

    return v1

    .line 1749
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1750
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    .line 1752
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    .line 1753
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1755
    :cond_1
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1757
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1758
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    .line 1812
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 1768
    :pswitch_2
    invoke-static {p1, v4}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 1769
    invoke-static {p1, v4}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 1770
    invoke-static {p1, v4}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    add-float/2addr p1, v5

    float-to-int p1, p1

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_6

    .line 1831
    :pswitch_3
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_6

    .line 1774
    :pswitch_4
    iget v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-static {p1, v3}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    if-gez v3, :cond_2

    const-string p1, "RecyclerView"

    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 1781
    :cond_2
    invoke-static {p1, v3}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 1782
    invoke-static {p1, v3}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    add-float/2addr p1, v5

    float-to-int p1, p1

    .line 1783
    iget v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollState:I

    if-eq v3, v1, :cond_7

    .line 1784
    iget v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    sub-int v3, v4, v3

    .line 1785
    iget v5, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    sub-int v5, p1, v5

    const/4 v7, -0x1

    if-eqz v0, :cond_4

    .line 1787
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-le v8, v9, :cond_4

    .line 1788
    iget v8, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    if-gez v3, :cond_3

    const/4 v3, -0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    :goto_0
    mul-int v9, v9, v3

    add-int/2addr v8, v9

    iput v8, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchX:I

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_6

    .line 1791
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-le v8, v9, :cond_6

    .line 1792
    iget v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    if-gez v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v7, 0x1

    :goto_2
    mul-int v9, v9, v7

    add-int/2addr v3, v9

    iput v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchY:I

    const/4 v3, 0x1

    :cond_6
    if-eqz v3, :cond_7

    .line 1796
    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 1799
    :cond_7
    iget v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v3, v1, :cond_a

    .line 1800
    iget v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchX:I

    sub-int v3, v4, v3

    .line 1801
    iget v5, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchY:I

    sub-int v5, p1, v5

    if-eqz v0, :cond_8

    neg-int v0, v3

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-eqz v2, :cond_9

    neg-int v6, v5

    .line 1802
    :cond_9
    invoke-virtual {p0, v0, v6}, Lcom/voxel/recyclerview/widget/RecyclerView;->scrollByInternal(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1804
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1807
    :cond_a
    iput v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 1808
    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchY:I

    goto :goto_6

    .line 1816
    :pswitch_5
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 p1, 0x0

    if-eqz v0, :cond_b

    .line 1817
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 1818
    invoke-static {v0, v3}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_4
    if-eqz v2, :cond_c

    .line 1819
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 1820
    invoke-static {v2, v3}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    neg-float v2, v2

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    :goto_5
    cmpl-float v3, v0, p1

    if-nez v3, :cond_d

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_e

    :cond_d
    float-to-int p1, v0

    float-to-int v0, v2

    .line 1821
    invoke-virtual {p0, p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p1

    if-nez p1, :cond_f

    .line 1822
    :cond_e
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->onIdleTouchUp()Z

    move-result p1

    if-nez p1, :cond_f

    .line 1823
    invoke-virtual {p0, v6}, Lcom/voxel/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 1826
    :cond_f
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 1827
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->releaseGlows()V

    goto :goto_6

    .line 1762
    :pswitch_6
    invoke-static {p1, v6}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 1763
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 1764
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v5

    float-to-int p1, p1

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    :goto_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected pullGlows(II)V
    .locals 3

    if-gez p1, :cond_0

    .line 1337
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 1338
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 1340
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 1341
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 1345
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 1346
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    neg-int v1, p2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    goto :goto_1

    :cond_2
    if-lez p2, :cond_3

    .line 1348
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 1349
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v1, p2

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 1353
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method rebindUpdatedViewHolders()V
    .locals 5

    .line 2768
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    .line 2770
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2772
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_3

    .line 2775
    :cond_0
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 2777
    :cond_1
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2778
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    iget v4, v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    .line 2779
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 2781
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isChanged()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->supportsChangeAnimations()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 2787
    :cond_2
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->requestLayout()V

    goto :goto_3

    .line 2782
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    iget v4, v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v2, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_3

    .line 2792
    :cond_4
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->requestLayout()V

    goto :goto_4

    .line 2776
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method protected releaseGlows()V
    .locals 2

    .line 1359
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1360
    :goto_0
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1361
    :cond_1
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1362
    :cond_2
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 1364
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    .line 2372
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2374
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2375
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_0

    .line 2376
    :cond_0
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2377
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2381
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 2382
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 1486
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 1487
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1492
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1493
    instance-of v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v1, :cond_0

    .line 1495
    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1496
    iget-boolean v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_0

    .line 1497
    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 1498
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1499
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1500
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1501
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1505
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1506
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1507
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 1509
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 1514
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/voxel/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 2515
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mEatRequestLayout:Z

    if-nez v0, :cond_0

    .line 2516
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2518
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayoutRequestEaten:Z

    :goto_0
    return-void
.end method

.method resumeRequestLayout(Z)V
    .locals 1

    .line 1244
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mEatRequestLayout:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1245
    iget-boolean p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_0

    .line 1247
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->dispatchLayout()V

    :cond_0
    const/4 p1, 0x0

    .line 1249
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mEatRequestLayout:Z

    .line 1250
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayoutRequestEaten:Z

    :cond_1
    return-void
.end method

.method saveOldPositions()V
    .locals 4

    .line 2632
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2634
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 2639
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2640
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1022
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 1023
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1027
    :cond_0
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1028
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 1030
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->scrollByInternal(II)Z

    :cond_4
    return-void
.end method

.method protected scrollByInternal(II)Z
    .locals 13

    .line 1054
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1055
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 1056
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->eatRequestLayout()V

    .line 1057
    iput-boolean v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    if-eqz p1, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p1, v3, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    sub-int v3, p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 1063
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v6, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v4, p2, v5, v6}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/voxel/recyclerview/widget/RecyclerView$Recycler;Lcom/voxel/recyclerview/widget/RecyclerView$State;)I

    move-result v4

    sub-int v5, p2, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1066
    :goto_1
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->supportsChangeAnimations()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1068
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_5

    .line 1070
    iget-object v8, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v8, v7}, Lcom/voxel/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1071
    invoke-virtual {p0, v8}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1072
    iget-object v10, v9, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v10, :cond_4

    .line 1073
    iget-object v9, v9, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v9, :cond_2

    .line 1074
    iget-object v9, v9, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_4

    .line 1076
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 1077
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1078
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v11

    if-ne v10, v11, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    if-eq v8, v11, :cond_4

    .line 1080
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v11, v10

    .line 1081
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v12, v8

    .line 1079
    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/view/View;->layout(IIII)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1087
    :cond_5
    iput-boolean v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    .line 1088
    invoke-virtual {p0, v2}, Lcom/voxel/recyclerview/widget/RecyclerView;->resumeRequestLayout(Z)V

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1090
    :goto_4
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1091
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->invalidate()V

    .line 1093
    :cond_7
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_8

    .line 1094
    invoke-virtual {p0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 1095
    invoke-virtual {p0, v3, v5}, Lcom/voxel/recyclerview/widget/RecyclerView;->pullGlows(II)V

    :cond_8
    if-nez v0, :cond_9

    if-eqz v4, :cond_a

    .line 1098
    :cond_9
    invoke-virtual {p0, v0, v4}, Lcom/voxel/recyclerview/widget/RecyclerView;->notifyOnScrolled(II)V

    .line 1100
    :cond_a
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_b

    .line 1101
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_b
    if-nez v0, :cond_d

    if-eqz v4, :cond_c

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_5
    return v1
.end method

.method public scrollTo(II)V
    .locals 0

    .line 1016
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "RecyclerView does not support scrolling to an absolute position."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 980
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 981
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string v0, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 982
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 986
    :cond_0
    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 987
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    return-void
.end method

.method public setAccessibilityDelegateCompat(Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    .line 371
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public setAdapter(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 624
    invoke-virtual {p0, p1, v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->setAdapterInternal(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;ZZ)V

    .line 625
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected setAdapterInternal(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;ZZ)V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 640
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mObserver:Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 641
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_4

    .line 645
    :cond_1
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz p3, :cond_2

    .line 646
    invoke-virtual {p3}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 652
    :cond_2
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p3, :cond_3

    .line 653
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p3, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    .line 654
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p3, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    .line 657
    :cond_3
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p3}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 659
    :cond_4
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {p3}, Lcom/voxel/recyclerview/widget/AdapterHelper;->reset()V

    .line 660
    iget-object p3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    .line 661
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_5

    .line 663
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mObserver:Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 664
    invoke-virtual {p1, p0}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    .line 666
    :cond_5
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_6

    .line 667
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p3, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;)V

    .line 669
    :cond_6
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapter:Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p3, v0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->onAdapterChanged(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 670
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1202(Lcom/voxel/recyclerview/widget/RecyclerView$State;Z)Z

    .line 671
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->markKnownViewsInvalid()V

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 559
    iget-boolean v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->invalidateGlows()V

    .line 562
    :cond_0
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 563
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 564
    iget-boolean p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz p1, :cond_1

    .line 565
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .line 546
    iput-boolean p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    return-void
.end method

.method public setItemAnimator(Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 2

    .line 2006
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 2007
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2008
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 2010
    :cond_0
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 2011
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz p1, :cond_1

    .line 2012
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    return-void
.end method

.method public setLayoutManager(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 3

    .line 711
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 717
    iget-boolean v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v1, :cond_1

    .line 718
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/voxel/recyclerview/widget/RecyclerView;Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->setRecyclerView(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    .line 722
    :cond_2
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 723
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 724
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_4

    .line 726
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_3

    .line 730
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->setRecyclerView(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    .line 731
    iget-boolean p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz p1, :cond_4

    .line 732
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Lcom/voxel/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 727
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setOnScrollListener(Lcom/voxel/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0

    .line 968
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollListener:Lcom/voxel/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setRecycledViewPool(Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->setRecycledViewPool(Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public setRecyclerListener(Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerListener;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecyclerListener:Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerListener;

    return-void
.end method

.method protected setScrollState(I)V
    .locals 1

    .line 875
    iget v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 881
    :cond_0
    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 883
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->stopScrollersInternal()V

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mScrollListener:Lcom/voxel/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 886
    invoke-virtual {v0, p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/voxel/recyclerview/widget/RecyclerView;I)V

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_3

    .line 889
    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    :cond_3
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4

    .line 579
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const-string v1, "RecyclerView"

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 590
    :pswitch_0
    invoke-static {v0}, Landroidx/core/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTouchSlop:I

    goto :goto_1

    .line 586
    :goto_0
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mTouchSlop:I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setViewCacheExtension(Lcom/voxel/recyclerview/widget/RecyclerView$ViewCacheExtension;)V
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->setViewCacheExtension(Lcom/voxel/recyclerview/widget/RecyclerView$ViewCacheExtension;)V

    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 2

    .line 1261
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 1262
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1266
    :cond_0
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 1269
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mLayout:Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p2, 0x0

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    .line 1273
    :cond_3
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mViewFlinger:Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;

    invoke-interface {v0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;->smoothScrollBy(II)V

    :cond_4
    return-void
.end method

.method public stopScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 1318
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 1319
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->stopScrollersInternal()V

    return-void
.end method

.method protected supportsChangeAnimations()Z
    .locals 1

    .line 2030
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->getSupportsChangeAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method viewRangeUpdate(II)V
    .locals 6

    .line 2744
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    add-int v1, p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2748
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/voxel/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2749
    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2750
    invoke-virtual {v4}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 2753
    :cond_0
    iget v5, v4, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_2

    iget v5, v4, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v1, :cond_2

    const/4 v5, 0x2

    .line 2756
    invoke-virtual {v4, v5}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 2757
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView;->supportsChangeAnimations()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x40

    .line 2758
    invoke-virtual {v4, v5}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 2761
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2764
    :cond_3
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView;->mRecycler:Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    return-void
.end method
