.class public Lcom/voxel/simplesearchlauncher/view/MockLauncherController;
.super Ljava/lang/Object;
.source "MockLauncherController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;
    }
.end annotation


# instance fields
.field private final mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

.field private final mHotseat:Landroid/view/View;

.field private final mHotseatBg:Landroid/graphics/drawable/Drawable;

.field private final mHotseatCellLayout:Lcom/voxel/launcher3/CellLayout;

.field private final mHotseatGridLineContainer:Landroid/widget/FrameLayout;

.field private final mHotseatGridLineController:Lcom/voxel/simplesearchlauncher/view/GridLineController;

.field private mMockLauncher:Landroid/view/View;

.field private mSearchBar:Landroid/view/View;

.field private final mSpringySearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

.field private mWidgetImageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/voxel/launcher3/ItemInfo;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkspace:Landroid/view/View;

.field private final mWorkspaceCellLayout:Lcom/voxel/launcher3/CellLayout;

.field private final mWorkspaceGridLineContainer:Landroid/widget/FrameLayout;

.field private final mWorkspaceGridLineController:Lcom/voxel/simplesearchlauncher/view/GridLineController;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/voxel/launcher3/DeviceProfile;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mWidgetImageMap:Ljava/util/Map;

    .line 68
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mMockLauncher:Landroid/view/View;

    .line 69
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    .line 71
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mMockLauncher:Landroid/view/View;

    const p2, 0x7f0a02fd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mWorkspace:Landroid/view/View;

    .line 72
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mWorkspace:Landroid/view/View;

    const p2, 0x7f0a008e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mWorkspaceCellLayout:Lcom/voxel/launcher3/CellLayout;

    .line 73
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mWorkspace:Landroid/view/View;

    const v0, 0x7f0a0139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mWorkspaceGridLineContainer:Landroid/widget/FrameLayout;

    .line 74
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/GridLineController;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mWorkspaceGridLineContainer:Landroid/widget/FrameLayout;

    invoke-direct {p1, v1}, Lcom/voxel/simplesearchlauncher/view/GridLineController;-><init>(Landroid/widget/FrameLayout;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mWorkspaceGridLineController:Lcom/voxel/simplesearchlauncher/view/GridLineController;

    .line 76
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mMockLauncher:Landroid/view/View;

    const v1, 0x7f0a0155

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseat:Landroid/view/View;

    .line 77
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseat:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseatBg:Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseat:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseatCellLayout:Lcom/voxel/launcher3/CellLayout;

    .line 79
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseat:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseatGridLineContainer:Landroid/widget/FrameLayout;

    .line 80
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/GridLineController;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseatGridLineContainer:Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Lcom/voxel/simplesearchlauncher/view/GridLineController;-><init>(Landroid/widget/FrameLayout;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseatGridLineController:Lcom/voxel/simplesearchlauncher/view/GridLineController;

    .line 82
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mMockLauncher:Landroid/view/View;

    const p2, 0x7f0a020f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mSpringySearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    .line 83
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mSpringySearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setEnabled(Z)V

    .line 84
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mSpringySearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    const v0, 0x7f0a0255

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 87
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mSpringySearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setFocusable(Z)V

    .line 88
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mSpringySearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->clearFocus()V

    .line 91
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mWorkspaceCellLayout:Lcom/voxel/launcher3/CellLayout;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/CellLayout;->setDeviceProfile(Lcom/voxel/launcher3/DeviceProfile;)V

    .line 92
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mWorkspaceCellLayout:Lcom/voxel/launcher3/CellLayout;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p2, v0}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/CellLayout;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 94
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseatCellLayout:Lcom/voxel/launcher3/CellLayout;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/CellLayout;->setDeviceProfile(Lcom/voxel/launcher3/DeviceProfile;)V

    .line 95
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseatCellLayout:Lcom/voxel/launcher3/CellLayout;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p2, v0}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/CellLayout;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    return-void
.end method


