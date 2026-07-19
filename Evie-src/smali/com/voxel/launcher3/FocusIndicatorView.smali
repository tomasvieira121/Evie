.class public Lcom/voxel/launcher3/FocusIndicatorView;
.super Landroid/view/View;
.source "FocusIndicatorView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final sTempPos:[I

.field private static final sTempShift:[I


# instance fields
.field private final mIndicatorPos:[I

.field private mInitiated:Z

.field private mLastFocusedView:Landroid/view/View;

.field private mPendingCall:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetViewPos:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 34
    new-array v1, v0, [I

    sput-object v1, Lcom/voxel/launcher3/FocusIndicatorView;->sTempPos:[I

    .line 35
    new-array v0, v0, [I

    sput-object v0, Lcom/voxel/launcher3/FocusIndicatorView;->sTempShift:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 37
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mIndicatorPos:[I

    .line 38
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mTargetViewPos:[I

    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/FocusIndicatorView;->setAlpha(F)V

    .line 52
    invoke-virtual {p0}, Lcom/voxel/launcher3/FocusIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060093

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/FocusIndicatorView;->setBackgroundColor(I)V

    return-void
.end method

.method private static getLocationRelativeToParentPagedView(Landroid/view/View;[I)V
    .locals 4

    .line 129
    sget-object v0, Lcom/voxel/launcher3/FocusIndicatorView;->sTempShift:[I

    invoke-static {p0, v0}, Lcom/voxel/launcher3/FocusIndicatorView;->getPagedViewScrollShift(Landroid/view/View;[I)V

    .line 130
    sget-object v0, Lcom/voxel/launcher3/FocusIndicatorView;->sTempPos:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 131
    sget-object p0, Lcom/voxel/launcher3/FocusIndicatorView;->sTempPos:[I

    const/4 v0, 0x0

    aget v1, p0, v0

    sget-object v2, Lcom/voxel/launcher3/FocusIndicatorView;->sTempShift:[I

    aget v3, v2, v0

    add-int/2addr v1, v3

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 132
    aget p0, p0, v0

    aget v1, v2, v0

    add-int/2addr p0, v1

    aput p0, p1, v0

    return-void
.end method

.method private static getPagedViewScrollShift(Landroid/view/View;[I)V
    .locals 4

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 137
    instance-of v1, v0, Lcom/voxel/launcher3/PagedView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 138
    check-cast v0, Landroid/view/View;

    .line 139
    sget-object v1, Lcom/voxel/launcher3/FocusIndicatorView;->sTempPos:[I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sget-object v1, Lcom/voxel/launcher3/FocusIndicatorView;->sTempPos:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    aput v0, p1, v3

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    float-to-int p0, p0

    neg-int p0, p0

    aput p0, p1, v2

    goto :goto_0

    .line 142
    :cond_0
    instance-of p0, v0, Landroid/view/View;

    if-eqz p0, :cond_1

    .line 143
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/voxel/launcher3/FocusIndicatorView;->getPagedViewScrollShift(Landroid/view/View;[I)V

    goto :goto_0

    .line 145
    :cond_1
    aput v3, p1, v2

    aput v3, p1, v3

    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/FocusIndicatorView;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 9

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    .line 70
    iget-boolean v1, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mInitiated:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/FocusIndicatorView;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    .line 74
    invoke-virtual {p0}, Lcom/voxel/launcher3/FocusIndicatorView;->invalidate()V

    return-void

    .line 78
    :cond_0
    iget-boolean v1, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mInitiated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mIndicatorPos:[I

    invoke-static {p0, v1}, Lcom/voxel/launcher3/FocusIndicatorView;->getLocationRelativeToParentPagedView(Landroid/view/View;[I)V

    .line 80
    iput-boolean v2, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mInitiated:Z

    :cond_1
    if-eqz p2, :cond_3

    .line 84
    invoke-virtual {p0}, Lcom/voxel/launcher3/FocusIndicatorView;->getWidth()I

    move-result p2

    .line 85
    invoke-virtual {p0}, Lcom/voxel/launcher3/FocusIndicatorView;->getHeight()I

    move-result v0

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 90
    iget-object v4, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mTargetViewPos:[I

    invoke-static {p1, v4}, Lcom/voxel/launcher3/FocusIndicatorView;->getLocationRelativeToParentPagedView(Landroid/view/View;[I)V

    .line 91
    iget-object v4, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mTargetViewPos:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    iget-object v7, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mIndicatorPos:[I

    aget v5, v7, v5

    sub-int/2addr v6, v5

    int-to-float v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v8, v6, v1

    mul-float v8, v8, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v8, p2

    sub-float/2addr v5, v8

    .line 92
    aget v4, v4, v2

    aget v2, v7, v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    sub-float v4, v6, v3

    mul-float v4, v4, v0

    div-float/2addr v4, p2

    sub-float/2addr v2, v4

    .line 94
    invoke-virtual {p0}, Lcom/voxel/launcher3/FocusIndicatorView;->getAlpha()F

    move-result p2

    const v0, 0x3e4ccccd    # 0.2f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/voxel/launcher3/FocusIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 96
    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 97
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 98
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 99
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 100
    invoke-virtual {p2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p0, v5}, Lcom/voxel/launcher3/FocusIndicatorView;->setTranslationX(F)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/FocusIndicatorView;->setTranslationY(F)V

    .line 104
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/FocusIndicatorView;->setScaleX(F)V

    .line 105
    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/FocusIndicatorView;->setScaleY(F)V

    .line 106
    invoke-virtual {p0}, Lcom/voxel/launcher3/FocusIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 108
    :goto_0
    iput-object p1, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mLastFocusedView:Landroid/view/View;

    goto :goto_1

    .line 110
    :cond_3
    iget-object p2, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mLastFocusedView:Landroid/view/View;

    if-ne p2, p1, :cond_4

    .line 111
    iput-object v0, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mLastFocusedView:Landroid/view/View;

    .line 112
    invoke-virtual {p0}, Lcom/voxel/launcher3/FocusIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_4
    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 61
    iget-object p1, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mLastFocusedView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 62
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/FocusIndicatorView;->mPendingCall:Landroid/util/Pair;

    .line 63
    invoke-virtual {p0}, Lcom/voxel/launcher3/FocusIndicatorView;->invalidate()V

    :cond_0
    return-void
.end method
