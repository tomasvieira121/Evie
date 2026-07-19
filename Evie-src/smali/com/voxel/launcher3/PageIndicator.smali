.class public Lcom/voxel/launcher3/PageIndicator;
.super Landroid/widget/LinearLayout;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;
    }
.end annotation


# instance fields
.field private mActiveMarkerIndex:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/PageIndicatorMarker;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxWindowSize:I

.field private mWindowRange:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/launcher3/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/voxel/launcher3/PageIndicator;->mWindowRange:[I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 68
    sget-object v0, Lis/shortcut/R$styleable;->PageIndicator:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 p3, 0xf

    .line 70
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/voxel/launcher3/PageIndicator;->mMaxWindowSize:I

    .line 71
    iget-object p3, p0, Lcom/voxel/launcher3/PageIndicator;->mWindowRange:[I

    aput v1, p3, v1

    const/4 v0, 0x1

    .line 72
    aput v1, p3, v0

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/PageIndicator;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 74
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    invoke-virtual {p0}, Lcom/voxel/launcher3/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    const-wide/16 p2, 0xaf

    .line 78
    invoke-virtual {p1, p2, p3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    return-void
.end method

.method private disableLayoutTransitions()V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/voxel/launcher3/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v1, 0x2

    .line 91
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x3

    .line 92
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x1

    .line 94
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    return-void
.end method

.method private enableLayoutTransitions()V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/voxel/launcher3/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v1, 0x2

    .line 83
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    const/4 v1, 0x3

    .line 84
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    return-void
.end method


# virtual methods
.method addMarker(ILcom/voxel/launcher3/PageIndicator$PageMarkerResources;Z)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/voxel/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 167
    iget-object v1, p0, Lcom/voxel/launcher3/PageIndicator;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0081

    .line 168
    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/PageIndicatorMarker;

    .line 170
    iget v1, p2, Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;->activeId:I

    iget p2, p2, Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;->inactiveId:I

    invoke-virtual {v0, v1, p2}, Lcom/voxel/launcher3/PageIndicatorMarker;->setMarkerDrawables(II)V

    .line 172
    iget-object p2, p0, Lcom/voxel/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 173
    iget p1, p0, Lcom/voxel/launcher3/PageIndicator;->mActiveMarkerIndex:I

    invoke-virtual {p0, p1, p3}, Lcom/voxel/launcher3/PageIndicator;->offsetWindowCenterTo(IZ)V

    return-void
.end method

.method addMarkers(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 189
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const v1, 0x7fffffff

    .line 190
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;

    invoke-virtual {p0, v1, v2, p2}, Lcom/voxel/launcher3/PageIndicator;->addMarker(ILcom/voxel/launcher3/PageIndicator$PageMarkerResources;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method offsetWindowCenterTo(IZ)V
    .locals 8

    if-gez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/voxel/launcher3/PageIndicator;->mMaxWindowSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 102
    div-int/lit8 v1, v0, 0x2

    sub-int v1, p1, v1

    const/4 v2, 0x0

    .line 104
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 105
    iget-object v3, p0, Lcom/voxel/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/voxel/launcher3/PageIndicator;->mMaxWindowSize:I

    add-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 106
    iget-object v3, p0, Lcom/voxel/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    sub-int v3, v1, v0

    .line 107
    div-int/lit8 v3, v3, 0x2

    .line 109
    iget-object v3, p0, Lcom/voxel/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 110
    iget-object v3, p0, Lcom/voxel/launcher3/PageIndicator;->mWindowRange:[I

    aget v4, v3, v2

    const/4 v5, 0x1

    if-ne v4, v0, :cond_2

    aget v3, v3, v5

    if-eq v3, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez p2, :cond_3

    .line 114
    invoke-direct {p0}, Lcom/voxel/launcher3/PageIndicator;->disableLayoutTransitions()V

    .line 118
    :cond_3
    invoke-virtual {p0}, Lcom/voxel/launcher3/PageIndicator;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    :goto_2
    if-ltz v4, :cond_6

    .line 119
    invoke-virtual {p0, v4}, Lcom/voxel/launcher3/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/PageIndicatorMarker;

    .line 120
    iget-object v7, p0, Lcom/voxel/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-lt v7, v0, :cond_4

    if-lt v7, v1, :cond_5

    .line 122
    :cond_4
    invoke-virtual {p0, v6}, Lcom/voxel/launcher3/PageIndicator;->removeView(Landroid/view/View;)V

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 127
    :goto_3
    iget-object v6, p0, Lcom/voxel/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_a

    .line 128
    iget-object v6, p0, Lcom/voxel/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/PageIndicatorMarker;

    if-gt v0, v4, :cond_9

    if-ge v4, v1, :cond_9

    .line 130
    invoke-virtual {p0, v6}, Lcom/voxel/launcher3/PageIndicator;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-gez v7, :cond_7

    sub-int v7, v4, v0

    .line 131
    invoke-virtual {p0, v6, v7}, Lcom/voxel/launcher3/PageIndicator;->addView(Landroid/view/View;I)V

    :cond_7
    if-ne v4, p1, :cond_8

    .line 134
    invoke-virtual {v6, v3}, Lcom/voxel/launcher3/PageIndicatorMarker;->activate(Z)V

    goto :goto_4

    .line 136
    :cond_8
    invoke-virtual {v6, v3}, Lcom/voxel/launcher3/PageIndicatorMarker;->inactivate(Z)V

    goto :goto_4

    .line 139
    :cond_9
    invoke-virtual {v6, v5}, Lcom/voxel/launcher3/PageIndicatorMarker;->inactivate(Z)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    if-nez p2, :cond_b

    .line 157
    invoke-direct {p0}, Lcom/voxel/launcher3/PageIndicator;->enableLayoutTransitions()V

    .line 160
    :cond_b
    iget-object p1, p0, Lcom/voxel/launcher3/PageIndicator;->mWindowRange:[I

    aput v0, p1, v2

    .line 161
    aput v1, p1, v5

    return-void
.end method

.method removeAllMarkers(Z)V
    .locals 1

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/voxel/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    .line 220
    invoke-virtual {p0, v0, p1}, Lcom/voxel/launcher3/PageIndicator;->removeMarker(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method removeMarker(IZ)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/voxel/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 201
    iget-object v1, p0, Lcom/voxel/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 202
    iget-object v0, p0, Lcom/voxel/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 203
    iget p1, p0, Lcom/voxel/launcher3/PageIndicator;->mActiveMarkerIndex:I

    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/PageIndicator;->offsetWindowCenterTo(IZ)V

    :cond_0
    return-void
.end method

.method setActiveMarker(I)V
    .locals 1

    .line 226
    iput p1, p0, Lcom/voxel/launcher3/PageIndicator;->mActiveMarkerIndex:I

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/PageIndicator;->offsetWindowCenterTo(IZ)V

    return-void
.end method

.method updateMarker(ILcom/voxel/launcher3/PageIndicator$PageMarkerResources;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/voxel/launcher3/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/PageIndicatorMarker;

    .line 196
    iget v0, p2, Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;->activeId:I

    iget p2, p2, Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;->inactiveId:I

    invoke-virtual {p1, v0, p2}, Lcom/voxel/launcher3/PageIndicatorMarker;->setMarkerDrawables(II)V

    return-void
.end method
