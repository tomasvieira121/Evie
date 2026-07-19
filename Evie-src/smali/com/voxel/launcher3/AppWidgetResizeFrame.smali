.class public Lcom/voxel/launcher3/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"


# static fields
.field private static mTmpRect:Landroid/graphics/Rect;


# instance fields
.field final BACKGROUND_PADDING:I

.field final DIMMED_HANDLE_ALPHA:F

.field final RESIZE_THRESHOLD:F

.field final SNAP_DURATION:I

.field private mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field private mBottomBorderActive:Z

.field private mBottomHandle:Landroid/widget/ImageView;

.field private mBottomTouchRegionAdjustment:I

.field private mCellLayout:Lcom/voxel/launcher3/CellLayout;

.field private mDeltaX:I

.field private mDeltaXAddOn:I

.field private mDeltaY:I

.field private mDeltaYAddOn:I

.field mDirectionVector:[I

.field private mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

.field mLastDirectionVector:[I

.field private mLauncher:Lcom/voxel/launcher3/Launcher;

.field private mLeftBorderActive:Z

.field private mLeftHandle:Landroid/widget/ImageView;

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private mResizeMode:I

.field private mRightBorderActive:Z

.field private mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field mTmpPt:[I

.field private mTopBorderActive:Z

.field private mTopHandle:Landroid/widget/ImageView;

.field private mTopTouchRegionAdjustment:I

.field private mTouchTargetWidth:I

.field private mWidgetPaddingBottom:I

.field private mWidgetPaddingLeft:I

.field private mWidgetPaddingRight:I

.field private mWidgetPaddingTop:I

.field private mWidgetView:Lcom/voxel/launcher3/LauncherAppWidgetHostView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/voxel/launcher3/LauncherAppWidgetHostView;Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/dragndrop/DragLayer;)V
    .locals 3

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 56
    iput v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    const/4 v1, 0x2

    .line 58
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    .line 59
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    .line 60
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTmpPt:[I

    const/16 v2, 0x96

    .line 62
    iput v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->SNAP_DURATION:I

    const/16 v2, 0x18

    .line 63
    iput v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->BACKGROUND_PADDING:I

    const/4 v2, 0x0

    .line 64
    iput v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->DIMMED_HANDLE_ALPHA:F

    const v2, 0x3f28f5c3    # 0.66f

    .line 65
    iput v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->RESIZE_THRESHOLD:F

    .line 75
    move-object v2, p1

    check-cast v2, Lcom/voxel/launcher3/Launcher;

    iput-object v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 76
    iput-object p3, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    .line 77
    iput-object p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    const/4 p3, 0x3

    .line 78
    iput p3, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    .line 79
    iput-object p4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    const/4 p3, 0x1

    .line 85
    iput p3, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    .line 86
    iput p3, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    const p4, 0x7f0801c5

    .line 89
    invoke-virtual {p0, p4}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->setBackgroundResource(I)V

    .line 90
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->setPadding(IIII)V

    .line 93
    new-instance p4, Landroid/widget/ImageView;

    invoke-direct {p4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    .line 94
    iget-object p4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const v0, 0x7f0801c7

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/16 v2, 0x13

    invoke-direct {p4, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 97
    iget-object v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, p4}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance p4, Landroid/widget/ImageView;

    invoke-direct {p4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    .line 100
    iget-object p4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const v2, 0x7f0801c8

    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x15

    invoke-direct {p4, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 103
    iget-object v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, p4}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance p4, Landroid/widget/ImageView;

    invoke-direct {p4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    .line 106
    iget-object p4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const v2, 0x7f0801c9

    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x31

    invoke-direct {p4, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 109
    iget-object v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, p4}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance p4, Landroid/widget/ImageView;

    invoke-direct {p4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    .line 112
    iget-object p4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const v2, 0x7f0801c6

    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x51

    invoke-direct {p4, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 115
    iget-object v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p4}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 p4, 0x0

    .line 117
    invoke-static {p1, p2, p4}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 119
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    .line 120
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iput p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    .line 121
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iput p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    .line 122
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    .line 124
    iget p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    const/16 p2, 0x8

    if-ne p1, p3, :cond_0

    .line 125
    iget-object p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41c00000    # 24.0f

    mul-float p1, p1, p2

    float-to-double p1, p1

    .line 133
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 134
    iget p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 139
    iget-object p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    iget-object p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    return-void
.end method

.method public static getWidgetSizeRanges(Lcom/voxel/launcher3/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8

    if-nez p3, :cond_0

    .line 347
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    const/4 v0, 0x0

    .line 349
    invoke-static {p0, v0}, Lcom/voxel/launcher3/Workspace;->getCellLayoutMetrics(Lcom/voxel/launcher3/Launcher;I)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    .line 350
    invoke-static {p0, v1}, Lcom/voxel/launcher3/Workspace;->getCellLayoutMetrics(Lcom/voxel/launcher3/Launcher;I)Landroid/graphics/Rect;

    move-result-object v1

    .line 351
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 354
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 355
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 356
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 357
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    mul-int v2, v2, p1

    add-int/lit8 v5, p1, -0x1

    mul-int v4, v4, v5

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, p0

    float-to-int v2, v2

    mul-int v3, v3, p2

    add-int/lit8 v4, p2, -0x1

    mul-int v0, v0, v4

    add-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v0, p0

    float-to-int v0, v0

    .line 362
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 363
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 364
    iget v7, v1, Landroid/graphics/Rect;->right:I

    .line 365
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    mul-int p1, p1, v3

    mul-int v5, v5, v7

    add-int/2addr p1, v5

    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-int p1, p1

    mul-int p2, p2, v6

    mul-int v4, v4, v1

    add-int/2addr p2, v4

    int-to-float p2, p2

    div-float/2addr p2, p0

    float-to-int p0, p2

    .line 368
    invoke-virtual {p3, p1, v0, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p3
.end method

.method public static synthetic lambda$onTouchUp$0(Lcom/voxel/launcher3/AppWidgetResizeFrame;)V
    .locals 1

    const/4 v0, 0x1

    .line 390
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V

    return-void
.end method

.method public static synthetic lambda$snapToWidget$1(Lcom/voxel/launcher3/AppWidgetResizeFrame;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 445
    invoke-virtual {p0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->requestLayout()V

    return-void
.end method

.method private resizeWidgetIfNeeded(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 225
    iget-object v1, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/voxel/launcher3/CellLayout;->getCellWidth()I

    move-result v1

    iget-object v2, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/voxel/launcher3/CellLayout;->getWidthGap()I

    move-result v2

    add-int/2addr v1, v2

    .line 226
    iget-object v2, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/voxel/launcher3/CellLayout;->getCellHeight()I

    move-result v2

    iget-object v3, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/voxel/launcher3/CellLayout;->getHeightGap()I

    move-result v3

    add-int/2addr v2, v3

    .line 228
    iget v3, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    iget v4, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaXAddOn:I

    add-int/2addr v3, v4

    .line 229
    iget v4, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    iget v5, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaYAddOn:I

    add-int/2addr v4, v5

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v3, v3, v5

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 231
    iget v1, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    int-to-float v1, v4

    mul-float v1, v1, v5

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 232
    iget v2, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 239
    iget-object v2, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v2

    .line 240
    iget-object v4, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v4}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v4

    .line 242
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f28f5c3    # 0.66f

    const/4 v7, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 243
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 245
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 246
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez p1, :cond_2

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    return-void

    .line 252
    :cond_2
    iget-object v5, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v5}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 254
    iget v5, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 255
    iget v6, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 256
    iget-boolean v8, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v8, :cond_3

    iget v8, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_2

    :cond_3
    iget v8, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 257
    :goto_2
    iget-boolean v10, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v10, :cond_4

    iget v10, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_3

    :cond_4
    iget v10, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 264
    :goto_3
    iget-boolean v11, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v11, :cond_5

    neg-int v2, v8

    .line 265
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 266
    iget v11, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v12, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v11, v12

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v3, v3, -0x1

    .line 268
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 269
    iget v11, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v12, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v11, v12

    neg-int v11, v11

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    neg-int v11, v3

    goto :goto_4

    .line 272
    :cond_5
    iget-boolean v11, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v11, :cond_6

    add-int v11, v8, v5

    sub-int/2addr v2, v11

    .line 273
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 274
    iget v3, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v11, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v3, v11

    neg-int v3, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v2

    move v11, v3

    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 278
    :goto_4
    iget-boolean v12, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v12, :cond_7

    neg-int v4, v10

    .line 279
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 280
    iget v12, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iget v13, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v12, v13

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v1, v1, -0x1

    .line 282
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 283
    iget v12, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iget v13, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v12, v13

    neg-int v12, v12

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v12, v1

    goto :goto_5

    .line 285
    :cond_7
    iget-boolean v12, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v12, :cond_8

    add-int v12, v10, v6

    sub-int/2addr v4, v12

    .line 286
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 287
    iget v4, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iget v12, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v4, v12

    neg-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v12, v1

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 291
    :goto_5
    iget-object v13, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    aput v7, v13, v7

    const/4 v14, 0x1

    .line 292
    aput v7, v13, v14

    .line 294
    iget-boolean v13, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    const/4 v15, -0x1

    if-nez v13, :cond_a

    iget-boolean v13, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v13, :cond_9

    goto :goto_6

    :cond_9
    move v13, v5

    goto :goto_8

    :cond_a
    :goto_6
    add-int/2addr v5, v3

    add-int/2addr v8, v2

    if-eqz v11, :cond_c

    .line 298
    iget-object v2, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-boolean v3, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v3, :cond_b

    const/4 v3, -0x1

    goto :goto_7

    :cond_b
    const/4 v3, 0x1

    :goto_7
    aput v3, v2, v7

    :cond_c
    move v13, v5

    .line 302
    :goto_8
    iget-boolean v2, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v2, :cond_e

    iget-boolean v2, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v2, :cond_d

    goto :goto_9

    :cond_d
    move v15, v10

    move v10, v6

    goto :goto_b

    :cond_e
    :goto_9
    add-int/2addr v6, v1

    add-int/2addr v10, v4

    if-eqz v12, :cond_10

    .line 306
    iget-object v1, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-boolean v2, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v2, :cond_f

    goto :goto_a

    :cond_f
    const/4 v15, 0x1

    :goto_a
    aput v15, v1, v14

    :cond_10
    move v15, v10

    move v10, v6

    :goto_b
    if-nez p1, :cond_11

    if-nez v12, :cond_11

    if-nez v11, :cond_11

    return-void

    :cond_11
    if-eqz p1, :cond_12

    .line 315
    iget-object v1, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-object v2, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    aget v3, v2, v7

    aput v3, v1, v7

    .line 316
    aget v2, v2, v14

    aput v2, v1, v14

    goto :goto_c

    .line 318
    :cond_12
    iget-object v1, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    iget-object v2, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    aget v3, v2, v7

    aput v3, v1, v7

    .line 319
    aget v2, v2, v14

    aput v2, v1, v14

    .line 322
    :goto_c
    iget-object v1, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    iget-object v6, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    iget-object v7, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    move v2, v8

    move v3, v15

    move v4, v13

    move v5, v10

    move v14, v8

    move/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/voxel/launcher3/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 324
    iput v14, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 325
    iput v15, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 326
    iput v13, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 327
    iput v10, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 328
    iget v1, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    .line 329
    iget v1, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v1, v11

    iput v1, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    if-nez p1, :cond_13

    .line 331
    iget-object v1, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    iget-object v2, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1, v2, v13, v10}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/voxel/launcher3/Launcher;II)V

    .line 334
    :cond_13
    iget-object v1, v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->requestLayout()V

    return-void
.end method

.method public static updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/voxel/launcher3/Launcher;II)V
    .locals 6

    .line 340
    sget-object v0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, v0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->getWidgetSizeRanges(Lcom/voxel/launcher3/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 341
    sget-object p1, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sget-object p1, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sget-object p1, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sget-object p1, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    return-void
.end method

.method private visualizeResizeForDelta(IIZ)V
    .locals 1

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->updateDeltas(II)V

    .line 201
    invoke-virtual {p0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;

    .line 203
    iget-boolean p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz p2, :cond_0

    .line 204
    iget p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineX:I

    iget v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    .line 205
    iget p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    goto :goto_0

    .line 206
    :cond_0
    iget-boolean p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz p2, :cond_1

    .line 207
    iget p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    .line 210
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz p2, :cond_2

    .line 211
    iget p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineY:I

    iget v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    .line 212
    iget p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    goto :goto_1

    .line 213
    :cond_2
    iget-boolean p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz p2, :cond_3

    .line 214
    iget p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    .line 217
    :cond_3
    :goto_1
    invoke-direct {p0, p3}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->requestLayout()V

    return-void
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .locals 6

    .line 143
    iget v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    iget v3, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 146
    :goto_1
    iget v4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p1, v4, :cond_2

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 147
    invoke-virtual {p0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v4, v5

    if-le p1, v4, :cond_3

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 148
    iget p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    iget v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    add-int/2addr p1, v0

    if-ge p2, p1, :cond_4

    if-eqz v3, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    iput-boolean p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 149
    invoke-virtual {p0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    add-int/2addr p1, v0

    if-le p2, p1, :cond_5

    if-eqz v3, :cond_5

    const/4 p1, 0x1

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    :goto_5
    iput-boolean p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 152
    iget-boolean p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    .line 155
    :cond_7
    :goto_6
    invoke-virtual {p0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineWidth:I

    .line 156
    invoke-virtual {p0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineHeight:I

    .line 157
    invoke-virtual {p0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineX:I

    .line 158
    invoke-virtual {p0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->getTop()I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineY:I

    if-eqz v1, :cond_c

    .line 162
    iget-object p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_8

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_8
    const/4 p2, 0x0

    :goto_7
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 163
    iget-object p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz p2, :cond_9

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_9
    const/4 p2, 0x0

    :goto_8
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 164
    iget-object p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz p2, :cond_a

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_a
    const/4 p2, 0x0

    :goto_9
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 165
    iget-object p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz p2, :cond_b

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_c
    return v1
.end method

.method public commitResize()V
    .locals 1

    const/4 v0, 0x1

    .line 377
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 378
    invoke-virtual {p0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->requestLayout()V

    return-void
.end method

.method public onTouchUp()V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getCellWidth()I

    move-result v0

    iget-object v1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/voxel/launcher3/CellLayout;->getWidthGap()I

    move-result v1

    add-int/2addr v0, v1

    .line 383
    iget-object v1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/voxel/launcher3/CellLayout;->getCellHeight()I

    move-result v1

    iget-object v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/voxel/launcher3/CellLayout;->getHeightGap()I

    move-result v2

    add-int/2addr v1, v2

    .line 385
    iget v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    mul-int v2, v2, v0

    iput v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaXAddOn:I

    .line 386
    iget v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    mul-int v0, v0, v1

    iput v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaYAddOn:I

    const/4 v0, 0x0

    .line 387
    iput v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    .line 388
    iput v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    .line 390
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$AppWidgetResizeFrame$r10t0UflCLHX2a8SmLlyNZbTFL8;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/-$$Lambda$AppWidgetResizeFrame$r10t0UflCLHX2a8SmLlyNZbTFL8;-><init>(Lcom/voxel/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public snapToWidget(Z)V
    .locals 12

    .line 394
    invoke-virtual {p0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;

    .line 395
    iget-object v1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    sub-int/2addr v1, v2

    .line 397
    iget-object v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    sub-int/2addr v2, v4

    .line 400
    iget-object v4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTmpPt:[I

    iget-object v5, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v5}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->getLeft()I

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 401
    iget-object v4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTmpPt:[I

    iget-object v5, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v5}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->getTop()I

    move-result v5

    const/4 v7, 0x1

    aput v5, v4, v7

    .line 402
    iget-object v4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    iget-object v5, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v5}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    iget-object v8, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTmpPt:[I

    invoke-virtual {v4, v5, v8}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 404
    iget-object v4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTmpPt:[I

    aget v5, v4, v6

    iget v8, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v5, v8

    iget v9, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    add-int/2addr v5, v9

    .line 405
    aget v4, v4, v7

    sub-int/2addr v4, v8

    iget v8, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    add-int/2addr v4, v8

    if-gez v4, :cond_0

    neg-int v8, v4

    .line 412
    iput v8, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    goto :goto_0

    .line 414
    :cond_0
    iput v6, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    :goto_0
    add-int v8, v4, v2

    .line 416
    iget-object v9, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {v9}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_1

    .line 418
    iget-object v9, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {v9}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    neg-int v8, v8

    iput v8, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    goto :goto_1

    .line 420
    :cond_1
    iput v6, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    :goto_1
    const/high16 v8, 0x3f800000    # 1.0f

    if-nez p1, :cond_2

    .line 424
    iput v1, v0, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    .line 425
    iput v2, v0, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    .line 426
    iput v5, v0, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    .line 427
    iput v4, v0, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    .line 428
    iget-object p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 429
    iget-object p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 430
    iget-object p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 431
    iget-object p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 432
    invoke-virtual {p0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->requestLayout()V

    goto/16 :goto_3

    :cond_2
    const-string p1, "width"

    .line 434
    new-array v9, v3, [I

    iget v10, v0, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    aput v10, v9, v6

    aput v1, v9, v7

    invoke-static {p1, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const-string v1, "height"

    .line 435
    new-array v9, v3, [I

    iget v10, v0, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    aput v10, v9, v6

    aput v2, v9, v7

    invoke-static {v1, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v2, "x"

    .line 437
    new-array v9, v3, [I

    iget v10, v0, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    aput v10, v9, v6

    aput v5, v9, v7

    invoke-static {v2, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v5, "y"

    .line 438
    new-array v9, v3, [I

    iget v10, v0, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    aput v10, v9, v6

    aput v4, v9, v7

    invoke-static {v5, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v5, 0x4

    .line 439
    new-array v9, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v9, v6

    aput-object v1, v9, v7

    aput-object v2, v9, v3

    const/4 p1, 0x3

    aput-object v4, v9, p1

    .line 440
    invoke-static {v0, p0, v9}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v4, v7, [F

    aput v8, v4, v6

    invoke-static {v1, v2, v4}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 442
    iget-object v2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const-string v4, "alpha"

    new-array v9, v7, [F

    aput v8, v9, v6

    invoke-static {v2, v4, v9}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 443
    iget-object v4, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const-string v9, "alpha"

    new-array v10, v7, [F

    aput v8, v10, v6

    invoke-static {v4, v9, v10}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 444
    iget-object v9, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const-string v10, "alpha"

    new-array v11, v7, [F

    aput v8, v11, v6

    invoke-static {v9, v10, v11}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 445
    new-instance v9, Lcom/voxel/launcher3/-$$Lambda$AppWidgetResizeFrame$9WTXpKSx6vOzCB2QzAav9NkwOhk;

    invoke-direct {v9, p0}, Lcom/voxel/launcher3/-$$Lambda$AppWidgetResizeFrame$9WTXpKSx6vOzCB2QzAav9NkwOhk;-><init>(Lcom/voxel/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 446
    invoke-static {}, Lcom/voxel/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v9

    .line 447
    iget v10, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mResizeMode:I

    if-ne v10, v3, :cond_3

    .line 448
    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v0, p1, v6

    aput-object v4, p1, v7

    aput-object v8, p1, v3

    invoke-virtual {v9, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_3
    if-ne v10, v7, :cond_4

    .line 450
    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v0, p1, v6

    aput-object v1, p1, v7

    aput-object v2, p1, v3

    invoke-virtual {v9, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_4
    const/4 v10, 0x5

    .line 452
    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v0, v10, v6

    aput-object v1, v10, v7

    aput-object v2, v10, v3

    aput-object v4, v10, p1

    aput-object v8, v10, v5

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_2
    const-wide/16 v0, 0x96

    .line 455
    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 456
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    :goto_3
    return-void
.end method

.method public updateDeltas(II)V
    .locals 2

    .line 175
    iget-boolean v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v0, :cond_0

    .line 176
    iput p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    .line 177
    iget p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    goto :goto_0

    .line 178
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v0, :cond_1

    .line 179
    iput p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    .line 180
    iget p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineWidth:I

    neg-int p1, p1

    iget v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    .line 183
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz p1, :cond_2

    .line 184
    iget p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineY:I

    neg-int p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    .line 185
    iget p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineHeight:I

    iget p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    goto :goto_1

    .line 186
    :cond_2
    iget-boolean p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz p1, :cond_3

    .line 187
    iget-object p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineY:I

    iget v1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    .line 188
    iget p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mBaselineHeight:I

    neg-int p1, p1

    iget p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    :cond_3
    :goto_1
    return-void
.end method

.method public visualizeResizeForDelta(II)V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->visualizeResizeForDelta(IIZ)V

    return-void
.end method
