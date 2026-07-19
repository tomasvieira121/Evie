.class public Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;
.super Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;
.source "WidgetsFragment.java"

# interfaces
.implements Lcom/evie/common/dragndrop/DragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$OnFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetsFragment"


# instance fields
.field private mAdapter:Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;

.field private mAppsChangedCallback:Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

.field mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

.field private mIconPackObserver:Landroid/database/DataSetObserver;

.field private mLauncher:Lcom/voxel/launcher3/Launcher;

.field private mOnFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$OnFragmentInteractionListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRecyclerView:Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;

.field private mWidgetInstructionToast:Landroid/widget/Toast;

.field private mWidgetPreviewLoader:Lcom/voxel/launcher3/WidgetPreviewLoader;

.field private mWidgetsModel:Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->refreshList(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mWidgetsModel:Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    return-object p0
.end method

.method static synthetic access$202(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;)Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mWidgetsModel:Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    return-object p1
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mRecyclerView:Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private beginDragging(Landroid/view/View;)Z
    .locals 3

    .line 285
    instance-of v0, p1, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;

    if-eqz v0, :cond_0

    .line 286
    check-cast p1, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->beginDraggingWidget(Lcom/voxel/simplesearchlauncher/widget/WidgetCell;)Z

    move-result p1

    return p1

    .line 288
    :cond_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected dragging view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method private beginDraggingWidget(Lcom/voxel/simplesearchlauncher/widget/WidgetCell;)Z
    .locals 15

    move-object v7, p0

    const v0, 0x7f0a02f8

    move-object/from16 v2, p1

    .line 296
    invoke-virtual {v2, v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/voxel/launcher3/PendingAddItemInfo;

    .line 301
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    return v4

    .line 308
    :cond_0
    instance-of v1, v3, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    .line 312
    move-object v5, v3

    check-cast v5, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    .line 313
    iget-object v6, v7, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object v6

    iget v9, v5, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->spanX:I

    iget v10, v5, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->spanY:I

    invoke-virtual {v6, v9, v10, v8}, Lcom/voxel/launcher3/Workspace;->estimateItemSize(IIZ)[I

    move-result-object v6

    .line 316
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v9, 0x3fa00000    # 1.25f

    .line 318
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v9

    float-to-int v0, v0

    aget v6, v6, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 320
    new-array v14, v8, [I

    .line 321
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->getWidgetPreviewLoader()Lcom/voxel/launcher3/WidgetPreviewLoader;

    move-result-object v9

    iget-object v10, v7, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v11, v5, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->info:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/voxel/launcher3/WidgetPreviewLoader;->generateWidgetPreview(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddShortcutInfo;

    .line 325
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v5

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddShortcutInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v0}, Lcom/voxel/launcher3/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 326
    iget-object v5, v7, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0, v5}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 327
    iput v8, v3, Lcom/voxel/launcher3/PendingAddItemInfo;->spanY:I

    iput v8, v3, Lcom/voxel/launcher3/PendingAddItemInfo;->spanX:I

    move-object v9, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 331
    move-object v0, v3

    check-cast v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iget v0, v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->previewImage:I

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v6, 0x1

    .line 335
    :goto_2
    iget-object v0, v7, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->lockScreenOrientation()V

    .line 337
    iget-object v0, v7, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mOnFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_4

    move-object v1, p0

    move-object/from16 v2, p1

    move-object v4, v9

    move-object v5, v9

    .line 338
    invoke-interface/range {v0 .. v6}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$OnFragmentInteractionListener;->onAllWidgetsLongPress(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/view/View;Lcom/voxel/launcher3/PendingAddItemInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z

    .line 342
    :cond_4
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    return v8
.end method

.method private getIconPackObserver(Landroid/content/Context;)Landroid/database/DataSetObserver;
    .locals 1

    .line 198
    new-instance v0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$2;-><init>(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method private getWidgetPreviewLoader()Lcom/voxel/launcher3/WidgetPreviewLoader;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mWidgetPreviewLoader:Lcom/voxel/launcher3/WidgetPreviewLoader;

    if-nez v0, :cond_0

    .line 450
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getWidgetCache()Lcom/voxel/launcher3/WidgetPreviewLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mWidgetPreviewLoader:Lcom/voxel/launcher3/WidgetPreviewLoader;

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mWidgetPreviewLoader:Lcom/voxel/launcher3/WidgetPreviewLoader;

    return-object v0
.end method

.method public static synthetic lambda$onCreate$0(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/view/View;)V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of p1, p1, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;

    if-nez p1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mWidgetInstructionToast:Landroid/widget/Toast;

    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120177

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mWidgetInstructionToast:Landroid/widget/Toast;

    .line 117
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/view/View;)Z
    .locals 7

    const-string v0, "onLonglick [v=%s]"

    const/4 v1, 0x1

    .line 119
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    .line 133
    :cond_2
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->beginDragging(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    if-eqz v2, :cond_3

    .line 135
    new-instance v2, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-direct {v2, v4, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;-><init>(Lcom/voxel/launcher3/Launcher;Landroid/view/View;)V

    .line 136
    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->preloadWidget()Z

    move-result p1

    .line 137
    sget-object v4, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->TAG:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "preloading widget [status=%s]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getDragController()Lcom/voxel/launcher3/dragndrop/DragController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/voxel/launcher3/dragndrop/DragController;->addDragListener(Lcom/voxel/launcher3/dragndrop/DragController$DragListener;)V

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v3
.end method

.method public static newInstance()Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;
    .locals 2

    .line 76
    new-instance v0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;-><init>()V

    .line 77
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 78
    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private refreshList(Landroid/content/Context;)V
    .locals 2

    .line 229
    sget-object v0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->TAG:Ljava/lang/String;

    const-string v1, "refreshList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;-><init>(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 265
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public focusFragment(Z)V
    .locals 0

    return-void
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 84
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 86
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onAttach(Landroid/content/Context;)V

    .line 91
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$OnFragmentInteractionListener;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mOnFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$OnFragmentInteractionListener;

    .line 92
    move-object v0, p1

    check-cast v0, Lcom/voxel/launcher3/Launcher;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 94
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 101
    sget-object v0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    new-instance p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/widget/-$$Lambda$WidgetsFragment$nwtOH1WmRaDDiogOJMY-rWIbL2k;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/widget/-$$Lambda$WidgetsFragment$nwtOH1WmRaDDiogOJMY-rWIbL2k;-><init>(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)V

    new-instance v2, Lcom/voxel/simplesearchlauncher/widget/-$$Lambda$WidgetsFragment$rbb5g3QQnq1sOuFEjRWz7t17rGY;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/widget/-$$Lambda$WidgetsFragment$rbb5g3QQnq1sOuFEjRWz7t17rGY;-><init>(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)V

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/voxel/launcher3/Launcher;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;

    .line 144
    new-instance p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mAppsChangedCallback:Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 188
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mAppsChangedCallback:Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 190
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->getIconPackObserver(Landroid/content/Context;)Landroid/database/DataSetObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mIconPackObserver:Landroid/database/DataSetObserver;

    .line 191
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mIconPackObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 193
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->refreshList(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 213
    sget-object p3, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0d013a

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0180

    .line 216
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mRecyclerView:Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;

    .line 217
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mRecyclerView:Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 218
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mRecyclerView:Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;

    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;

    invoke-virtual {p2, p3}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 219
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mWidgetsModel:Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;

    invoke-virtual {p3, p2}, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->setWidgetsModel(Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;)V

    :cond_0
    const p2, 0x7f0a0209

    .line 221
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 223
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->getItemCount()I

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 418
    invoke-static {}, Lcom/voxel/launcher3/LauncherApplication;->getRefWatcher()Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;)V

    .line 420
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mIconPackObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 421
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mAppsChangedCallback:Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->removeOnAppsChangedCallback(Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 423
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onDestroy()V

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/evie/common/dragndrop/DragObjectAbstraction;ZZ)V
    .locals 8

    .line 374
    sget-object v0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDropCompleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    move-object v5, p2

    check-cast v5, Lcom/voxel/launcher3/DropTarget$DragObject;

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    const/4 p2, 0x0

    .line 382
    iput-boolean p2, v5, Lcom/voxel/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 385
    :cond_1
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->mOnFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$OnFragmentInteractionListener;

    if-eqz v2, :cond_2

    move-object v3, p0

    move-object v4, p1

    move v6, p3

    move v7, p4

    .line 386
    invoke-interface/range {v2 .. v7}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$OnFragmentInteractionListener;->onAllWidgetsDropCompleted(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/view/View;Lcom/voxel/launcher3/DropTarget$DragObject;ZZ)Z

    :cond_2
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    return-void
.end method

.method public onPopLauncherStackedAppearance(Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 0

    .line 413
    check-cast p1, Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->hideBlurImage()V

    return-void
.end method

.method public onPushLauncherStackedAppearance(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;)V
    .locals 0

    .line 408
    check-cast p1, Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->showBlurImage()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 270
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 275
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 280
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onStop()V

    return-void
.end method

.method public runExitAnimation()V
    .locals 0

    .line 392
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->notifyFragmentWillRequestClose()V

    .line 393
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->notifyFragmentRequestClose()V

    return-void
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsRemoveDropTarget()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unfocusFragment(Z)V
    .locals 0

    return-void
.end method
