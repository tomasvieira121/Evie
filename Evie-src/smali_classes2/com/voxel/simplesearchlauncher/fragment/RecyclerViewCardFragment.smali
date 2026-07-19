.class public abstract Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;
.super Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;
.source "RecyclerViewCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecyclerViewCardFragment"


# instance fields
.field protected mBackground:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

.field private mBackgroundDirty:Z

.field protected mContentView:Landroid/view/View;

.field private mFlingThresholdVelocity:I

.field private mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field protected mLayoutManager:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

.field private mOverscrollDragThreshold:I

.field protected mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mBackgroundDirty:Z

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mFlingThresholdVelocity:I

    return p0
.end method

.method static synthetic lambda$onCreateChildContentView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$onCreateChildContentView$1(Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->isTransitioning()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 89
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getCurrentScrollPositionY()I

    move-result p1

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getCurrentScrollPositionY()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mOverscrollDragThreshold:I

    if-le p1, v1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->runExitAnimation()V

    return v0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$onCreateChildContentView$2(Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->markBackgroundDirty()V

    .line 116
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->recalculateBackgroundHeight()V

    return-void
.end method

.method private showRecyclerView()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->setVisibility(I)V

    .line 150
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->getAdapter()Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$3;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$3;-><init>(Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lcom/voxel/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 158
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v1, v0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->setAdapter(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method protected abstract getAdapter()Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;
.end method

.method protected getTotalActualItemsHeight()I
    .locals 4

    .line 222
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->getAdapter()Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->getAdapter()Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;

    move-result-object v0

    const/4 v2, 0x0

    .line 227
    :goto_0
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 228
    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;->isItemInBackground(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;->getItemViewHeightForPosition(I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method protected getTotalSpringDistanceOffset()I
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->getAdapter()Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->getAdapter()Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->recalculateBackgroundHeight()V

    .line 170
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mBackground:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 172
    iget v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    neg-int v0, v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final markBackgroundDirty()V
    .locals 1

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mBackgroundDirty:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v0, 0x44bb8000    # 1500.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 46
    iput p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mFlingThresholdVelocity:I

    .line 47
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070132

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mOverscrollDragThreshold:I

    .line 49
    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$1;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;)V

    invoke-direct {p1, v0, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    return-void
.end method

.method protected onCreateChildContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0d0053

    .line 63
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mContentView:Landroid/view/View;

    .line 67
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mContentView:Landroid/view/View;

    sget-object p2, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$RecyclerViewCardFragment$xSlBdn3rozWX9IboNecmzu0Kuyg;->INSTANCE:Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$RecyclerViewCardFragment$xSlBdn3rozWX9IboNecmzu0Kuyg;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mContentView:Landroid/view/View;

    const p2, 0x7f0a0059

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mBackground:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    .line 71
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07011a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 72
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mBackground:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->setClipOutlines(Z)V

    .line 73
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mBackground:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->setTopLeftCornerRadius(F)V

    .line 74
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mBackground:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->setTopRightCornerRadius(F)V

    .line 75
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mBackground:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->setBottomLeftCornerRadius(F)V

    .line 76
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mBackground:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->setBottomRightCornerRadius(F)V

    .line 78
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mContentView:Landroid/view/View;

    const p2, 0x7f0a0218

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    .line 79
    new-instance p1, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mLayoutManager:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    .line 80
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mLayoutManager:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    invoke-virtual {p1, p2}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->setLayoutManager(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 81
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {p1, p3}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->setHasFixedSize(Z)V

    .line 82
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    new-instance p2, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$RecyclerViewCardFragment$m4a6q14kFp3bmIEBpgkzHjwoY40;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$RecyclerViewCardFragment$m4a6q14kFp3bmIEBpgkzHjwoY40;-><init>(Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;)V

    invoke-virtual {p1, p2}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    new-instance p2, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$2;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$2;-><init>(Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;)V

    invoke-virtual {p1, p2}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->setOnScrollListener(Lcom/voxel/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 109
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->showRecyclerView()V

    .line 111
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    new-instance p2, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$RecyclerViewCardFragment$wZv7pgOs4SIgrSR4rP1Fnoxjebs;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$RecyclerViewCardFragment$wZv7pgOs4SIgrSR4rP1Fnoxjebs;-><init>(Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;)V

    invoke-virtual {p1, p2}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 119
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 274
    invoke-static {}, Lcom/voxel/launcher3/LauncherApplication;->getRefWatcher()Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;)V

    .line 275
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mContentView:Landroid/view/View;

    .line 267
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mBackground:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    .line 268
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    .line 269
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->onDestroyView()V

    return-void
.end method

.method protected onFinishedEnterTransition()V
    .locals 0

    .line 135
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->onFinishedEnterTransition()V

    return-void
.end method

.method protected onFragmentWillClose()V
    .locals 2

    .line 252
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->onFragmentWillClose()V

    .line 253
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->stopScroll()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mSpringY:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$4;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$4;-><init>(Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method protected onStartedEnterTransition()V
    .locals 2

    .line 124
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->onStartedEnterTransition()V

    .line 127
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 140
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 145
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method protected final recalculateBackgroundHeight()V
    .locals 5

    .line 184
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->usesBackgroundCard()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->getAdapter()Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 192
    :cond_1
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mBackgroundDirty:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mBackgroundDirty:Z

    .line 198
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->getAdapter()Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mBackground:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v3, 0x0

    .line 203
    :goto_0
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 204
    invoke-virtual {v1, v0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;->isItemInBackground(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 208
    :cond_3
    invoke-virtual {v1, v0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;->getItemViewHeightForPosition(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_4
    :goto_1
    iput v3, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 212
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->getTotalActualItemsHeight()I

    move-result v0

    iput v0, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 214
    iget v0, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    if-eqz v0, :cond_5

    .line 217
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->mBackground:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    invoke-virtual {v0, v2}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 215
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Total actual items height cannot be zero! Consider returning false for usesBackgroundCard()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method protected usesBackgroundCard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
