.class public Lcom/voxel/launcher3/FolderPagedView;
.super Lcom/voxel/launcher3/PagedView;
.source "FolderPagedView.java"


# static fields
.field private static final sTempPosArray:[I


# instance fields
.field private mAllocatedContentSize:I

.field private mCellParams:Lcom/voxel/launcher3/CellParams;

.field private mFocusIndicatorView:Lcom/voxel/launcher3/FocusIndicatorView;

.field private mFolder:Lcom/voxel/launcher3/Folder;

.field private mGridCountX:I

.field private mGridCountY:I

.field private final mIconCache:Lcom/voxel/launcher3/IconCache;

.field private final mInflater:Landroid/view/LayoutInflater;

.field public final mIsRtl:Z

.field private mKeyListener:Lcom/voxel/launcher3/FocusHelper$PagedFolderKeyEventListener;

.field private mMaxCountX:I

.field private mMaxCountY:I

.field private mMaxItemsPerPage:I

.field private mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

.field final mPendingAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 65
    new-array v0, v0, [I

    sput-object v0, Lcom/voxel/launcher3/FolderPagedView;->sTempPosArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/voxel/launcher3/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    .line 92
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p2

    .line 94
    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->FOLDER:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    .line 96
    iget-object v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v0, v0

    iput v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxCountX:I

    .line 97
    iget-object v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int v0, v0

    iput v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxCountY:I

    .line 99
    iget v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxCountX:I

    iget v1, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxCountY:I

    mul-int v0, v0, v1

    iput v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/FolderPagedView;->mInflater:Landroid/view/LayoutInflater;

    .line 102
    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/FolderPagedView;->mIconCache:Lcom/voxel/launcher3/IconCache;

    .line 104
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/voxel/launcher3/FolderPagedView;->mIsRtl:Z

    const/4 p1, 0x1

    .line 105
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/FolderPagedView;->setImportantForAccessibility(I)V

    return-void
.end method

.method private arrangeChildren(Ljava/util/ArrayList;IZ)V
    .locals 24
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;IZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 302
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/FolderPagedView;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 303
    invoke-virtual {v0, v4}, Lcom/voxel/launcher3/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/CellLayout;

    .line 304
    invoke-virtual {v5}, Lcom/voxel/launcher3/CellLayout;->removeAllViews()V

    .line 305
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 307
    :cond_0
    invoke-direct {v0, v1}, Lcom/voxel/launcher3/FolderPagedView;->setupContentDimensions(I)V

    .line 309
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v5, v1, :cond_9

    .line 317
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v5, :cond_1

    move-object/from16 v9, p1

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    move-object v12, v10

    goto :goto_2

    :cond_1
    move-object/from16 v9, p1

    const/4 v12, 0x0

    :goto_2
    if-eqz v6, :cond_2

    .line 318
    iget v10, v0, Lcom/voxel/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    if-lt v7, v10, :cond_4

    .line 320
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 321
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/CellLayout;

    goto :goto_3

    .line 323
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/FolderPagedView;->createAndAddNewPage()Lcom/voxel/launcher3/CellLayout;

    move-result-object v6

    :goto_3
    const/4 v7, 0x0

    :cond_4
    if-eqz v12, :cond_8

    .line 329
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 330
    iget v10, v0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountX:I

    rem-int v11, v7, v10

    .line 331
    div-int v10, v7, v10

    .line 332
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/voxel/launcher3/ItemInfo;

    .line 333
    iget v14, v13, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    if-ne v14, v11, :cond_5

    iget v14, v13, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    if-ne v14, v10, :cond_5

    iget v14, v13, Lcom/voxel/launcher3/ItemInfo;->rank:I

    if-eq v14, v8, :cond_6

    .line 334
    :cond_5
    iput v11, v13, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    .line 335
    iput v10, v13, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    .line 336
    iput v8, v13, Lcom/voxel/launcher3/ItemInfo;->rank:I

    if-eqz p3, :cond_6

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v16

    iget-object v10, v0, Lcom/voxel/launcher3/FolderPagedView;->mFolder:Lcom/voxel/launcher3/Folder;

    iget-object v10, v10, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-wide v10, v10, Lcom/voxel/launcher3/FolderInfo;->id:J

    const-wide/16 v20, 0x0

    iget v14, v13, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v4, v13, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    move-object/from16 v17, v13

    move-wide/from16 v18, v10

    move/from16 v22, v14

    move/from16 v23, v4

    invoke-static/range {v16 .. v23}, Lcom/voxel/launcher3/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJII)V

    .line 342
    :cond_6
    iget v4, v13, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iput v4, v15, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 343
    iget v4, v13, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iput v4, v15, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 347
    iget-object v4, v0, Lcom/voxel/launcher3/FolderPagedView;->mFolder:Lcom/voxel/launcher3/Folder;

    iget-object v4, v4, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    if-eqz v4, :cond_7

    .line 348
    iget-object v4, v0, Lcom/voxel/launcher3/FolderPagedView;->mFolder:Lcom/voxel/launcher3/Folder;

    iget-object v4, v4, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v4, v13}, Lcom/voxel/launcher3/Launcher;->getViewIdForItem(Lcom/voxel/launcher3/ItemInfo;)I

    move-result v4

    move v14, v4

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    :goto_4
    const/4 v13, -0x1

    const/16 v16, 0x1

    move-object v11, v6

    .line 350
    invoke-virtual/range {v11 .. v16}, Lcom/voxel/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/voxel/launcher3/CellLayout$LayoutParams;Z)Z

    :cond_8
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 361
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 362
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Lcom/voxel/launcher3/FolderPagedView;->removeView(Landroid/view/View;)V

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_b

    .line 366
    invoke-virtual {v0, v3}, Lcom/voxel/launcher3/FolderPagedView;->setCurrentPage(I)V

    .line 369
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/FolderPagedView;->getPageCount()I

    move-result v2

    if-le v2, v1, :cond_c

    const/4 v2, 0x1

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/FolderPagedView;->setEnableOverscroll(Z)V

    .line 372
    iget-object v2, v0, Lcom/voxel/launcher3/FolderPagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/FolderPagedView;->getPageCount()I

    move-result v4

    if-le v4, v1, :cond_d

    goto :goto_7

    :cond_d
    const/16 v3, 0x8

    :goto_7
    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/PageIndicator;->setVisibility(I)V

    return-void
