.class public Lcom/voxel/launcher3/ShortcutAndWidgetContainer;
.super Landroid/view/ViewGroup;
.source "ShortcutAndWidgetContainer.java"


# instance fields
.field private mCellHeight:I

.field private mCellParams:Lcom/voxel/launcher3/CellParams;

.field private mCellWidth:I

.field private mCountX:I

.field private mCountY:I

.field private mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

.field private mHeightGap:I

.field private mInvertIfRtl:Z

.field private final mTmpCellXY:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 35
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    .line 54
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    .line 231
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 234
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 236
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 237
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method getCellContentHeight()I
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    .line 148
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v1, v1, Lcom/voxel/launcher3/CellParams;->cellContentHeightPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method getCellContentWidth()I
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getCellParams()Lcom/voxel/launcher3/CellParams;

    .line 143
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v1, v1, Lcom/voxel/launcher3/CellParams;->cellContentWidthPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getCellParams()Lcom/voxel/launcher3/CellParams;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mCellParams:Lcom/voxel/launcher3/CellParams;

    return-object v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6

    .line 84
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 86
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 89
    iget v4, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v3, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v3

    if-ge p2, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    return-object v0
.end method

.method public invertLayoutHorizontally()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 10

    .line 152
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    .line 153
    iget v2, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    .line 154
    iget v3, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 156
    iget-boolean v1, v8, Lcom/voxel/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    const/4 v9, 0x0

    if-nez v1, :cond_1

    .line 157
    iget v4, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mWidthGap:I

    iget v5, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mHeightGap:I

    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v6

    iget v7, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/voxel/launcher3/CellLayout$LayoutParams;->setup(IIIIZI)V

    .line 160
    instance-of v1, p1, Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    if-nez v1, :cond_2

    iget-boolean v1, v8, Lcom/voxel/launcher3/CellLayout$LayoutParams;->controlsOwnPadding:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 165
    iget v3, v8, Lcom/voxel/launcher3/CellLayout$LayoutParams;->height:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 166
    iget v0, v0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 167
    invoke-virtual {p1, v0, v1, v0, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 170
    :cond_1
    iput v9, v8, Lcom/voxel/launcher3/CellLayout$LayoutParams;->x:I

    .line 171
    iput v9, v8, Lcom/voxel/launcher3/CellLayout$LayoutParams;->y:I

    .line 172
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getMeasuredWidth()I

    move-result v0

    iput v0, v8, Lcom/voxel/launcher3/CellLayout$LayoutParams;->width:I

    .line 173
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v0

    iput v0, v8, Lcom/voxel/launcher3/CellLayout$LayoutParams;->height:I

    .line 175
    :cond_2
    :goto_0
    iget v0, v8, Lcom/voxel/launcher3/CellLayout$LayoutParams;->width:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 176
    iget v2, v8, Lcom/voxel/launcher3/CellLayout$LayoutParams;->height:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 178
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 191
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    .line 193
    invoke-virtual {p0, p3}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 194
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_0

    .line 195
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 196
    iget v0, p5, Lcom/voxel/launcher3/CellLayout$LayoutParams;->x:I

    .line 197
    iget v1, p5, Lcom/voxel/launcher3/CellLayout$LayoutParams;->y:I

    .line 198
    iget v2, p5, Lcom/voxel/launcher3/CellLayout$LayoutParams;->width:I

    add-int/2addr v2, v0

    iget v3, p5, Lcom/voxel/launcher3/CellLayout$LayoutParams;->height:I

    add-int/2addr v3, v1

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 200
    iget-boolean p4, p5, Lcom/voxel/launcher3/CellLayout$LayoutParams;->dropped:Z

    if-eqz p4, :cond_0

    .line 201
    iput-boolean p2, p5, Lcom/voxel/launcher3/CellLayout$LayoutParams;->dropped:Z

    .line 203
    iget-object p4, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 204
    invoke-virtual {p0, p4}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getLocationOnScreen([I)V

    .line 205
    iget-object v2, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const-string v4, "android.home.drop"

    aget v5, p4, p2

    add-int/2addr v5, v0

    iget v0, p5, Lcom/voxel/launcher3/CellLayout$LayoutParams;->width:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v5, v0

    const/4 v0, 0x1

    aget p4, p4, v0

    add-int/2addr p4, v1

    iget p5, p5, Lcom/voxel/launcher3/CellLayout$LayoutParams;->height:I

    div-int/lit8 p5, p5, 0x2

    add-int v6, p4, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 117
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 120
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setMeasuredDimension(II)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 124
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 125
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 126
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 221
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 223
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 224
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 225
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public setCellDimensions(IIIIII)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    .line 76
    iput p2, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    .line 77
    iput p3, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mWidthGap:I

    .line 78
    iput p4, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mHeightGap:I

    .line 79
    iput p5, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    .line 80
    iput p6, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    return-void
.end method

.method public setCellParams(Lcom/voxel/launcher3/CellParams;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 279
    iput-object p1, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mCellParams:Lcom/voxel/launcher3/CellParams;

    return-void

    .line 277
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cell params must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4

    .line 243
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 245
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 246
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 248
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 249
    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0

    .line 256
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public setDeviceProfile(Lcom/voxel/launcher3/DeviceProfile;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 268
    iput-object p1, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    return-void

    .line 266
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Device profile must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInvertIfRtl(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    return-void
.end method

.method public setupLp(Lcom/voxel/launcher3/CellLayout$LayoutParams;)V
    .locals 7

    .line 132
    iget v1, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v2, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    iget v3, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mWidthGap:I

    iget v4, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mHeightGap:I

    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v5

    iget v6, p0, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout$LayoutParams;->setup(IIIIZI)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