# virtual methods
.method public addItemsToCellLayout(Lcom/voxel/launcher3/CellLayout;Landroid/content/Context;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/CellLayout;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v8, p1

    .line 143
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->removeAllViews()V

    .line 145
    invoke-static/range {p2 .. p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 146
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v10

    .line 147
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/voxel/launcher3/ItemInfo;

    .line 149
    iget v1, v12, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v2, v12, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v2

    if-gt v1, v2, :cond_4

    iget v1, v12, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    if-ltz v1, :cond_4

    iget v1, v12, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iget v2, v12, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v2

    if-gt v1, v2, :cond_4

    iget v1, v12, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    if-gez v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget v1, v12, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    move-object/from16 v7, p2

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d0052

    .line 179
    move-object v13, v12

    check-cast v13, Lcom/voxel/launcher3/FolderInfo;

    iget-object v6, v0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object v3, p1

    move-object v4, v13

    move-object v5, v10

    invoke-static/range {v1 .. v7}, Lcom/voxel/launcher3/FolderIcon;->fromXml(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/voxel/launcher3/FolderInfo;Lcom/voxel/launcher3/IconCache;Lcom/voxel/launcher3/DeviceProfile;Z)Lcom/voxel/launcher3/FolderIcon;

    move-result-object v2

    .line 184
    invoke-virtual {v13, v2}, Lcom/voxel/launcher3/FolderInfo;->removeListener(Lcom/voxel/launcher3/FolderInfo$FolderListener;)V

    .line 185
    invoke-virtual {v2}, Lcom/voxel/launcher3/FolderIcon;->getFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/voxel/launcher3/FolderInfo;->removeListener(Lcom/voxel/launcher3/FolderInfo$FolderListener;)V

    .line 186
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/voxel/launcher3/FolderIcon;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 188
    new-instance v5, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v1, v12, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v3, v12, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iget v4, v12, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v6, v12, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    invoke-direct {v5, v1, v3, v4, v6}, Lcom/voxel/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    .line 189
    invoke-virtual {v2, v5}, Lcom/voxel/launcher3/FolderIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    .line 190
    invoke-static {}, Lcom/voxel/launcher3/Launcher;->generateViewId()I

    move-result v4

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/voxel/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/voxel/launcher3/CellLayout$LayoutParams;Z)Z

    move-object/from16 v7, p2

    goto :goto_0

    .line 155
    :pswitch_1
    move-object v1, v12

    check-cast v1, Lcom/voxel/launcher3/ShortcutInfo;

    const v2, 0x7f0d0029

    .line 156
    invoke-virtual {v9, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/BubbleTextView;

    .line 157
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/voxel/launcher3/BubbleTextView;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 158
    invoke-virtual {v2, v1, v10, v3, v3}, Lcom/voxel/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/IconCache;ZZ)V

    .line 161
    iget-wide v3, v12, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v5, -0x64

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    if-eqz v8, :cond_1

    .line 162
    iget v1, v12, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v3, v12, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-virtual {p1, v1, v3}, Lcom/voxel/launcher3/CellLayout;->isOccupied(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget v1, v12, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v2, v12, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-virtual {p1, v1, v2}, Lcom/voxel/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Collision while binding workspace item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Collides with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 172
    :cond_1
    new-instance v5, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v1, v12, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v3, v12, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iget v4, v12, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v6, v12, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    invoke-direct {v5, v1, v3, v4, v6}, Lcom/voxel/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    .line 173
    invoke-virtual {v2, v5}, Lcom/voxel/launcher3/BubbleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    .line 174
    invoke-static {}, Lcom/voxel/launcher3/Launcher;->generateViewId()I

    move-result v4

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/voxel/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/voxel/launcher3/CellLayout$LayoutParams;Z)Z

    move-object/from16 v7, p2

    goto/16 :goto_0

    .line 196
    :cond_2
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mWidgetImageMap:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 199
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v7, p2

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 200
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_3
    move-object/from16 v7, p2

    .line 205
    move-object v1, v12

    check-cast v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    const v2, 0x7f0d0078

    .line 207
    invoke-virtual {v9, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0a02aa

    .line 208
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/BubbleTextView;

    .line 210
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 211
    iget-object v5, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v10, v4, v5}, Lcom/voxel/launcher3/IconCache;->getIcon(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 212
    invoke-static {v5}, Lcom/voxel/launcher3/Utilities;->createIconDrawable(Landroid/graphics/Bitmap;)Lcom/voxel/launcher3/FastBitmapDrawable;

    move-result-object v5

    const/4 v6, 0x0

    .line 214
    invoke-virtual {v3, v6, v5, v6, v6}, Lcom/voxel/launcher3/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 215
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voxel/launcher3/CellParams;->getIconDrawablePaddingPx()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/voxel/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 216
    iget-object v1, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v10, v4, v1}, Lcom/voxel/launcher3/IconCache;->getTitle(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/voxel/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :goto_1
    new-instance v5, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v1, v12, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v3, v12, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iget v4, v12, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v6, v12, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    invoke-direct {v5, v1, v3, v4, v6}, Lcom/voxel/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    const/4 v1, 0x1

    .line 222
    iput-boolean v1, v5, Lcom/voxel/launcher3/CellLayout$LayoutParams;->controlsOwnPadding:Z

    const/4 v3, 0x0

    .line 223
    invoke-static {}, Lcom/voxel/launcher3/Launcher;->generateViewId()I

    move-result v4

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/voxel/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/voxel/launcher3/CellLayout$LayoutParams;Z)Z

    goto/16 :goto_0

    :cond_4
    move-object/from16 v7, p2

    goto/16 :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHotseatCellLayout()Lcom/voxel/launcher3/CellLayout;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseatCellLayout:Lcom/voxel/launcher3/CellLayout;

    return-object v0
.end method

.method public getHotseatGridLineController()Lcom/voxel/simplesearchlauncher/view/GridLineController;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseatGridLineController:Lcom/voxel/simplesearchlauncher/view/GridLineController;

    return-object v0
.end method

.method public getWorkspaceCellLayout()Lcom/voxel/launcher3/CellLayout;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mWorkspaceCellLayout:Lcom/voxel/launcher3/CellLayout;

    return-object v0
.end method

.method public getWorkspaceGridLineController()Lcom/voxel/simplesearchlauncher/view/GridLineController;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mWorkspaceGridLineController:Lcom/voxel/simplesearchlauncher/view/GridLineController;

    return-object v0
.end method

.method public layout()V
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mMockLauncher:Landroid/view/View;

    const v1, 0x7f0a020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mSearchBar:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    iget-boolean v1, v1, Lcom/voxel/launcher3/DeviceProfile;->searchBarEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mSearchBar:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mSearchBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/16 v1, 0x31

    .line 109
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    iget v1, v1, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceWidthPx:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 111
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    iget v1, v1, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 112
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mSearchBar:Landroid/view/View;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    iget v3, v3, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    .line 114
    invoke-virtual {v4}, Lcom/voxel/launcher3/DeviceProfile;->getSearchBarTopOffset()I

    move-result v4

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    iget v5, v5, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v5, v5, 0x2

    .line 112
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 116
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mSearchBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mWorkspace:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    .line 120
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {v1}, Lcom/voxel/launcher3/DeviceProfile;->getWorkspacePadding()Landroid/graphics/Rect;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mWorkspace:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mWorkspace:Landroid/view/View;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 126
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseat:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x50

    .line 128
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 129
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    iget v2, v2, Lcom/voxel/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 130
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {v1}, Lcom/voxel/launcher3/DeviceProfile;->getHotseatPadding()Landroid/graphics/Rect;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseat:Landroid/view/View;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 135
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseatCellLayout:Lcom/voxel/launcher3/CellLayout;

    iget v2, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/voxel/launcher3/CellLayout;->setGridSize(II)V

    .line 136
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mHotseatBg:Landroid/graphics/drawable/Drawable;

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->backgroundAlpha:F

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 138
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/MockLauncherController;->mMockLauncher:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
