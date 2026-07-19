.class public Lcom/voxel/launcher3/DeviceProfile;
.super Ljava/lang/Object;
.source "DeviceProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/DeviceProfile$ParamType;,
        Lcom/voxel/launcher3/DeviceProfile$DeviceProfileCallbacks;
    }
.end annotation


# static fields
.field private static MAX_ICON_TEXT_SCALE:F = 1.5f

.field private static MIN_ICON_TEXT_SCALE:F = 0.75f


# instance fields
.field public allAppsButtonVisualSize:I

.field public allAppsCellPaddingPx:I

.field public availableHeightPx:I

.field public availableWidthPx:I

.field private cellParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/voxel/launcher3/DeviceProfile$ParamType;",
            "Lcom/voxel/launcher3/CellParams;",
            ">;"
        }
    .end annotation
.end field

.field public defaultLayoutId:I

.field public defaultNoAllAppsLayoutId:I

.field public defaultPageSpacingPx:I

.field public defaultWidgetPadding:Landroid/graphics/Rect;

.field public desiredWorkspaceLeftRightMarginPx:I

.field dragViewScale:F

.field public edgeMarginPx:I

.field public folderPaddingPx:I

.field public heightPx:I

.field public hotseatAllAppsRank:I

.field public hotseatBarHeightPx:I

.field private hotseatIconSize:F

.field private iconDrawablePaddingOriginalPx:I

.field public iconSize:F

.field private iconTextSize:F

.field public isLandscape:Z

.field public isLargeTablet:Z

.field public isLayoutRtl:Z

.field public isTablet:Z

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/DeviceProfile$DeviceProfileCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public minHeightDps:F

.field public minWidthDps:F

.field public name:Ljava/lang/String;

.field private navBarHeightPx:I

.field public numBaseColumns:F

.field public numBaseHotseatIcons:F

.field public numBaseRows:F

.field public overviewModeBarItemWidthPx:I

.field public overviewModeBarSpacerWidthPx:I

.field public overviewModeIconZoneRatio:F

.field public overviewModeMaxIconZoneHeightPx:I

.field public overviewModeMinIconZoneHeightPx:I

.field public overviewModeScaleFactor:F

.field public pageIndicatorHeightPx:I

.field public searchBarEnabled:Z

.field public searchBarHeightPx:I

.field public searchBarSpaceHeightPx:I

.field public searchBarSpaceMaxWidthPx:I

.field public searchBarSpaceWidthPx:I

.field public springySearchBarMaxHeightDistancePx:I

.field public transposeLayoutWithOrientation:Z

.field public unscaledIconSizePx:I

