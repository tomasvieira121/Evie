.class public Lcom/voxel/launcher3/DynamicGrid;
.super Ljava/lang/Object;
.source "DynamicGrid.java"


# static fields
.field static DEFAULT_ICON_SIZE_DP:F = 60.0f

.field static DEFAULT_ICON_SIZE_PX:F


# instance fields
.field private mMinHeight:F

.field private mMinWidth:F

.field private mProfile:Lcom/voxel/launcher3/DeviceProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;IIIIIILjava/util/Map;Z)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            "IIIIII",
            "Ljava/util/Map<",
            "Lcom/voxel/launcher3/DeviceProfile$ParamType;",
            "Lcom/voxel/launcher3/CellParams;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 64
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 67
    sget v3, Lcom/voxel/launcher3/DynamicGrid;->DEFAULT_ICON_SIZE_DP:F

    invoke-static {v3, v1}, Lcom/voxel/launcher3/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    int-to-float v3, v3

    sput v3, Lcom/voxel/launcher3/DynamicGrid;->DEFAULT_ICON_SIZE_PX:F

    .line 70
    new-instance v3, Lcom/voxel/launcher3/DeviceProfile;

    const-string v6, "Super Short Stubby"

    const/high16 v7, 0x437f0000    # 255.0f

    const/high16 v8, 0x43960000    # 300.0f

    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v11, 0x42400000    # 48.0f

    const/high16 v12, 0x41500000    # 13.0f

    const/16 v17, 0x3

    const/4 v15, 0x5

    if-eqz v2, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :cond_0
    const/4 v5, 0x5

    :goto_0
    int-to-float v13, v5

    const/high16 v14, 0x42400000    # 48.0f

    const/high16 v16, 0x7f150000

    const v18, 0x7f150001

    move-object v5, v3

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-direct/range {v5 .. v16}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Ljava/lang/String;FFFFFFFFII)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v3, Lcom/voxel/launcher3/DeviceProfile;

    const-string v21, "Shorter Stubby"

    const/high16 v22, 0x437f0000    # 255.0f

    const/high16 v23, 0x43c80000    # 400.0f

    const/high16 v24, 0x40800000    # 4.0f

    const/high16 v25, 0x40400000    # 3.0f

    const/high16 v26, 0x42400000    # 48.0f

    const/high16 v27, 0x41500000    # 13.0f

    if-eqz v2, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    const/4 v5, 0x5

    :goto_1
    int-to-float v5, v5

    const/high16 v29, 0x42400000    # 48.0f

    const/high16 v30, 0x7f150000

    const v31, 0x7f150001

    move-object/from16 v20, v3

    move/from16 v28, v5

    invoke-direct/range {v20 .. v31}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Ljava/lang/String;FFFFFFFFII)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v3, Lcom/voxel/launcher3/DeviceProfile;

    const-string v7, "Short Stubby"

    const v8, 0x43898000    # 275.0f

    const/high16 v9, 0x43d20000    # 420.0f

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v11, 0x40800000    # 4.0f

    const/high16 v12, 0x42400000    # 48.0f

    const/high16 v13, 0x41500000    # 13.0f

    const/4 v5, 0x5

    int-to-float v14, v5

    const/high16 v15, 0x42400000    # 48.0f

    const/high16 v16, 0x7f150000

    const v17, 0x7f150001

    move-object v6, v3

    invoke-direct/range {v6 .. v17}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Ljava/lang/String;FFFFFFFFII)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v3, Lcom/voxel/launcher3/DeviceProfile;

    const-string v19, "Stubby"

    const/high16 v20, 0x437f0000    # 255.0f

    const/high16 v21, 0x43e10000    # 450.0f

    const/high16 v22, 0x40800000    # 4.0f

    const/high16 v23, 0x40800000    # 4.0f

    const/high16 v24, 0x42400000    # 48.0f

    const/high16 v25, 0x41500000    # 13.0f

    int-to-float v6, v5

    const/high16 v27, 0x42400000    # 48.0f

    const/high16 v28, 0x7f150000

    const v29, 0x7f150001

    move-object/from16 v18, v3

    move/from16 v26, v6

    invoke-direct/range {v18 .. v29}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Ljava/lang/String;FFFFFFFFII)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v3, Lcom/voxel/launcher3/DeviceProfile;

    const-string v8, "Nexus S"

    const/high16 v9, 0x43940000    # 296.0f

    const v10, 0x43f5aa3d

    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v12, 0x40800000    # 4.0f

    const/high16 v13, 0x42400000    # 48.0f

    const/high16 v14, 0x41500000    # 13.0f

    int-to-float v15, v5

    const/high16 v16, 0x42400000    # 48.0f

    const/high16 v17, 0x7f150000

    const v18, 0x7f150001

    move-object v7, v3

    invoke-direct/range {v7 .. v18}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Ljava/lang/String;FFFFFFFFII)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v3, Lcom/voxel/launcher3/DeviceProfile;

    const-string v20, "Nexus 4"

    const v21, 0x43a78000    # 335.0f

    const v22, 0x440dc000    # 567.0f

    const/high16 v23, 0x40a00000    # 5.0f

    const/high16 v24, 0x40800000    # 4.0f

    sget v25, Lcom/voxel/launcher3/DynamicGrid;->DEFAULT_ICON_SIZE_DP:F

    const/high16 v26, 0x41500000    # 13.0f

    int-to-float v6, v5

    const/high16 v28, 0x42700000    # 60.0f

    const/high16 v29, 0x7f150000

    const v30, 0x7f150001

    move-object/from16 v19, v3

    move/from16 v27, v6

    invoke-direct/range {v19 .. v30}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Ljava/lang/String;FFFFFFFFII)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v3, Lcom/voxel/launcher3/DeviceProfile;

    const-string v8, "Nexus 5"

    const v9, 0x43b38000    # 359.0f

    const v10, 0x440dc000    # 567.0f

    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v12, 0x40800000    # 4.0f

    sget v13, Lcom/voxel/launcher3/DynamicGrid;->DEFAULT_ICON_SIZE_DP:F

    const/high16 v14, 0x41500000    # 13.0f

    int-to-float v15, v5

    const/high16 v16, 0x42700000    # 60.0f

    const/high16 v17, 0x7f150000

    const v18, 0x7f150001

    move-object v7, v3

    invoke-direct/range {v7 .. v18}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Ljava/lang/String;FFFFFFFFII)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v2, Lcom/voxel/launcher3/DeviceProfile;

    const-string v20, "Large Phone"

    const/high16 v21, 0x43cb0000    # 406.0f

    const v22, 0x442d8000    # 694.0f

    const/high16 v23, 0x40c00000    # 6.0f

    const/high16 v24, 0x40a00000    # 5.0f

    const/high16 v25, 0x42800000    # 64.0f

    const v26, 0x41666666    # 14.4f

    const/high16 v27, 0x40a00000    # 5.0f

    const/high16 v28, 0x42800000    # 64.0f

    const v29, 0x7f150002

    const v30, 0x7f150003

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v30}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Ljava/lang/String;FFFFFFFFII)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v2, Lcom/voxel/launcher3/DeviceProfile;

    const-string v6, "Nexus 7"

    const v7, 0x440fc000    # 575.0f

    const/high16 v8, 0x44620000    # 904.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x40c00000    # 6.0f

    const/high16 v11, 0x42900000    # 72.0f

    const v12, 0x41666666    # 14.4f

    const/high16 v13, 0x40e00000    # 7.0f

    const/high16 v14, 0x42900000    # 72.0f

    const v15, 0x7f150004

    const v16, 0x7f150005

    move-object v5, v2

    invoke-direct/range {v5 .. v16}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Ljava/lang/String;FFFFFFFFII)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v2, Lcom/voxel/launcher3/DeviceProfile;

    const-string v18, "Nexus 10"

    const v19, 0x4435c000    # 727.0f

    const v20, 0x4496e000    # 1207.0f

    const/high16 v21, 0x40a00000    # 5.0f

    const/high16 v22, 0x40c00000    # 6.0f

    const/high16 v23, 0x42980000    # 76.0f

    const v24, 0x41666666    # 14.4f

    const/high16 v25, 0x40e00000    # 7.0f

    const/high16 v26, 0x42980000    # 76.0f

    const v27, 0x7f150004

    const v28, 0x7f150005

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v28}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Ljava/lang/String;FFFFFFFFII)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v2, Lcom/voxel/launcher3/DeviceProfile;

    const-string v6, "20-inch Tablet"

    const v7, 0x44bee000    # 1527.0f

    const v8, 0x451df000    # 2527.0f

    const/high16 v9, 0x40e00000    # 7.0f

    const/high16 v10, 0x40e00000    # 7.0f

    const/high16 v11, 0x42c80000    # 100.0f

    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v14, 0x42c80000    # 100.0f

    const/high16 v15, 0x7f150000

    const v16, 0x7f150001

    move-object v5, v2

    invoke-direct/range {v5 .. v16}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Ljava/lang/String;FFFFFFFFII)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v2, p3

    .line 106
    invoke-static {v2, v1}, Lcom/voxel/launcher3/DynamicGrid;->dpiFromPx(ILandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, v0, Lcom/voxel/launcher3/DynamicGrid;->mMinWidth:F

    move/from16 v2, p4

    .line 107
    invoke-static {v2, v1}, Lcom/voxel/launcher3/DynamicGrid;->dpiFromPx(ILandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, v0, Lcom/voxel/launcher3/DynamicGrid;->mMinHeight:F

    .line 108
    new-instance v1, Lcom/voxel/launcher3/DeviceProfile;

    iget v5, v0, Lcom/voxel/launcher3/DynamicGrid;->mMinWidth:F

    iget v6, v0, Lcom/voxel/launcher3/DynamicGrid;->mMinHeight:F

    move-object v2, v1

    move-object/from16 v3, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p2

    move/from16 v13, p10

    invoke-direct/range {v2 .. v13}, Lcom/voxel/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Ljava/util/ArrayList;FFIIIILjava/util/Map;Landroid/content/res/Resources;Z)V

    iput-object v1, v0, Lcom/voxel/launcher3/DynamicGrid;->mProfile:Lcom/voxel/launcher3/DeviceProfile;

    return-void
.end method

.method public static dpiFromPx(ILandroid/util/DisplayMetrics;)F
    .locals 1

    .line 43
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method public static pxFromDp(FLandroid/util/DisplayMetrics;)I
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static pxFromSp(FLandroid/util/DisplayMetrics;)I
    .locals 1

    const/4 v0, 0x2

    .line 53
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/voxel/launcher3/DynamicGrid;->mProfile:Lcom/voxel/launcher3/DeviceProfile;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------- DYNAMIC GRID ------- \nWd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voxel/launcher3/DynamicGrid;->mProfile:Lcom/voxel/launcher3/DeviceProfile;

    iget v2, v2, Lcom/voxel/launcher3/DeviceProfile;->minWidthDps:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", Hd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voxel/launcher3/DynamicGrid;->mProfile:Lcom/voxel/launcher3/DeviceProfile;

    iget v2, v2, Lcom/voxel/launcher3/DeviceProfile;->minHeightDps:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", W: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voxel/launcher3/DynamicGrid;->mProfile:Lcom/voxel/launcher3/DeviceProfile;

    iget v2, v2, Lcom/voxel/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", H: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voxel/launcher3/DynamicGrid;->mProfile:Lcom/voxel/launcher3/DeviceProfile;

    iget v2, v2, Lcom/voxel/launcher3/DeviceProfile;->heightPx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/voxel/launcher3/DeviceProfile$ParamType;->values()[Lcom/voxel/launcher3/DeviceProfile$ParamType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/voxel/launcher3/DeviceProfile$ParamType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v5, p0, Lcom/voxel/launcher3/DynamicGrid;->mProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {v5, v4}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
