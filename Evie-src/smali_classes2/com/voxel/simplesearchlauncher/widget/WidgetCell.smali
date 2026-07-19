.class public Lcom/voxel/simplesearchlauncher/widget/WidgetCell;
.super Landroid/widget/FrameLayout;
.source "WidgetCell.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field cellSize:I

.field private mActiveRequest:Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

.field private mDimensionsFormatString:Ljava/lang/String;

.field private mInfo:Ljava/lang/Object;

.field private mLauncher:Lcom/voxel/launcher3/Launcher;

.field private mPresetPreviewHeight:I

.field private mPresetPreviewWidth:I

.field private mStylusEventHelper:Lcom/voxel/launcher3/StylusEventHelper;

.field private mWidgetDims:Landroid/widget/TextView;

.field private mWidgetImage:Landroid/widget/ImageView;

.field private mWidgetName:Landroid/widget/TextView;

.field private mWidgetPreviewLoader:Lcom/voxel/launcher3/WidgetPreviewLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 99
    check-cast p1, Lcom/voxel/launcher3/Launcher;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 100
    new-instance p1, Lcom/voxel/launcher3/StylusEventHelper;

    invoke-direct {p1, p0}, Lcom/voxel/launcher3/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mStylusEventHelper:Lcom/voxel/launcher3/StylusEventHelper;

    const p1, 0x7f1202d6

    .line 102
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mDimensionsFormatString:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->setContainerWidth()V

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->setWillNotDraw(Z)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->setClipToPadding(Z)V

    return-void
.end method

.method private getTagToString()Ljava/lang/String;
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    if-nez v0, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    return-object v0

    .line 232
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setContainerWidth()V
    .locals 2

    .line 110
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    .line 111
    iget v0, v0, Lcom/voxel/launcher3/DeviceProfile;->unscaledIconSizePx:I

    int-to-float v0, v0

    const v1, 0x40266666    # 2.6f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->cellSize:I

    .line 112
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070282

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mPresetPreviewWidth:I

    .line 113
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07027f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mPresetPreviewHeight:I

    return-void
.end method


# virtual methods
.method public applyFromAppWidgetProviderInfo(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;Lcom/voxel/launcher3/WidgetPreviewLoader;)V
    .locals 5

    .line 150
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    .line 151
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mInfo:Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->loadLabel(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget v1, p1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    int-to-float v1, v1

    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v2

    iget v2, v2, Lcom/voxel/launcher3/CellParams;->numColumns:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 155
    iget p1, p1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    int-to-float p1, p1

    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 156
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetPreviewLoader:Lcom/voxel/launcher3/WidgetPreviewLoader;

    return-void
.end method

.method public applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/voxel/launcher3/WidgetPreviewLoader;)V
    .locals 4

    .line 165
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mInfo:Ljava/lang/Object;

    .line 166
    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 167
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetPreviewLoader:Lcom/voxel/launcher3/WidgetPreviewLoader;

    return-void
.end method

.method public applyPreview(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 184
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x5a

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 133
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mActiveRequest:Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->cleanup()V

    .line 139
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mActiveRequest:Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    :cond_0
    return-void
.end method

.method public ensurePreview()V
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mActiveRequest:Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->getPreviewSize()[I

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetPreviewLoader:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mInfo:Ljava/lang/Object;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/voxel/launcher3/WidgetPreviewLoader;->getPreview(Ljava/lang/Object;IILcom/voxel/simplesearchlauncher/widget/WidgetCell;)Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mActiveRequest:Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    return-void
.end method

.method public getActualItemWidth()I
    .locals 4

    .line 209
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/ItemInfo;

    .line 210
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->getPreviewSize()[I

    move-result-object v1

    .line 211
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v2

    sget-object v3, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    .line 212
    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/CellParams;->getCellWidthPx()I

    move-result v2

    const/4 v3, 0x0

    .line 214
    aget v1, v1, v3

    iget v0, v0, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    mul-int v0, v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getPreviewSize()[I
    .locals 3

    const/4 v0, 0x2

    .line 173
    new-array v0, v0, [I

    .line 175
    iget v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mPresetPreviewWidth:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 176
    iget v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mPresetPreviewHeight:I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 118
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a02f8

    .line 120
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetImage:Landroid/widget/ImageView;

    const v0, 0x7f0a02f7

    .line 121
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    const v0, 0x7f0a02f6

    .line 122
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 204
    invoke-virtual {p0, p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 205
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->ensurePreview()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 219
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 220
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->mStylusEventHelper:Lcom/voxel/launcher3/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/voxel/launcher3/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
