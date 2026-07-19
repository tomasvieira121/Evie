.class public Lcom/voxel/simplesearchlauncher/utils/ScrollUtil;
.super Ljava/lang/Object;
.source "ScrollUtil.java"


# direct methods
.method private static insideViewAndCanScrollHorizontally(Landroid/view/View;III)Z
    .locals 5

    int-to-float p1, p1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 53
    invoke-static {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/utils/ScrollUtil;->isBetween(III)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {p2, v2, v3}, Lcom/voxel/simplesearchlauncher/utils/ScrollUtil;->isBetween(III)Z

    move-result v1

    if-eqz v1, :cond_0

    sub-int/2addr p1, v0

    sub-int/2addr p2, v2

    .line 55
    invoke-static {p0, v4, p3, p1, p2}, Lcom/voxel/simplesearchlauncher/utils/ScrollUtil;->viewCanScroll(Landroid/view/View;ZIII)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private static isBetween(III)Z
    .locals 0

    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static viewCanScroll(Landroid/view/View;ZIII)Z
    .locals 9

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 28
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 31
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_2

    .line 34
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    add-int v7, p3, v3

    add-int v8, p4, v4

    .line 35
    invoke-static {v6, v7, v8, p2}, Lcom/voxel/simplesearchlauncher/utils/ScrollUtil;->insideViewAndCanScrollHorizontally(Landroid/view/View;III)Z

    move-result v6

    if-eqz v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    neg-int p1, p2

    .line 42
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v1
.end method