.end method

.method private createAndAddNewPage()Lcom/voxel/launcher3/CellLayout;
    .locals 3

    .line 255
    new-instance v0, Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/launcher3/CellLayout;-><init>(Landroid/content/Context;)V

    .line 256
    iget-object v1, p0, Lcom/voxel/launcher3/FolderPagedView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v1, v1, Lcom/voxel/launcher3/CellParams;->cellWidthPx:I

    iget-object v2, p0, Lcom/voxel/launcher3/FolderPagedView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v2, v2, Lcom/voxel/launcher3/CellParams;->cellHeightPx:I

    invoke-virtual {v0, v1, v2}, Lcom/voxel/launcher3/CellLayout;->setCellDimensions(II)V

    .line 257
    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setMotionEventSplittingEnabled(Z)V

    const/4 v1, 0x2

    .line 258
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CellLayout;->setImportantForAccessibility(I)V

    const/4 v1, 0x1

    .line 259
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CellLayout;->setInvertIfRtl(Z)V

    .line 260
    iget v1, p0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountX:I

    iget v2, p0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountY:I

    invoke-virtual {v0, v1, v2}, Lcom/voxel/launcher3/CellLayout;->setGridSize(II)V

    .line 261
    iget-object v1, p0, Lcom/voxel/launcher3/FolderPagedView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CellLayout;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 263
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->generateDefaultLayoutParams()Lcom/voxel/launcher3/PagedView$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/voxel/launcher3/FolderPagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static synthetic lambda$realTimeReorder$0(Lcom/voxel/launcher3/FolderPagedView;Landroid/view/View;FI)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 644
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 645
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/launcher3/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/voxel/launcher3/ShortcutInfo;I)V

    return-void
