.class public Lcom/voxel/launcher3/util/FocusLogic;
.super Ljava/lang/Object;
.source "FocusLogic.java"


# direct methods
.method private static createFullMatrix(II)[[I
    .locals 3

    .line 145
    filled-new-array {p0, p1}, [I

    move-result-object p1

    const-class v0, I

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 148
    aget-object v1, p1, v0

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static createSparseMatrix(Lcom/voxel/launcher3/CellLayout;)[[I
    .locals 6

    .line 159
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v1

    .line 161
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result p0

    .line 162
    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v2

    .line 164
    invoke-static {v1, p0}, Lcom/voxel/launcher3/util/FocusLogic;->createFullMatrix(II)[[I

    move-result-object p0

    const/4 v3, 0x0

    .line 167
    :goto_0
    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 168
    invoke-virtual {v0, v3}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v4, v4, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 169
    invoke-virtual {v0, v3}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v5, v5, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eqz v2, :cond_0

    sub-int v4, v1, v4

    add-int/lit8 v4, v4, -0x1

    .line 170
    :cond_0
    aget-object v4, p0, v4

    aput v3, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static createSparseMatrix(Lcom/voxel/launcher3/CellLayout;II)[[I
    .locals 5

    .line 250
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 252
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result p0

    invoke-static {v1, p0}, Lcom/voxel/launcher3/util/FocusLogic;->createFullMatrix(II)[[I

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 255
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 256
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v3, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 257
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v4, v4, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    if-gez p1, :cond_0

    sub-int/2addr v3, p1

    .line 259
    aget-object v3, p0, v3

    aput v2, v3, v4

    goto :goto_1

    .line 261
    :cond_0
    aget-object v3, p0, v3

    aput v2, v3, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    if-gez p1, :cond_2

    .line 266
    aget-object p1, p0, v1

    aput v0, p1, p2

    goto :goto_2

    .line 268
    :cond_2
    aget-object p1, p0, p1

    aput v0, p1, p2

    :goto_2
    return-object p0
.end method

.method public static createSparseMatrix(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/CellLayout;ZIZ)[[I
    .locals 7

    .line 187
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 188
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v2

    .line 193
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v3

    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result p1

    add-int/2addr v3, p1

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v2

    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result p1

    add-int/2addr v2, p1

    .line 196
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v3

    .line 198
    :goto_0
    invoke-static {v2, v3}, Lcom/voxel/launcher3/util/FocusLogic;->createFullMatrix(II)[[I

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 201
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 202
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v4, v4, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 203
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v5, v5, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 204
    aget-object v4, p1, v4

    aput v3, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    xor-int/lit8 v4, p4, 0x1

    if-lt v3, v4, :cond_9

    const/4 v4, -0x1

    if-eqz p2, :cond_5

    .line 215
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v5, v5, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    if-eqz p4, :cond_2

    if-ge v5, p3, :cond_4

    :cond_2
    if-nez p4, :cond_3

    if-le v5, p3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_3
    add-int/2addr v5, v4

    .line 220
    aget-object v4, p1, v5

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/2addr v6, v3

    aput v6, v4, v5

    goto :goto_5

    .line 223
    :cond_5
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v5, v5, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eqz p4, :cond_6

    if-ge v5, p3, :cond_8

    :cond_6
    if-nez p4, :cond_7

    if-le v5, p3, :cond_7

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    .line 228
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v6

    aget-object v6, p1, v6

    add-int/2addr v5, v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/2addr v4, v3

    aput v4, v6, v5

    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_9
    return-object p1
.end method

.method public static getAdjacentChildInNextPage(Lcom/voxel/launcher3/ShortcutAndWidgetContainer;Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .line 497
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget p1, p1, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, -0x9

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 499
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v2

    xor-int/2addr p2, v2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 500
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {p2}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result p2

    add-int/lit8 v1, p2, -0x1

    :goto_1
    if-ltz v1, :cond_4

    move p2, p1

    :goto_2
    if-ltz p2, :cond_3

    .line 504
    invoke-virtual {p0, v1, p2}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static handleDpadHorizontal(III[[II)I
    .locals 7

    if-eqz p3, :cond_9

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_0
    if-ge v2, p1, :cond_2

    move v5, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_1

    .line 302
    aget-object v6, p3, v2

    aget v6, v6, v3

    if-ne v6, p0, :cond_0

    move v4, v2

    move v5, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v4, v5

    goto :goto_0

    :cond_2
    add-int p0, v3, p4

    const/4 v0, -0x1

    :goto_2
    if-ltz p0, :cond_4

    if-ge p0, p1, :cond_4

    .line 315
    invoke-static {p0, v4, p1, p2, p3}, Lcom/voxel/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v0

    if-eq v0, v1, :cond_3

    return v0

    :cond_3
    add-int/2addr p0, p4

    goto :goto_2

    :cond_4
    const/4 p0, 0x1

    :goto_3
    if-ge p0, p2, :cond_8

    mul-int v2, p0, p4

    add-int v5, v4, v2

    sub-int v6, v4, v2

    add-int/2addr v2, v3

    :goto_4
    if-ltz v2, :cond_7

    if-ge v2, p1, :cond_7

    .line 329
    invoke-static {v2, v5, p1, p2, p3}, Lcom/voxel/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v0

    if-eq v0, v1, :cond_5

    return v0

    .line 332
    :cond_5
    invoke-static {v2, v6, p1, p2, p3}, Lcom/voxel/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v0

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    add-int/2addr v2, p4

    goto :goto_4

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_8
    return v0

    .line 293
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Dpad navigation requires a matrix."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    return-void
.end method

.method private static handleDpadVertical(III[[II)I
    .locals 7

    if-eqz p3, :cond_9

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_0
    if-ge v2, p1, :cond_2

    move v5, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_1

    .line 362
    aget-object v6, p3, v2

    aget v6, v6, v3

    if-ne v6, p0, :cond_0

    move v5, v2

    move v4, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v4, v5

    goto :goto_0

    :cond_2
    add-int p0, v3, p4

    const/4 v0, -0x1

    :goto_2
    if-ltz p0, :cond_4

    if-ge p0, p2, :cond_4

    if-ltz p0, :cond_4

    .line 376
    invoke-static {v4, p0, p1, p2, p3}, Lcom/voxel/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v0

    if-eq v0, v1, :cond_3

    return v0

    :cond_3
    add-int/2addr p0, p4

    goto :goto_2

    :cond_4
    const/4 p0, 0x1

    :goto_3
    if-ge p0, p1, :cond_8

    mul-int v2, p0, p4

    add-int v5, v4, v2

    sub-int v6, v4, v2

    add-int/2addr v2, v3

    :goto_4
    if-ltz v2, :cond_7

    if-ge v2, p2, :cond_7

    .line 390
    invoke-static {v5, v2, p1, p2, p3}, Lcom/voxel/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v0

    if-eq v0, v1, :cond_5

    return v0

    .line 393
    :cond_5
    invoke-static {v6, v2, p1, p2, p3}, Lcom/voxel/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v0

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    add-int/2addr v2, p4

    goto :goto_4

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_8
    return v0

    .line 354
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Dpad navigation requires a matrix."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    return-void
.end method

.method public static handleKeyEvent(III[[IIIIZ)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 118
    :sswitch_0
    invoke-static {}, Lcom/voxel/launcher3/util/FocusLogic;->handleMoveEnd()I

    move-result v1

    goto :goto_0

    .line 115
    :sswitch_1
    invoke-static {}, Lcom/voxel/launcher3/util/FocusLogic;->handleMoveHome()I

    move-result v1

    goto :goto_0

    .line 121
    :sswitch_2
    invoke-static {p5, p6}, Lcom/voxel/launcher3/util/FocusLogic;->handlePageDown(II)I

    move-result v1

    goto :goto_0

    .line 124
    :sswitch_3
    invoke-static {p5}, Lcom/voxel/launcher3/util/FocusLogic;->handlePageUp(I)I

    move-result v1

    goto :goto_0

    .line 101
    :sswitch_4
    invoke-static {p4, p1, p2, p3, v0}, Lcom/voxel/launcher3/util/FocusLogic;->handleDpadHorizontal(III[[II)I

    move-result p0

    if-eqz p7, :cond_0

    if-ne p0, v1, :cond_0

    sub-int/2addr p6, v0

    if-ge p5, p6, :cond_0

    const/16 v1, -0x9

    goto :goto_0

    :cond_0
    if-eqz p7, :cond_2

    if-ne p0, v1, :cond_2

    if-lez p5, :cond_2

    const/4 v1, -0x5

    goto :goto_0

    .line 93
    :sswitch_5
    invoke-static {p4, p1, p2, p3, v1}, Lcom/voxel/launcher3/util/FocusLogic;->handleDpadHorizontal(III[[II)I

    move-result p0

    if-eqz p7, :cond_1

    if-ne p0, v1, :cond_1

    if-lez p5, :cond_1

    const/4 v1, -0x2

    goto :goto_0

    :cond_1
    if-eqz p7, :cond_2

    if-ne p0, v1, :cond_2

    sub-int/2addr p6, v0

    if-ge p5, p6, :cond_2

    const/16 v1, -0xa

    goto :goto_0

    :cond_2
    move v1, p0

    goto :goto_0

    .line 109
    :sswitch_6
    invoke-static {p4, p1, p2, p3, v0}, Lcom/voxel/launcher3/util/FocusLogic;->handleDpadVertical(III[[II)I

    move-result v1

    goto :goto_0

    .line 112
    :sswitch_7
    invoke-static {p4, p1, p2, p3, v1}, Lcom/voxel/launcher3/util/FocusLogic;->handleDpadVertical(III[[II)I

    move-result v1

    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_7
        0x14 -> :sswitch_6
        0x15 -> :sswitch_5
        0x16 -> :sswitch_4
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private static handleMoveEnd()I
    .locals 1

    const/4 v0, -0x7

    return v0
.end method

.method private static handleMoveHome()I
    .locals 1

    const/4 v0, -0x6

    return v0
.end method

.method private static handlePageDown(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-ge p0, p1, :cond_0

    const/4 p0, -0x8

    return p0

    :cond_0
    const/4 p0, -0x7

    return p0
.end method

.method private static handlePageUp(I)I
    .locals 0

    if-lez p0, :cond_0

    const/4 p0, -0x3

    return p0

    :cond_0
    const/4 p0, -0x6

    return p0
.end method

.method private static inspectMatrix(IIII[[I)I
    .locals 0

    .line 434
    invoke-static {p0, p1, p2, p3}, Lcom/voxel/launcher3/util/FocusLogic;->isValid(IIII)Z

    move-result p2

    const/4 p3, -0x1

    if-eqz p2, :cond_0

    .line 435
    aget-object p2, p4, p0

    aget p2, p2, p1

    if-eq p2, p3, :cond_0

    .line 436
    aget-object p0, p4, p0

    aget p0, p0, p1

    return p0

    :cond_0
    return p3
.end method

.method private static isValid(IIII)Z
    .locals 0

    if-ltz p0, :cond_0

    if-ge p0, p2, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shouldConsume(I)Z
    .locals 1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x43

    if-eq p0, v0, :cond_1

    const/16 v0, 0x70

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
