.class public Lcom/voxel/launcher3/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/FocusHelper$PagedFolderKeyEventListener;
    }
.end annotation


# direct methods
.method static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/voxel/launcher3/ShortcutAndWidgetContainer;
    .locals 0

    .line 434
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/voxel/launcher3/CellLayout;

    .line 435
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    return-object p0
.end method

.method static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 185
    invoke-static/range {p1 .. p1}, Lcom/voxel/launcher3/util/FocusLogic;->shouldConsume(I)Z

    move-result v2

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 190
    :cond_0
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v3

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    .line 200
    invoke-virtual {v5}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/CellLayout;

    .line 203
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a02fd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/voxel/launcher3/Workspace;

    .line 204
    invoke-virtual {v7}, Lcom/voxel/launcher3/Workspace;->getNextPage()I

    move-result v15

    .line 205
    invoke-virtual {v7}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v14

    .line 208
    invoke-virtual {v5, v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 209
    invoke-virtual {v6}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v9

    .line 210
    invoke-virtual {v9, v8}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v9, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 212
    invoke-virtual {v7, v15}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/voxel/launcher3/CellLayout;

    if-nez v10, :cond_1

    return v2

    .line 219
    :cond_1
    invoke-virtual {v10}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v13

    const/16 v16, 0x0

    .line 222
    move-object/from16 v11, v16

    check-cast v11, [[I

    const/16 v12, 0x13

    const/16 v17, -0x1

    const/4 v4, 0x0

    if-ne v1, v12, :cond_3

    .line 225
    invoke-virtual {v3}, Lcom/voxel/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v12

    if-nez v12, :cond_3

    .line 226
    iget v5, v3, Lcom/voxel/launcher3/DeviceProfile;->hotseatAllAppsRank:I

    iget v3, v3, Lcom/voxel/launcher3/DeviceProfile;->hotseatAllAppsRank:I

    if-ne v9, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const/4 v9, 0x1

    invoke-static {v10, v6, v9, v5, v3}, Lcom/voxel/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/CellLayout;ZIZ)[[I

    move-result-object v3

    .line 229
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v8, v5

    .line 230
    invoke-virtual {v10}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v5

    .line 231
    invoke-virtual {v10}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v9

    invoke-virtual {v6}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v6

    add-int/2addr v9, v6

    move-object v11, v3

    move v12, v8

    move v10, v9

    move v9, v5

    move-object v5, v13

    goto :goto_2

    :cond_3
    const/16 v12, 0x15

    if-ne v1, v12, :cond_5

    .line 234
    invoke-virtual {v3}, Lcom/voxel/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 235
    iget v5, v3, Lcom/voxel/launcher3/DeviceProfile;->hotseatAllAppsRank:I

    iget v3, v3, Lcom/voxel/launcher3/DeviceProfile;->hotseatAllAppsRank:I

    if-ne v9, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-static {v10, v6, v4, v5, v3}, Lcom/voxel/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/CellLayout;ZIZ)[[I

    move-result-object v3

    .line 238
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v8, v5

    .line 239
    invoke-virtual {v10}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v5

    invoke-virtual {v6}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v6

    add-int/2addr v5, v6

    .line 240
    invoke-virtual {v10}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v6

    move-object v11, v3

    move v9, v5

    move v10, v6

    move v12, v8

    move-object v5, v13

    goto :goto_2

    :cond_5
    const/16 v9, 0x16

    if-ne v1, v9, :cond_6

    .line 243
    invoke-virtual {v3}, Lcom/voxel/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v1, 0x5d

    move v12, v8

    move-object/from16 v5, v16

    const/4 v9, -0x1

    const/4 v10, -0x1

    goto :goto_2

    .line 248
    :cond_6
    invoke-static {v6}, Lcom/voxel/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/voxel/launcher3/CellLayout;)[[I

    move-result-object v3

    .line 249
    invoke-virtual {v6}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v9

    .line 250
    invoke-virtual {v6}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v6

    move-object v11, v3

    move v10, v6

    move v12, v8

    .line 256
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    move v8, v1

    move-object v6, v13

    move v13, v15

    move/from16 v17, v15

    move v15, v3

    .line 255
    invoke-static/range {v8 .. v15}, Lcom/voxel/launcher3/util/FocusLogic;->handleKeyEvent(III[[IIIIZ)I

    move-result v3

    const/4 v8, -0x8

    if-ne v3, v8, :cond_7

    const/4 v8, 0x1

    add-int/lit8 v15, v17, 0x1

    .line 260
    invoke-static {v7, v15}, Lcom/voxel/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 261
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 264
    invoke-virtual {v7, v15}, Lcom/voxel/launcher3/Workspace;->snapToPage(I)V

    :cond_7
    if-ne v5, v6, :cond_8

    .line 266
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_8

    .line 267
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    :cond_8
    if-eqz v5, :cond_a

    if-nez v16, :cond_9

    if-ltz v3, :cond_9

    .line 271
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    :cond_9
    if-eqz v16, :cond_a

    .line 274
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    .line 275
    invoke-static {v1, v0}, Lcom/voxel/launcher3/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    :cond_a
    return v2

    :cond_b
    :goto_3
    return v2
.end method

.method static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 21

    move-object/from16 v0, p0

    move/from16 v9, p1

    .line 285
    invoke-static/range {p1 .. p1}, Lcom/voxel/launcher3/util/FocusLogic;->shouldConsume(I)Z

    move-result v10

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v11, 0x1

    if-eq v1, v11, :cond_a

    if-nez v10, :cond_0

    goto/16 :goto_5

    .line 290
    :cond_0
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v1

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    .line 299
    invoke-virtual {v12}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/CellLayout;

    .line 300
    invoke-virtual {v2}, Lcom/voxel/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/voxel/launcher3/Workspace;

    .line 301
    invoke-virtual {v13}, Lcom/voxel/launcher3/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0a0242

    .line 302
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/view/ViewGroup;

    const v4, 0x7f0a0155

    .line 303
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/Hotseat;

    .line 305
    invoke-virtual {v12, v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 306
    invoke-virtual {v13, v2}, Lcom/voxel/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v15

    .line 307
    invoke-virtual {v13}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v16

    .line 308
    invoke-virtual {v2}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v4

    .line 309
    invoke-virtual {v2}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v6

    .line 311
    invoke-virtual {v3}, Lcom/voxel/launcher3/Hotseat;->getLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v7

    .line 312
    invoke-virtual {v7}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v8

    const/16 v11, 0x14

    move-object/from16 v17, v14

    const/4 v14, 0x0

    if-ne v9, v11, :cond_1

    .line 318
    invoke-virtual {v1}, Lcom/voxel/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v11

    if-nez v11, :cond_1

    .line 319
    iget v1, v1, Lcom/voxel/launcher3/DeviceProfile;->hotseatAllAppsRank:I

    .line 321
    invoke-virtual {v3}, Lcom/voxel/launcher3/Hotseat;->hasIcons()Z

    move-result v3

    const/4 v11, 0x1

    xor-int/2addr v3, v11

    .line 319
    invoke-static {v2, v7, v11, v1, v3}, Lcom/voxel/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/CellLayout;ZIZ)[[I

    move-result-object v1

    add-int/lit8 v6, v6, 0x1

    move v11, v4

    move/from16 v18, v6

    move-object v4, v1

    goto :goto_0

    :cond_1
    const/16 v11, 0x16

    if-ne v9, v11, :cond_2

    .line 324
    invoke-virtual {v1}, Lcom/voxel/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 325
    iget v1, v1, Lcom/voxel/launcher3/DeviceProfile;->hotseatAllAppsRank:I

    .line 327
    invoke-virtual {v3}, Lcom/voxel/launcher3/Hotseat;->hasIcons()Z

    move-result v3

    const/4 v11, 0x1

    xor-int/2addr v3, v11

    .line 325
    invoke-static {v2, v7, v14, v1, v3}, Lcom/voxel/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/CellLayout;ZIZ)[[I

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    move v11, v4

    move/from16 v18, v6

    move-object v4, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x43

    if-eq v9, v1, :cond_9

    const/16 v1, 0x70

    if-ne v9, v1, :cond_3

    goto/16 :goto_4

    .line 334
    :cond_3
    invoke-static {v2}, Lcom/voxel/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/voxel/launcher3/CellLayout;)[[I

    move-result-object v1

    move v11, v4

    move/from16 v18, v6

    move-object v4, v1

    .line 339
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v19

    move/from16 v1, p1

    move v2, v11

    move/from16 v3, v18

    move v6, v15

    move/from16 v7, v16

    move-object/from16 v20, v8

    move/from16 v8, v19

    .line 338
    invoke-static/range {v1 .. v8}, Lcom/voxel/launcher3/util/FocusLogic;->handleKeyEvent(III[[IIIIZ)I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    if-ltz v1, :cond_6

    .line 409
    invoke-virtual {v12}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 410
    invoke-virtual {v12, v1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto/16 :goto_3

    :pswitch_0
    const/16 v1, 0x13

    if-ne v9, v1, :cond_7

    move-object/from16 v14, v17

    goto/16 :goto_3

    :pswitch_1
    const/4 v3, 0x1

    sub-int/2addr v15, v3

    .line 368
    invoke-static {v13, v15}, Lcom/voxel/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 369
    invoke-virtual {v1, v14}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 370
    invoke-virtual {v13, v15}, Lcom/voxel/launcher3/Workspace;->snapToPage(I)V

    goto/16 :goto_3

    :pswitch_2
    const/4 v3, 0x1

    sub-int/2addr v15, v3

    .line 373
    invoke-static {v13, v15}, Lcom/voxel/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 375
    invoke-virtual {v13, v15}, Lcom/voxel/launcher3/Workspace;->snapToPage(I)V

    goto/16 :goto_3

    .line 402
    :pswitch_3
    invoke-virtual {v12, v14}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto/16 :goto_3

    :pswitch_4
    const/4 v3, 0x1

    .line 405
    invoke-virtual {v12}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v12, v1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto/16 :goto_3

    :pswitch_5
    const/4 v3, 0x1

    add-int/2addr v15, v3

    .line 378
    invoke-static {v13, v15}, Lcom/voxel/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 379
    invoke-virtual {v1, v14}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 380
    invoke-virtual {v13, v15}, Lcom/voxel/launcher3/Workspace;->snapToPage(I)V

    goto/16 :goto_3

    :pswitch_6
    const/4 v3, 0x1

    add-int/lit8 v4, v15, 0x1

    const/4 v5, -0x5

    if-ne v1, v5, :cond_4

    sub-int/2addr v15, v3

    move v6, v15

    goto :goto_1

    :cond_4
    move v6, v4

    .line 388
    :goto_1
    invoke-virtual {v13, v6}, Lcom/voxel/launcher3/Workspace;->snapToPage(I)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v1, v1, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 390
    invoke-static {v13, v6}, Lcom/voxel/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 392
    invoke-virtual {v13, v6}, Lcom/voxel/launcher3/Workspace;->snapToPage(I)V

    .line 393
    invoke-virtual {v12}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/CellLayout;

    const/4 v3, -0x1

    .line 394
    invoke-static {v2, v3, v1}, Lcom/voxel/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/voxel/launcher3/CellLayout;II)[[I

    move-result-object v4

    const/4 v1, 0x1

    add-int/lit8 v2, v11, 0x1

    const/16 v5, 0x64

    .line 397
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v8

    move/from16 v1, p1

    move/from16 v3, v18

    move/from16 v7, v16

    .line 395
    invoke-static/range {v1 .. v8}, Lcom/voxel/launcher3/util/FocusLogic;->handleKeyEvent(III[[IIIIZ)I

    move-result v1

    .line 398
    invoke-virtual {v12, v1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_3

    :pswitch_7
    add-int/lit8 v3, v15, -0x1

    const/16 v4, -0xa

    if-ne v1, v4, :cond_5

    const/4 v1, 0x1

    add-int/2addr v15, v1

    move v6, v15

    goto :goto_2

    :cond_5
    move v6, v3

    .line 353
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v1, v1, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 354
    invoke-static {v13, v6}, Lcom/voxel/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v12

    .line 355
    invoke-virtual {v13, v6}, Lcom/voxel/launcher3/Workspace;->snapToPage(I)V

    if-eqz v12, :cond_7

    .line 357
    invoke-virtual {v13, v6}, Lcom/voxel/launcher3/Workspace;->snapToPage(I)V

    .line 358
    invoke-virtual {v12}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/CellLayout;

    .line 360
    invoke-virtual {v2}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v3

    .line 359
    invoke-static {v2, v3, v1}, Lcom/voxel/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/voxel/launcher3/CellLayout;II)[[I

    move-result-object v4

    const/4 v1, 0x1

    add-int/lit8 v2, v11, 0x1

    const/16 v5, 0x64

    .line 363
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v8

    move/from16 v1, p1

    move/from16 v3, v18

    move/from16 v7, v16

    .line 361
    invoke-static/range {v1 .. v8}, Lcom/voxel/launcher3/util/FocusLogic;->handleKeyEvent(III[[IIIIZ)I

    move-result v1

    .line 364
    invoke-virtual {v12, v1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_3

    .line 411
    :cond_6
    invoke-virtual {v12}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    if-gt v3, v1, :cond_7

    .line 412
    invoke-virtual {v12}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_7

    .line 413
    invoke-virtual {v12}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v2, v20

    invoke-virtual {v2, v1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_3

    :cond_7
    move-object v14, v2

    :goto_3
    if-eqz v14, :cond_8

    .line 418
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    .line 419
    invoke-static {v9, v0}, Lcom/voxel/launcher3/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    :cond_8
    return v10

    :cond_9
    :goto_4
    return v10

    :cond_a
    :goto_5
    return v10

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method static playSoundEffect(ILandroid/view/View;)V
    .locals 0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 p0, 0x3

    .line 448
    invoke-virtual {p1, p0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    :sswitch_1
    const/4 p0, 0x1

    .line 445
    invoke-virtual {p1, p0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    :sswitch_2
    const/4 p0, 0x4

    .line 453
    invoke-virtual {p1, p0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    :sswitch_3
    const/4 p0, 0x2

    .line 458
    invoke-virtual {p1, p0}, Landroid/view/View;->playSoundEffect(I)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x7a -> :sswitch_3
        0x7b -> :sswitch_2
    .end sparse-switch
.end method