.end method

.method private setupContentDimensions(I)V
    .locals 3

    .line 121
    iput p1, p0, Lcom/voxel/launcher3/FolderPagedView;->mAllocatedContentSize:I

    .line 122
    iget v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    .line 123
    iget p1, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxCountX:I

    iput p1, p0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountX:I

    .line 124
    iget p1, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxCountY:I

    iput p1, p0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountY:I

    goto :goto_1

    .line 125
    :cond_0
    iget v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxCountX:I

    if-ge p1, v0, :cond_1

    .line 126
    iput p1, p0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountX:I

    .line 127
    iput v1, p0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountY:I

    goto :goto_1

    .line 130
    :cond_1
    iput v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountX:I

    .line 131
    div-int v2, p1, v0

    rem-int/2addr p1, v0

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    add-int/2addr v2, p1

    iput v2, p0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountY:I

    .line 135
    :goto_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getPageCount()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_2
    if-ltz p1, :cond_3

    .line 136
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    iget v1, p0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountX:I

    iget v2, p0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountY:I

    invoke-virtual {v0, v1, v2}, Lcom/voxel/launcher3/CellLayout;->setGridSize(II)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public addViewForRank(Landroid/view/View;Lcom/voxel/launcher3/ShortcutInfo;I)V
    .locals 7

    .line 183
    iget v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v1, p3, v0

    .line 184
    div-int v0, p3, v0

    .line 186
    iput p3, p2, Lcom/voxel/launcher3/ShortcutInfo;->rank:I

    .line 187
    iget p3, p0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountX:I

    rem-int v2, v1, p3

    iput v2, p2, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    .line 188
    div-int/2addr v1, p3

    iput v1, p2, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 191
    iget p3, p2, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    iput p3, v5, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 192
    iget p3, p2, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    iput p3, v5, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 195
    iget-object p3, p0, Lcom/voxel/launcher3/FolderPagedView;->mFolder:Lcom/voxel/launcher3/Folder;

    iget-object p3, p3, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    if-eqz p3, :cond_0

    .line 196
    iget-object p3, p0, Lcom/voxel/launcher3/FolderPagedView;->mFolder:Lcom/voxel/launcher3/Folder;

    iget-object p3, p3, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p3, p2}, Lcom/voxel/launcher3/Launcher;->getViewIdForItem(Lcom/voxel/launcher3/ItemInfo;)I

    move-result p2

    move v4, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v4, 0x0

    .line 198
    :goto_0
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/voxel/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/voxel/launcher3/CellLayout$LayoutParams;Z)Z

    return-void
.end method

.method public allocateRankForNewItem(Lcom/voxel/launcher3/ShortcutInfo;)I
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getItemCount()I

    move-result p1

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/voxel/launcher3/FolderPagedView;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 166
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 167
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/voxel/launcher3/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    return p1
.end method

