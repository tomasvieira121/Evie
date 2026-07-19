.class public Lcom/voxel/simplesearchlauncher/importer/LauncherImportHelper;
.super Ljava/lang/Object;
.source "LauncherImportHelper.java"


# direct methods
.method public static getAvailableImporters(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    sget-object v1, Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;->IMPORTER_INTERFACES:[Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 76
    invoke-interface {v5}, Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 78
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 79
    invoke-interface {v5, p0}, Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;->canImport(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 81
    new-instance v7, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;

    invoke-direct {v7}, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;-><init>()V

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->label:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v7, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 84
    iput-object v5, v7, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->importerInterface:Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;

    .line 85
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getMainScreenItems(Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/importer/ImportData;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 97
    new-instance v12, Lcom/voxel/simplesearchlauncher/importer/ImportData;

    invoke-direct {v12}, Lcom/voxel/simplesearchlauncher/importer/ImportData;-><init>()V

    const/4 v13, 0x1

    .line 98
    iput v13, v12, Lcom/voxel/simplesearchlauncher/importer/ImportData;->mainScreenId:I

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v12, Lcom/voxel/simplesearchlauncher/importer/ImportData;->itemInfos:Ljava/util/List;

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v12, Lcom/voxel/simplesearchlauncher/importer/ImportData;->screens:Ljava/util/Set;

    const/4 v1, -0x1

    .line 101
    iput v1, v12, Lcom/voxel/simplesearchlauncher/importer/ImportData;->rows:I

    .line 102
    iput v1, v12, Lcom/voxel/simplesearchlauncher/importer/ImportData;->cols:I

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;->loadScreens(Landroid/content/ContentResolver;)Ljava/util/TreeMap;

    move-result-object v14

    .line 105
    invoke-interface {v0, v14}, Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;->getMainScreenId(Ljava/util/TreeMap;)J

    move-result-wide v15

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;->getCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v12

    .line 114
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 115
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    invoke-interface {v0, v1, v11}, Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;->loadItem(Landroid/database/Cursor;Landroid/content/Context;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 118
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 123
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v12

    .line 128
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 129
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 130
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    const-string v3, "window"

    .line 131
    invoke-virtual {v11, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 132
    invoke-virtual {v3, v0, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 133
    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 134
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 135
    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 138
    new-instance v17, Lcom/voxel/launcher3/DynamicGrid;

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 140
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 141
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, v2, Landroid/graphics/Point;->x:I

    iget v8, v2, Landroid/graphics/Point;->y:I

    iget v9, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 143
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarDesktopEnabled()Z

    move-result v19

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v5

    move/from16 v20, v4

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move/from16 v8, v20

    move-object/from16 v9, v18

    move-object/from16 p0, v10

    move/from16 v10, v19

    invoke-direct/range {v0 .. v10}, Lcom/voxel/launcher3/DynamicGrid;-><init>(Landroid/content/Context;Landroid/content/res/Resources;IIIIIILjava/util/Map;Z)V

    .line 145
    invoke-virtual/range {v17 .. v17}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr v0, v13

    .line 146
    invoke-virtual/range {v17 .. v17}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v1

    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    iget v1, v1, Lcom/voxel/launcher3/CellParams;->numRows:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    .line 147
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 151
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide/16 v7, -0x64

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/ItemInfo;

    .line 152
    iget-wide v9, v6, Lcom/voxel/launcher3/ItemInfo;->container:J

    cmp-long v18, v9, v7

    if-nez v18, :cond_5

    .line 153
    iget v7, v6, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    if-le v7, v0, :cond_4

    .line 154
    iget v0, v6, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    .line 157
    :cond_4
    iget v7, v6, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    if-le v7, v1, :cond_5

    .line 158
    iget v1, v6, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    .line 162
    :cond_5
    iget-wide v7, v6, Lcom/voxel/launcher3/ItemInfo;->container:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_6

    .line 164
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-wide v8, v6, Lcom/voxel/launcher3/ItemInfo;->container:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_6
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :cond_7
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 173
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/voxel/launcher3/ItemInfo;

    .line 174
    iget v10, v9, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    if-ne v10, v2, :cond_8

    move-object/from16 v18, v3

    .line 175
    iget-wide v2, v9, Lcom/voxel/launcher3/ItemInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    check-cast v9, Lcom/voxel/launcher3/FolderInfo;

    invoke-interface {v5, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    move-object/from16 v18, v3

    :goto_3
    move-object/from16 v3, v18

    const/4 v2, 0x2

    goto :goto_2

    :cond_9
    move-object/from16 v18, v3

    .line 180
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v19, -0x65

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 181
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v6, v21, v19

    if-eqz v6, :cond_f

    .line 182
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    cmp-long v6, v19, v7

    if-nez v6, :cond_b

    goto :goto_4

    .line 186
    :cond_b
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 187
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/FolderInfo;

    if-nez v3, :cond_c

    .line 192
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/ItemInfo;

    move-object/from16 v9, p0

    .line 193
    invoke-interface {v9, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    move-object/from16 v9, p0

    .line 197
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v10, v19

    check-cast v10, Lcom/voxel/launcher3/ItemInfo;

    .line 198
    instance-of v13, v10, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v13, :cond_d

    .line 199
    check-cast v10, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-virtual {v3, v10}, Lcom/voxel/launcher3/FolderInfo;->add(Lcom/voxel/launcher3/ShortcutInfo;)V

    :cond_d
    const/4 v13, 0x1

    goto :goto_6

    :cond_e
    move-object/from16 p0, v9

    goto :goto_4

    :cond_f
    move-object/from16 v9, p0

    goto :goto_4

    .line 205
    :cond_10
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 206
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v2, :cond_11

    .line 209
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    if-eqz v3, :cond_28

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    goto/16 :goto_17

    .line 215
    :cond_12
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 217
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v9, Landroid/util/Pair;

    iget v10, v12, Lcom/voxel/simplesearchlauncher/importer/ImportData;->mainScreenId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v9, v10, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget v6, v12, Lcom/voxel/simplesearchlauncher/importer/ImportData;->mainScreenId:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    if-eqz v14, :cond_14

    .line 222
    invoke-virtual {v14}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x1

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 223
    invoke-virtual {v14, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v22, v9, v15

    if-nez v22, :cond_13

    goto :goto_7

    .line 229
    :cond_13
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v23, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v10, v13, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v7, v23

    const/4 v13, 0x0

    goto :goto_7

    :cond_14
    add-int/lit8 v6, v1, 0x1

    const/4 v7, 0x2

    add-int/2addr v1, v7

    add-int/lit8 v7, v0, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_1f

    .line 243
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1f

    .line 244
    sget-object v13, Lcom/voxel/simplesearchlauncher/importer/-$$Lambda$LauncherImportHelper$UeeCrOH7r_JvO2ATXnZiDRFty2k;->INSTANCE:Lcom/voxel/simplesearchlauncher/importer/-$$Lambda$LauncherImportHelper$UeeCrOH7r_JvO2ATXnZiDRFty2k;

    invoke-static {v3, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 246
    new-array v13, v7, [Lcom/voxel/launcher3/ItemInfo;

    .line 249
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-lt v14, v7, :cond_16

    const/4 v0, 0x0

    .line 250
    :goto_8
    array-length v8, v13

    if-ge v0, v8, :cond_15

    .line 251
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voxel/launcher3/ItemInfo;

    aput-object v8, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    const/16 v16, 0x1

    goto :goto_e

    .line 254
    :cond_16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/voxel/launcher3/ItemInfo;

    iget v14, v14, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    sub-int v0, v14, v0

    if-gtz v0, :cond_18

    .line 259
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/ItemInfo;

    .line 260
    iget v8, v3, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    aput-object v3, v13, v8

    goto :goto_9

    :cond_17
    const/16 v16, 0x1

    goto :goto_e

    .line 266
    :cond_18
    new-instance v15, Ljava/util/ArrayList;

    const/16 v16, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v14, :cond_19

    .line 268
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 271
    :cond_19
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voxel/launcher3/ItemInfo;

    .line 272
    iget v9, v8, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    invoke-virtual {v15, v9, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_1a
    const/4 v3, 0x0

    :goto_c
    if-ge v3, v0, :cond_1b

    .line 277
    invoke-static {v15}, Lcom/voxel/simplesearchlauncher/importer/LauncherImportHelper;->removeMiddleNullElement(Ljava/util/List;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1b
    const/4 v0, 0x0

    .line 280
    :goto_d
    array-length v3, v13

    if-ge v0, v3, :cond_1c

    .line 281
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/ItemInfo;

    aput-object v3, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    :goto_e
    const/4 v0, 0x0

    .line 287
    :goto_f
    array-length v3, v13

    if-ge v0, v3, :cond_1e

    .line 288
    aget-object v3, v13, v0

    if-eqz v3, :cond_1d

    const-wide/16 v8, -0x1

    .line 292
    iput-wide v8, v3, Lcom/voxel/launcher3/ItemInfo;->id:J

    const-wide/16 v8, -0x64

    .line 293
    iput-wide v8, v3, Lcom/voxel/launcher3/ItemInfo;->container:J

    .line 294
    iget v8, v12, Lcom/voxel/simplesearchlauncher/importer/ImportData;->mainScreenId:I

    int-to-long v8, v8

    iput-wide v8, v3, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 295
    iput v0, v3, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    .line 296
    iput v6, v3, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    move-object/from16 v9, v18

    .line 298
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1d
    move-object/from16 v9, v18

    :goto_10
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v18, v9

    goto :goto_f

    :cond_1e
    move-object/from16 v9, v18

    move-object v8, v13

    goto :goto_11

    :cond_1f
    move-object/from16 v9, v18

    const/16 v16, 0x1

    :goto_11
    if-eqz v2, :cond_25

    .line 304
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/ItemInfo;

    if-eqz v8, :cond_24

    .line 309
    array-length v3, v8

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v3, :cond_22

    aget-object v10, v8, v6

    if-eqz v10, :cond_21

    .line 311
    iget v13, v10, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v14, v2, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    if-ne v13, v14, :cond_21

    iget v10, v10, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iget v13, v2, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    if-ne v10, v13, :cond_21

    const/4 v3, 0x1

    goto :goto_14

    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_22
    const/4 v3, 0x0

    :goto_14
    if-eqz v3, :cond_23

    goto :goto_12

    :cond_23
    const-wide/16 v13, -0x1

    goto :goto_15

    :cond_24
    const-wide/16 v13, -0x1

    .line 323
    :goto_15
    iput-wide v13, v2, Lcom/voxel/launcher3/ItemInfo;->id:J

    const-wide/16 v13, -0x64

    .line 324
    iput-wide v13, v2, Lcom/voxel/launcher3/ItemInfo;->container:J

    .line 326
    iget-wide v13, v2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-eqz v3, :cond_20

    .line 328
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v13, v3

    iput-wide v13, v2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 329
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 333
    :cond_25
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/FolderInfo;

    .line 335
    iget-object v3, v2, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/ItemInfo;

    const-wide/16 v13, -0x1

    .line 336
    iput-wide v13, v5, Lcom/voxel/launcher3/ItemInfo;->id:J

    .line 337
    iget-wide v13, v2, Lcom/voxel/launcher3/FolderInfo;->id:J

    iput-wide v13, v5, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v13, 0x0

    .line 338
    iput-wide v13, v5, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    goto :goto_16

    .line 342
    :cond_27
    iput-object v9, v12, Lcom/voxel/simplesearchlauncher/importer/ImportData;->itemInfos:Ljava/util/List;

    .line 343
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v12, Lcom/voxel/simplesearchlauncher/importer/ImportData;->screens:Ljava/util/Set;

    .line 344
    iput v1, v12, Lcom/voxel/simplesearchlauncher/importer/ImportData;->rows:I

    .line 345
    iput v7, v12, Lcom/voxel/simplesearchlauncher/importer/ImportData;->cols:I

    .line 348
    invoke-virtual/range {v17 .. v17}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    sget-object v2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    .line 349
    invoke-virtual/range {v17 .. v17}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/voxel/launcher3/DeviceProfile;->getMaxWorkspaceIconScale(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v0, v2

    .line 352
    invoke-virtual/range {v17 .. v17}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v2

    sget-object v3, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v2

    int-to-float v3, v7

    .line 353
    iput v3, v2, Lcom/voxel/launcher3/CellParams;->numColumns:F

    int-to-float v1, v1

    .line 354
    iput v1, v2, Lcom/voxel/launcher3/CellParams;->numRows:F

    .line 355
    invoke-virtual/range {v17 .. v17}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/voxel/launcher3/DeviceProfile;->updateAvailableDimensions(Landroid/content/Context;)V

    .line 356
    invoke-virtual/range {v17 .. v17}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/voxel/launcher3/DeviceProfile;->getMaxWorkspaceIconScale(Landroid/content/Context;)F

    move-result v1

    mul-float v0, v0, v1

    .line 357
    iput v0, v12, Lcom/voxel/simplesearchlauncher/importer/ImportData;->iconScale:F

    return-object v12

    :cond_28
    :goto_17
    return-object v12
.end method

.method public static importItems(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/ImportData;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V
    .locals 13

    .line 403
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/importer/ImportData;->screens:Ljava/util/Set;

    .line 405
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 406
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_id"

    .line 407
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "screenRank"

    .line 408
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/voxel/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/importer/ImportData;->itemInfos:Ljava/util/List;

    .line 413
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/ItemInfo;

    .line 414
    iget-wide v4, v1, Lcom/voxel/launcher3/ItemInfo;->container:J

    iget-wide v6, v1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    iget v8, v1, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v9, v1, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, v1

    invoke-static/range {v2 .. v10}, Lcom/voxel/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJIIZ)V

    .line 416
    instance-of v2, v1, Lcom/voxel/launcher3/FolderInfo;

    if-eqz v2, :cond_1

    .line 417
    check-cast v1, Lcom/voxel/launcher3/FolderInfo;

    .line 418
    iget-object v2, v1, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/voxel/launcher3/ItemInfo;

    .line 419
    iget-wide v3, v1, Lcom/voxel/launcher3/FolderInfo;->id:J

    iput-wide v3, v5, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v3, 0x0

    .line 420
    iput-wide v3, v5, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 421
    iget-wide v6, v1, Lcom/voxel/launcher3/FolderInfo;->id:J

    const-wide/16 v8, 0x0

    iget v10, v5, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v11, v5, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    const/4 v12, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v12}, Lcom/voxel/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJIIZ)V

    goto :goto_1

    .line 426
    :cond_2
    new-instance v0, Lcom/voxel/launcher3/CellParams;

    invoke-direct {v0}, Lcom/voxel/launcher3/CellParams;-><init>()V

    .line 427
    iget v1, p1, Lcom/voxel/simplesearchlauncher/importer/ImportData;->rows:I

    int-to-float v1, v1

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    .line 428
    iget v1, p1, Lcom/voxel/simplesearchlauncher/importer/ImportData;->cols:I

    int-to-float v1, v1

    iput v1, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    .line 429
    iget p1, p1, Lcom/voxel/simplesearchlauncher/importer/ImportData;->iconScale:F

    iput p1, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    const/4 p1, 0x1

    .line 430
    iput-boolean p1, v0, Lcom/voxel/launcher3/CellParams;->enabled:Z

    .line 431
    iput-boolean p1, v0, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    .line 432
    sget-object p1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p2, p0, p1, v0}, Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;->setLayout(Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile$ParamType;Lcom/voxel/launcher3/CellParams;)V

    return-void
.end method

.method static synthetic lambda$getMainScreenItems$0(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;)I
    .locals 0

    .line 244
    iget p0, p0, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method private static removeMiddleNullElement(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 367
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 373
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    move v4, v1

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x1

    :goto_0
    if-nez v1, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    return v0

    .line 376
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    if-gez v4, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    .line 381
    :cond_4
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    .line 382
    invoke-interface {p0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return v2

    :cond_5
    :goto_2
    add-int/2addr v4, v5

    add-int/2addr v5, v2

    mul-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    return v0
.end method