.field public widthPx:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/DeviceProfile;->mCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;FFIIIILjava/util/Map;Landroid/content/res/Resources;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/DeviceProfile;",
            ">;FFIIII",
            "Ljava/util/Map<",
            "Lcom/voxel/launcher3/DeviceProfile$ParamType;",
            "Lcom/voxel/launcher3/CellParams;",
            ">;",
            "Landroid/content/res/Resources;",
            "Z)V"
        }
    .end annotation

    move-object v7, p0

    move v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p10

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Lcom/voxel/launcher3/DeviceProfile;->mCallbacks:Ljava/util/ArrayList;

    .line 181
    invoke-virtual/range {p10 .. p10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 182
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const v5, 0x7f050011

    .line 185
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v7, Lcom/voxel/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    .line 186
    iput v0, v7, Lcom/voxel/launcher3/DeviceProfile;->minWidthDps:F

    .line 187
    iput v1, v7, Lcom/voxel/launcher3/DeviceProfile;->minHeightDps:F

    move/from16 v5, p11

    .line 188
    iput-boolean v5, v7, Lcom/voxel/launcher3/DeviceProfile;->searchBarEnabled:Z

    .line 190
    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v8, p1

    .line 192
    invoke-static {p1, v5, v6}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, v7, Lcom/voxel/launcher3/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    const v5, 0x7f07010b

    .line 193
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 194
    iget v5, v7, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, v7, Lcom/voxel/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    const v5, 0x7f070111

    .line 196
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget v6, v7, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v5, v6

    iput v5, v7, Lcom/voxel/launcher3/DeviceProfile;->pageIndicatorHeightPx:I

    const v5, 0x7f070115

    .line 198
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Lcom/voxel/launcher3/DeviceProfile;->defaultPageSpacingPx:I

    const v5, 0x7f07010a

    .line 200
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Lcom/voxel/launcher3/DeviceProfile;->allAppsCellPaddingPx:I

    const v5, 0x7f070110

    .line 202
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Lcom/voxel/launcher3/DeviceProfile;->overviewModeMinIconZoneHeightPx:I

    const v5, 0x7f07010f

    .line 204
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Lcom/voxel/launcher3/DeviceProfile;->overviewModeMaxIconZoneHeightPx:I

    const v5, 0x7f07010d

    .line 206
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Lcom/voxel/launcher3/DeviceProfile;->overviewModeBarItemWidthPx:I

    const v5, 0x7f07010e

    .line 208
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Lcom/voxel/launcher3/DeviceProfile;->overviewModeBarSpacerWidthPx:I

    const v5, 0x7f0b0023

    .line 210
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    iput v5, v7, Lcom/voxel/launcher3/DeviceProfile;->overviewModeIconZoneRatio:F

    const v5, 0x7f0b0024

    .line 212
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    iput v5, v7, Lcom/voxel/launcher3/DeviceProfile;->overviewModeScaleFactor:F

    const v5, 0x7f07013d

    .line 214
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Lcom/voxel/launcher3/DeviceProfile;->folderPaddingPx:I

    const v5, 0x7f070113

    .line 217
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceMaxWidthPx:I

    const v5, 0x7f070112

    .line 219
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Lcom/voxel/launcher3/DeviceProfile;->searchBarHeightPx:I

    const v5, 0x7f070114

    .line 221
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Lcom/voxel/launcher3/DeviceProfile;->springySearchBarMaxHeightDistancePx:I

    .line 224
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/DeviceProfile;

    .line 225
    new-instance v9, Lcom/voxel/launcher3/DeviceProfileQuery;

    const/4 v10, 0x0

    invoke-direct {v9, v6, v10}, Lcom/voxel/launcher3/DeviceProfileQuery;-><init>(Lcom/voxel/launcher3/DeviceProfile;F)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_0
    invoke-direct {p0, p3, v1, v4}, Lcom/voxel/launcher3/DeviceProfile;->findClosestDeviceProfile(FFLjava/util/ArrayList;)Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v5

    .line 231
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 232
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/voxel/launcher3/DeviceProfile;

    .line 233
    new-instance v10, Lcom/voxel/launcher3/DeviceProfileQuery;

    iget v11, v9, Lcom/voxel/launcher3/DeviceProfile;->iconSize:F

    invoke-direct {v10, v9, v11}, Lcom/voxel/launcher3/DeviceProfileQuery;-><init>(Lcom/voxel/launcher3/DeviceProfile;F)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    :cond_1
    invoke-direct {p0, p3, v1, v4}, Lcom/voxel/launcher3/DeviceProfile;->invDistWeightedInterpolate(FFLjava/util/ArrayList;)F

    move-result v6

    iput v6, v7, Lcom/voxel/launcher3/DeviceProfile;->iconSize:F

    .line 236
    iget v6, v7, Lcom/voxel/launcher3/DeviceProfile;->iconSize:F

    invoke-static {v6, v3}, Lcom/voxel/launcher3/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v6

    iput v6, v7, Lcom/voxel/launcher3/DeviceProfile;->unscaledIconSizePx:I

    const v6, 0x7f070106

    .line 237
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 238
    iget v9, v7, Lcom/voxel/launcher3/DeviceProfile;->unscaledIconSizePx:I

    int-to-float v10, v9

    add-float/2addr v10, v6

    int-to-float v6, v9

    div-float/2addr v10, v6

    iput v10, v7, Lcom/voxel/launcher3/DeviceProfile;->dragViewScale:F

    .line 241
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 242
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/voxel/launcher3/DeviceProfile;

    .line 243
    new-instance v10, Lcom/voxel/launcher3/DeviceProfileQuery;

    iget v11, v9, Lcom/voxel/launcher3/DeviceProfile;->iconTextSize:F

    invoke-direct {v10, v9, v11}, Lcom/voxel/launcher3/DeviceProfileQuery;-><init>(Lcom/voxel/launcher3/DeviceProfile;F)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 245
    :cond_2
    invoke-direct {p0, p3, v1, v4}, Lcom/voxel/launcher3/DeviceProfile;->invDistWeightedInterpolate(FFLjava/util/ArrayList;)F

    move-result v6

    iput v6, v7, Lcom/voxel/launcher3/DeviceProfile;->iconTextSize:F

    const v6, 0x7f07010c

    .line 247
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v7, Lcom/voxel/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    .line 250
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 251
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/voxel/launcher3/DeviceProfile;

    .line 252
    new-instance v10, Lcom/voxel/launcher3/DeviceProfileQuery;

    iget v11, v9, Lcom/voxel/launcher3/DeviceProfile;->hotseatIconSize:F

    invoke-direct {v10, v9, v11}, Lcom/voxel/launcher3/DeviceProfileQuery;-><init>(Lcom/voxel/launcher3/DeviceProfile;F)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 256
    :cond_3
    invoke-direct {p0, p3, v1, v4}, Lcom/voxel/launcher3/DeviceProfile;->invDistWeightedInterpolate(FFLjava/util/ArrayList;)F

    move-result v0

    iput v0, v7, Lcom/voxel/launcher3/DeviceProfile;->hotseatIconSize:F

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v7, Lcom/voxel/launcher3/DeviceProfile;->cellParamsMap:Ljava/util/Map;

    .line 260
    invoke-static {}, Lcom/voxel/launcher3/DeviceProfile$ParamType;->values()[Lcom/voxel/launcher3/DeviceProfile$ParamType;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v1, :cond_4

    aget-object v9, v0, v6

    .line 261
    iget-object v10, v7, Lcom/voxel/launcher3/DeviceProfile;->cellParamsMap:Ljava/util/Map;

    new-instance v11, Lcom/voxel/launcher3/CellParams;

    invoke-direct {v11}, Lcom/voxel/launcher3/CellParams;-><init>()V

    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 265
    :cond_4
    iget v0, v5, Lcom/voxel/launcher3/DeviceProfile;->numBaseRows:F

    iput v0, v7, Lcom/voxel/launcher3/DeviceProfile;->numBaseRows:F

    .line 266
    iget v0, v5, Lcom/voxel/launcher3/DeviceProfile;->numBaseColumns:F

    iput v0, v7, Lcom/voxel/launcher3/DeviceProfile;->numBaseColumns:F

    .line 267
    iget v0, v5, Lcom/voxel/launcher3/DeviceProfile;->numBaseHotseatIcons:F

    iput v0, v7, Lcom/voxel/launcher3/DeviceProfile;->numBaseHotseatIcons:F

    .line 268
    iget v0, v7, Lcom/voxel/launcher3/DeviceProfile;->numBaseHotseatIcons:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v7, Lcom/voxel/launcher3/DeviceProfile;->hotseatAllAppsRank:I

    .line 270
    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 271
    iget v1, v7, Lcom/voxel/launcher3/DeviceProfile;->numBaseRows:F

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    .line 272
    iget v1, v7, Lcom/voxel/launcher3/DeviceProfile;->numBaseColumns:F

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    const/4 v1, 0x1

    .line 273
    iput-boolean v1, v0, Lcom/voxel/launcher3/CellParams;->enabled:Z

    .line 274
    iput-boolean v1, v0, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    const/high16 v6, 0x3f800000    # 1.0f

    .line 275
    iput v6, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    .line 277
    sget-object v9, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v9}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v9

    .line 278
    iput v6, v9, Lcom/voxel/launcher3/CellParams;->numRows:F

    .line 279
    iget v10, v7, Lcom/voxel/launcher3/DeviceProfile;->numBaseHotseatIcons:F

    iput v10, v9, Lcom/voxel/launcher3/CellParams;->numColumns:F

    .line 280
    iput-boolean v4, v9, Lcom/voxel/launcher3/CellParams;->enabled:Z

    .line 281
    iput-boolean v4, v9, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    .line 282
    iput-boolean v4, v9, Lcom/voxel/launcher3/CellParams;->backgroundBlur:Z

    .line 283
    iput v6, v9, Lcom/voxel/launcher3/CellParams;->iconScale:F

    .line 285
    sget-object v4, Lcom/voxel/launcher3/DeviceProfile$ParamType;->FOLDER:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v4}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v4

    .line 286
    iget v9, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v9, 0x3

    if-eq v0, v9, :cond_5

    goto :goto_5

    :cond_5
    const/4 v0, 0x4

    :goto_5
    int-to-float v0, v0

    .line 288
    iput v0, v4, Lcom/voxel/launcher3/CellParams;->numRows:F

    .line 289
    iput v0, v4, Lcom/voxel/launcher3/CellParams;->numColumns:F

    .line 290
    iput-boolean v1, v4, Lcom/voxel/launcher3/CellParams;->enabled:Z

    .line 291
    iput-boolean v1, v4, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    .line 292
    iput v6, v4, Lcom/voxel/launcher3/CellParams;->iconScale:F

    .line 295
    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ALLAPPS:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 297
    iget v4, v7, Lcom/voxel/launcher3/DeviceProfile;->numBaseColumns:F

    iput v4, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    const v4, 0x3f666666    # 0.9f

    .line 298
    iput v4, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    .line 299
    iget v4, v7, Lcom/voxel/launcher3/DeviceProfile;->unscaledIconSizePx:I

    int-to-float v4, v4

    iget v6, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    mul-float v4, v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v0, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    .line 300
    iget v4, v7, Lcom/voxel/launcher3/DeviceProfile;->iconTextSize:F

    invoke-static {v4, v3}, Lcom/voxel/launcher3/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, v0, Lcom/voxel/launcher3/CellParams;->iconTextSizePx:I

    .line 301
    iput-boolean v1, v0, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    if-eqz p9, :cond_6

    .line 305
    invoke-interface/range {p9 .. p9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 306
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/DeviceProfile$ParamType;

    .line 307
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellParams;

    .line 309
    invoke-direct {p0, v3, v1}, Lcom/voxel/launcher3/DeviceProfile;->updateCellParamsImpl(Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    goto :goto_6

    .line 314
    :cond_6
    iget v0, v5, Lcom/voxel/launcher3/DeviceProfile;->defaultLayoutId:I

    iput v0, v7, Lcom/voxel/launcher3/DeviceProfile;->defaultLayoutId:I

    .line 317
    iget v0, v5, Lcom/voxel/launcher3/DeviceProfile;->defaultNoAllAppsLayoutId:I

    iput v0, v7, Lcom/voxel/launcher3/DeviceProfile;->defaultNoAllAppsLayoutId:I

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p10

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 320
    invoke-virtual/range {v0 .. v6}, Lcom/voxel/launcher3/DeviceProfile;->updateFromConfiguration(Landroid/content/Context;Landroid/content/res/Resources;IIII)V

    .line 321
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/DeviceProfile;->updateAvailableDimensions(Landroid/content/Context;)V

    .line 322
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/DeviceProfile;->computeAllAppsButtonSize(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;FFFFFFFFII)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Lcom/voxel/launcher3/DeviceProfile;->mCallbacks:Ljava/util/ArrayList;

    .line 151
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result p10

    if-nez p10, :cond_1

    const/high16 p10, 0x40000000    # 2.0f

    rem-float p10, p8, p10

    const/4 p11, 0x0

    cmpl-float p10, p10, p11

    if-eqz p10, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "All Device Profiles must have an odd number of hotseat spaces"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/voxel/launcher3/DeviceProfile;->name:Ljava/lang/String;

    .line 156
    iput p2, p0, Lcom/voxel/launcher3/DeviceProfile;->minWidthDps:F

    .line 157
    iput p3, p0, Lcom/voxel/launcher3/DeviceProfile;->minHeightDps:F

    .line 158
    iput p4, p0, Lcom/voxel/launcher3/DeviceProfile;->numBaseRows:F

    .line 159
    iput p5, p0, Lcom/voxel/launcher3/DeviceProfile;->numBaseColumns:F

    .line 160
    iput p6, p0, Lcom/voxel/launcher3/DeviceProfile;->iconSize:F

    .line 161
    iput p7, p0, Lcom/voxel/launcher3/DeviceProfile;->iconTextSize:F

    .line 162
    iput p8, p0, Lcom/voxel/launcher3/DeviceProfile;->numBaseHotseatIcons:F

    .line 163
    iput p9, p0, Lcom/voxel/launcher3/DeviceProfile;->hotseatIconSize:F

    const p1, 0x7f150007

    .line 164
    iput p1, p0, Lcom/voxel/launcher3/DeviceProfile;->defaultLayoutId:I

    .line 165
    iput p1, p0, Lcom/voxel/launcher3/DeviceProfile;->defaultNoAllAppsLayoutId:I

    return-void
.end method

.method private computeAllAppsButtonSize(Landroid/content/Context;)V
    .locals 2

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0007

    .line 339
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 340
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    .line 341
    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 342
    iget v0, v0, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    float-to-int p1, v0

    iput p1, p0, Lcom/voxel/launcher3/DeviceProfile;->allAppsButtonVisualSize:I

    return-void
.end method

.method private dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 3

    .line 719
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    float-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private findClosestDeviceProfile(FFLjava/util/ArrayList;)Lcom/voxel/launcher3/DeviceProfile;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/DeviceProfileQuery;",
            ">;)",
            "Lcom/voxel/launcher3/DeviceProfile;"
        }
    .end annotation

    .line 745
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/launcher3/DeviceProfile;->findClosestDeviceProfiles(FFLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/DeviceProfileQuery;

    iget-object p1, p1, Lcom/voxel/launcher3/DeviceProfileQuery;->profile:Lcom/voxel/launcher3/DeviceProfile;

    return-object p1
.end method

.method private findClosestDeviceProfiles(FFLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/DeviceProfileQuery;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/DeviceProfileQuery;",
            ">;"
        }
    .end annotation

    .line 753
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 757
    new-instance p1, Lcom/voxel/launcher3/-$$Lambda$DeviceProfile$CvB_cznEVbDz_JtRDYDQg4IhfeU;

    invoke-direct {p1, p0, v0}, Lcom/voxel/launcher3/-$$Lambda$DeviceProfile$CvB_cznEVbDz_JtRDYDQg4IhfeU;-><init>(Lcom/voxel/launcher3/DeviceProfile;Landroid/graphics/PointF;)V

    invoke-static {p3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p3
.end method

.method private inheritWorkspaceParamsIfNeeded(Lcom/voxel/launcher3/DeviceProfile$ParamType;)V
    .locals 3

    .line 580
    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 581
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    .line 583
    iget-boolean v2, v1, Lcom/voxel/launcher3/CellParams;->inheritWorkspace:Z

    if-nez v2, :cond_0

    return-void

    .line 587
    :cond_0
    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$1;->$SwitchMap$com$voxel$launcher3$DeviceProfile$ParamType:[I

    invoke-virtual {p1}, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 602
    :pswitch_0
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    iput p1, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    .line 603
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    iput p1, v1, Lcom/voxel/launcher3/CellParams;->iconScale:F

    goto :goto_0

    .line 592
    :pswitch_1
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    iget v2, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 593
    iput p1, v1, Lcom/voxel/launcher3/CellParams;->numRows:F

    .line 594
    iput p1, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    .line 595
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    iput p1, v1, Lcom/voxel/launcher3/CellParams;->iconScale:F

    goto :goto_0

    .line 598
    :pswitch_2
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    iput p1, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    .line 599
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    iput p1, v1, Lcom/voxel/launcher3/CellParams;->iconScale:F

    goto :goto_0

    :pswitch_3
    return-void

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private invDistWeightedInterpolate(FFLjava/util/ArrayList;)F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/DeviceProfileQuery;",
            ">;)F"
        }
    .end annotation

    .line 777
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 779
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/launcher3/DeviceProfile;->findClosestDeviceProfiles(FFLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 782
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x40400000    # 3.0f

    if-ge v1, v3, :cond_2

    .line 783
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/DeviceProfileQuery;

    int-to-float v6, v1

    cmpg-float v5, v6, v5

    if-gez v5, :cond_1

    .line 785
    iget-object v5, v3, Lcom/voxel/launcher3/DeviceProfileQuery;->dimens:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v5, v4}, Lcom/voxel/launcher3/DeviceProfile;->weight(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v4

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v5, v4, v5

    if-nez v5, :cond_0

    .line 787
    iget p1, v3, Lcom/voxel/launcher3/DeviceProfileQuery;->value:F

    return p1

    :cond_0
    add-float/2addr v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 793
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_4

    .line 794
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/DeviceProfileQuery;

    int-to-float v3, p2

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    .line 796
    iget-object v3, v1, Lcom/voxel/launcher3/DeviceProfileQuery;->dimens:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v3, v4}, Lcom/voxel/launcher3/DeviceProfile;->weight(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v3

    .line 797
    iget v1, v1, Lcom/voxel/launcher3/DeviceProfileQuery;->value:F

    mul-float v3, v3, v1

    div-float/2addr v3, v2

    add-float/2addr p3, v3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return p3
.end method

.method public static synthetic lambda$findClosestDeviceProfiles$0(Lcom/voxel/launcher3/DeviceProfile;Landroid/graphics/PointF;Lcom/voxel/launcher3/DeviceProfileQuery;Lcom/voxel/launcher3/DeviceProfileQuery;)I
    .locals 0

    .line 757
    iget-object p2, p2, Lcom/voxel/launcher3/DeviceProfileQuery;->dimens:Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/DeviceProfile;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p2

    iget-object p3, p3, Lcom/voxel/launcher3/DeviceProfileQuery;->dimens:Landroid/graphics/PointF;

    invoke-direct {p0, p1, p3}, Lcom/voxel/launcher3/DeviceProfile;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private updateAllAppsSize(Landroid/content/res/Resources;Landroid/util/DisplayMetrics;)V
    .locals 3

    .line 489
    sget-object p1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ALLAPPS:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object p1

    .line 513
    sget v0, Lcom/voxel/launcher3/DeviceProfile;->MIN_ICON_TEXT_SCALE:F

    iget v1, p1, Lcom/voxel/launcher3/CellParams;->iconScale:F

    sget v2, Lcom/voxel/launcher3/DeviceProfile;->MAX_ICON_TEXT_SCALE:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 514
    iget v1, p0, Lcom/voxel/launcher3/DeviceProfile;->iconSize:F

    iget v2, p1, Lcom/voxel/launcher3/CellParams;->iconScale:F

    mul-float v1, v1, v2

    invoke-static {v1, p2}, Lcom/voxel/launcher3/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p1, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    .line 515
    iget v1, p0, Lcom/voxel/launcher3/DeviceProfile;->iconTextSize:F

    mul-float v1, v1, v0

    invoke-static {v1, p2}, Lcom/voxel/launcher3/DynamicGrid;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result p2

    iput p2, p1, Lcom/voxel/launcher3/CellParams;->iconTextSizePx:I

    .line 516
    iget p2, p0, Lcom/voxel/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lcom/voxel/launcher3/CellParams;->iconDrawablePaddingPx:I

    .line 518
    iget p2, p1, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    iput p2, p1, Lcom/voxel/launcher3/CellParams;->cellContentWidthPx:I

    .line 519
    iget p2, p1, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/DeviceProfile;->calculateTextContentHeight(Lcom/voxel/launcher3/CellParams;)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Lcom/voxel/launcher3/CellParams;->cellContentHeightPx:I

    .line 521
    iget p2, p1, Lcom/voxel/launcher3/CellParams;->cellContentWidthPx:I

    iput p2, p1, Lcom/voxel/launcher3/CellParams;->cellWidthPx:I

    .line 522
    iget p2, p1, Lcom/voxel/launcher3/CellParams;->cellContentHeightPx:I

    iput p2, p1, Lcom/voxel/launcher3/CellParams;->cellHeightPx:I

    return-void
.end method

.method private updateCellParamsImpl(Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V
    .locals 3

    .line 547
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 549
    iget v1, p2, Lcom/voxel/launcher3/CellParams;->iconScale:F

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    .line 550
    iget-boolean v1, p2, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    iput-boolean v1, v0, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    .line 551
    iget-boolean v1, p2, Lcom/voxel/launcher3/CellParams;->enabled:Z

    iput-boolean v1, v0, Lcom/voxel/launcher3/CellParams;->enabled:Z

    .line 552
    iget v1, p2, Lcom/voxel/launcher3/CellParams;->backgroundAlpha:F

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->backgroundAlpha:F

    .line 553
    iget-boolean v1, p2, Lcom/voxel/launcher3/CellParams;->backgroundBlur:Z

    iput-boolean v1, v0, Lcom/voxel/launcher3/CellParams;->backgroundBlur:Z

    .line 554
    iget-boolean v1, p2, Lcom/voxel/launcher3/CellParams;->inheritWorkspace:Z

    iput-boolean v1, v0, Lcom/voxel/launcher3/CellParams;->inheritWorkspace:Z

    .line 556
    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$1;->$SwitchMap$com$voxel$launcher3$DeviceProfile$ParamType:[I

    invoke-virtual {p1}, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/high16 v2, -0x40800000    # -1.0f

    packed-switch v1, :pswitch_data_0

    .line 572
    iget v1, p2, Lcom/voxel/launcher3/CellParams;->numRows:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    iget v1, p2, Lcom/voxel/launcher3/CellParams;->numRows:F

    goto :goto_5

    .line 567
    :pswitch_0
    iget v1, p2, Lcom/voxel/launcher3/CellParams;->numRows:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/voxel/launcher3/CellParams;->numRows:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iput v1, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    .line 568
    iget v1, p2, Lcom/voxel/launcher3/CellParams;->numColumns:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget p2, p2, Lcom/voxel/launcher3/CellParams;->numColumns:F

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/voxel/launcher3/DeviceProfile;->numBaseHotseatIcons:F

    :goto_1
    iput p2, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    goto :goto_7

    .line 558
    :pswitch_1
    iget v1, p2, Lcom/voxel/launcher3/CellParams;->numRows:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    iget v1, p2, Lcom/voxel/launcher3/CellParams;->numRows:F

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/voxel/launcher3/DeviceProfile;->numBaseRows:F

    :goto_2
    iput v1, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    .line 559
    iget v1, p2, Lcom/voxel/launcher3/CellParams;->numColumns:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    iget p2, p2, Lcom/voxel/launcher3/CellParams;->numColumns:F

    goto :goto_3

    :cond_3
    iget p2, p0, Lcom/voxel/launcher3/DeviceProfile;->numBaseColumns:F

    :goto_3
    iput p2, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    .line 561
    invoke-static {}, Lcom/voxel/launcher3/DeviceProfile$ParamType;->values()[Lcom/voxel/launcher3/DeviceProfile$ParamType;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_6

    aget-object v2, p2, v1

    .line 562
    invoke-direct {p0, v2}, Lcom/voxel/launcher3/DeviceProfile;->inheritWorkspaceParamsIfNeeded(Lcom/voxel/launcher3/DeviceProfile$ParamType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 572
    :cond_4
    iget v1, p0, Lcom/voxel/launcher3/DeviceProfile;->numBaseRows:F

    :goto_5
    iput v1, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    .line 573
    iget v1, p2, Lcom/voxel/launcher3/CellParams;->numColumns:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    iget p2, p2, Lcom/voxel/launcher3/CellParams;->numColumns:F

    goto :goto_6

    :cond_5
    iget p2, p0, Lcom/voxel/launcher3/DeviceProfile;->numBaseColumns:F

    :goto_6
    iput p2, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    .line 576
    :cond_6
    :goto_7
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/DeviceProfile;->inheritWorkspaceParamsIfNeeded(Lcom/voxel/launcher3/DeviceProfile$ParamType;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateFolderSize(Landroid/util/DisplayMetrics;)V
    .locals 5

    .line 466
    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->FOLDER:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 467
    sget v1, Lcom/voxel/launcher3/DeviceProfile;->MIN_ICON_TEXT_SCALE:F

    iget v2, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    sget v3, Lcom/voxel/launcher3/DeviceProfile;->MAX_ICON_TEXT_SCALE:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 468
    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->iconSize:F

    iget v3, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    mul-float v2, v2, v3

    invoke-static {v2, p1}, Lcom/voxel/launcher3/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v0, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    .line 469
    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->iconTextSize:F

    mul-float v2, v2, v1

    invoke-static {v2, p1}, Lcom/voxel/launcher3/DynamicGrid;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result p1

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->iconTextSizePx:I

    .line 470
    iget p1, p0, Lcom/voxel/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->iconDrawablePaddingPx:I

    .line 471
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->cellContentWidthPx:I

    .line 472
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/DeviceProfile;->calculateTextContentHeight(Lcom/voxel/launcher3/CellParams;)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->cellContentHeightPx:I

    .line 475
    iget p1, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v1, p1, 0x4

    int-to-float v1, v1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 477
    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v2, v2

    iget v3, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    iget v4, v0, Lcom/voxel/launcher3/CellParams;->cellContentWidthPx:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->folderPaddingPx:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float p1, p1, v3

    sub-float/2addr v2, p1

    .line 481
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    div-float/2addr v2, p1

    .line 482
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    .line 484
    iget v1, v0, Lcom/voxel/launcher3/CellParams;->cellContentWidthPx:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->cellWidthPx:I

    .line 485
    iget v1, v0, Lcom/voxel/launcher3/CellParams;->cellContentHeightPx:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->cellHeightPx:I

    return-void
.end method

.method private updateHotseatSize(Landroid/util/DisplayMetrics;)V
    .locals 4

    .line 445
    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 446
    sget v1, Lcom/voxel/launcher3/DeviceProfile;->MIN_ICON_TEXT_SCALE:F

    iget v2, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    sget v3, Lcom/voxel/launcher3/DeviceProfile;->MAX_ICON_TEXT_SCALE:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 447
    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->hotseatIconSize:F

    iget v3, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    mul-float v2, v2, v3

    invoke-static {v2, p1}, Lcom/voxel/launcher3/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v0, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    .line 448
    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->iconTextSize:F

    mul-float v2, v2, v1

    invoke-static {v2, p1}, Lcom/voxel/launcher3/DynamicGrid;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result p1

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->iconTextSizePx:I

    .line 449
    iget p1, p0, Lcom/voxel/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->iconDrawablePaddingPx:I

    .line 451
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->cellContentWidthPx:I

    .line 452
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/DeviceProfile;->calculateTextContentHeight(Lcom/voxel/launcher3/CellParams;)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->cellContentHeightPx:I

    .line 454
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->cellContentWidthPx:I

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->cellWidthPx:I

    .line 455
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->cellContentHeightPx:I

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->cellHeightPx:I

    .line 458
    iget-boolean p1, v0, Lcom/voxel/launcher3/CellParams;->enabled:Z

    if-eqz p1, :cond_0

    .line 459
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->cellHeightPx:I

    iget v0, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    iput p1, p0, Lcom/voxel/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 461
    iput p1, p0, Lcom/voxel/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    :goto_0
    return-void
.end method

.method private updateWorkspaceSize(Landroid/util/DisplayMetrics;)V
    .locals 4

    .line 431
    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 432
    sget v1, Lcom/voxel/launcher3/DeviceProfile;->MIN_ICON_TEXT_SCALE:F

    iget v2, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    sget v3, Lcom/voxel/launcher3/DeviceProfile;->MAX_ICON_TEXT_SCALE:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 433
    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->iconSize:F

    iget v3, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    mul-float v2, v2, v3

    invoke-static {v2, p1}, Lcom/voxel/launcher3/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v0, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    .line 434
    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->iconTextSize:F

    mul-float v2, v2, v1

    invoke-static {v2, p1}, Lcom/voxel/launcher3/DynamicGrid;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result p1

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->iconTextSizePx:I

    .line 435
    iget p1, p0, Lcom/voxel/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->iconDrawablePaddingPx:I

    .line 437
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->cellContentWidthPx:I

    .line 438
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/DeviceProfile;->calculateTextContentHeight(Lcom/voxel/launcher3/CellParams;)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->cellContentHeightPx:I

    .line 440
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->cellContentWidthPx:I

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->cellWidthPx:I

    .line 441
    iget p1, v0, Lcom/voxel/launcher3/CellParams;->cellContentHeightPx:I

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->cellHeightPx:I

    return-void
.end method

.method private weight(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F
    .locals 4

    .line 733
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/DeviceProfile;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    return p1

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    float-to-double p1, p1

    float-to-double v2, p3

    .line 737
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    div-double/2addr v0, p1

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method addCallback(Lcom/voxel/launcher3/DeviceProfile$DeviceProfileCallbacks;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/voxel/launcher3/DeviceProfile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-interface {p1, p0}, Lcom/voxel/launcher3/DeviceProfile$DeviceProfileCallbacks;->onAvailableSizeChanged(Lcom/voxel/launcher3/DeviceProfile;)V

    return-void
.end method

.method calculateCellHeight(II)I
    .locals 0

    .line 1004
    div-int/2addr p1, p2

    return p1
.end method

.method calculateCellWidth(II)I
    .locals 0

    .line 1000
    div-int/2addr p1, p2

    return p1
.end method

.method calculateOverviewModeWidth(I)I
    .locals 2

    .line 1050
    iget v0, p0, Lcom/voxel/launcher3/DeviceProfile;->overviewModeBarItemWidthPx:I

    mul-int v0, v0, p1

    add-int/lit8 p1, p1, -0x1

    iget v1, p0, Lcom/voxel/launcher3/DeviceProfile;->overviewModeBarSpacerWidthPx:I

    mul-int p1, p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method public calculateTextContentHeight(Lcom/voxel/launcher3/CellParams;)I
    .locals 2

    .line 1008
    iget-boolean v0, p1, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    if-eqz v0, :cond_0

    .line 1010
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1011
    iget v1, p1, Lcom/voxel/launcher3/CellParams;->iconTextSizePx:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1012
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 1013
    iget p1, p1, Lcom/voxel/launcher3/CellParams;->iconDrawablePaddingPx:I

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/voxel/launcher3/DeviceProfile;->cellParamsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellParams;

    return-object p1
.end method

.method public getCellParamsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/voxel/launcher3/DeviceProfile$ParamType;",
            "Lcom/voxel/launcher3/CellParams;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/voxel/launcher3/DeviceProfile;->cellParamsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getHotseatPadding()Landroid/graphics/Rect;
    .locals 5

    .line 978
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 979
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 981
    iget v1, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v2, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 982
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->getWorkspacePadding()Landroid/graphics/Rect;

    move-result-object v1

    .line 985
    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    iget v1, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 991
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->getWorkspacePadding()Landroid/graphics/Rect;

    move-result-object v1

    .line 992
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v3, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v0
.end method

.method getHotseatRect()Landroid/graphics/Rect;
    .locals 5

    .line 967
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 968
    new-instance v0, Landroid/graphics/Rect;

    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->availableWidthPx:I

    iget v4, p0, Lcom/voxel/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-direct {v0, v3, v2, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 971
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    iget v4, p0, Lcom/voxel/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/voxel/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getMaxIconScaleForType(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;)F
    .locals 2

    .line 615
    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$1;->$SwitchMap$com$voxel$launcher3$DeviceProfile$ParamType:[I

    invoke-virtual {p2}, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 619
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/DeviceProfile;->getMaxIconScaleVerticallyUnconstrainedForType(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;)F

    move-result p1

    return p1

    .line 617
    :cond_0
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/DeviceProfile;->getMaxWorkspaceIconScale(Landroid/content/Context;)F

    move-result p1

    return p1
.end method

.method public getMaxIconScaleVerticallyUnconstrainedForType(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;)F
    .locals 4

    const-string v0, "window"

    .line 688
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 689
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 690
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 691
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 692
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object p2

    .line 694
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 695
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 696
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 697
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 698
    invoke-virtual {v0, v2, v3}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 699
    iget v0, p2, Lcom/voxel/launcher3/CellParams;->iconDrawablePaddingPx:I

    .line 701
    iget v1, p0, Lcom/voxel/launcher3/DeviceProfile;->availableWidthPx:I

    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 702
    iget p2, p2, Lcom/voxel/launcher3/CellParams;->numColumns:F

    div-float/2addr v1, p2

    float-to-int p2, v1

    sub-int/2addr p2, v0

    .line 705
    iget v0, p0, Lcom/voxel/launcher3/DeviceProfile;->iconSize:F

    invoke-static {v0, p1}, Lcom/voxel/launcher3/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p1

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    return p2
.end method

.method public getMaxWorkspaceIconScale(Landroid/content/Context;)F
    .locals 7

    const-string v0, "window"

    .line 625
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 626
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 627
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 628
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 629
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 630
    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v2

    .line 638
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 639
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 640
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 641
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 642
    invoke-virtual {v0, v4, v5}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 645
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 646
    iget p1, v4, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 648
    :cond_0
    iget p1, v5, Landroid/graphics/Point;->y:I

    .line 651
    :goto_0
    iget v0, v2, Lcom/voxel/launcher3/CellParams;->iconDrawablePaddingPx:I

    .line 653
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->getWorkspacePadding()Landroid/graphics/Rect;

    move-result-object v3

    .line 654
    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v4

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    .line 655
    iget v4, v2, Lcom/voxel/launcher3/CellParams;->numRows:F

    div-float/2addr p1, v4

    float-to-int p1, p1

    .line 657
    iget v4, p0, Lcom/voxel/launcher3/DeviceProfile;->availableWidthPx:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v3

    int-to-float v3, v4

    .line 658
    iget v2, v2, Lcom/voxel/launcher3/CellParams;->numColumns:F

    div-float/2addr v3, v2

    float-to-int v2, v3

    sub-int/2addr p1, v0

    sub-int/2addr v2, v0

    .line 664
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 665
    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->iconTextSize:F

    invoke-static {v3, v1}, Lcom/voxel/launcher3/DynamicGrid;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 666
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 668
    iget v4, p0, Lcom/voxel/launcher3/DeviceProfile;->iconSize:F

    invoke-static {v4, v1}, Lcom/voxel/launcher3/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v4

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v5, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    add-int/2addr v4, v3

    .line 669
    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->iconSize:F

    invoke-static {v3, v1}, Lcom/voxel/launcher3/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    int-to-float v5, p1

    int-to-float v4, v4

    div-float/2addr v5, v4

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 671
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 674
    sget v4, Lcom/voxel/launcher3/DeviceProfile;->MIN_ICON_TEXT_SCALE:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    .line 675
    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->iconTextSize:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v3, v3, v4

    invoke-static {v3, v1}, Lcom/voxel/launcher3/DynamicGrid;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 676
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 677
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    sub-int/2addr p1, v0

    .line 678
    iget v0, p0, Lcom/voxel/launcher3/DeviceProfile;->iconSize:F

    invoke-static {v0, v1}, Lcom/voxel/launcher3/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 680
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_1
    return v3
.end method

.method getOverviewModeButtonBarRect()Landroid/graphics/Rect;
    .locals 4

    .line 952
    iget v0, p0, Lcom/voxel/launcher3/DeviceProfile;->overviewModeIconZoneRatio:F

    iget v1, p0, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 953
    iget v1, p0, Lcom/voxel/launcher3/DeviceProfile;->overviewModeMaxIconZoneHeightPx:I

    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->overviewModeMinIconZoneHeightPx:I

    .line 954
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 953
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 955
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    sub-int v0, v2, v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method getOverviewModeScale()F
    .locals 4

    .line 959
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->getWorkspacePadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 960
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->getOverviewModeButtonBarRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 961
    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    .line 962
    iget v0, p0, Lcom/voxel/launcher3/DeviceProfile;->overviewModeScaleFactor:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v1, v2, v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method getSearchBarBounds(I)Landroid/graphics/Rect;
    .locals 5

    .line 826
    iget-boolean v0, p0, Lcom/voxel/launcher3/DeviceProfile;->searchBarEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 827
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 829
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-nez p1, :cond_2

    .line 830
    iget-boolean v2, p0, Lcom/voxel/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    if-eqz v2, :cond_2

    .line 832
    iget-boolean p1, p0, Lcom/voxel/launcher3/DeviceProfile;->isLayoutRtl:Z

    if-eqz p1, :cond_1

    .line 833
    iget p1, p0, Lcom/voxel/launcher3/DeviceProfile;->availableWidthPx:I

    iget v1, p0, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 836
    :cond_1
    iget p1, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    sub-int/2addr v3, p1

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 840
    :cond_2
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p1, :cond_3

    .line 843
    iget p1, p0, Lcom/voxel/launcher3/DeviceProfile;->widthPx:I

    iget v1, p0, Lcom/voxel/launcher3/DeviceProfile;->heightPx:I

    .line 844
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/voxel/launcher3/DeviceProfile;->widthPx:I

    iget v1, p0, Lcom/voxel/launcher3/DeviceProfile;->heightPx:I

    .line 845
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 847
    :goto_0
    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    .line 850
    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    iget v2, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    iget v3, v1, Lcom/voxel/launcher3/CellParams;->cellWidthPx:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    sub-float/2addr p1, v2

    const/high16 v2, 0x40000000    # 2.0f

    iget v1, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    mul-float v1, v1, v2

    div-float/2addr p1, v1

    float-to-int p1, p1

    .line 852
    iget v1, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->getSearchBarTopOffset()I

    move-result v2

    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->availableWidthPx:I

    iget v4, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v4, p1

    sub-int/2addr v3, v4

    iget p1, p0, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 856
    :cond_4
    iget p1, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 p1, p1, 0x2

    .line 857
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->getSearchBarTopOffset()I

    move-result v1

    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->availableWidthPx:I

    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    .line 856
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-object v0
.end method

.method public getSearchBarTopOffset()I
    .locals 1

    .line 808
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    iget v0, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v0, v0, 0x2

    return v0

    .line 811
    :cond_0
    iget v0, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getVisibleChildCount(Landroid/view/ViewGroup;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1041
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1042
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getWorkspacePadding()Landroid/graphics/Rect;
    .locals 1

    .line 891
    iget-boolean v0, p0, Lcom/voxel/launcher3/DeviceProfile;->isLandscape:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/DeviceProfile;->getWorkspacePadding(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspacePadding(I)Landroid/graphics/Rect;
    .locals 9

    .line 895
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/DeviceProfile;->getSearchBarBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 896
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    if-nez p1, :cond_1

    .line 897
    iget-boolean v2, p0, Lcom/voxel/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    if-eqz v2, :cond_1

    .line 900
    iget-boolean p1, p0, Lcom/voxel/launcher3/DeviceProfile;->isLayoutRtl:Z

    if-eqz p1, :cond_0

    .line 901
    iget p1, p0, Lcom/voxel/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 902
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 901
    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    .line 904
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v0, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    invoke-virtual {v1, p1, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    .line 908
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 911
    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v2

    .line 912
    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->dragViewScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v3, v4

    if-nez p1, :cond_2

    .line 913
    iget v4, p0, Lcom/voxel/launcher3/DeviceProfile;->widthPx:I

    iget v6, p0, Lcom/voxel/launcher3/DeviceProfile;->heightPx:I

    .line 914
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/voxel/launcher3/DeviceProfile;->widthPx:I

    iget v6, p0, Lcom/voxel/launcher3/DeviceProfile;->heightPx:I

    .line 915
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    if-eqz p1, :cond_3

    .line 916
    iget p1, p0, Lcom/voxel/launcher3/DeviceProfile;->widthPx:I

    iget v6, p0, Lcom/voxel/launcher3/DeviceProfile;->heightPx:I

    .line 917
    invoke-static {p1, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/voxel/launcher3/DeviceProfile;->widthPx:I

    iget v6, p0, Lcom/voxel/launcher3/DeviceProfile;->heightPx:I

    .line 918
    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 919
    :goto_1
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 920
    iget v6, p0, Lcom/voxel/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iget v7, p0, Lcom/voxel/launcher3/DeviceProfile;->pageIndicatorHeightPx:I

    add-int/2addr v6, v7

    .line 921
    iget v7, v2, Lcom/voxel/launcher3/CellParams;->numColumns:F

    iget v8, v2, Lcom/voxel/launcher3/CellParams;->cellWidthPx:I

    int-to-float v8, v8

    mul-float v7, v7, v8

    iget v8, v2, Lcom/voxel/launcher3/CellParams;->numColumns:F

    mul-float v8, v8, v3

    iget v3, v2, Lcom/voxel/launcher3/CellParams;->cellWidthPx:I

    int-to-float v3, v3

    mul-float v8, v8, v3

    add-float/2addr v7, v8

    float-to-int v3, v7

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p1, v0

    sub-int/2addr p1, v6

    .line 923
    iget v7, v2, Lcom/voxel/launcher3/CellParams;->numRows:F

    mul-float v7, v7, v5

    iget v2, v2, Lcom/voxel/launcher3/CellParams;->cellHeightPx:I

    int-to-float v2, v2

    mul-float v7, v7, v2

    float-to-int v2, v7

    sub-int/2addr p1, v2

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 925
    div-int/lit8 v4, v4, 0x2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v6, p1

    invoke-virtual {v1, v4, v0, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 929
    :cond_4
    iget p1, p0, Lcom/voxel/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget-object v2, p0, Lcom/voxel/launcher3/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget-object v3, p0, Lcom/voxel/launcher3/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iget v4, p0, Lcom/voxel/launcher3/DeviceProfile;->pageIndicatorHeightPx:I

    add-int/2addr v3, v4

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-object v1
.end method

.method getWorkspacePageSpacing(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 939
    iget-boolean p1, p0, Lcom/voxel/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    if-nez p1, :cond_1

    .line 940
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->isLargeTablet()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 942
    :cond_1
    iget p1, p0, Lcom/voxel/launcher3/DeviceProfile;->defaultPageSpacingPx:I

    return p1

    .line 947
    :cond_2
    iget p1, p0, Lcom/voxel/launcher3/DeviceProfile;->defaultPageSpacingPx:I

    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->getWorkspacePadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method isLargeTablet()Z
    .locals 1

    .line 1028
    iget-boolean v0, p0, Lcom/voxel/launcher3/DeviceProfile;->isLargeTablet:Z

    return v0
.end method

.method isTablet()Z
    .locals 1

    .line 1024
    iget-boolean v0, p0, Lcom/voxel/launcher3/DeviceProfile;->isTablet:Z

    return v0
.end method

.method public isVerticalBarLayout()Z
    .locals 1

    .line 1032
    iget-boolean v0, p0, Lcom/voxel/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/voxel/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public layout(Lcom/voxel/launcher3/Launcher;)V
    .locals 10

    .line 1056
    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    .line 1057
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    .line 1060
    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getSearchBar()Lcom/voxel/launcher3/SearchDropTargetBar;

    move-result-object v1

    .line 1061
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x1

    const/4 v4, -0x2

    const/16 v5, 0x33

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 1064
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1065
    iget v7, p0, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1066
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1067
    iget v7, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v1, v6, v6, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    const v7, 0x7f0a00de

    .line 1071
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 1072
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    :cond_0
    const/16 v7, 0x31

    .line 1075
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1076
    iget v7, p0, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceWidthPx:I

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1077
    iget v7, p0, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1078
    iget v7, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v7, v7, 0x2

    .line 1080
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->getSearchBarTopOffset()I

    move-result v8

    iget v9, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v9, v9, 0x2

    .line 1078
    invoke-virtual {v1, v7, v8, v9, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1083
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v7, 0x7f0a02fe

    .line 1087
    invoke-virtual {p1, v7}, Lcom/voxel/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1089
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 1090
    iget v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1091
    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1092
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1093
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1095
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 1096
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 1097
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    .line 1098
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 1094
    invoke-virtual {v7, v2, v4, v8, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1103
    :cond_1
    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getPullDownRecyclerView()Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    move-result-object v1

    .line 1104
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    if-eqz v0, :cond_2

    .line 1107
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1108
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1109
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1110
    iget v5, p0, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    invoke-virtual {v2, v6, v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 1113
    :cond_2
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1114
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1115
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1116
    iget v5, p0, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    invoke-virtual {v2, v6, v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1118
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a02fd

    .line 1121
    invoke-virtual {p1, v1}, Lcom/voxel/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/PagedView;

    .line 1122
    invoke-virtual {v1}, Lcom/voxel/launcher3/PagedView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    .line 1123
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1124
    iget-boolean v5, p0, Lcom/voxel/launcher3/DeviceProfile;->isLandscape:Z

    xor-int/2addr v3, v5

    .line 1125
    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/DeviceProfile;->getWorkspacePadding(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 1126
    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/PagedView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1127
    iget v2, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v7, v8, v5}, Lcom/voxel/launcher3/PagedView;->setPadding(IIII)V

    .line 1128
    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/DeviceProfile;->getWorkspacePageSpacing(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/PagedView;->setPageSpacing(I)V

    const v1, 0x7f0a0155

    .line 1131
    invoke-virtual {p1, v1}, Lcom/voxel/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1133
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_3

    const v3, 0x800005

    .line 1136
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1137
    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1138
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    .line 1139
    :cond_3
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->isTablet()Z

    move-result v3

    const/16 v5, 0x50

    if-eqz v3, :cond_4

    .line 1141
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1142
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1143
    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    .line 1147
    :cond_4
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1148
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1149
    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1151
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1153
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->getHotseatPadding()Landroid/graphics/Rect;

    move-result-object v2

    .line 1154
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v5, v7, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1159
    check-cast v1, Lcom/voxel/launcher3/Hotseat;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Hotseat;->getBackgroundView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;

    .line 1160
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1161
    sget-object v3, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v3

    .line 1162
    iget-boolean v5, v3, Lcom/voxel/launcher3/CellParams;->enabled:Z

    const/4 v7, 0x0

    if-nez v5, :cond_5

    .line 1164
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1165
    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1166
    invoke-virtual {v1, v7}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1168
    :cond_5
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1169
    iget v4, p0, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    iget v5, p0, Lcom/voxel/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    sub-int v5, v4, v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    neg-int v4, v4

    .line 1170
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1171
    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1172
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->getWhiteDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1174
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0800cd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1176
    :cond_6
    iget-boolean v4, v3, Lcom/voxel/launcher3/CellParams;->backgroundBlur:Z

    invoke-virtual {v1, v4}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->enableBlurredBackground(Z)V

    .line 1177
    iget v3, v3, Lcom/voxel/launcher3/CellParams;->backgroundAlpha:F

    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->setDefaultAlpha(I)V

    .line 1178
    invoke-virtual {v1, v2, v7}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->setImageDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_3
    const v1, 0x7f0a0168

    .line 1183
    invoke-virtual {p1, v1}, Lcom/voxel/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x51

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    .line 1187
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1190
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1191
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1192
    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->pageIndicatorHeightPx:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1193
    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1194
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1200
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getOverviewPanel()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1202
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->getOverviewModeButtonBarRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1203
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1204
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1205
    iget v2, p0, Lcom/voxel/launcher3/DeviceProfile;->availableWidthPx:I

    .line 1206
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/DeviceProfile;->getVisibleChildCount(Landroid/view/ViewGroup;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/DeviceProfile;->calculateOverviewModeWidth(I)I

    move-result v3

    .line 1205
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1207
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1208
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    return-void
.end method

.method shouldFadeAdjacentWorkspaceScreens()Z
    .locals 1

    .line 1036
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->isLargeTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public updateAvailableDimensions(Landroid/content/Context;)V
    .locals 7

    const-string v0, "window"

    .line 377
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 378
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 379
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 380
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 381
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 389
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 390
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 391
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 392
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 393
    invoke-virtual {v0, v5, v6}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 394
    iget v0, v4, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/voxel/launcher3/DeviceProfile;->availableWidthPx:I

    .line 395
    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 396
    iget v0, v5, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    goto :goto_0

    .line 398
    :cond_0
    iget v0, v6, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    :goto_0
    const-string v0, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    .line 401
    invoke-virtual {v1, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    if-lez v0, :cond_1

    .line 403
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/voxel/launcher3/DeviceProfile;->navBarHeightPx:I

    .line 406
    :cond_2
    iget v0, p0, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceMaxWidthPx:I

    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->widthPx:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceWidthPx:I

    .line 407
    iget v0, p0, Lcom/voxel/launcher3/DeviceProfile;->searchBarHeightPx:I

    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->springySearchBarMaxHeightDistancePx:I

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/voxel/launcher3/DeviceProfile;->getSearchBarTopOffset()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    .line 409
    invoke-direct {p0, v2}, Lcom/voxel/launcher3/DeviceProfile;->updateWorkspaceSize(Landroid/util/DisplayMetrics;)V

    .line 410
    invoke-direct {p0, v2}, Lcom/voxel/launcher3/DeviceProfile;->updateHotseatSize(Landroid/util/DisplayMetrics;)V

    .line 411
    invoke-direct {p0, v2}, Lcom/voxel/launcher3/DeviceProfile;->updateFolderSize(Landroid/util/DisplayMetrics;)V

    .line 412
    invoke-direct {p0, v1, v2}, Lcom/voxel/launcher3/DeviceProfile;->updateAllAppsSize(Landroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    .line 417
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/DeviceProfile;->getMaxWorkspaceIconScale(Landroid/content/Context;)F

    move-result p1

    .line 418
    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 419
    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    .line 420
    invoke-direct {p0, v2}, Lcom/voxel/launcher3/DeviceProfile;->updateWorkspaceSize(Landroid/util/DisplayMetrics;)V

    .line 424
    :cond_3
    iget-object p1, p0, Lcom/voxel/launcher3/DeviceProfile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/DeviceProfile$DeviceProfileCallbacks;

    .line 425
    invoke-interface {v0, p0}, Lcom/voxel/launcher3/DeviceProfile$DeviceProfileCallbacks;->onAvailableSizeChanged(Lcom/voxel/launcher3/DeviceProfile;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public updateCellParams(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V
    .locals 0

    .line 610
    invoke-direct {p0, p2, p3}, Lcom/voxel/launcher3/DeviceProfile;->updateCellParamsImpl(Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    .line 611
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/DeviceProfile;->updateAvailableDimensions(Landroid/content/Context;)V

    return-void
.end method

.method updateFromConfiguration(Landroid/content/Context;Landroid/content/res/Resources;IIII)V
    .locals 5

    .line 528
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 529
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/voxel/launcher3/DeviceProfile;->isLandscape:Z

    const v1, 0x7f050013

    .line 530
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/voxel/launcher3/DeviceProfile;->isTablet:Z

    const v1, 0x7f050012

    .line 531
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/voxel/launcher3/DeviceProfile;->isLargeTablet:Z

    .line 532
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt p2, v1, :cond_2

    .line 533
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    if-ne p2, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/voxel/launcher3/DeviceProfile;->isLayoutRtl:Z

    goto :goto_2

    .line 535
    :cond_2
    iput-boolean v3, p0, Lcom/voxel/launcher3/DeviceProfile;->isLayoutRtl:Z

    .line 537
    :goto_2
    iput p3, p0, Lcom/voxel/launcher3/DeviceProfile;->widthPx:I

    .line 538
    iput p4, p0, Lcom/voxel/launcher3/DeviceProfile;->heightPx:I

    .line 539
    iput p5, p0, Lcom/voxel/launcher3/DeviceProfile;->availableWidthPx:I

    .line 540
    iput p6, p0, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    .line 542
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/DeviceProfile;->updateAvailableDimensions(Landroid/content/Context;)V

    return-void
.end method