.method public arrangeChildren(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 296
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/launcher3/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ShortcutInfo;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/ShortcutInfo;

    .line 153
    invoke-virtual {p0, v2, p2}, Lcom/voxel/launcher3/FolderPagedView;->createNewView(Lcom/voxel/launcher3/ShortcutInfo;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/voxel/launcher3/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    return-object v1
.end method

.method public clearScrollHint()V
    .locals 2

    .line 507
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/FolderPagedView;->getScrollForPage(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FolderPagedView;->snapToPage(I)V

    :cond_0
    return-void
.end method

.method public completePendingPageChanges()V
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/voxel/launcher3/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 518
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 519
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 520
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createAndAddViewForRank(Lcom/voxel/launcher3/ShortcutInfo;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/FolderPagedView;->createNewView(Lcom/voxel/launcher3/ShortcutInfo;Z)Landroid/view/View;

    move-result-object v0

    .line 174
    invoke-virtual {p0, v0, p1, p2}, Lcom/voxel/launcher3/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/voxel/launcher3/ShortcutInfo;I)V

    return-object v0
.end method

.method public createNewView(Lcom/voxel/launcher3/ShortcutInfo;Z)Landroid/view/View;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d0051

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/BubbleTextView;

    .line 207
    iget-object v2, p0, Lcom/voxel/launcher3/FolderPagedView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/BubbleTextView;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 208
    iget-object v2, p0, Lcom/voxel/launcher3/FolderPagedView;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {v0, p1, v2, p2, v1}, Lcom/voxel/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/IconCache;ZZ)V

    .line 209
    iget-object p2, p0, Lcom/voxel/launcher3/FolderPagedView;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v0, p2}, Lcom/voxel/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object p2, p0, Lcom/voxel/launcher3/FolderPagedView;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v0, p2}, Lcom/voxel/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 211
    iget-object p2, p0, Lcom/voxel/launcher3/FolderPagedView;->mFocusIndicatorView:Lcom/voxel/launcher3/FocusIndicatorView;

    invoke-virtual {v0, p2}, Lcom/voxel/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 212
    iget-object p2, p0, Lcom/voxel/launcher3/FolderPagedView;->mKeyListener:Lcom/voxel/launcher3/FocusHelper$PagedFolderKeyEventListener;

    invoke-virtual {v0, p2}, Lcom/voxel/launcher3/BubbleTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 214
    new-instance p2, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    iget v2, p1, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    iget v3, p1, Lcom/voxel/launcher3/ShortcutInfo;->spanX:I

    iget p1, p1, Lcom/voxel/launcher3/ShortcutInfo;->spanY:I

    invoke-direct {p2, v1, v2, v3, p1}, Lcom/voxel/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, p2}, Lcom/voxel/launcher3/BubbleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public findNearestArea(II)I
    .locals 8

    .line 399
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getNextPage()I

    move-result v0

    .line 400
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object v7

    .line 401
    sget-object v6, Lcom/voxel/launcher3/FolderPagedView;->sTempPosArray:[I

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v7

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/voxel/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    .line 402
    iget-object p1, p0, Lcom/voxel/launcher3/FolderPagedView;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Folder;->isLayoutRtl()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 403
    sget-object p1, Lcom/voxel/launcher3/FolderPagedView;->sTempPosArray:[I

    invoke-virtual {v7}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v2

    sget-object v3, Lcom/voxel/launcher3/FolderPagedView;->sTempPosArray:[I

    aget v3, v3, p2

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    aput v2, p1, p2

    .line 405
    :cond_0
    iget p1, p0, Lcom/voxel/launcher3/FolderPagedView;->mAllocatedContentSize:I

    sub-int/2addr p1, v1

    iget v2, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    mul-int v0, v0, v2

    sget-object v2, Lcom/voxel/launcher3/FolderPagedView;->sTempPosArray:[I

    aget v1, v2, v1

    iget v3, p0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountX:I

    mul-int v1, v1, v3

    add-int/2addr v0, v1

    aget p2, v2, p2

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getAccessibilityDescription()Ljava/lang/String;
    .locals 4

    .line 468
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120148

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountX:I

    .line 469
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 468
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllocatedContentSize()I
    .locals 1

    .line 554
    iget v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mAllocatedContentSize:I

    return v0
.end method

.method public getCellParams()Lcom/voxel/launcher3/CellParams;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    return-object v0
.end method

.method protected getChildGap()I
    .locals 2

    .line 269
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentCellLayout()Lcom/voxel/launcher3/CellLayout;
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredHeight()I
    .locals 2

    .line 381
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 382
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getDesiredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method public getDesiredWidth()I
    .locals 2

    .line 376
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 377
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getDesiredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method public getItemCount()I
    .locals 3

    .line 386
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 391
    :cond_0
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    mul-int v0, v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public getItemsForPage(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 456
    :goto_0
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    .line 457
    :goto_1
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 458
    invoke-virtual {p1, v3, v2}, Lcom/voxel/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 460
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getLastItem()Landroid/view/View;
    .locals 4

    .line 420
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getCurrentCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    .line 425
    iget v1, p0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountX:I

    if-lez v1, :cond_1

    .line 426
    rem-int v3, v2, v1

    div-int/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 428
    :cond_1
    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPageAt(I)Landroid/view/View;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object p1

    return-object p1
.end method

.method public getPageAt(I)Lcom/voxel/launcher3/CellLayout;
    .locals 0

    .line 241
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout;

    return-object p1
.end method

.method protected getPageIndicatorMarker(I)Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;
    .locals 2

    .line 411
    new-instance p1, Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;

    const v0, 0x7f0800f9

    const v1, 0x7f0800fa

    invoke-direct {p1, v0, v1}, Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;-><init>(II)V

    return-object p1
.end method

.method public isFull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public itemsPerPage()I
    .locals 1

    .line 701
    iget v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    return v0
.end method

.method public iterateOverItems(Lcom/voxel/launcher3/Workspace$ItemOperator;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 438
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 439
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object v2

    const/4 v3, 0x0

    .line 440
    :goto_1
    invoke-virtual {v2}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    .line 441
    :goto_2
    invoke-virtual {v2}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 442
    invoke-virtual {v2, v4, v3}, Lcom/voxel/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 443
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/ItemInfo;

    invoke-interface {p1, v6, v5, p0}, Lcom/voxel/launcher3/Workspace$ItemOperator;->evaluate(Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected notifyPageSwitchListener()V
    .locals 1

    .line 484
    invoke-super {p0}, Lcom/voxel/launcher3/PagedView;->notifyPageSwitchListener()V

    .line 485
    iget-object v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mFolder:Lcom/voxel/launcher3/Folder;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->updateTextViewFocus()V

    :cond_0
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 3

    .line 532
    invoke-super {p0}, Lcom/voxel/launcher3/PagedView;->onPageBeginMoving()V

    .line 533
    sget-object v0, Lcom/voxel/launcher3/FolderPagedView;->sTempPosArray:[I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FolderPagedView;->getVisiblePages([I)V

    .line 534
    sget-object v0, Lcom/voxel/launcher3/FolderPagedView;->sTempPosArray:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    sget-object v1, Lcom/voxel/launcher3/FolderPagedView;->sTempPosArray:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-gt v0, v1, :cond_0

    .line 535
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FolderPagedView;->verifyVisibleHighResIcons(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public rankOnCurrentPage(I)Z
    .locals 1

    .line 526
    iget v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    div-int/2addr p1, v0

    .line 527
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getNextPage()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public realTimeReorder(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/FolderPagedView;->completePendingPageChanges()V

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/FolderPagedView;->getNextPage()I

    move-result v3

    .line 568
    iget v4, v0, Lcom/voxel/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    div-int v5, v2, v4

    .line 569
    rem-int v4, v2, v4

    if-eq v5, v3, :cond_0

    const-string v5, "FolderPagedView"

    const-string v6, "Cannot animate when the target cell is invisible"

    .line 572
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    iget v5, v0, Lcom/voxel/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v6, v1, v5

    .line 575
    div-int v7, v1, v5

    if-ne v2, v1, :cond_1

    return-void

    :cond_1
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-le v2, v1, :cond_3

    if-ge v7, v3, :cond_2

    mul-int v8, v3, v5

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    if-le v7, v3, :cond_4

    add-int/lit8 v2, v3, 0x1

    mul-int v2, v2, v5

    sub-int/2addr v2, v10

    add-int/lit8 v6, v5, -0x1

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_1
    move v8, v2

    const/4 v2, -0x1

    :goto_2
    if-eq v1, v8, :cond_9

    add-int v5, v1, v2

    .line 625
    iget v7, v0, Lcom/voxel/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    div-int v11, v5, v7

    .line 626
    rem-int v7, v5, v7

    .line 627
    iget v12, v0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountX:I

    rem-int v13, v7, v12

    .line 628
    div-int/2addr v7, v12

    .line 630
    invoke-virtual {v0, v11}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object v12

    .line 631
    invoke-virtual {v12, v13, v7}, Lcom/voxel/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_8

    if-eq v3, v11, :cond_5

    .line 634
    invoke-virtual {v12, v7}, Lcom/voxel/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 635
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-virtual {v0, v7, v11, v1}, Lcom/voxel/launcher3/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/voxel/launcher3/ShortcutInfo;I)V

    goto :goto_5

    .line 639
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v11

    .line 641
    new-instance v12, Lcom/voxel/launcher3/-$$Lambda$FolderPagedView$Uv1Yq0vhokZ-xcWrgQ7icXeaeDc;

    invoke-direct {v12, v0, v7, v11, v1}, Lcom/voxel/launcher3/-$$Lambda$FolderPagedView$Uv1Yq0vhokZ-xcWrgQ7icXeaeDc;-><init>(Lcom/voxel/launcher3/FolderPagedView;Landroid/view/View;FI)V

    .line 647
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-lez v2, :cond_6

    const/4 v11, 0x1

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    iget-boolean v13, v0, Lcom/voxel/launcher3/FolderPagedView;->mIsRtl:Z

    xor-int/2addr v11, v13

    if-eqz v11, :cond_7

    .line 648
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    neg-int v11, v11

    goto :goto_4

    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    :goto_4
    int-to-float v11, v11

    invoke-virtual {v1, v11}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v13, 0xe6

    .line 649
    invoke-virtual {v1, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v13, 0x0

    .line 650
    invoke-virtual {v1, v13, v14}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 651
    invoke-virtual {v1, v12}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 652
    iget-object v1, v0, Lcom/voxel/launcher3/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v1, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_5
    move v1, v5

    goto :goto_2

    :cond_9
    sub-int v1, v4, v6

    mul-int v1, v1, v2

    if-gtz v1, :cond_a

    return-void

    .line 663
    :cond_a
    invoke-virtual {v0, v3}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object v1

    const/high16 v3, 0x41f00000    # 30.0f

    :goto_6
    if-eq v6, v4, :cond_d

    add-int v5, v6, v2

    .line 666
    iget v7, v0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountX:I

    rem-int v8, v5, v7

    div-int v7, v5, v7

    invoke-virtual {v1, v8, v7}, Lcom/voxel/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 668
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voxel/launcher3/ItemInfo;

    iget v8, v7, Lcom/voxel/launcher3/ItemInfo;->rank:I

    sub-int/2addr v8, v2

    iput v8, v7, Lcom/voxel/launcher3/ItemInfo;->rank:I

    .line 670
    :cond_b
    iget v7, v0, Lcom/voxel/launcher3/FolderPagedView;->mGridCountX:I

    rem-int v12, v6, v7

    div-int v13, v6, v7

    const/16 v14, 0xe6

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v10, v1

    move v15, v9

    invoke-virtual/range {v10 .. v17}, Lcom/voxel/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move-result v6

    if-eqz v6, :cond_c

    int-to-float v6, v9

    add-float/2addr v6, v3

    float-to-int v6, v6

    const v7, 0x3f666666    # 0.9f

    mul-float v3, v3, v7

    move v9, v6

    :cond_c
    move v6, v5

    goto :goto_6

    :cond_d
    return-void
.end method

.method public removeItem(Landroid/view/View;)V
    .locals 2

    .line 281
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 282
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/voxel/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCellParams(Lcom/voxel/launcher3/CellParams;)V
    .locals 4

    .line 220
    iput-object p1, p0, Lcom/voxel/launcher3/FolderPagedView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    .line 222
    iget-object v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v0, v0

    iput v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxCountX:I

    .line 223
    iget-object v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int v0, v0

    iput v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxCountY:I

    .line 225
    iget v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxCountX:I

    iget v1, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxCountY:I

    mul-int v0, v0, v1

    iput v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mMaxItemsPerPage:I

    const/4 v0, 0x0

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 229
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout;

    .line 230
    iget-object v2, p0, Lcom/voxel/launcher3/FolderPagedView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v2, v2, Lcom/voxel/launcher3/CellParams;->cellWidthPx:I

    iget-object v3, p0, Lcom/voxel/launcher3/FolderPagedView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v3, v3, Lcom/voxel/launcher3/CellParams;->cellHeightPx:I

    invoke-virtual {v1, v2, v3}, Lcom/voxel/launcher3/CellLayout;->setCellDimensions(II)V

    .line 231
    invoke-virtual {v1, p1}, Lcom/voxel/launcher3/CellLayout;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFixedSize(II)V
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 274
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 275
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 276
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v1, p1, p2}, Lcom/voxel/launcher3/CellLayout;->setFixedSize(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFolder(Lcom/voxel/launcher3/Folder;)V
    .locals 1

    .line 109
    iput-object p1, p0, Lcom/voxel/launcher3/FolderPagedView;->mFolder:Lcom/voxel/launcher3/Folder;

    const v0, 0x7f0a0118

    .line 110
    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/FocusIndicatorView;

    iput-object v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mFocusIndicatorView:Lcom/voxel/launcher3/FocusIndicatorView;

    .line 111
    new-instance v0, Lcom/voxel/launcher3/FocusHelper$PagedFolderKeyEventListener;

    invoke-direct {v0, p1}, Lcom/voxel/launcher3/FocusHelper$PagedFolderKeyEventListener;-><init>(Lcom/voxel/launcher3/Folder;)V

    iput-object v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mKeyListener:Lcom/voxel/launcher3/FocusHelper$PagedFolderKeyEventListener;

    const v0, 0x7f0a0120

    .line 112
    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/PageIndicator;

    iput-object p1, p0, Lcom/voxel/launcher3/FolderPagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    return-void
.end method

.method public setMarkerScale(F)V
    .locals 4

    .line 679
    iget-object v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    invoke-virtual {v0}, Lcom/voxel/launcher3/PageIndicator;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 681
    iget-object v2, p0, Lcom/voxel/launcher3/FolderPagedView;->mPageIndicator:Lcom/voxel/launcher3/PageIndicator;

    invoke-virtual {v2, v1}, Lcom/voxel/launcher3/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 682
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 683
    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 684
    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showScrollHint(I)V
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 494
    :goto_0
    iget-boolean v0, p0, Lcom/voxel/launcher3/FolderPagedView;->mIsRtl:Z

    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    const p1, -0x4270a3d7    # -0.07f

    goto :goto_1

    :cond_1
    const p1, 0x3d8f5c29    # 0.07f

    .line 496
    :goto_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 497
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FolderPagedView;->getScrollForPage(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 498
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getScrollX()I

    move-result p1

    sub-int v4, v0, p1

    if-eqz v4, :cond_2

    .line 500
    iget-object p1, p0, Lcom/voxel/launcher3/FolderPagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 501
    iget-object v1, p0, Lcom/voxel/launcher3/FolderPagedView;->mScroller:Lcom/voxel/launcher3/LauncherScroller;

    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    invoke-virtual/range {v1 .. v6}, Lcom/voxel/launcher3/LauncherScroller;->startScroll(IIIII)V

    .line 502
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderPagedView;->invalidate()V

    :cond_2
    return-void
.end method

.method public verifyVisibleHighResIcons(I)V
    .locals 0

    return-void
.end method
