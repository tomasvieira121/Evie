.class public Lcom/voxel/launcher3/RemoveDropTarget;
.super Lcom/voxel/launcher3/ButtonDropTarget;
.source "RemoveDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;
    }
.end annotation


# static fields
.field private static DELETE_ANIMATION_DURATION:I = 0x11d

.field private static FLING_DELETE_ANIMATION_DURATION:I = 0x15e

.field private static FLING_TO_DELETE_FRICTION:F = 0.035f

.field private static MODE_FLING_DELETE_ALONG_VECTOR:I = 0x1

.field private static MODE_FLING_DELETE_TO_TRASH:I


# instance fields
.field private mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private final mFlingDeleteMode:I

.field private mOriginalTextColor:Landroid/content/res/ColorStateList;

.field private mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/launcher3/RemoveDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget p1, Lcom/voxel/launcher3/RemoveDropTarget;->MODE_FLING_DELETE_ALONG_VECTOR:I

    iput p1, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mFlingDeleteMode:I

    return-void
.end method

.method private animateToTrashAndCompleteDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 222
    iget-object v2, v0, Lcom/voxel/launcher3/RemoveDropTarget;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v3

    .line 223
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 224
    iget-object v2, v1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v3, v2, v5}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 226
    iget-object v2, v0, Lcom/voxel/launcher3/RemoveDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicWidth()I

    move-result v2

    .line 227
    :goto_0
    iget-object v6, v0, Lcom/voxel/launcher3/RemoveDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicHeight()I

    move-result v4

    .line 228
    :goto_1
    iget-object v6, v1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v6}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v7}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v6, v7, v2, v4}, Lcom/voxel/launcher3/RemoveDropTarget;->getIconRect(IIII)Landroid/graphics/Rect;

    move-result-object v6

    .line 230
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v7, v2, v4

    .line 232
    iget-object v2, v0, Lcom/voxel/launcher3/RemoveDropTarget;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    invoke-virtual {v2}, Lcom/voxel/launcher3/SearchDropTargetBar;->deferOnDragEnd()V

    .line 234
    new-instance v15, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$lw1zz3g1qcX0F699k7-6dk8tc6g;

    invoke-direct {v15, v0, v1}, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$lw1zz3g1qcX0F699k7-6dk8tc6g;-><init>(Lcom/voxel/launcher3/RemoveDropTarget;Lcom/voxel/launcher3/DropTarget$DragObject;)V

    .line 239
    iget-object v4, v1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3dcccccd    # 0.1f

    sget v12, Lcom/voxel/launcher3/RemoveDropTarget;->DELETE_ANIMATION_DURATION:I

    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v13, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v14, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v14}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v3 .. v17}, Lcom/voxel/launcher3/dragndrop/DragLayer;->animateView(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method private completeDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 4

    .line 247
    iget-object v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    .line 249
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/RemoveDropTarget;->isWorkspaceOrFolderApplication(Lcom/voxel/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object p1, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1, v0}, Lcom/voxel/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/RemoveDropTarget;->isWorkspaceFolder(Lcom/voxel/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    check-cast v0, Lcom/voxel/launcher3/FolderInfo;

    .line 254
    iget-object p1, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/Launcher;->removeFolder(Lcom/voxel/launcher3/FolderInfo;)V

    .line 255
    iget-object p1, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1, v0}, Lcom/voxel/launcher3/LauncherModel;->deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/voxel/launcher3/FolderInfo;)V

    goto :goto_0

    .line 256
    :cond_1
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/RemoveDropTarget;->isWorkspaceOrFolderWidget(Lcom/voxel/launcher3/DropTarget$DragObject;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 258
    iget-object p1, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mLauncher:Lcom/voxel/launcher3/Launcher;

    move-object v1, v0

    check-cast v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {p1, v1}, Lcom/voxel/launcher3/Launcher;->removeAppWidget(Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V

    .line 259
    iget-object p1, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1, v0}, Lcom/voxel/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    .line 262
    iget-object p1, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getAppWidgetHost()Lcom/voxel/launcher3/LauncherAppWidgetHost;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 263
    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->isWidgetIdValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    new-instance v0, Lcom/voxel/launcher3/RemoveDropTarget$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/voxel/launcher3/RemoveDropTarget$1;-><init>(Lcom/voxel/launcher3/RemoveDropTarget;Lcom/voxel/launcher3/LauncherAppWidgetInfo;Lcom/voxel/launcher3/LauncherAppWidgetHost;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    aput-object v3, v1, v2

    .line 272
    invoke-virtual {v0, p1, v1}, Lcom/voxel/launcher3/RemoveDropTarget$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method

.method private createFlingAlongVectorAnimatorListener(Lcom/voxel/launcher3/dragndrop/DragLayer;Lcom/voxel/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;JILandroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 7

    .line 388
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 389
    iget-object p2, p2, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {p1, p2, v3}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 391
    new-instance p2, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;

    sget v6, Lcom/voxel/launcher3/RemoveDropTarget;->FLING_TO_DELETE_FRICTION:F

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/RemoveDropTarget$FlingAlongVectorAnimatorUpdateListener;-><init>(Lcom/voxel/launcher3/dragndrop/DragLayer;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    return-object p2
.end method

.method private createFlingToTrashAnimatorListener(Lcom/voxel/launcher3/dragndrop/DragLayer;Lcom/voxel/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;Landroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 287
    iget-object v3, v0, Lcom/voxel/launcher3/RemoveDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicWidth()I

    move-result v3

    .line 288
    :goto_0
    iget-object v5, v0, Lcom/voxel/launcher3/RemoveDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicHeight()I

    move-result v4

    .line 289
    :goto_1
    iget-object v5, v1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v5}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v6}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/voxel/launcher3/RemoveDropTarget;->getIconRect(IIII)Landroid/graphics/Rect;

    move-result-object v3

    .line 291
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 292
    iget-object v5, v1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    move-object/from16 v7, p1

    invoke-virtual {v7, v5, v4}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 295
    iget-object v1, v1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v1}, Lcom/voxel/launcher3/dragndrop/DragView;->getScaleX()F

    move-result v15

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/PointF;->length()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 300
    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    div-float/2addr v1, v6

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 301
    iget v5, v4, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    float-to-int v1, v5

    int-to-float v5, v1

    .line 302
    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v6, v2

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 303
    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    int-to-float v13, v5

    .line 304
    iget v1, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    int-to-float v10, v1

    .line 305
    iget v1, v4, Landroid/graphics/Rect;->left:I

    int-to-float v9, v1

    .line 306
    iget v1, v4, Landroid/graphics/Rect;->top:I

    int-to-float v12, v1

    .line 307
    iget v1, v3, Landroid/graphics/Rect;->left:I

    int-to-float v11, v1

    .line 308
    iget v1, v3, Landroid/graphics/Rect;->top:I

    int-to-float v14, v1

    .line 310
    sget-object v8, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$5gDyFCDVbcBKDLgDb_sCnVYmCrQ;->INSTANCE:Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$5gDyFCDVbcBKDLgDb_sCnVYmCrQ;

    .line 311
    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;

    move-object v6, v1

    invoke-direct/range {v6 .. v15}, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$_brESJ0et1_lDIdT4lVj_uJOxTY;-><init>(Lcom/voxel/launcher3/dragndrop/DragLayer;Landroid/animation/TimeInterpolator;FFFFFFF)V

    return-object v1
.end method

.method private isDragSourceWorkspaceOrFolder(Lcom/voxel/launcher3/DropTarget$DragObject;)Z
    .locals 1

    .line 104
    iget-object v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    instance-of v0, v0, Lcom/voxel/launcher3/Workspace;

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    instance-of p1, p1, Lcom/voxel/launcher3/Folder;

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

.method private isWorkspaceFolder(Lcom/voxel/launcher3/DropTarget$DragObject;)Z
    .locals 1

    .line 116
    iget-object v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    instance-of v0, v0, Lcom/voxel/launcher3/Workspace;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    instance-of p1, p1, Lcom/voxel/launcher3/FolderInfo;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isWorkspaceOrFolderApplication(Lcom/voxel/launcher3/DropTarget$DragObject;)Z
    .locals 1

    .line 108
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/RemoveDropTarget;->isDragSourceWorkspaceOrFolder(Lcom/voxel/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    instance-of p1, p1, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isWorkspaceOrFolderWidget(Lcom/voxel/launcher3/DropTarget$DragObject;)Z
    .locals 1

    .line 112
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/RemoveDropTarget;->isDragSourceWorkspaceOrFolder(Lcom/voxel/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    instance-of p1, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$animateToTrashAndCompleteDrop$0(Lcom/voxel/launcher3/RemoveDropTarget;Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/RemoveDropTarget;->completeDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    .line 236
    iget-object p1, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    invoke-virtual {p1}, Lcom/voxel/launcher3/SearchDropTargetBar;->onDragEnd()V

    .line 237
    iget-object p1, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->exitSpringLoadedDragMode()Z

    return-void
.end method

.method static synthetic lambda$createFlingToTrashAnimatorListener$1(F)F
    .locals 1

    mul-float v0, p0, p0

    mul-float v0, v0, p0

    mul-float v0, v0, p0

    mul-float v0, v0, p0

    mul-float v0, v0, p0

    mul-float v0, v0, p0

    mul-float v0, v0, p0

    return v0
.end method

.method static synthetic lambda$createFlingToTrashAnimatorListener$2(Lcom/voxel/launcher3/dragndrop/DragLayer;Landroid/animation/TimeInterpolator;FFFFFFFLandroid/animation/ValueAnimator;)V
    .locals 6

    .line 312
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/voxel/launcher3/dragndrop/DragView;

    .line 313
    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Ljava/lang/Float;

    invoke-virtual {p9}, Ljava/lang/Float;->floatValue()F

    move-result p9

    .line 314
    invoke-interface {p1, p9}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 316
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragView;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 317
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 318
    invoke-virtual {p0}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v0, v4

    div-float/2addr v0, v3

    sub-float v4, v1, p9

    mul-float v5, v4, v4

    sub-float/2addr p2, v2

    mul-float p2, p2, v5

    mul-float v4, v4, v3

    mul-float v4, v4, p9

    sub-float/2addr p3, v2

    mul-float p3, p3, v4

    add-float/2addr p2, p3

    mul-float p9, p9, p9

    mul-float p4, p4, p9

    add-float/2addr p2, p4

    sub-float/2addr p5, v0

    mul-float v5, v5, p5

    sub-float/2addr p6, v2

    mul-float v4, v4, p6

    add-float/2addr v5, v4

    mul-float p9, p9, p7

    add-float/2addr v5, p9

    .line 324
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/dragndrop/DragView;->setTranslationX(F)V

    .line 325
    invoke-virtual {p0, v5}, Lcom/voxel/launcher3/dragndrop/DragView;->setTranslationY(F)V

    sub-float/2addr v1, p1

    mul-float p8, p8, v1

    .line 326
    invoke-virtual {p0, p8}, Lcom/voxel/launcher3/dragndrop/DragView;->setScaleX(F)V

    .line 327
    invoke-virtual {p0, p8}, Lcom/voxel/launcher3/dragndrop/DragView;->setScaleY(F)V

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float v1, v1, p1

    add-float/2addr v1, p1

    .line 328
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/dragndrop/DragView;->setAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$onFlingToDelete$3(Lcom/voxel/launcher3/RemoveDropTarget;Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->exitSpringLoadedDragMode()Z

    .line 450
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/RemoveDropTarget;->completeDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    .line 452
    iget-object v0, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/voxel/launcher3/SearchDropTargetBar;->onDragEnd()V

    .line 453
    iget-object v0, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragController()Lcom/voxel/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/dragndrop/DragController;->onDeferredEndFling(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    return-void
.end method

.method public static willAcceptDrop(Ljava/lang/Object;)Z
    .locals 5

    .line 141
    instance-of v0, p0, Lcom/voxel/launcher3/ItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 142
    move-object v0, p0

    check-cast v0, Lcom/voxel/launcher3/ItemInfo;

    .line 143
    iget v2, v0, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    iget v2, v0, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    if-eq v2, v4, :cond_6

    iget v2, v0, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v0, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    return v4

    .line 154
    :cond_1
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, v0, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    if-nez v2, :cond_3

    instance-of v2, v0, Lcom/voxel/launcher3/AppInfo;

    if-eqz v2, :cond_3

    .line 157
    check-cast p0, Lcom/voxel/launcher3/AppInfo;

    .line 158
    iget p0, p0, Lcom/voxel/launcher3/AppInfo;->flags:I

    and-int/2addr p0, v4

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 161
    :cond_3
    iget v2, v0, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    if-nez v2, :cond_7

    instance-of v0, v0, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v0, :cond_7

    .line 163
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    check-cast p0, Lcom/voxel/launcher3/ShortcutInfo;

    .line 165
    iget p0, p0, Lcom/voxel/launcher3/ShortcutInfo;->flags:I

    and-int/2addr p0, v4

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    return v4

    :cond_6
    :goto_0
    return v4

    :cond_7
    return v1
.end method


# virtual methods
.method public acceptDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)Z
    .locals 1

    .line 135
    iget-boolean v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->isDesktopLocked:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 137
    :cond_0
    iget-object p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    invoke-static {p1}, Lcom/voxel/launcher3/RemoveDropTarget;->willAcceptDrop(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onDragEnd()V
    .locals 1

    .line 194
    invoke-super {p0}, Lcom/voxel/launcher3/ButtonDropTarget;->onDragEnd()V

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mActive:Z

    return-void
.end method

.method public onDragEnter(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 1

    .line 199
    iget-boolean v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->isDesktopLocked:Z

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-super {p0, p1}, Lcom/voxel/launcher3/ButtonDropTarget;->onDragEnter(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    .line 204
    invoke-virtual {p0}, Lcom/voxel/launcher3/RemoveDropTarget;->setHoverColor()V

    return-void
.end method

.method public onDragExit(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 1

    .line 208
    iget-boolean v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->isDesktopLocked:Z

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-super {p0, p1}, Lcom/voxel/launcher3/ButtonDropTarget;->onDragExit(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    .line 213
    iget-boolean v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/voxel/launcher3/RemoveDropTarget;->resetHoverColor()V

    goto :goto_0

    .line 217
    :cond_1
    iget-object p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    iget v0, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mHoverColor:I

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/dragndrop/DragView;->setColor(I)V

    :goto_0
    return-void
.end method

.method public onDragStart(Lcom/voxel/launcher3/DropTarget$DragObject;Lcom/voxel/launcher3/dragndrop/DragOptions;)V
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/voxel/launcher3/RemoveDropTarget;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object p2, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    const/4 p2, 0x1

    .line 179
    iput-boolean p2, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mActive:Z

    .line 180
    invoke-virtual {p0}, Lcom/voxel/launcher3/RemoveDropTarget;->resetHoverColor()V

    .line 181
    invoke-virtual {p0}, Lcom/voxel/launcher3/RemoveDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 184
    iget-object p2, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    instance-of p2, p2, Lcom/voxel/launcher3/Workspace;

    if-nez p2, :cond_1

    iget-object p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    instance-of p1, p1, Lcom/voxel/launcher3/Folder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f120119

    .line 187
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/RemoveDropTarget;->setText(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f12011a

    .line 185
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/RemoveDropTarget;->setText(I)V

    :goto_1
    return-void
.end method

.method public onDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 0

    .line 278
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/RemoveDropTarget;->animateToTrashAndCompleteDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 69
    invoke-super {p0}, Lcom/voxel/launcher3/ButtonDropTarget;->onFinishInflate()V

    .line 72
    invoke-virtual {p0}, Lcom/voxel/launcher3/RemoveDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    .line 75
    invoke-virtual {p0}, Lcom/voxel/launcher3/RemoveDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060069

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mHoverColor:I

    const v1, 0x7f080157

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 79
    iget-object v0, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/voxel/launcher3/RemoveDropTarget;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 86
    invoke-virtual {p0}, Lcom/voxel/launcher3/RemoveDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 88
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 89
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/RemoveDropTarget;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onFlingToDelete(Lcom/voxel/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 400
    iget-object v0, v9, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/dragndrop/DragView;->setColor(I)V

    .line 406
    iget v0, v8, Lcom/voxel/launcher3/RemoveDropTarget;->mFlingDeleteMode:I

    sget v1, Lcom/voxel/launcher3/RemoveDropTarget;->MODE_FLING_DELETE_TO_TRASH:I

    if-ne v0, v1, :cond_0

    .line 408
    iget-object v0, v8, Lcom/voxel/launcher3/RemoveDropTarget;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/voxel/launcher3/SearchDropTargetBar;->deferOnDragEnd()V

    .line 411
    :cond_0
    iget-object v0, v8, Lcom/voxel/launcher3/RemoveDropTarget;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 412
    iget-object v0, v8, Lcom/voxel/launcher3/RemoveDropTarget;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v10

    .line 413
    sget v12, Lcom/voxel/launcher3/RemoveDropTarget;->FLING_DELETE_ANIMATION_DURATION:I

    .line 414
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 421
    new-instance v13, Lcom/voxel/launcher3/RemoveDropTarget$2;

    invoke-direct {v13, v8, v4, v5, v12}, Lcom/voxel/launcher3/RemoveDropTarget$2;-><init>(Lcom/voxel/launcher3/RemoveDropTarget;JI)V

    const/4 v0, 0x0

    .line 438
    iget v1, v8, Lcom/voxel/launcher3/RemoveDropTarget;->mFlingDeleteMode:I

    sget v2, Lcom/voxel/launcher3/RemoveDropTarget;->MODE_FLING_DELETE_TO_TRASH:I

    if-ne v1, v2, :cond_1

    move-object/from16 v3, p2

    .line 439
    invoke-direct {v8, v10, v9, v3, v7}, Lcom/voxel/launcher3/RemoveDropTarget;->createFlingToTrashAnimatorListener(Lcom/voxel/launcher3/dragndrop/DragLayer;Lcom/voxel/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;Landroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :cond_1
    move-object/from16 v3, p2

    .line 440
    sget v2, Lcom/voxel/launcher3/RemoveDropTarget;->MODE_FLING_DELETE_ALONG_VECTOR:I

    if-ne v1, v2, :cond_2

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v6, v12

    .line 441
    invoke-direct/range {v0 .. v7}, Lcom/voxel/launcher3/RemoveDropTarget;->createFlingAlongVectorAnimatorListener(Lcom/voxel/launcher3/dragndrop/DragLayer;Lcom/voxel/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;JILandroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :cond_2
    move-object v11, v0

    .line 445
    :goto_0
    new-instance v14, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$XblgOfvxNl34ZCj5WB90i_Fl7pE;

    invoke-direct {v14, v8, v9}, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$XblgOfvxNl34ZCj5WB90i_Fl7pE;-><init>(Lcom/voxel/launcher3/RemoveDropTarget;Lcom/voxel/launcher3/DropTarget$DragObject;)V

    .line 455
    iget-object v0, v9, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v10

    move-object v10, v0

    invoke-virtual/range {v9 .. v16}, Lcom/voxel/launcher3/dragndrop/DragLayer;->animateView(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method resetHoverColor()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/RemoveDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method setHoverColor()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_0

    .line 121
    iget v1, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mTransitionDuration:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 123
    :cond_0
    iget v0, p0, Lcom/voxel/launcher3/RemoveDropTarget;->mHoverColor:I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/RemoveDropTarget;->setTextColor(I)V

    return-void
.end method
