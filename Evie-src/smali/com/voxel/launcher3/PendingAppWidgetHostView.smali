.class public Lcom/voxel/launcher3/PendingAppWidgetHostView;
.super Lcom/voxel/launcher3/LauncherAppWidgetHostView;
.source "PendingAppWidgetHostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sPreloaderTheme:Landroid/content/res/Resources$Theme;


# instance fields
.field private mCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mDefaultView:Landroid/view/View;

.field private mDrawable:Lcom/voxel/launcher3/PreloadIconDrawable;

.field private mDrawableSizeChanged:Z

.field private mIcon:Landroid/graphics/Bitmap;

.field private final mIconLookupIntent:Landroid/content/Intent;

.field private final mInfo:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mRect:Landroid/graphics/Rect;

.field private mSetupTextLayout:Landroid/text/Layout;

.field private final mStartState:I

.field private mTopCornerDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V
    .locals 2

    .line 59
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    .line 60
    iput-object p2, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    .line 61
    iget p1, p2, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    iput p1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mStartState:I

    .line 62
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p2, p2, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mIconLookupIntent:Landroid/content/Intent;

    .line 64
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    .line 65
    iget-object p1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 66
    iget-object p1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    .line 67
    invoke-direct {p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object p2

    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p2, v0}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object p2

    iget p2, p2, Lcom/voxel/launcher3/CellParams;->iconTextSizePx:I

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    .line 66
    invoke-static {v1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    const p1, 0x7f080152

    .line 68
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->setBackgroundResource(I)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->setWillNotDraw(Z)V

    return-void
.end method

.method private getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;
    .locals 1

    .line 241
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyState()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawable:Lcom/voxel/launcher3/PreloadIconDrawable;

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->installProgress:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/PreloadIconDrawable;->setLevel(I)Z

    :cond_0
    return-void
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->applyState()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    return-object v0
.end method

.method public isReadyForClickSetup()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReinflateRequired()Z
    .locals 2

    .line 96
    iget v0, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mStartState:I

    iget-object v1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    .line 152
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v2

    sget-object v3, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v2

    .line 164
    iget-object v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawable:Lcom/voxel/launcher3/PreloadIconDrawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 165
    iget-boolean v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    if-eqz v3, :cond_0

    .line 166
    iget v2, v2, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    iget-object v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawable:Lcom/voxel/launcher3/PreloadIconDrawable;

    invoke-virtual {v3}, Lcom/voxel/launcher3/PreloadIconDrawable;->getOutset()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 167
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 171
    iget-object v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v4, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 172
    iget-object v2, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawable:Lcom/voxel/launcher3/PreloadIconDrawable;

    invoke-virtual {v3}, Lcom/voxel/launcher3/PreloadIconDrawable;->getOutset()I

    move-result v3

    iget-object v5, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawable:Lcom/voxel/launcher3/PreloadIconDrawable;

    invoke-virtual {v5}, Lcom/voxel/launcher3/PreloadIconDrawable;->getOutset()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 173
    iget-object v2, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getWidth()I

    move-result v3

    iget-object v5, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getHeight()I

    move-result v5

    iget-object v6, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 174
    iget-object v2, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawable:Lcom/voxel/launcher3/PreloadIconDrawable;

    iget-object v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/PreloadIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 175
    iput-boolean v4, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 178
    :cond_0
    iget-object v2, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawable:Lcom/voxel/launcher3/PreloadIconDrawable;

    invoke-virtual {v2, v1}, Lcom/voxel/launcher3/PreloadIconDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 179
    :cond_1
    iget-object v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    .line 180
    iget-boolean v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    if-eqz v3, :cond_3

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    .line 182
    iget v3, v2, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getPaddingTop()I

    move-result v5

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getPaddingBottom()I

    move-result v6

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getPaddingLeft()I

    move-result v7

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getPaddingRight()I

    move-result v8

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getWidth()I

    move-result v9

    sub-int/2addr v9, v7

    sub-int/2addr v9, v8

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getHeight()I

    move-result v10

    sub-int/2addr v10, v5

    sub-int/2addr v10, v6

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 192
    new-instance v15, Landroid/text/StaticLayout;

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f12014e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v19, 0x1

    move-object v10, v15

    move v13, v9

    move-object v4, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v19

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v4, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    .line 195
    iget-object v4, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_2

    .line 197
    iget-object v4, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    .line 198
    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    sub-int v4, v18, v4

    .line 197
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 199
    iget-object v4, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 200
    iget-object v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getWidth()I

    move-result v4

    iget-object v5, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getHeight()I

    move-result v5

    iget-object v6, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v2, Lcom/voxel/launcher3/CellParams;->iconDrawablePaddingPx:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 200
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 204
    iget-object v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 207
    iget-object v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 208
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Lcom/voxel/launcher3/CellParams;->iconDrawablePaddingPx:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 211
    iput-object v2, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v7

    sub-int/2addr v2, v8

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v5

    sub-int/2addr v4, v6

    .line 212
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 215
    iget-object v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 216
    iget-object v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getWidth()I

    move-result v4

    iget-object v6, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getHeight()I

    move-result v6

    iget-object v8, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 217
    iget-object v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 219
    div-int/lit8 v2, v2, 0x2

    iget-object v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget-object v4, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v7

    .line 220
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 219
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 221
    iget-object v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    add-int v4, v7, v2

    add-int/2addr v2, v5

    invoke-virtual {v3, v7, v5, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v2, 0x0

    .line 224
    :goto_0
    iput-boolean v2, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 227
    :cond_3
    iget-object v2, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-nez v2, :cond_4

    .line 228
    iget-object v2, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 229
    iget-object v2, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 231
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 232
    iget-object v2, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 233
    iget-object v2, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 235
    iget-object v2, v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 0

    return-void
.end method

.method public updateIcon(Lcom/voxel/launcher3/IconCache;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mIconLookupIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/IconCache;->getIcon(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    return-void

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    .line 111
    iget-object p1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawable:Lcom/voxel/launcher3/PreloadIconDrawable;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/PreloadIconDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 113
    iput-object v0, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawable:Lcom/voxel/launcher3/PreloadIconDrawable;

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    .line 118
    invoke-virtual {p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080105

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 120
    new-instance p1, Lcom/voxel/launcher3/FastBitmapDrawable;

    iget-object v1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {p1, v1}, Lcom/voxel/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 122
    :cond_2
    sget-object p1, Lcom/voxel/launcher3/PendingAppWidgetHostView;->sPreloaderTheme:Landroid/content/res/Resources$Theme;

    if-nez p1, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sput-object p1, Lcom/voxel/launcher3/PendingAppWidgetHostView;->sPreloaderTheme:Landroid/content/res/Resources$Theme;

    .line 124
    sget-object p1, Lcom/voxel/launcher3/PendingAppWidgetHostView;->sPreloaderTheme:Landroid/content/res/Resources$Theme;

    const v1, 0x7f130100

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 127
    :cond_3
    iget-object p1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->createIconDrawable(Landroid/graphics/Bitmap;)Lcom/voxel/launcher3/FastBitmapDrawable;

    move-result-object p1

    .line 128
    new-instance v1, Lcom/voxel/launcher3/PreloadIconDrawable;

    sget-object v2, Lcom/voxel/launcher3/PendingAppWidgetHostView;->sPreloaderTheme:Landroid/content/res/Resources$Theme;

    invoke-direct {v1, p1, v2}, Lcom/voxel/launcher3/PreloadIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    iput-object v1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawable:Lcom/voxel/launcher3/PreloadIconDrawable;

    .line 129
    iget-object p1, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawable:Lcom/voxel/launcher3/PreloadIconDrawable;

    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/PreloadIconDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 130
    invoke-virtual {p0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->applyState()V

    .line 132
    :goto_0
    iput-boolean v0, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    :cond_4
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/voxel/launcher3/PendingAppWidgetHostView;->mDrawable:Lcom/voxel/launcher3/PreloadIconDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
