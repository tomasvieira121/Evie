.class public Lcom/voxel/launcher3/Workspace;
.super Lcom/voxel/launcher3/PagedView;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/evie/common/dragndrop/DragSource;
.implements Lcom/voxel/launcher3/DropTarget;
.implements Lcom/voxel/launcher3/Insettable;
.implements Lcom/voxel/launcher3/LauncherTransitionable;
.implements Lcom/voxel/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/voxel/launcher3/dragndrop/DragScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;,
        Lcom/voxel/launcher3/Workspace$ItemOperator;,
        Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;,
        Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;,
        Lcom/voxel/launcher3/Workspace$AlphaUpdateListener;,
        Lcom/voxel/launcher3/Workspace$ZoomInInterpolator;,
        Lcom/voxel/launcher3/Workspace$InverseZInterpolator;,
        Lcom/voxel/launcher3/Workspace$ZInterpolator;,
        Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;,
        Lcom/voxel/launcher3/Workspace$State;
    }
.end annotation


# static fields
.field private static ENFORCE_DRAG_EVENT_ORDER:Z = false

.field static mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

.field static mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

.field private static sAccessibilityEnabled:Z

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAddToExistingFolderOnDrop:Z

.field mAnimatingViewIntoPlace:Z

.field private mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

.field private mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

.field private final mBindPages:Ljava/lang/Runnable;

.field private mCameraDistance:I

.field private final mCanvas:Landroid/graphics/Canvas;

.field mChildrenLayersEnabled:Z

.field private mChildrenOutlineAlpha:F

.field private mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

.field private mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentScale:F

.field mCustomContentCallbacks:Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

.field private mCustomContentDescription:Ljava/lang/String;

.field private mCustomContentShowTime:J

.field mCustomContentShowing:Z

.field private mDefaultPage:I

.field private mDeferDropAfterUninstall:Z

.field private mDeferRemoveExtraEmptyScreen:Z

.field private mDeferredAction:Ljava/lang/Runnable;

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

.field private mDragFolderRingAnimator:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

.field private mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

.field private mDragMode:I

.field private mDragOverFolderIcon:Lcom/voxel/launcher3/FolderIcon;

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lcom/voxel/launcher3/CellLayout;

.field private mDragSourceInternal:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

.field private mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

.field private mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/voxel/launcher3/CellLayout;

.field private final mFolderCreationAlarm:Lcom/voxel/launcher3/Alarm;

.field private mIconCache:Lcom/voxel/launcher3/IconCache;

.field private mInScrollArea:Z

.field mIsDragOccuring:Z

.field private mIsSwitchingState:Z

.field private mLastChildCount:I

.field private mLastCustomContentScrollProgress:F

.field private mLastReorderX:I

.field private mLastReorderY:I

.field private mLastSetWallpaperOffsetSteps:F

.field private mLauncher:Lcom/voxel/launcher3/Launcher;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mNewAlphas:[F

.field private mNewBackgroundAlphas:[F

.field private mNewScale:F

.field private mNumPagesForWallpaperParallax:I

.field private mOldAlphas:[F

.field private mOldBackgroundAlphas:[F

.field private mOriginalDefaultPage:I

.field private mOutlineProvider:Lcom/voxel/launcher3/graphics/DragPreviewProvider;

.field mOverScrollEffect:F

.field private mOverscrollEffectSet:Z

.field private mOverviewModeShrinkFactor:F

.field private mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

.field private final mReorderAlarm:Lcom/voxel/launcher3/Alarm;

.field private final mRestoredPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedRotationY:F

.field private mSavedScrollX:I

.field private mSavedStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedTranslationX:F

.field private mScreenOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSpringLoadedDragController:Lcom/voxel/launcher3/SpringLoadedDragController;

.field private mSpringLoadedShrinkFactor:F

.field private mState:Lcom/voxel/launcher3/Workspace$State;

.field private mStripScreensOnPageStopMoving:Z

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempCellLayoutCenterCoordinates:[F

.field private mTempEstimate:[I

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private mTempPt:[I

.field private mTempVisiblePagesRange:[I

.field private final mTempXY:[I

.field private mTouchDownTime:J

.field private mTransitionProgress:F

.field private mUninstallSuccessful:Z

.field private mWallpaperIsLiveWallpaper:Z

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field mWallpaperOffset:Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;

.field private mWindowToken:Landroid/os/IBinder;

.field private mWorkspaceFadeInAdjacentScreens:Z

.field private mWorkspaceScreens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/voxel/launcher3/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mXDown:F

.field private mYDown:F

.field private final mZoomInInterpolator:Lcom/voxel/launcher3/Workspace$ZoomInInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 236
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/Workspace;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 325
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/launcher3/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 336
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lcom/voxel/launcher3/Workspace;->mChildrenOutlineAlpha:F

    const-wide/16 v1, -0x1

    .line 142
    iput-wide v1, p0, Lcom/voxel/launcher3/Workspace;->mTouchDownTime:J

    .line 143
    iput-wide v1, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentShowTime:J

    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 163
    iput-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    const/4 v2, 0x2

    .line 173
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    const/4 v3, -0x1

    .line 174
    iput v3, p0, Lcom/voxel/launcher3/Workspace;->mDragOverX:I

    .line 175
    iput v3, p0, Lcom/voxel/launcher3/Workspace;->mDragOverY:I

    const/high16 v4, -0x40800000    # -1.0f

    .line 182
    iput v4, p0, Lcom/voxel/launcher3/Workspace;->mLastCustomContentScrollProgress:F

    const-string v4, ""

    .line 183
    iput-object v4, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentDescription:Ljava/lang/String;

    const/4 v4, 0x0

    .line 188
    iput-object v4, p0, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    .line 192
    iput-object v4, p0, Lcom/voxel/launcher3/Workspace;->mDragOverlappingLayout:Lcom/voxel/launcher3/CellLayout;

    .line 197
    iput-object v4, p0, Lcom/voxel/launcher3/Workspace;->mDropToLayout:Lcom/voxel/launcher3/CellLayout;

    .line 205
    new-array v5, v2, [I

    iput-object v5, p0, Lcom/voxel/launcher3/Workspace;->mTempCell:[I

    .line 206
    new-array v5, v2, [I

    iput-object v5, p0, Lcom/voxel/launcher3/Workspace;->mTempPt:[I

    .line 207
    new-array v5, v2, [I

    iput-object v5, p0, Lcom/voxel/launcher3/Workspace;->mTempEstimate:[I

    .line 208
    new-array v5, v2, [F

    iput-object v5, p0, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 209
    new-array v5, v2, [F

    iput-object v5, p0, Lcom/voxel/launcher3/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 210
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/voxel/launcher3/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 221
    sget-object v5, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    iput-object v5, p0, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    .line 222
    iput-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mIsSwitchingState:Z

    .line 224
    iput-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mAnimatingViewIntoPlace:Z

    .line 225
    iput-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mIsDragOccuring:Z

    const/4 v5, 0x1

    .line 226
    iput-boolean v5, p0, Lcom/voxel/launcher3/Workspace;->mChildrenLayersEnabled:Z

    .line 228
    iput-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 233
    iput-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mInScrollArea:Z

    .line 237
    new-array v6, v2, [I

    iput-object v6, p0, Lcom/voxel/launcher3/Workspace;->mTempXY:[I

    .line 238
    new-array v6, v2, [I

    iput-object v6, p0, Lcom/voxel/launcher3/Workspace;->mTempVisiblePagesRange:[I

    .line 246
    iput v0, p0, Lcom/voxel/launcher3/Workspace;->mLastSetWallpaperOffsetSteps:F

    .line 250
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iput-object v6, p0, Lcom/voxel/launcher3/Workspace;->mDisplaySize:Landroid/graphics/Point;

    .line 256
    new-instance v6, Lcom/voxel/launcher3/Alarm;

    invoke-direct {v6}, Lcom/voxel/launcher3/Alarm;-><init>()V

    iput-object v6, p0, Lcom/voxel/launcher3/Workspace;->mFolderCreationAlarm:Lcom/voxel/launcher3/Alarm;

    .line 257
    new-instance v6, Lcom/voxel/launcher3/Alarm;

    invoke-direct {v6}, Lcom/voxel/launcher3/Alarm;-><init>()V

    iput-object v6, p0, Lcom/voxel/launcher3/Workspace;->mReorderAlarm:Lcom/voxel/launcher3/Alarm;

    .line 258
    iput-object v4, p0, Lcom/voxel/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    .line 259
    iput-object v4, p0, Lcom/voxel/launcher3/Workspace;->mDragOverFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    .line 260
    iput-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 261
    iput-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 263
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    iput-object v4, p0, Lcom/voxel/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    .line 284
    iput v1, p0, Lcom/voxel/launcher3/Workspace;->mDragMode:I

    .line 285
    iput v3, p0, Lcom/voxel/launcher3/Workspace;->mLastReorderX:I

    .line 286
    iput v3, p0, Lcom/voxel/launcher3/Workspace;->mLastReorderY:I

    .line 289
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/voxel/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    .line 302
    iput v3, p0, Lcom/voxel/launcher3/Workspace;->mLastChildCount:I

    .line 305
    iput v0, p0, Lcom/voxel/launcher3/Workspace;->mOverScrollEffect:F

    .line 311
    new-instance v0, Lcom/voxel/launcher3/Workspace$1;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/Workspace$1;-><init>(Lcom/voxel/launcher3/Workspace;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mBindPages:Ljava/lang/Runnable;

    .line 2066
    new-instance v0, Lcom/voxel/launcher3/Workspace$ZoomInInterpolator;

    invoke-direct {v0}, Lcom/voxel/launcher3/Workspace$ZoomInInterpolator;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mZoomInInterpolator:Lcom/voxel/launcher3/Workspace$ZoomInInterpolator;

    .line 338
    move-object v0, p1

    check-cast v0, Lcom/voxel/launcher3/Launcher;

    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 339
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 340
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v3

    .line 341
    invoke-virtual {v3}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/launcher3/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v3

    iput-boolean v3, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    .line 342
    iput-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mFadeInAdjacentScreens:Z

    .line 343
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    iput-object v3, p0, Lcom/voxel/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 345
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v3

    .line 346
    invoke-virtual {v3}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v3

    .line 347
    sget-object v4, Lis/shortcut/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const p2, 0x7f0b002f

    .line 350
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/voxel/launcher3/Workspace;->mSpringLoadedShrinkFactor:F

    .line 351
    invoke-virtual {v3}, Lcom/voxel/launcher3/DeviceProfile;->getOverviewModeScale()F

    move-result p2

    iput p2, p0, Lcom/voxel/launcher3/Workspace;->mOverviewModeShrinkFactor:F

    const p2, 0x7f0b0012

    .line 352
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/voxel/launcher3/Workspace;->mCameraDistance:I

    .line 353
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/voxel/launcher3/Workspace;->mDefaultPage:I

    iput p2, p0, Lcom/voxel/launcher3/Workspace;->mOriginalDefaultPage:I

    .line 354
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 356
    invoke-virtual {p0, p0}, Lcom/voxel/launcher3/Workspace;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 357
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 359
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->initWorkspace()V

    .line 362
    invoke-virtual {p0, v5}, Lcom/voxel/launcher3/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 363
    invoke-virtual {p0, v5}, Lcom/voxel/launcher3/Workspace;->setImportantForAccessibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/Launcher;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/Workspace;)Ljava/lang/Runnable;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/voxel/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/voxel/launcher3/Workspace;)[F
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/voxel/launcher3/Workspace;->mNewBackgroundAlphas:[F

    return-object p0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 106
    sget-boolean v0, Lcom/voxel/launcher3/Workspace;->sAccessibilityEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/voxel/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;)Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/voxel/launcher3/Workspace;)[I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    return-object p0
.end method

.method static synthetic access$1302(Lcom/voxel/launcher3/Workspace;[I)[I
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    return-object p1
.end method

.method static synthetic access$1400(Lcom/voxel/launcher3/Workspace;)[F
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    return-object p0
.end method

.method static synthetic access$1500(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/CellLayout;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/voxel/launcher3/Workspace;IIIILcom/voxel/launcher3/CellLayout;[I)[I
    .locals 0

    .line 106
    invoke-direct/range {p0 .. p6}, Lcom/voxel/launcher3/Workspace;->findNearestArea(IIIILcom/voxel/launcher3/CellLayout;[I)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1702(Lcom/voxel/launcher3/Workspace;I)I
    .locals 0

    .line 106
    iput p1, p0, Lcom/voxel/launcher3/Workspace;->mLastReorderX:I

    return p1
.end method

.method static synthetic access$1802(Lcom/voxel/launcher3/Workspace;I)I
    .locals 0

    .line 106
    iput p1, p0, Lcom/voxel/launcher3/Workspace;->mLastReorderY:I

    return p1
.end method

.method static synthetic access$1900(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/graphics/DragPreviewProvider;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/voxel/launcher3/Workspace;->mOutlineProvider:Lcom/voxel/launcher3/graphics/DragPreviewProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/launcher3/Workspace;)Landroid/app/WallpaperManager;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/voxel/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/voxel/launcher3/Workspace;)Ljava/util/HashMap;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/voxel/launcher3/Workspace;)Landroid/os/IBinder;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/voxel/launcher3/Workspace;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$600(Lcom/voxel/launcher3/Workspace;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/voxel/launcher3/Workspace;->mWallpaperIsLiveWallpaper:Z

    return p0
.end method

.method static synthetic access$700(Lcom/voxel/launcher3/Workspace;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/voxel/launcher3/Workspace;->mNumPagesForWallpaperParallax:I

    return p0
.end method

.method static synthetic access$702(Lcom/voxel/launcher3/Workspace;I)I
    .locals 0

    .line 106
    iput p1, p0, Lcom/voxel/launcher3/Workspace;->mNumPagesForWallpaperParallax:I

    return p1
.end method

.method static synthetic access$800(Lcom/voxel/launcher3/Workspace;)F
    .locals 0

    .line 106
    iget p0, p0, Lcom/voxel/launcher3/Workspace;->mLastSetWallpaperOffsetSteps:F

    return p0
.end method

.method static synthetic access$802(Lcom/voxel/launcher3/Workspace;F)F
    .locals 0

    .line 106
    iput p1, p0, Lcom/voxel/launcher3/Workspace;->mLastSetWallpaperOffsetSteps:F

    return p1
.end method

.method static synthetic access$900(Lcom/voxel/launcher3/Workspace;)[F
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/voxel/launcher3/Workspace;->mOldBackgroundAlphas:[F

    return-object p0
.end method

.method private animateBackgroundGradient(FZ)V
    .locals 3

    .line 1630
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getMainLayerDarkenAlpha()Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v0

    .line 1632
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1633
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1634
    iput-object v2, p0, Lcom/voxel/launcher3/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    .line 1636
    :cond_0
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 1637
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1638
    iput-object v2, p0, Lcom/voxel/launcher3/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v1, 0x0

    .line 1640
    invoke-virtual {v0, p0, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->getValueForKey(Ljava/lang/Object;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v2, p1, v1

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    .line 1643
    new-array p2, p2, [F

    const/4 v2, 0x0

    aput v1, p2, v2

    const/4 v1, 0x1

    aput p1, p2, v1

    .line 1644
    invoke-static {p0, p2}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1645
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/voxel/launcher3/-$$Lambda$Workspace$EIxSf5ey20b6k2mkPs8ypwpPPug;

    invoke-direct {p2, p0, v0}, Lcom/voxel/launcher3/-$$Lambda$Workspace$EIxSf5ey20b6k2mkPs8ypwpPPug;-><init>(Lcom/voxel/launcher3/Workspace;Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1646
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1647
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1648
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1650
    :cond_2
    invoke-virtual {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    :cond_3
    :goto_0
    return-void
.end method

.method private calculateMaxDistanceForFolderCreation()F
    .locals 2

    .line 754
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    .line 755
    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 756
    iget v0, v0, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    int-to-float v0, v0

    const v1, 0x3f0ccccd    # 0.55f

    mul-float v0, v0, v1

    return v0
.end method

.method private cleanupAddToFolder()V
    .locals 2

    .line 3291
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDragOverFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3292
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/FolderIcon;->onDragExit(Ljava/lang/Object;)V

    .line 3293
    iput-object v1, p0, Lcom/voxel/launcher3/Workspace;->mDragOverFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    :cond_0
    return-void
.end method

.method private cleanupFolderCreation()V
    .locals 2

    .line 3282
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3283
    invoke-virtual {v0}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 3284
    iput-object v1, p0, Lcom/voxel/launcher3/Workspace;->mDragFolderRingAnimator:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    .line 3286
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mFolderCreationAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Alarm;->setOnAlarmListener(Lcom/voxel/launcher3/OnAlarmListener;)V

    .line 3287
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mFolderCreationAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Alarm;->cancelAlarm()V

    return-void
.end method

.method private cleanupReorder(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3300
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mReorderAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Alarm;->cancelAlarm()V

    :cond_0
    const/4 p1, -0x1

    .line 3302
    iput p1, p0, Lcom/voxel/launcher3/Workspace;->mLastReorderX:I

    .line 3303
    iput p1, p0, Lcom/voxel/launcher3/Workspace;->mLastReorderY:I

    return-void
.end method

.method private convertFinalScreenToEmptyScreenIfNecessary()V
    .locals 8

    const-string v0, "Launcher.Workspace"

    const-string v1, "11683562 - convertFinalScreenToEmptyScreenIfNecessary()"

    const/4 v2, 0x1

    .line 723
    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 725
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Workspace"

    const-string v1, "    - workspace loading, skip"

    .line 727
    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 731
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v3, -0x12d

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    return-void

    .line 735
    :cond_2
    iget-object v3, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout;

    .line 738
    invoke-virtual {v3}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 739
    invoke-virtual {v3}, Lcom/voxel/launcher3/CellLayout;->isDropPending()Z

    move-result v4

    if-nez v4, :cond_3

    .line 740
    iget-object v4, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v4, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 744
    iget-object v4, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v5, -0xc9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    iget-object v3, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v3, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/voxel/launcher3/Launcher;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object v3

    iget-object v4, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v5, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/voxel/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    const-string v3, "Launcher.Workspace"

    .line 749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "11683562 -   extra empty screen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 9

    .line 1954
    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_3

    .line 1955
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 1956
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Workspace;->getVisiblePages([I)V

    .line 1957
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mTempVisiblePagesRange:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    .line 1958
    aget v1, v1, v4

    if-ne v3, v1, :cond_1

    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    add-int/lit8 v3, v3, -0x1

    .line 1968
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v6, -0x12d

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/CellLayout;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_3

    .line 1970
    invoke-virtual {p0, v6}, Lcom/voxel/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/voxel/launcher3/CellLayout;

    if-eq v7, v5, :cond_2

    if-gt v3, v6, :cond_2

    if-gt v6, v1, :cond_2

    .line 1975
    invoke-virtual {p0, v7}, Lcom/voxel/launcher3/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 1976
    :goto_2
    invoke-virtual {v7, v8}, Lcom/voxel/launcher3/CellLayout;->enableHardwareLayer(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private enableOverviewMode(ZIZ)V
    .locals 1

    .line 2151
    sget-object v0, Lcom/voxel/launcher3/Workspace$State;->OVERVIEW:Lcom/voxel/launcher3/Workspace$State;

    if-nez p1, :cond_0

    .line 2153
    sget-object v0, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    :cond_0
    const/4 p1, 0x0

    .line 2156
    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/voxel/launcher3/Workspace;->getChangeStateAnimation(Lcom/voxel/launcher3/Workspace$State;ZII)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2158
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->onTransitionPrepare()V

    .line 2159
    new-instance p2, Lcom/voxel/launcher3/Workspace$4;

    invoke-direct {p2, p0}, Lcom/voxel/launcher3/Workspace$4;-><init>(Lcom/voxel/launcher3/Workspace;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2165
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method

.method private enforceDragParity(Landroid/view/View;Ljava/lang/String;II)V
    .locals 2

    const v0, 0x7f0a00dc

    .line 3203
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3204
    :cond_0
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    add-int/2addr v1, p3

    .line 3206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eq v1, p4, :cond_1

    const-string p1, "Launcher.Workspace"

    .line 3209
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": Drag contract violated: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private enforceDragParity(Ljava/lang/String;II)V
    .locals 2

    .line 3196
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/voxel/launcher3/Workspace;->enforceDragParity(Landroid/view/View;Ljava/lang/String;II)V

    const/4 v0, 0x0

    .line 3197
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3198
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/voxel/launcher3/Workspace;->enforceDragParity(Landroid/view/View;Ljava/lang/String;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V
    .locals 7

    const-string v0, "Launcher.Workspace"

    const-string v1, "11683562 - fadeAndRemoveEmptyScreen()"

    const/4 v2, 0x1

    .line 810
    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "alpha"

    .line 811
    new-array v1, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v1, "backgroundAlpha"

    .line 812
    new-array v5, v2, [F

    aput v3, v5, v4

    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 814
    iget-object v3, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v5, -0xc9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout;

    .line 816
    new-instance v5, Lcom/voxel/launcher3/-$$Lambda$Workspace$WsF3QNC74QJlrrDsgzDvwGVFBtY;

    invoke-direct {v5, p0, v3, p4}, Lcom/voxel/launcher3/-$$Lambda$Workspace$WsF3QNC74QJlrrDsgzDvwGVFBtY;-><init>(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/CellLayout;Z)V

    iput-object v5, p0, Lcom/voxel/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    const/4 p4, 0x2

    .line 827
    new-array p4, p4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p4, v4

    aput-object v1, p4, v2

    invoke-static {v3, p4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p4

    int-to-long v0, p2

    .line 828
    invoke-virtual {p4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long p1, p1

    .line 829
    invoke-virtual {p4, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 830
    new-instance p1, Lcom/voxel/launcher3/Workspace$2;

    invoke-direct {p1, p0, p3}, Lcom/voxel/launcher3/Workspace$2;-><init>(Lcom/voxel/launcher3/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {p4, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 841
    invoke-virtual {p4}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private findMatchingPageForDragOver(Lcom/voxel/launcher3/dragndrop/DragView;FFZ)Lcom/voxel/launcher3/CellLayout;
    .locals 11

    .line 3375
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move-object v2, v1

    const/4 v1, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    if-ge v1, p1, :cond_3

    .line 3381
    iget-object v4, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x12d

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    goto :goto_1

    .line 3385
    :cond_0
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/CellLayout;

    const/4 v5, 0x2

    .line 3387
    new-array v6, v5, [F

    aput p2, v6, v0

    const/4 v7, 0x1

    aput p3, v6, v7

    .line 3390
    invoke-virtual {v4}, Lcom/voxel/launcher3/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v9, p0, Lcom/voxel/launcher3/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3391
    iget-object v8, p0, Lcom/voxel/launcher3/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v4, v6, v8}, Lcom/voxel/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 3393
    aget v8, v6, v0

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    aget v8, v6, v0

    invoke-virtual {v4}, Lcom/voxel/launcher3/CellLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_1

    aget v8, v6, v7

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    aget v8, v6, v7

    .line 3394
    invoke-virtual {v4}, Lcom/voxel/launcher3/CellLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    return-object v4

    :cond_1
    if-nez p4, :cond_2

    .line 3400
    iget-object v8, p0, Lcom/voxel/launcher3/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 3401
    invoke-virtual {v4}, Lcom/voxel/launcher3/CellLayout;->getWidth()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v9, v9

    aput v9, v8, v0

    .line 3402
    invoke-virtual {v4}, Lcom/voxel/launcher3/CellLayout;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v5, v9

    aput v5, v8, v7

    .line 3403
    invoke-virtual {p0, v4, v8}, Lcom/voxel/launcher3/Workspace;->mapPointFromChildToSelf(Landroid/view/View;[F)V

    aput p2, v6, v0

    aput p3, v6, v7

    .line 3410
    invoke-static {v6, v8}, Lcom/voxel/launcher3/Workspace;->squaredDistance([F[F)F

    move-result v5

    cmpg-float v6, v5, v3

    if-gez v6, :cond_2

    move-object v2, v4

    move v3, v5

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private findNearestArea(IIIILcom/voxel/launcher3/CellLayout;[I)[I
    .locals 6

    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 4074
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p1

    return-object p1
.end method

.method static getCellLayoutMetrics(Lcom/voxel/launcher3/Launcher;I)Landroid/graphics/Rect;
    .locals 6

    .line 3122
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 3123
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    .line 3124
    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    .line 3126
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 3127
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 3128
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 3129
    invoke-virtual {p0, v2, v3}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 3130
    iget p0, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int p0, p0

    .line 3131
    iget v1, v1, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int v1, v1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    .line 3133
    sget-object p1, Lcom/voxel/launcher3/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    .line 3134
    invoke-virtual {v0, v4}, Lcom/voxel/launcher3/DeviceProfile;->getWorkspacePadding(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 3135
    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    .line 3136
    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p1

    .line 3137
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    sput-object p1, Lcom/voxel/launcher3/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3138
    sget-object p1, Lcom/voxel/launcher3/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3139
    invoke-virtual {v0, v3, p0}, Lcom/voxel/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result p0

    .line 3140
    invoke-virtual {v0, v2, v1}, Lcom/voxel/launcher3/DeviceProfile;->calculateCellHeight(II)I

    move-result v0

    .line 3138
    invoke-virtual {p1, p0, v0, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3142
    :cond_0
    sget-object p0, Lcom/voxel/launcher3/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    return-object p0

    :cond_1
    const/4 v5, 0x1

    if-ne p1, v5, :cond_3

    .line 3144
    sget-object p1, Lcom/voxel/launcher3/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez p1, :cond_2

    .line 3145
    invoke-virtual {v0, v5}, Lcom/voxel/launcher3/DeviceProfile;->getWorkspacePadding(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 3146
    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v5

    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v5

    .line 3147
    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    .line 3148
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    sput-object p1, Lcom/voxel/launcher3/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3149
    sget-object p1, Lcom/voxel/launcher3/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3150
    invoke-virtual {v0, v2, p0}, Lcom/voxel/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result p0

    .line 3151
    invoke-virtual {v0, v3, v1}, Lcom/voxel/launcher3/DeviceProfile;->calculateCellHeight(II)I

    move-result v0

    .line 3149
    invoke-virtual {p1, p0, v0, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3153
    :cond_2
    sget-object p0, Lcom/voxel/launcher3/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDragViewVisualCenter(IIIILcom/voxel/launcher3/dragndrop/DragView;[F)[F
    .locals 3

    const/4 v0, 0x2

    if-nez p6, :cond_0

    .line 3429
    new-array p6, v0, [F

    .line 3436
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr p1, v1

    .line 3437
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr p2, v1

    sub-int/2addr p1, p3

    sub-int/2addr p2, p4

    const/4 p3, 0x0

    .line 3447
    invoke-virtual {p5}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    div-int/2addr p4, v0

    add-int/2addr p1, p4

    int-to-float p1, p1

    aput p1, p6, p3

    const/4 p1, 0x1

    .line 3448
    invoke-virtual {p5}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    div-int/2addr p3, v0

    add-int/2addr p2, p3

    int-to-float p2, p2

    aput p2, p6, p1

    return-object p6
.end method

.method private getFinalPositionForDropAnimation([I[FLcom/voxel/launcher3/dragndrop/DragView;Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/ItemInfo;[IZZ)V
    .locals 7

    .line 3946
    iget v4, p5, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 3947
    iget v5, p5, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    const/4 p5, 0x0

    .line 3949
    aget v2, p6, p5

    const/4 p7, 0x1

    aget v3, p6, p7

    move-object v0, p0

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/Workspace;->estimateItemPosition(Lcom/voxel/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object p6

    .line 3950
    iget v0, p6, Landroid/graphics/Rect;->left:I

    aput v0, p1, p5

    .line 3951
    iget v0, p6, Landroid/graphics/Rect;->top:I

    aput v0, p1, p7

    .line 3953
    invoke-virtual {p0, p4}, Lcom/voxel/launcher3/Workspace;->setFinalTransitionTransform(Lcom/voxel/launcher3/CellLayout;)V

    .line 3954
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 3955
    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p4, p1, p7}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v0

    .line 3956
    invoke-virtual {p0, p4}, Lcom/voxel/launcher3/Workspace;->resetTransitionTransform(Lcom/voxel/launcher3/CellLayout;)V

    const/high16 p4, 0x3f800000    # 1.0f

    if-eqz p8, :cond_0

    .line 3961
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p8

    int-to-float p8, p8

    mul-float p8, p8, p4

    invoke-virtual {p3}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p8, v1

    .line 3962
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p4

    invoke-virtual {p3}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result p4

    int-to-float p4, p4

    div-float p4, v1, p4

    move v6, p8

    move p8, p4

    move p4, v6

    goto :goto_0

    :cond_0
    const/high16 p8, 0x3f800000    # 1.0f

    .line 3970
    :goto_0
    aget v1, p1, p5

    int-to-float v1, v1

    invoke-virtual {p3}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, p5

    .line 3971
    aget v1, p1, p7

    int-to-float v1, v1

    invoke-virtual {p3}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p6

    int-to-float p6, p6

    mul-float p6, p6, v0

    sub-float/2addr p3, p6

    div-float/2addr p3, v3

    sub-float/2addr v1, p3

    float-to-int p3, v1

    aput p3, p1, p7

    mul-float p4, p4, v0

    .line 3973
    aput p4, p2, p5

    mul-float p8, p8, v0

    .line 3974
    aput p8, p2, p7

    return-void
.end method

.method private getFirstMatch(Lcom/voxel/launcher3/Workspace$ItemOperator;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x1

    .line 4511
    new-array v0, v0, [Landroid/view/View;

    .line 4512
    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$Workspace$6C7sOUd2Ywkq90CYy75kVjjWb2M;

    invoke-direct {v1, p1, v0}, Lcom/voxel/launcher3/-$$Lambda$Workspace$6C7sOUd2Ywkq90CYy75kVjjWb2M;-><init>(Lcom/voxel/launcher3/Workspace$ItemOperator;[Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/voxel/launcher3/Workspace;->mapOverItems(ZLcom/voxel/launcher3/Workspace$ItemOperator;)V

    .line 4519
    aget-object p1, v0, p1

    return-object p1
.end method

.method private getOverviewModePages([I)V
    .locals 4

    .line 2094
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->numCustomPages()I

    move-result v0

    .line 2095
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 2097
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v3

    .line 2098
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v2

    return-void
.end method

.method public static getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 2556
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 2557
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private initAnimationArrays()V
    .locals 2

    .line 2074
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 2075
    iget v1, p0, Lcom/voxel/launcher3/Workspace;->mLastChildCount:I

    if-ne v1, v0, :cond_0

    return-void

    .line 2077
    :cond_0
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/voxel/launcher3/Workspace;->mOldBackgroundAlphas:[F

    .line 2078
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/voxel/launcher3/Workspace;->mOldAlphas:[F

    .line 2079
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/voxel/launcher3/Workspace;->mNewBackgroundAlphas:[F

    .line 2080
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mNewAlphas:[F

    return-void
.end method

.method private isDragWidget(Lcom/voxel/launcher3/DropTarget$DragObject;)Z
    .locals 1

    .line 3454
    iget-object v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    instance-of p1, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

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

.method private isExternalDragWidget(Lcom/voxel/launcher3/DropTarget$DragObject;)Z
    .locals 1

    .line 3459
    iget-object v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    if-eq v0, p0, :cond_0

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Workspace;->isDragWidget(Lcom/voxel/launcher3/DropTarget$DragObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$animateBackgroundGradient$2(Lcom/voxel/launcher3/Workspace;Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1645
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    return-void
.end method

.method static synthetic lambda$animateWidgetDrop$9(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 4019
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4022
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$clearDropTargets$16(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 4524
    instance-of p1, p2, Lcom/voxel/launcher3/DropTarget;

    if-eqz p1, :cond_0

    .line 4525
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    check-cast p2, Lcom/voxel/launcher3/DropTarget;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/voxel/launcher3/DropTarget;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$fadeAndRemoveEmptyScreen$1(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/CellLayout;Z)V
    .locals 4

    .line 817
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v1, -0xc9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 820
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->stripEmptyScreens()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getFirstMatch$15(Lcom/voxel/launcher3/Workspace$ItemOperator;[Landroid/view/View;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 4513
    invoke-interface {p0, p2, p3, p4}, Lcom/voxel/launcher3/Workspace$ItemOperator;->evaluate(Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    .line 4514
    aput-object p3, p1, p2

    const/4 p0, 0x1

    return p0

    :cond_0
    return p2
.end method

.method public static synthetic lambda$getPageIndicatorClickListener$3(Lcom/voxel/launcher3/Workspace;Landroid/view/View;)V
    .locals 0

    .line 1755
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->enterOverviewMode()Z

    return-void
.end method

.method static synthetic lambda$getWidgetForAppWidgetId$14(ILcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 4506
    instance-of p2, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    iget p1, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$onDrop$4(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/LauncherAppWidgetHostView;Lcom/voxel/launcher3/CellLayout;)V
    .locals 1

    .line 3007
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 3008
    invoke-virtual {v0, p1, p2, p3}, Lcom/voxel/launcher3/dragndrop/DragLayer;->addResizeFrame(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/LauncherAppWidgetHostView;Lcom/voxel/launcher3/CellLayout;)V

    return-void
.end method

.method public static synthetic lambda$onDrop$5(Lcom/voxel/launcher3/Workspace;Ljava/lang/Runnable;)V
    .locals 1

    .line 3011
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->isPageMoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3012
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3014
    :cond_0
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onDrop$6(Lcom/voxel/launcher3/Workspace;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 3037
    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mAnimatingViewIntoPlace:Z

    .line 3038
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    if-eqz p1, :cond_0

    .line 3040
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onDropCompleted$10(Lcom/voxel/launcher3/Workspace;Landroid/view/View;Lcom/voxel/launcher3/DropTarget$DragObject;ZZ)V
    .locals 0

    .line 4107
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/voxel/launcher3/Workspace;->onDropCompleted(Landroid/view/View;Lcom/evie/common/dragndrop/DragObjectAbstraction;ZZ)V

    const/4 p1, 0x0

    .line 4108
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic lambda$onDropCompleted$11(Landroid/view/View;Lcom/voxel/launcher3/CellLayout;)V
    .locals 1

    const/4 v0, 0x0

    .line 4147
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4148
    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$onDropExternal$7(Lcom/voxel/launcher3/Workspace;)V
    .locals 4

    .line 3737
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    const/4 v1, 0x1

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$onDropExternal$8(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/PendingAddItemInfo;Lcom/voxel/launcher3/ItemInfo;JJ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    .line 3799
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->deferRemoveExtraEmptyScreen()V

    .line 3803
    iget v3, v1, Lcom/voxel/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    const/4 v3, 0x2

    .line 3805
    new-array v12, v3, [I

    const/4 v3, 0x0

    .line 3806
    iget v5, v2, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    aput v5, v12, v3

    .line 3807
    iget v2, v2, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    aput v2, v12, v4

    .line 3808
    iget-object v5, v0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    move-object v6, v1

    check-cast v6, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iget-object v11, v0, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    const/4 v13, 0x0

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    invoke-virtual/range {v5 .. v13}, Lcom/voxel/launcher3/Launcher;->addAppWidgetFromDrop(Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;JJ[I[I[I)V

    goto :goto_0

    .line 3816
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/voxel/launcher3/PendingAddItemInfo;->itemType:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3812
    :cond_1
    iget-object v3, v0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v4, v1, Lcom/voxel/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v9, v0, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    const/4 v10, 0x0

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-virtual/range {v3 .. v10}, Lcom/voxel/launcher3/Launcher;->processShortcutFromDrop(Landroid/content/ComponentName;JJ[I[I)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$removeExtraEmptyScreenDelayed$0(Lcom/voxel/launcher3/Workspace;ZLjava/lang/Runnable;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 779
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/voxel/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    return-void
.end method

.method static synthetic lambda$removeItemsByComponentName$19(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 2

    .line 4678
    instance-of v0, p5, Lcom/voxel/launcher3/FolderInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4679
    invoke-virtual {p0, p7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p6, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4680
    check-cast p5, Lcom/voxel/launcher3/FolderInfo;

    .line 4682
    invoke-virtual {p2, p5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4683
    invoke-virtual {p2, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    goto :goto_0

    .line 4685
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4686
    invoke-virtual {p2, p5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4688
    :goto_0
    check-cast p6, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-virtual {p0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    .line 4692
    :cond_1
    invoke-virtual {p0, p7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p6, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4693
    invoke-virtual {p4, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$removeItemsByMatcher$17(Lcom/voxel/launcher3/util/ItemInfoMatcher;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 2

    .line 4552
    instance-of v0, p4, Lcom/voxel/launcher3/FolderInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4553
    invoke-virtual {p0, p5, p6}, Lcom/voxel/launcher3/util/ItemInfoMatcher;->matches(Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4554
    check-cast p4, Lcom/voxel/launcher3/FolderInfo;

    .line 4556
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4557
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    goto :goto_0

    .line 4559
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4560
    invoke-virtual {p1, p4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4562
    :goto_0
    check-cast p5, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-virtual {p0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    .line 4566
    :cond_1
    invoke-virtual {p0, p5, p6}, Lcom/voxel/launcher3/util/ItemInfoMatcher;->matches(Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4567
    invoke-virtual {p3, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$removeItemsByPackageName$18(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/HashSet;Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    if-eqz p5, :cond_0

    .line 4627
    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p4, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 4628
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4629
    invoke-virtual {p2, p5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$restorePendingWidgets$24(Lcom/voxel/launcher3/Workspace;Ljava/util/Set;Ljava/util/ArrayList;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 5023
    instance-of p4, p3, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    if-eqz p4, :cond_0

    .line 5024
    check-cast p3, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    const/4 p4, 0x2

    .line 5025
    invoke-virtual {p3, p4}, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p3, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 5026
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5028
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5031
    iget p1, p3, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p3, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 5032
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/voxel/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$updatePackageBadge$22(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/lang/String;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 4920
    instance-of v0, p3, Lcom/voxel/launcher3/ShortcutInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p4, Lcom/voxel/launcher3/BubbleTextView;

    if-eqz v0, :cond_1

    .line 4921
    check-cast p3, Lcom/voxel/launcher3/ShortcutInfo;

    .line 4922
    invoke-virtual {p3}, Lcom/voxel/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4923
    iget-object v2, p3, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p1, v2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 4924
    invoke-virtual {p3}, Lcom/voxel/launcher3/ShortcutInfo;->isPromise()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4925
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    .line 4926
    invoke-virtual {p3, p2}, Lcom/voxel/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 4928
    iget-object p2, p0, Lcom/voxel/launcher3/Workspace;->mIconCache:Lcom/voxel/launcher3/IconCache;

    iget-object v2, p3, Lcom/voxel/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    invoke-virtual {p2, p3, v2, p1, v0}, Lcom/voxel/launcher3/IconCache;->getTitleAndIcon(Lcom/voxel/launcher3/ShortcutInfo;Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;Z)V

    goto :goto_0

    .line 4932
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {p3, p1}, Lcom/voxel/launcher3/ShortcutInfo;->updateIcon(Lcom/voxel/launcher3/IconCache;)V

    .line 4934
    :goto_0
    check-cast p4, Lcom/voxel/launcher3/BubbleTextView;

    .line 4935
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {p4, p3, p1, v0, v1}, Lcom/voxel/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/IconCache;ZZ)V

    if-eqz p5, :cond_1

    .line 4938
    invoke-virtual {p5}, Landroid/view/View;->invalidate()V

    :cond_1
    return v1
.end method

.method static synthetic lambda$updatePackageState$23(Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 4952
    instance-of p3, p1, Lcom/voxel/launcher3/ShortcutInfo;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    instance-of p3, p2, Lcom/voxel/launcher3/BubbleTextView;

    if-eqz p3, :cond_1

    .line 4953
    check-cast p1, Lcom/voxel/launcher3/ShortcutInfo;

    .line 4954
    invoke-virtual {p1}, Lcom/voxel/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p3

    .line 4955
    invoke-virtual {p1}, Lcom/voxel/launcher3/ShortcutInfo;->isPromise()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    .line 4956
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 4957
    iget p3, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    invoke-virtual {p1, p3}, Lcom/voxel/launcher3/ShortcutInfo;->setInstallProgress(I)V

    .line 4958
    iget p0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    const/4 p3, 0x2

    if-ne p0, p3, :cond_0

    .line 4960
    iget p0, p1, Lcom/voxel/launcher3/ShortcutInfo;->status:I

    and-int/lit8 p0, p0, -0x5

    iput p0, p1, Lcom/voxel/launcher3/ShortcutInfo;->status:I

    .line 4962
    :cond_0
    check-cast p2, Lcom/voxel/launcher3/BubbleTextView;

    invoke-virtual {p2, v0}, Lcom/voxel/launcher3/BubbleTextView;->applyState(Z)V

    goto :goto_0

    .line 4964
    :cond_1
    instance-of p3, p2, Lcom/voxel/launcher3/PendingAppWidgetHostView;

    if-eqz p3, :cond_2

    instance-of p3, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    if-eqz p3, :cond_2

    check-cast p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    iget-object p3, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 4966
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    .line 4967
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 4968
    iget p0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    iput p0, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->installProgress:I

    .line 4969
    check-cast p2, Lcom/voxel/launcher3/PendingAppWidgetHostView;

    invoke-virtual {p2}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->applyState()V

    :cond_2
    :goto_0
    return v0
.end method

.method public static synthetic lambda$updateShortcuts$20(Lcom/voxel/launcher3/Workspace;Ljava/util/HashSet;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 4799
    instance-of v0, p2, Lcom/voxel/launcher3/ShortcutInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p3, Lcom/voxel/launcher3/BubbleTextView;

    if-eqz v0, :cond_2

    .line 4800
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4801
    check-cast p2, Lcom/voxel/launcher3/ShortcutInfo;

    .line 4802
    check-cast p3, Lcom/voxel/launcher3/BubbleTextView;

    .line 4803
    invoke-static {p3}, Lcom/voxel/launcher3/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4804
    instance-of v0, p1, Lcom/voxel/launcher3/PreloadIconDrawable;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lcom/voxel/launcher3/PreloadIconDrawable;

    .line 4805
    invoke-virtual {p1}, Lcom/voxel/launcher3/PreloadIconDrawable;->hasNotCompleted()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4806
    :goto_0
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mIconCache:Lcom/voxel/launcher3/IconCache;

    .line 4807
    invoke-virtual {p2}, Lcom/voxel/launcher3/ShortcutInfo;->isPromise()Z

    move-result v3

    if-eq v3, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 4806
    :goto_1
    invoke-virtual {p3, p2, v0, v2, p1}, Lcom/voxel/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/IconCache;ZZ)V

    if-eqz p4, :cond_2

    .line 4810
    invoke-virtual {p4}, Landroid/view/View;->invalidate()V

    :cond_2
    return v1
.end method

.method public static synthetic lambda$updateShortcutsAndWidgetsPerUser$21(Lcom/voxel/launcher3/Workspace;Ljava/util/HashMap;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/HashSet;Ljava/util/HashSet;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 4830
    instance-of v0, p5, Lcom/voxel/launcher3/ShortcutInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    instance-of v0, p6, Lcom/voxel/launcher3/BubbleTextView;

    if-eqz v0, :cond_6

    .line 4831
    move-object v0, p5

    check-cast v0, Lcom/voxel/launcher3/ShortcutInfo;

    .line 4832
    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 4833
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/AppInfo;

    .line 4834
    iget-object v4, v0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p2, v4}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz v2, :cond_6

    .line 4835
    invoke-static {p5}, Lcom/voxel/launcher3/LauncherModel;->isShortcutInfoUpdateable(Lcom/voxel/launcher3/ItemInfo;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 4836
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 4839
    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutInfo;->isPromise()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_4

    const/4 p2, 0x2

    .line 4840
    invoke-virtual {v0, p2}, Lcom/voxel/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 4842
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 4843
    new-instance p5, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {p5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4845
    invoke-virtual {p5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p5

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {p5, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p5

    const/high16 v4, 0x10000

    .line 4843
    invoke-virtual {p2, p5, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p5

    if-nez p5, :cond_3

    .line 4850
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p5

    .line 4849
    invoke-virtual {p2, p5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4852
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p5

    .line 4853
    invoke-virtual {p1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v3, p5

    check-cast v3, Lcom/voxel/launcher3/AppInfo;

    :cond_0
    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 4863
    :cond_1
    iput-object p2, v0, Lcom/voxel/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    goto :goto_1

    .line 4858
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v1

    .line 4868
    :cond_3
    :goto_1
    iget-object p1, v0, Lcom/voxel/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    iput-object p1, v0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 p1, 0x0

    .line 4869
    iput-object p1, v0, Lcom/voxel/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    .line 4870
    iget p1, v0, Lcom/voxel/launcher3/ShortcutInfo;->status:I

    and-int/lit8 p1, p1, -0x8

    iput p1, v0, Lcom/voxel/launcher3/ShortcutInfo;->status:I

    .line 4876
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/ShortcutInfo;->updateIcon(Lcom/voxel/launcher3/IconCache;)V

    .line 4877
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/voxel/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    const/4 p1, 0x1

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_2
    if-eqz v3, :cond_5

    .line 4882
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/ShortcutInfo;->updateIcon(Lcom/voxel/launcher3/IconCache;)V

    .line 4883
    iget-object p1, v3, Lcom/voxel/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 4884
    iget-object p1, v3, Lcom/voxel/launcher3/AppInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object p1, v0, Lcom/voxel/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    :cond_5
    if-eqz p1, :cond_6

    .line 4889
    check-cast p6, Lcom/voxel/launcher3/BubbleTextView;

    .line 4890
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {p6, v0, p1, p3, p2}, Lcom/voxel/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/IconCache;ZZ)V

    if-eqz p7, :cond_6

    .line 4894
    invoke-virtual {p7}, Landroid/view/View;->invalidate()V

    :cond_6
    return v1
.end method

.method private manageFolderFeedback(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/CellLayout;[IFLandroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 3598
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/Workspace;->willCreateUserFolder(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/CellLayout;[IFZ)Z

    move-result v0

    .line 3601
    iget v1, p0, Lcom/voxel/launcher3/Workspace;->mDragMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mFolderCreationAlarm:Lcom/voxel/launcher3/Alarm;

    .line 3602
    invoke-virtual {v1}, Lcom/voxel/launcher3/Alarm;->alarmPending()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3603
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mFolderCreationAlarm:Lcom/voxel/launcher3/Alarm;

    new-instance p4, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;

    aget p5, p3, v3

    aget p3, p3, v2

    invoke-direct {p4, p0, p2, p5, p3}, Lcom/voxel/launcher3/Workspace$FolderCreationAlarmListener;-><init>(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/CellLayout;II)V

    invoke-virtual {p1, p4}, Lcom/voxel/launcher3/Alarm;->setOnAlarmListener(Lcom/voxel/launcher3/OnAlarmListener;)V

    .line 3605
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mFolderCreationAlarm:Lcom/voxel/launcher3/Alarm;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/voxel/launcher3/Alarm;->setAlarm(J)V

    return-void

    .line 3610
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/voxel/launcher3/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/voxel/launcher3/CellLayout;[IF)Z

    move-result p3

    const/4 p4, 0x2

    if-eqz p3, :cond_2

    .line 3612
    iget v1, p0, Lcom/voxel/launcher3/Workspace;->mDragMode:I

    if-nez v1, :cond_2

    .line 3613
    check-cast p5, Lcom/voxel/launcher3/FolderIcon;

    iput-object p5, p0, Lcom/voxel/launcher3/Workspace;->mDragOverFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    .line 3614
    iget-object p3, p0, Lcom/voxel/launcher3/Workspace;->mDragOverFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    invoke-virtual {p3, p1}, Lcom/voxel/launcher3/FolderIcon;->onDragEnter(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 3616
    invoke-virtual {p2}, Lcom/voxel/launcher3/CellLayout;->clearDragOutlines()V

    .line 3618
    :cond_1
    invoke-virtual {p0, p4}, Lcom/voxel/launcher3/Workspace;->setDragMode(I)V

    return-void

    .line 3622
    :cond_2
    iget p1, p0, Lcom/voxel/launcher3/Workspace;->mDragMode:I

    if-ne p1, p4, :cond_3

    if-nez p3, :cond_3

    .line 3623
    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/Workspace;->setDragMode(I)V

    .line 3625
    :cond_3
    iget p1, p0, Lcom/voxel/launcher3/Workspace;->mDragMode:I

    if-ne p1, v2, :cond_4

    if-nez v0, :cond_4

    .line 3626
    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/Workspace;->setDragMode(I)V

    :cond_4
    return-void
.end method

.method private moveToScreen(IZ)V
    .locals 1

    .line 5053
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 5055
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->snapToPage(I)V

    goto :goto_0

    .line 5057
    :cond_0
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->setCurrentPage(I)V

    .line 5060
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5062
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/voxel/launcher3/CellLayout;ZLcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 30

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    .line 3737
    new-instance v14, Lcom/voxel/launcher3/-$$Lambda$Workspace$zV5yGOHv9A4eOQvWqaaQp6efGsA;

    invoke-direct {v14, v11}, Lcom/voxel/launcher3/-$$Lambda$Workspace$zV5yGOHv9A4eOQvWqaaQp6efGsA;-><init>(Lcom/voxel/launcher3/Workspace;)V

    .line 3740
    move-object/from16 v15, p2

    check-cast v15, Lcom/voxel/launcher3/ItemInfo;

    .line 3741
    iget v0, v15, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 3742
    iget v1, v15, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    .line 3743
    iget-object v2, v11, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    if-eqz v2, :cond_0

    .line 3744
    iget v0, v2, Lcom/voxel/launcher3/CellLayout$CellInfo;->spanX:I

    .line 3745
    iget-object v1, v11, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget v1, v1, Lcom/voxel/launcher3/CellLayout$CellInfo;->spanY:I

    move v3, v0

    move v4, v1

    goto :goto_0

    :cond_0
    move v3, v0

    move v4, v1

    .line 3748
    :goto_0
    iget-object v0, v11, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, v12}, Lcom/voxel/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x65

    goto :goto_1

    :cond_1
    const-wide/16 v0, -0x64

    :goto_1
    move-wide/from16 v24, v0

    .line 3751
    invoke-virtual {v11, v12}, Lcom/voxel/launcher3/Workspace;->getIdForScreen(Lcom/voxel/launcher3/CellLayout;)J

    move-result-wide v9

    .line 3752
    iget-object v0, v11, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, v12}, Lcom/voxel/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_2

    iget v0, v11, Lcom/voxel/launcher3/Workspace;->mCurrentPage:I

    .line 3753
    invoke-virtual {v11, v0}, Lcom/voxel/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    cmp-long v2, v9, v0

    if-eqz v2, :cond_2

    iget-object v0, v11, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->SPRING_LOADED:Lcom/voxel/launcher3/Workspace$State;

    if-eq v0, v1, :cond_2

    .line 3755
    invoke-virtual {v11, v9, v10, v8}, Lcom/voxel/launcher3/Workspace;->snapToScreenId(JLjava/lang/Runnable;)V

    .line 3758
    :cond_2
    instance-of v0, v15, Lcom/voxel/launcher3/PendingAddItemInfo;

    const/16 v26, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_c

    .line 3759
    move-object/from16 v14, p2

    check-cast v14, Lcom/voxel/launcher3/PendingAddItemInfo;

    .line 3762
    iget v0, v14, Lcom/voxel/launcher3/PendingAddItemInfo;->itemType:I

    if-ne v0, v7, :cond_4

    .line 3763
    aget v1, p1, v26

    aget v2, p1, v7

    iget-object v6, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/Workspace;->findNearestArea(IIIILcom/voxel/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    .line 3765
    iget-object v0, v11, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v26

    aget v0, v0, v7

    iget-object v2, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v12, v1, v0, v2}, Lcom/voxel/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v6

    .line 3767
    iget-object v1, v13, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-object v3, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/Workspace;->willCreateUserFolder(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/CellLayout;[IFZ)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v13, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-object v1, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    .line 3768
    invoke-virtual {v11, v0, v12, v1, v6}, Lcom/voxel/launcher3/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/voxel/launcher3/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    .line 3774
    :goto_2
    iget-object v6, v13, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    if-eqz v0, :cond_8

    .line 3777
    iget v0, v6, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 3778
    iget v1, v6, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    .line 3779
    iget v2, v6, Lcom/voxel/launcher3/ItemInfo;->minSpanX:I

    if-lez v2, :cond_5

    iget v2, v6, Lcom/voxel/launcher3/ItemInfo;->minSpanY:I

    if-lez v2, :cond_5

    .line 3780
    iget v0, v6, Lcom/voxel/launcher3/ItemInfo;->minSpanX:I

    .line 3781
    iget v1, v6, Lcom/voxel/launcher3/ItemInfo;->minSpanY:I

    move v3, v0

    move v4, v1

    goto :goto_3

    :cond_5
    move v3, v0

    move v4, v1

    :goto_3
    const/4 v0, 0x2

    .line 3783
    new-array v5, v0, [I

    .line 3784
    iget-object v0, v11, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v26

    float-to-int v1, v1

    aget v0, v0, v7

    float-to-int v2, v0

    iget v0, v15, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v7, v15, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    const/16 v17, 0x0

    iget-object v8, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    const/16 v19, 0x3

    move/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v21, v5

    move/from16 v5, v20

    move-object/from16 v27, v6

    move v6, v7

    move-object/from16 v7, v17

    const/16 v16, 0x0

    move-wide/from16 v28, v9

    move-object/from16 v9, v21

    move/from16 v10, v19

    invoke-virtual/range {v0 .. v10}, Lcom/voxel/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    .line 3788
    aget v0, v21, v26

    move-object/from16 v8, v27

    iget v1, v8, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    if-ne v0, v1, :cond_7

    const/4 v10, 0x1

    aget v0, v21, v10

    iget v1, v8, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    if-eq v0, v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    const/4 v10, 0x1

    :goto_4
    const/4 v0, 0x1

    .line 3791
    :goto_5
    aget v1, v21, v26

    iput v1, v8, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 3792
    aget v1, v21, v10

    iput v1, v8, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    move v9, v0

    goto :goto_6

    :cond_8
    move-object/from16 v16, v8

    move-wide/from16 v28, v9

    const/4 v10, 0x1

    move-object v8, v6

    const/4 v9, 0x0

    .line 3795
    :goto_6
    new-instance v17, Lcom/voxel/launcher3/-$$Lambda$Workspace$OIzUxxktudgahsK7soTJygJzj2M;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v8

    move-wide/from16 v4, v24

    move-wide/from16 v6, v28

    invoke-direct/range {v0 .. v7}, Lcom/voxel/launcher3/-$$Lambda$Workspace$OIzUxxktudgahsK7soTJygJzj2M;-><init>(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/PendingAddItemInfo;Lcom/voxel/launcher3/ItemInfo;JJ)V

    .line 3820
    iget v0, v14, Lcom/voxel/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    move-object v0, v14

    check-cast v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    move-object v6, v0

    goto :goto_7

    :cond_9
    move-object/from16 v6, v16

    .line 3823
    :goto_7
    instance-of v0, v6, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_a

    if-eqz v9, :cond_a

    .line 3824
    move-object v0, v6

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 3825
    iget-object v2, v11, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget v3, v8, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v4, v8, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    invoke-static {v0, v2, v3, v4}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/voxel/launcher3/Launcher;II)V

    .line 3830
    :cond_a
    iget v0, v14, Lcom/voxel/launcher3/PendingAddItemInfo;->itemType:I

    if-ne v0, v1, :cond_b

    check-cast v14, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iget-object v0, v14, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->info:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_b

    const/4 v5, 0x1

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    .line 3834
    :goto_8
    iget-object v3, v13, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p3

    move-object/from16 v4, v17

    invoke-virtual/range {v0 .. v7}, Lcom/voxel/launcher3/Workspace;->animateWidgetDrop(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto/16 :goto_b

    :cond_c
    move-wide/from16 v28, v9

    const/4 v10, 0x1

    .line 3840
    iget v0, v15, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d

    packed-switch v0, :pswitch_data_0

    .line 3857
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x7f0d0052

    .line 3853
    iget-object v1, v11, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    move-object v2, v15

    check-cast v2, Lcom/voxel/launcher3/FolderInfo;

    iget-object v5, v11, Lcom/voxel/launcher3/Workspace;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-static {v0, v1, v12, v2, v5}, Lcom/voxel/launcher3/FolderIcon;->fromXml(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/voxel/launcher3/FolderInfo;Lcom/voxel/launcher3/IconCache;)Lcom/voxel/launcher3/FolderIcon;

    move-result-object v0

    move-object v9, v15

    move-object v15, v0

    goto :goto_9

    .line 3844
    :cond_d
    :pswitch_1
    iget-wide v0, v15, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v5, -0x1

    cmp-long v2, v0, v5

    if-nez v2, :cond_e

    instance-of v0, v15, Lcom/voxel/launcher3/AppInfo;

    if-eqz v0, :cond_e

    .line 3846
    new-instance v0, Lcom/voxel/launcher3/ShortcutInfo;

    check-cast v15, Lcom/voxel/launcher3/AppInfo;

    invoke-direct {v0, v15}, Lcom/voxel/launcher3/ShortcutInfo;-><init>(Lcom/voxel/launcher3/AppInfo;)V

    .line 3847
    iput-object v0, v13, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    move-object v15, v0

    .line 3849
    :cond_e
    iget-object v0, v11, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    const v1, 0x7f0d0029

    move-object v2, v15

    check-cast v2, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-virtual {v0, v1, v12, v2}, Lcom/voxel/launcher3/Launcher;->createShortcut(ILcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    move-object v9, v15

    move-object v15, v0

    :goto_9
    if-eqz p1, :cond_10

    .line 3863
    aget v1, p1, v26

    aget v2, p1, v10

    iget-object v6, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/Workspace;->findNearestArea(IIIILcom/voxel/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    .line 3865
    iget-object v0, v11, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v26

    aget v0, v0, v10

    iget-object v2, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v12, v1, v0, v2}, Lcom/voxel/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v16

    .line 3867
    iput-object v14, v13, Lcom/voxel/launcher3/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 3868
    iget-object v5, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    iget-object v8, v13, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    iget-object v6, v13, Lcom/voxel/launcher3/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object v1, v15

    move-wide/from16 v2, v24

    move-object/from16 v4, p3

    move-object/from16 v17, v6

    move/from16 v6, v16

    move-object/from16 p2, v9

    move-object/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lcom/voxel/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/voxel/launcher3/CellLayout;[IFZLcom/voxel/launcher3/dragndrop/DragView;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 3872
    :cond_f
    iget-object v3, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p3

    move/from16 v4, v16

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/voxel/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/voxel/launcher3/CellLayout;[IFLcom/voxel/launcher3/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_10
    move-object/from16 p2, v9

    :cond_11
    if-eqz p1, :cond_12

    .line 3880
    iget-object v0, v11, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v26

    float-to-int v1, v1

    aget v0, v0, v10

    float-to-int v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    const/4 v9, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p3

    move-object/from16 v27, v14

    const/4 v14, 0x1

    move/from16 v10, v16

    invoke-virtual/range {v0 .. v10}, Lcom/voxel/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    goto :goto_a

    :cond_12
    move-object/from16 v27, v14

    const/4 v14, 0x1

    .line 3884
    iget-object v0, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v12, v0, v14, v14}, Lcom/voxel/launcher3/CellLayout;->findCellForSpan([III)Z

    .line 3888
    :goto_a
    iget-object v0, v11, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v1, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    aget v22, v1, v26

    aget v23, v1, v14

    move-object/from16 v16, v0

    move-object/from16 v17, p2

    move-wide/from16 v18, v24

    move-wide/from16 v20, v28

    invoke-static/range {v16 .. v23}, Lcom/voxel/launcher3/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJII)V

    .line 3891
    iget-object v0, v11, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    aget v6, v0, v26

    aget v7, v0, v14

    move-object/from16 v0, p2

    iget v8, v0, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v9, v0, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    move-object v1, v15

    move-wide/from16 v2, v24

    move-wide/from16 v4, v28

    move/from16 v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/voxel/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 3893
    invoke-virtual {v12, v15}, Lcom/voxel/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 3894
    invoke-virtual/range {p3 .. p3}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 3896
    iget-object v0, v13, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_13

    .line 3900
    invoke-virtual {v11, v12}, Lcom/voxel/launcher3/Workspace;->setFinalTransitionTransform(Lcom/voxel/launcher3/CellLayout;)V

    .line 3901
    iget-object v0, v11, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, v13, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v15, v2, v11}, Lcom/voxel/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 3903
    invoke-virtual {v11, v12}, Lcom/voxel/launcher3/Workspace;->resetTransitionTransform(Lcom/voxel/launcher3/CellLayout;)V

    :cond_13
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onResetScrollArea()V
    .locals 1

    const/4 v0, 0x0

    .line 4446
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/voxel/launcher3/CellLayout;)V

    const/4 v0, 0x0

    .line 4447
    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mInScrollArea:Z

    return-void
.end method

.method private restorePendingWidgets(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5022
    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$Workspace$06tbQcXBFlk_69aZO1d4ei7aVn0;

    invoke-direct {v1, p0, p1, v0}, Lcom/voxel/launcher3/-$$Lambda$Workspace$06tbQcXBFlk_69aZO1d4ei7aVn0;-><init>(Lcom/voxel/launcher3/Workspace;Ljava/util/Set;Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/voxel/launcher3/Workspace;->mapOverItems(ZLcom/voxel/launcher3/Workspace$ItemOperator;)V

    .line 5038
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5039
    new-instance v1, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;

    iget-object v2, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 5040
    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->getAppWidgetHost()Lcom/voxel/launcher3/LauncherAppWidgetHost;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;-><init>(Lcom/voxel/launcher3/Workspace;Ljava/util/ArrayList;Lcom/voxel/launcher3/LauncherAppWidgetHost;)V

    .line 5041
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v2

    .line 5042
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    iget-object v3, v3, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    iget-object p1, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v2, v3, p1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5044
    invoke-virtual {v1}, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;->run()V

    :cond_0
    return-void
.end method

.method private setChildrenBackgroundAlphaMultipliers(F)V
    .locals 2

    const/4 v0, 0x0

    .line 1694
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1695
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout;

    .line 1696
    invoke-virtual {v1, p1}, Lcom/voxel/launcher3/CellLayout;->setBackgroundAlphaMultiplier(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setState(Lcom/voxel/launcher3/Workspace$State;)V
    .locals 0

    .line 2199
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    .line 2200
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->updateInteractionForState()V

    .line 2201
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace;->updateAccessibilityFlags()V

    return-void
.end method

.method private setupLayoutTransition()V
    .locals 2

    .line 501
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 502
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 503
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 504
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 505
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 506
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private static squaredDistance([F[F)F
    .locals 2

    const/4 v0, 0x0

    .line 3357
    aget p0, p0, v0

    aget v0, p1, v0

    sub-float/2addr p0, v0

    const/4 v0, 0x1

    .line 3358
    aget v1, p1, v0

    aget p1, p1, v0

    sub-float/2addr v1, p1

    mul-float p0, p0, p0

    mul-float v1, v1, v1

    add-float/2addr p0, v1

    return p0
.end method

.method private updateAccessibilityFlags()V
    .locals 2

    .line 2209
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 2212
    :goto_0
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setImportantForAccessibility(I)V

    return-void
.end method

.method private updateChildrenLayersEnabled(Z)V
    .locals 4

    .line 1937
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->OVERVIEW:Lcom/voxel/launcher3/Workspace$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez p1, :cond_3

    if-nez v0, :cond_3

    .line 1938
    iget-boolean p1, p0, Lcom/voxel/launcher3/Workspace;->mAnimatingViewIntoPlace:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->isPageMoving()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 1940
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/voxel/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eq v2, p1, :cond_5

    .line 1941
    iput-boolean v2, p0, Lcom/voxel/launcher3/Workspace;->mChildrenLayersEnabled:Z

    .line 1942
    iget-boolean p1, p0, Lcom/voxel/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz p1, :cond_4

    .line 1943
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    .line 1945
    :goto_3
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 1946
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout;

    .line 1947
    invoke-virtual {v0, v3}, Lcom/voxel/launcher3/CellLayout;->enableHardwareLayer(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method private updatePageAlphaValues(I)V
    .locals 4

    .line 1668
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mOverScrollX:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mOverScrollX:I

    iget v1, p0, Lcom/voxel/launcher3/Workspace;->mMaxScrollX:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1669
    :goto_1
    iget-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v1, :cond_3

    .line 1670
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->workspaceInModalState()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 1673
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->numCustomPages()I

    move-result v0

    :goto_2
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1674
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout;

    if-eqz v1, :cond_2

    .line 1676
    invoke-virtual {p0, p1, v1, v0}, Lcom/voxel/launcher3/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1677
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v3, v2

    .line 1678
    invoke-virtual {v1}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private updateShortcutsAndWidgetsPerUser(Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .line 4821
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4822
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 4823
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/AppInfo;

    .line 4824
    iget-object v1, v0, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4825
    iget-object v0, v0, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4827
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x1

    .line 4829
    new-instance v8, Lcom/voxel/launcher3/-$$Lambda$Workspace$lyZePwJSkPJHSAd0DYgJB288yNE;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p2

    move-object v4, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/-$$Lambda$Workspace$lyZePwJSkPJHSAd0DYgJB288yNE;-><init>(Lcom/voxel/launcher3/Workspace;Ljava/util/HashMap;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/HashSet;Ljava/util/HashSet;)V

    invoke-virtual {p0, v7, v8}, Lcom/voxel/launcher3/Workspace;->mapOverItems(ZLcom/voxel/launcher3/Workspace$ItemOperator;)V

    .line 4903
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4904
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/Workspace;->removeItemsByComponentName(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 4906
    :cond_1
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4907
    invoke-direct {p0, v6}, Lcom/voxel/launcher3/Workspace;->restorePendingWidgets(Ljava/util/Set;)V

    :cond_2
    return-void
.end method

.method private updateStateForCustomContent(I)V
    .locals 5

    .line 1715
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hasCustomContent()Z

    move-result p1

    const-wide/16 v0, -0x12d

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 1716
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1718
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getScrollX()I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getScrollForPage(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1719
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getLayoutTransitionOffsetForPage(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x1

    .line 1720
    invoke-virtual {p0, v4}, Lcom/voxel/launcher3/Workspace;->getScrollForPage(I)I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getScrollForPage(I)I

    move-result p1

    sub-int/2addr v4, p1

    int-to-float p1, v4

    int-to-float v3, v3

    sub-float v3, p1, v3

    div-float p1, v3, p1

    .line 1724
    iget-boolean v4, p0, Lcom/voxel/launcher3/Workspace;->mIsRtl:Z

    if-eqz v4, :cond_0

    .line 1725
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_0

    .line 1727
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1729
    :goto_0
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v3, 0x0

    .line 1732
    :goto_1
    iget v4, p0, Lcom/voxel/launcher3/Workspace;->mLastCustomContentScrollProgress:F

    invoke-static {p1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_2

    return-void

    .line 1734
    :cond_2
    iget-object v4, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout;

    cmpl-float v1, p1, v2

    if-lez v1, :cond_3

    .line 1735
    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->workspaceInModalState()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 1736
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CellLayout;->setVisibility(I)V

    .line 1739
    :cond_3
    iput p1, p0, Lcom/voxel/launcher3/Workspace;->mLastCustomContentScrollProgress:F

    .line 1743
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentCallbacks:Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_4

    .line 1744
    invoke-interface {v0, p1, v3}, Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;->onCustomContentScrollProgressChanged(FF)V

    :cond_4
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)Z
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 2658
    iget-boolean v0, v8, Lcom/voxel/launcher3/DropTarget$DragObject;->isDesktopLocked:Z

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    return v9

    .line 2662
    :cond_0
    iget-object v15, v7, Lcom/voxel/launcher3/Workspace;->mDropToLayout:Lcom/voxel/launcher3/CellLayout;

    .line 2663
    iget-object v0, v8, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    const/16 v21, 0x1

    if-eq v0, v7, :cond_a

    if-nez v15, :cond_1

    return v9

    .line 2668
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_2

    return v9

    .line 2670
    :cond_2
    iget v1, v8, Lcom/voxel/launcher3/DropTarget$DragObject;->x:I

    iget v2, v8, Lcom/voxel/launcher3/DropTarget$DragObject;->y:I

    iget v3, v8, Lcom/voxel/launcher3/DropTarget$DragObject;->xOffset:I

    iget v4, v8, Lcom/voxel/launcher3/DropTarget$DragObject;->yOffset:I

    iget-object v5, v8, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    iget-object v6, v7, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/Workspace;->getDragViewVisualCenter(IIIILcom/voxel/launcher3/dragndrop/DragView;[F)[F

    move-result-object v0

    iput-object v0, v7, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 2674
    iget-object v0, v7, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, v15}, Lcom/voxel/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2675
    iget-object v0, v7, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v0

    iget-object v1, v7, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v7, v0, v1}, Lcom/voxel/launcher3/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/voxel/launcher3/Hotseat;[F)V

    goto :goto_0

    .line 2677
    :cond_3
    iget-object v0, v7, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v1, 0x0

    invoke-virtual {v7, v15, v0, v1}, Lcom/voxel/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2682
    :goto_0
    iget-object v0, v7, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_4

    .line 2684
    iget v1, v0, Lcom/voxel/launcher3/CellLayout$CellInfo;->spanX:I

    .line 2685
    iget v0, v0, Lcom/voxel/launcher3/CellLayout$CellInfo;->spanY:I

    move/from16 v17, v0

    move/from16 v16, v1

    goto :goto_1

    .line 2687
    :cond_4
    iget-object v0, v8, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    .line 2688
    iget v1, v0, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 2689
    iget v0, v0, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    move/from16 v17, v0

    move/from16 v16, v1

    .line 2694
    :goto_1
    iget-object v0, v8, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_5

    .line 2695
    iget-object v0, v8, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    check-cast v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iget v0, v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 2696
    iget-object v1, v8, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    check-cast v1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iget v1, v1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->minSpanY:I

    move v13, v0

    move v14, v1

    goto :goto_2

    :cond_5
    move/from16 v13, v16

    move/from16 v14, v17

    .line 2699
    :goto_2
    iget-object v0, v7, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v9

    float-to-int v1, v1

    aget v0, v0, v21

    float-to-int v2, v0

    iget-object v6, v7, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move v3, v13

    move v4, v14

    move-object v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/Workspace;->findNearestArea(IIIILcom/voxel/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    .line 2702
    iget-object v0, v7, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v9

    aget v0, v0, v21

    iget-object v2, v7, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v15, v1, v0, v2}, Lcom/voxel/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v6

    .line 2704
    iget-boolean v0, v7, Lcom/voxel/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v0, :cond_6

    iget-object v1, v8, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-object v3, v7, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v2, v15

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/Workspace;->willCreateUserFolder(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/CellLayout;[IFZ)Z

    move-result v0

    if-eqz v0, :cond_6

    return v21

    .line 2709
    :cond_6
    iget-boolean v0, v7, Lcom/voxel/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v0, :cond_7

    iget-object v0, v8, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-object v1, v7, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v7, v0, v15, v1, v6}, Lcom/voxel/launcher3/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/voxel/launcher3/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_7

    return v21

    :cond_7
    const/4 v0, 0x2

    .line 2714
    new-array v0, v0, [I

    .line 2715
    iget-object v1, v7, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v9

    float-to-int v11, v2

    aget v1, v1, v21

    float-to-int v12, v1

    const/4 v1, 0x0

    iget-object v2, v7, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    const/16 v20, 0x4

    move-object v10, v15

    move-object v3, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v0

    invoke-virtual/range {v10 .. v20}, Lcom/voxel/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v7, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    .line 2718
    iget-object v0, v7, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    aget v1, v0, v9

    if-ltz v1, :cond_8

    aget v0, v0, v21

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_b

    .line 2724
    iget-object v0, v7, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, v3}, Lcom/voxel/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    .line 2725
    iget-object v1, v7, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 2726
    iget-object v1, v7, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v1

    .line 2727
    iget-object v2, v7, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    aget v3, v2, v9

    aget v2, v2, v21

    .line 2728
    invoke-virtual {v1, v3, v2}, Lcom/voxel/launcher3/Hotseat;->getOrderInHotseat(II)I

    move-result v2

    .line 2727
    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v1

    if-eqz v1, :cond_9

    return v9

    .line 2733
    :cond_9
    iget-object v1, v7, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/Launcher;->showOutOfSpaceMessage(Z)V

    return v9

    :cond_a
    move-object v3, v15

    .line 2738
    :cond_b
    invoke-virtual {v7, v3}, Lcom/voxel/launcher3/Workspace;->getIdForScreen(Lcom/voxel/launcher3/CellLayout;)J

    move-result-wide v0

    const-wide/16 v2, -0xc9

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    .line 2740
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    .line 2742
    iget-object v0, v7, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->showWorkspaceIsLoadingMessage()V

    return v9

    :cond_c
    return v21
.end method

.method public addExtraEmptyScreen()Z
    .locals 5

    const-string v0, "Launcher.Workspace"

    const-string v1, "11683562 - addExtraEmptyScreen()"

    const/4 v2, 0x1

    .line 712
    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 714
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v3, -0xc9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    invoke-virtual {p0, v3, v4}, Lcom/voxel/launcher3/Workspace;->insertNewWorkspaceScreen(J)J

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addExtraEmptyScreenOnDrag()V
    .locals 5

    const-string v0, "Launcher.Workspace"

    const-string v1, "11683562 - addExtraEmptyScreenOnDrag()"

    const/4 v2, 0x1

    .line 683
    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 689
    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 691
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDragSourceInternal:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 692
    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 695
    :goto_0
    iget-object v3, p0, Lcom/voxel/launcher3/Workspace;->mDragSourceInternal:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout;

    .line 696
    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    return-void

    .line 705
    :cond_3
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v1, -0xc9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 706
    invoke-virtual {p0, v1, v2}, Lcom/voxel/launcher3/Workspace;->insertNewWorkspaceScreen(J)J

    :cond_4
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1882
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1883
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getOpenFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1885
    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 1887
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/voxel/launcher3/PagedView;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method addInScreen(Landroid/view/View;JJIIII)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 970
    invoke-virtual/range {v0 .. v11}, Lcom/voxel/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    return-void
.end method

.method addInScreen(Landroid/view/View;JJIIIIZ)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 983
    invoke-virtual/range {v0 .. v11}, Lcom/voxel/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    return-void
.end method

.method addInScreen(Landroid/view/View;JJIIIIZZ)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move/from16 v4, p8

    move/from16 v5, p9

    const-wide/16 v6, -0x64

    cmp-long v8, p2, v6

    if-nez v8, :cond_0

    .line 1004
    invoke-virtual {p0, p4, p5}, Lcom/voxel/launcher3/Workspace;->getScreenWithId(J)Lcom/voxel/launcher3/CellLayout;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v1, "Launcher.Workspace"

    .line 1005
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping child, screenId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_0
    const-wide/16 v6, -0xc9

    cmp-long v8, v2, v6

    if-eqz v8, :cond_b

    const-wide/16 v6, -0x65

    cmp-long v8, p2, v6

    if-nez v8, :cond_2

    .line 1018
    iget-object v6, v0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/voxel/launcher3/Hotseat;->getLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v6

    .line 1019
    new-instance v7, Lcom/voxel/launcher3/HotseatIconKeyEventListener;

    invoke-direct {v7}, Lcom/voxel/launcher3/HotseatIconKeyEventListener;-><init>()V

    invoke-virtual {p1, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-eqz p11, :cond_1

    .line 1022
    iget-object v7, v0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v7

    long-to-int v2, v2

    invoke-virtual {v7, v2}, Lcom/voxel/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v3

    .line 1023
    iget-object v7, v0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/voxel/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v2

    move v8, v2

    move v7, v3

    goto :goto_0

    .line 1025
    :cond_1
    iget-object v2, v0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v2

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual {v2, v7, v8}, Lcom/voxel/launcher3/Hotseat;->getOrderInHotseat(II)I

    goto :goto_0

    :cond_2
    move/from16 v7, p6

    move/from16 v8, p7

    .line 1028
    invoke-virtual {p0, p4, p5}, Lcom/voxel/launcher3/Workspace;->getScreenWithId(J)Lcom/voxel/launcher3/CellLayout;

    move-result-object v2

    .line 1029
    new-instance v3, Lcom/voxel/launcher3/IconKeyEventListener;

    invoke-direct {v3}, Lcom/voxel/launcher3/IconKeyEventListener;-><init>()V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object v6, v2

    .line 1032
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1034
    instance-of v3, v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    if-nez v3, :cond_3

    goto :goto_1

    .line 1037
    :cond_3
    check-cast v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 1038
    iput v7, v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 1039
    iput v8, v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 1040
    iput v4, v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 1041
    iput v5, v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_2

    .line 1035
    :cond_4
    :goto_1
    new-instance v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    invoke-direct {v2, v7, v8, v4, v5}, Lcom/voxel/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    :goto_2
    const/4 v3, 0x0

    if-gez v4, :cond_5

    if-gez v5, :cond_5

    .line 1045
    iput-boolean v3, v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1049
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/ItemInfo;

    .line 1050
    iget-object v5, v0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v5, v4}, Lcom/voxel/launcher3/Launcher;->getViewIdForItem(Lcom/voxel/launcher3/ItemInfo;)I

    move-result v4

    .line 1052
    instance-of v5, v1, Lcom/voxel/launcher3/Folder;

    const/4 v7, 0x1

    if-nez v5, :cond_6

    const/4 v8, 0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    if-eqz p10, :cond_7

    const/4 v9, 0x0

    goto :goto_4

    :cond_7
    const/4 v9, -0x1

    :goto_4
    move-object p2, v6

    move-object p3, p1

    move p4, v9

    move p5, v4

    move-object/from16 p6, v2

    move/from16 p7, v8

    .line 1053
    invoke-virtual/range {p2 .. p7}, Lcom/voxel/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/voxel/launcher3/CellLayout$LayoutParams;Z)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "Launcher.Workspace"

    .line 1057
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to add to item at ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to CellLayout"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v7}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_8
    if-nez v5, :cond_9

    .line 1061
    invoke-virtual {p1, v3}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 1062
    iget-object v2, v0, Lcom/voxel/launcher3/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1064
    :cond_9
    instance-of v2, v1, Lcom/voxel/launcher3/DropTarget;

    if-eqz v2, :cond_a

    .line 1065
    iget-object v2, v0, Lcom/voxel/launcher3/Workspace;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    check-cast v1, Lcom/voxel/launcher3/DropTarget;

    invoke-virtual {v2, v1}, Lcom/voxel/launcher3/dragndrop/DragController;->addDropTarget(Lcom/voxel/launcher3/DropTarget;)V

    :cond_a
    return-void

    .line 1013
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method addInScreenFromBind(Landroid/view/View;JJIIII)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 977
    invoke-virtual/range {v0 .. v11}, Lcom/voxel/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    return-void
.end method

.method public addToCustomContentPage(Landroid/view/View;Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;Ljava/lang/String;)V
    .locals 9

    const-wide/16 v0, -0x12d

    .line 654
    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v2

    if-ltz v2, :cond_2

    .line 659
    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/Workspace;->getScreenWithId(J)Lcom/voxel/launcher3/CellLayout;

    move-result-object v3

    .line 660
    invoke-virtual {v3}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v0

    .line 661
    invoke-virtual {v3}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v1

    .line 662
    new-instance v7, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v7, v2, v2, v0, v1}, Lcom/voxel/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    .line 663
    iput-boolean v2, v7, Lcom/voxel/launcher3/CellLayout$LayoutParams;->canReorder:Z

    const/4 v0, 0x1

    .line 664
    iput-boolean v0, v7, Lcom/voxel/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    .line 665
    instance-of v0, p1, Lcom/voxel/launcher3/Insettable;

    if-eqz v0, :cond_0

    .line 666
    move-object v0, p1

    check-cast v0, Lcom/voxel/launcher3/Insettable;

    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/voxel/launcher3/Insettable;->setInsets(Landroid/graphics/Rect;)V

    .line 670
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 671
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 672
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 674
    :cond_1
    invoke-virtual {v3}, Lcom/voxel/launcher3/CellLayout;->removeAllViews()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v4, p1

    .line 675
    invoke-virtual/range {v3 .. v8}, Lcom/voxel/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/voxel/launcher3/CellLayout$LayoutParams;Z)Z

    .line 676
    iput-object p3, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentDescription:Ljava/lang/String;

    .line 678
    iput-object p2, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentCallbacks:Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    return-void

    .line 655
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Expected custom content screen to exist"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method addToExistingFolderIfNecessary(Landroid/view/View;Lcom/voxel/launcher3/CellLayout;[IFLcom/voxel/launcher3/DropTarget$DragObject;Z)Z
    .locals 1

    .line 2860
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace;->calculateMaxDistanceForFolderCreation()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_0

    return v0

    .line 2862
    :cond_0
    aget p1, p3, v0

    const/4 p4, 0x1

    aget p3, p3, p4

    invoke-virtual {p2, p1, p3}, Lcom/voxel/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    .line 2863
    iget-boolean p2, p0, Lcom/voxel/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-nez p2, :cond_1

    return v0

    .line 2864
    :cond_1
    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2866
    instance-of p2, p1, Lcom/voxel/launcher3/FolderIcon;

    if-eqz p2, :cond_3

    .line 2867
    check-cast p1, Lcom/voxel/launcher3/FolderIcon;

    .line 2868
    iget-object p2, p5, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2869
    iget-object p2, p5, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    .line 2870
    invoke-virtual {p1, p5}, Lcom/voxel/launcher3/FolderIcon;->onDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    if-nez p6, :cond_2

    .line 2874
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/voxel/launcher3/CellLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget-object p2, p2, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_2
    return p4

    :cond_3
    return v0
.end method

.method public animateWidgetDrop(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 20

    move-object/from16 v15, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    .line 3980
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 3981
    iget-object v0, v15, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v10, v13}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v14, 0x2

    .line 3983
    new-array v8, v14, [I

    .line 3984
    new-array v7, v14, [F

    .line 3985
    instance-of v0, v9, Lcom/voxel/simplesearchlauncher/widget/PendingAddShortcutInfo;

    const/4 v6, 0x1

    const/16 v16, 0x0

    if-nez v0, :cond_0

    const/16 v17, 0x1

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    .line 3986
    :goto_0
    iget-object v5, v15, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v7

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v18, v5

    move-object/from16 v5, p1

    move-object/from16 v6, v18

    move-object/from16 v18, v7

    move/from16 v7, p7

    move-object/from16 v19, v8

    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/voxel/launcher3/Workspace;->getFinalPositionForDropAnimation([I[FLcom/voxel/launcher3/dragndrop/DragView;Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/ItemInfo;[IZZ)V

    .line 3989
    iget-object v0, v15, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001d

    .line 3990
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit16 v8, v0, -0xc8

    .line 3993
    instance-of v0, v12, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_1

    if-eqz p7, :cond_1

    const-string v0, "Launcher.Workspace"

    const-string v1, "6557954 Animate widget drop, final view is appWidgetHostView"

    .line 3994
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3995
    iget-object v0, v15, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/voxel/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x4

    if-eq v11, v14, :cond_2

    if-eqz p7, :cond_3

    :cond_2
    if-eqz v12, :cond_3

    .line 3998
    invoke-virtual {v15, v9, v12}, Lcom/voxel/launcher3/Workspace;->createWidgetBitmap(Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3999
    invoke-virtual {v10, v1}, Lcom/voxel/launcher3/dragndrop/DragView;->setCrossFadeBitmap(Landroid/graphics/Bitmap;)V

    int-to-float v1, v8

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 4000
    invoke-virtual {v10, v1}, Lcom/voxel/launcher3/dragndrop/DragView;->crossFade(I)V

    goto :goto_1

    .line 4001
    :cond_3
    iget v1, v9, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    if-ne v1, v0, :cond_4

    if-eqz p7, :cond_4

    .line 4002
    aget v1, v18, v16

    const/4 v2, 0x1

    aget v3, v18, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v18, v2

    aput v1, v18, v16

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 4005
    :goto_2
    iget-object v1, v15, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v1

    if-ne v11, v0, :cond_5

    .line 4007
    iget-object v0, v15, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/voxel/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/voxel/launcher3/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V

    goto :goto_4

    :cond_5
    if-ne v11, v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    .line 4017
    :goto_3
    new-instance v11, Lcom/voxel/launcher3/-$$Lambda$Workspace$TNLy62qjAindgnK4cka2D6v_ikk;

    move-object/from16 v0, p4

    invoke-direct {v11, v12, v0}, Lcom/voxel/launcher3/-$$Lambda$Workspace$TNLy62qjAindgnK4cka2D6v_ikk;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4025
    iget v3, v13, Landroid/graphics/Rect;->left:I

    iget v4, v13, Landroid/graphics/Rect;->top:I

    aget v5, v19, v16

    aget v6, v19, v2

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    aget v13, v18, v16

    aget v16, v18, v2

    move-object v0, v1

    move-object/from16 v1, p3

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v9

    move/from16 v17, v8

    move v8, v12

    move v9, v13

    move/from16 v10, v16

    move v12, v14

    move/from16 v13, v17

    move-object/from16 v14, p0

    invoke-virtual/range {v0 .. v14}, Lcom/voxel/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/voxel/launcher3/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    :goto_4
    return-void
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1585
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1586
    invoke-super {p0, p1}, Lcom/voxel/launcher3/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public beginDragShared(Landroid/view/View;Lcom/evie/common/dragndrop/DragSource;Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/graphics/DragPreviewProvider;Lcom/voxel/launcher3/dragndrop/DragOptions;)Lcom/voxel/launcher3/dragndrop/DragView;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 2596
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    const/4 v3, 0x0

    .line 2597
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2598
    iput-object v2, v0, Lcom/voxel/launcher3/Workspace;->mOutlineProvider:Lcom/voxel/launcher3/graphics/DragPreviewProvider;

    .line 2601
    iget-object v4, v0, Lcom/voxel/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v4}, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->createDragBitmap(Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2602
    iget v5, v2, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v5, v5, 0x2

    .line 2604
    iget-object v6, v0, Lcom/voxel/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v2, v4, v6}, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/graphics/Bitmap;[I)F

    move-result v13

    .line 2605
    iget-object v2, v0, Lcom/voxel/launcher3/Workspace;->mTempXY:[I

    aget v7, v2, v3

    const/4 v6, 0x1

    .line 2606
    aget v2, v2, v6

    .line 2608
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    .line 2611
    instance-of v6, v1, Lcom/voxel/launcher3/BubbleTextView;

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    .line 2612
    move-object v3, v1

    check-cast v3, Lcom/voxel/launcher3/BubbleTextView;

    invoke-virtual {v3}, Lcom/voxel/launcher3/BubbleTextView;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/launcher3/CellParams;->getIconSizePx()I

    move-result v3

    .line 2613
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 2614
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v9, v3

    div-int/lit8 v9, v9, 0x2

    add-int v10, v9, v3

    add-int/2addr v3, v8

    add-int/2addr v2, v8

    .line 2620
    new-instance v11, Landroid/graphics/Point;

    neg-int v12, v5

    invoke-direct {v11, v12, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 2621
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v9, v8, v10, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move v8, v2

    move-object v12, v5

    goto :goto_0

    .line 2622
    :cond_0
    instance-of v9, v1, Lcom/voxel/launcher3/FolderIcon;

    if-eqz v9, :cond_1

    .line 2623
    move-object v8, v1

    check-cast v8, Lcom/voxel/launcher3/FolderIcon;

    invoke-virtual {v8}, Lcom/voxel/launcher3/FolderIcon;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v8

    invoke-virtual {v8}, Lcom/voxel/launcher3/CellParams;->getIconSizePx()I

    move-result v8

    .line 2624
    new-instance v9, Landroid/graphics/Point;

    neg-int v10, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    sub-int/2addr v5, v11

    invoke-direct {v9, v10, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 2625
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-direct {v5, v3, v10, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move v8, v2

    move-object v12, v5

    move-object v11, v9

    goto :goto_0

    :cond_1
    move-object v11, v8

    move-object v12, v11

    move v8, v2

    :goto_0
    if-eqz v6, :cond_2

    .line 2630
    move-object v2, v1

    check-cast v2, Lcom/voxel/launcher3/BubbleTextView;

    .line 2631
    invoke-virtual {v2}, Lcom/voxel/launcher3/BubbleTextView;->clearPressedBackground()V

    .line 2634
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    if-eqz v2, :cond_3

    .line 2635
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    iput-object v1, v0, Lcom/voxel/launcher3/Workspace;->mDragSourceInternal:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    .line 2638
    :cond_3
    iget-object v5, v0, Lcom/voxel/launcher3/Workspace;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    move-object v6, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v14, p5

    invoke-virtual/range {v5 .. v14}, Lcom/voxel/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/evie/common/dragndrop/DragSource;Lcom/voxel/launcher3/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FLcom/voxel/launcher3/dragndrop/DragOptions;)Lcom/voxel/launcher3/dragndrop/DragView;

    move-result-object v1

    .line 2640
    invoke-interface/range {p2 .. p2}, Lcom/evie/common/dragndrop/DragSource;->getIntrinsicIconScaleFactor()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/dragndrop/DragView;->setIntrinsicIconScaleFactor(F)V

    .line 2641
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1
.end method

.method public beginDragShared(Landroid/view/View;Lcom/evie/common/dragndrop/DragSource;Lcom/voxel/launcher3/dragndrop/DragOptions;)Lcom/voxel/launcher3/dragndrop/DragView;
    .locals 8

    .line 2583
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2584
    instance-of v1, v0, Lcom/voxel/launcher3/ItemInfo;

    if-eqz v1, :cond_0

    .line 2590
    move-object v5, v0

    check-cast v5, Lcom/voxel/launcher3/ItemInfo;

    new-instance v6, Lcom/voxel/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v6, p1}, Lcom/voxel/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/voxel/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/evie/common/dragndrop/DragSource;Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/graphics/DragPreviewProvider;Lcom/voxel/launcher3/dragndrop/DragOptions;)Lcom/voxel/launcher3/dragndrop/DragView;

    move-result-object p1

    return-object p1

    .line 2585
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "  tag: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2587
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2588
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buildPageHardwareLayers()V
    .locals 4

    const/4 v0, 0x1

    .line 1983
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1984
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1985
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1987
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout;

    .line 1988
    invoke-virtual {v3}, Lcom/voxel/launcher3/CellLayout;->buildHardwareLayer()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1991
    :cond_0
    invoke-direct {p0, v1}, Lcom/voxel/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    return-void
.end method

.method clearChildrenCache()V
    .locals 5

    .line 1916
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1918
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout;

    .line 1919
    invoke-virtual {v3, v1}, Lcom/voxel/launcher3/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1921
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->isHardwareAccelerated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1922
    invoke-virtual {v3, v1}, Lcom/voxel/launcher3/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method clearDropTargets()V
    .locals 2

    .line 4523
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Workspace$l08ph6ovjeC7hR8sE3lU61d11pg;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/-$$Lambda$Workspace$l08ph6ovjeC7hR8sE3lU61d11pg;-><init>(Lcom/voxel/launcher3/Workspace;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/voxel/launcher3/Workspace;->mapOverItems(ZLcom/voxel/launcher3/Workspace$ItemOperator;)V

    return-void
.end method

.method public commitExtraEmptyScreen()J
    .locals 6

    const-string v0, "Launcher.Workspace"

    const-string v1, "11683562 - commitExtraEmptyScreen()"

    const/4 v2, 0x1

    .line 852
    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 853
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Workspace"

    const-string v1, "    - workspace loading, skip"

    .line 855
    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const-wide/16 v0, -0xc9

    .line 859
    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v2

    .line 860
    iget-object v3, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout;

    .line 861
    iget-object v4, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    iget-object v4, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 864
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getLauncherProvider()Lcom/voxel/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherProvider;->generateNewScreenId()J

    move-result-wide v0

    .line 865
    iget-object v4, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    iget-object v3, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getPageIndicator()Lcom/voxel/launcher3/PageIndicator;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 870
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getPageIndicator()Lcom/voxel/launcher3/PageIndicator;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/Workspace;->getPageIndicatorMarker(I)Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/voxel/launcher3/PageIndicator;->updateMarker(ILcom/voxel/launcher3/PageIndicator$PageMarkerResources;)V

    .line 874
    :cond_1
    iget-object v2, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v4, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/voxel/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-wide v0
.end method

.method public computeScroll()V
    .locals 1

    .line 1578
    invoke-super {p0}, Lcom/voxel/launcher3/PagedView;->computeScroll()V

    .line 1579
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mWallpaperOffset:Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->syncWithScroll()V

    return-void
.end method

.method public createCustomContentContainer()V
    .locals 5

    .line 600
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 601
    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d013c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout;

    .line 602
    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->disableBackground()V

    .line 603
    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->disableDragTarget()V

    .line 605
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v2, -0x12d

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 609
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/voxel/launcher3/CellLayout;->setPadding(IIII)V

    .line 611
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->addFullScreenPage(Landroid/view/View;)V

    .line 614
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mOriginalDefaultPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/voxel/launcher3/Workspace;->mDefaultPage:I

    .line 617
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mRestorePage:I

    const/16 v1, -0x3e9

    if-eq v0, v1, :cond_0

    .line 618
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mRestorePage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/voxel/launcher3/Workspace;->mRestorePage:I

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setCurrentPage(I)V

    :goto_0
    return-void
.end method

.method createUserFolderIfNecessary(Landroid/view/View;JLcom/voxel/launcher3/CellLayout;[IFZLcom/voxel/launcher3/dragndrop/DragView;Ljava/lang/Runnable;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    .line 2808
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->calculateMaxDistanceForFolderCreation()F

    move-result v1

    const/4 v9, 0x0

    cmpl-float v1, p6, v1

    if-lez v1, :cond_0

    return v9

    .line 2809
    :cond_0
    aget v1, p5, v9

    const/4 v10, 0x1

    aget v3, p5, v10

    invoke-virtual {v2, v1, v3}, Lcom/voxel/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v13

    .line 2812
    iget-object v1, v0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    if-eqz v1, :cond_2

    .line 2813
    iget-object v1, v1, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/voxel/launcher3/CellLayout;

    move-result-object v1

    .line 2814
    iget-object v3, v0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget v3, v3, Lcom/voxel/launcher3/CellLayout$CellInfo;->cellX:I

    aget v4, p5, v9

    if-ne v3, v4, :cond_1

    iget-object v3, v0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget v3, v3, Lcom/voxel/launcher3/CellLayout$CellInfo;->cellY:I

    aget v4, p5, v10

    if-ne v3, v4, :cond_1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v13, :cond_9

    if-nez v1, :cond_9

    .line 2818
    iget-boolean v1, v0, Lcom/voxel/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v1, :cond_3

    goto/16 :goto_3

    .line 2819
    :cond_3
    iput-boolean v9, v0, Lcom/voxel/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez p5, :cond_4

    .line 2820
    iget-object v1, v0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget-wide v3, v1, Lcom/voxel/launcher3/CellLayout$CellInfo;->screenId:J

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/Workspace;->getIdForScreen(Lcom/voxel/launcher3/CellLayout;)J

    move-result-wide v3

    :goto_1
    move-wide v5, v3

    .line 2822
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/voxel/launcher3/ShortcutInfo;

    .line 2823
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    .line 2826
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/voxel/launcher3/ShortcutInfo;

    .line 2827
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/voxel/launcher3/ShortcutInfo;

    if-nez p7, :cond_5

    .line 2830
    iget-object v1, v0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/voxel/launcher3/CellLayout;

    move-result-object v1

    iget-object v3, v0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/voxel/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 2833
    :cond_5
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 2834
    iget-object v1, v0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v13, v15}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v17

    .line 2835
    invoke-virtual {v2, v13}, Lcom/voxel/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 2837
    iget-object v1, v0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    aget v7, p5, v9

    aget v8, p5, v10

    move-object/from16 v2, p4

    move-wide/from16 v3, p2

    .line 2838
    invoke-virtual/range {v1 .. v8}, Lcom/voxel/launcher3/Launcher;->addFolder(Lcom/voxel/launcher3/CellLayout;JJII)Lcom/voxel/launcher3/FolderIcon;

    move-result-object v11

    const/4 v1, -0x1

    .line 2839
    iput v1, v12, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    .line 2840
    iput v1, v12, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    .line 2841
    iput v1, v14, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    .line 2842
    iput v1, v14, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    if-eqz p8, :cond_6

    const/4 v9, 0x1

    :cond_6
    if-eqz v9, :cond_7

    move-object v1, v15

    move-object/from16 v15, p8

    move-object/from16 v16, v1

    move-object/from16 v18, p9

    .line 2847
    invoke-virtual/range {v11 .. v18}, Lcom/voxel/launcher3/FolderIcon;->performCreateAnimation(Lcom/voxel/launcher3/ShortcutInfo;Landroid/view/View;Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    goto :goto_2

    .line 2850
    :cond_7
    invoke-virtual {v11, v12}, Lcom/voxel/launcher3/FolderIcon;->addItem(Lcom/voxel/launcher3/ShortcutInfo;)V

    .line 2851
    invoke-virtual {v11, v14}, Lcom/voxel/launcher3/FolderIcon;->addItem(Lcom/voxel/launcher3/ShortcutInfo;)V

    :goto_2
    return v10

    :cond_8
    return v9

    :cond_9
    :goto_3
    return v9
.end method

.method public createWidgetBitmap(Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 9

    .line 3909
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object v0

    iget v1, p1, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v2, p1, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/launcher3/Workspace;->estimateItemSize(IIZ)[I

    move-result-object v0

    .line 3911
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 3912
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3914
    aget v2, v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v5, 0x1

    .line 3915
    aget v6, v0, v5

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3917
    aget v6, v0, v3

    if-lez v6, :cond_0

    aget v6, v0, v5

    if-gtz v6, :cond_2

    .line 3918
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unscaled x = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " unscaled y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v0, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " item = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 3922
    aget p1, v0, v3

    if-gtz p1, :cond_1

    .line 3923
    aput v5, v0, v3

    .line 3925
    :cond_1
    aget p1, v0, v5

    if-gtz p1, :cond_2

    .line 3926
    aput v5, v0, v5

    .line 3929
    :cond_2
    aget p1, v0, v3

    aget v6, v0, v5

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3931
    iget-object v6, p0, Lcom/voxel/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3933
    invoke-virtual {p2, v2, v4}, Landroid/view/View;->measure(II)V

    .line 3934
    aget v2, v0, v3

    aget v0, v0, v5

    invoke-virtual {p2, v3, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 3935
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3936
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3937
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

.method public deferRemoveExtraEmptyScreen()V
    .locals 1

    const/4 v0, 0x1

    .line 446
    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 12

    .line 1161
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1163
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/voxel/launcher3/Workspace;->mXDown:F

    sub-float/2addr v0, v1

    .line 1164
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/voxel/launcher3/Workspace;->mYDown:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x0

    .line 1167
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    div-float v4, v2, v1

    float-to-double v4, v4

    .line 1170
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 1172
    iget v5, p0, Lcom/voxel/launcher3/Workspace;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/voxel/launcher3/Workspace;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    .line 1173
    :cond_2
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->cancelLongPress()V

    .line 1174
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->cancelCurrentPageLongPress()V

    .line 1177
    :cond_3
    iget-wide v1, p0, Lcom/voxel/launcher3/Workspace;->mTouchDownTime:J

    iget-wide v5, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentShowTime:J

    sub-long/2addr v1, v5

    const-wide/16 v5, 0xc8

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmp-long v9, v1, v5

    if-lez v9, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 1180
    :goto_0
    iget-boolean v2, p0, Lcom/voxel/launcher3/Workspace;->mIsRtl:Z

    if-eqz v2, :cond_5

    cmpg-float v2, v0, v3

    if-gez v2, :cond_6

    goto :goto_1

    :cond_5
    cmpl-float v2, v0, v3

    if-lez v2, :cond_6

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 1182
    :goto_2
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/voxel/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v5

    const-wide/16 v9, -0x12d

    cmp-long v11, v5, v9

    if-nez v11, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    if-eqz v2, :cond_8

    if-eqz v5, :cond_8

    if-eqz v1, :cond_8

    return-void

    :cond_8
    if-eqz v5, :cond_9

    .line 1188
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentCallbacks:Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v1, :cond_9

    .line 1189
    invoke-interface {v1}, Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;->isScrollingAllowed()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    if-eqz v5, :cond_b

    .line 1196
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout;

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    goto :goto_4

    :cond_a
    const/4 v7, -0x1

    .line 1200
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {v1}, Lcom/voxel/launcher3/CellLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1}, Lcom/voxel/launcher3/CellLayout;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1197
    invoke-static {v1, v8, v7, v0, v2}, Lcom/voxel/simplesearchlauncher/utils/ScrollUtil;->viewCanScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const v0, 0x3f860a92

    cmpl-float v0, v4, v0

    if-lez v0, :cond_c

    return-void

    :cond_c
    const v0, 0x3f060a92

    cmpl-float v1, v4, v0

    if-lez v1, :cond_d

    sub-float/2addr v4, v0

    div-float/2addr v4, v0

    float-to-double v0, v4

    .line 1216
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    .line 1217
    invoke-super {p0, p1, v0}, Lcom/voxel/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_5

    .line 1220
    :cond_d
    invoke-super {p0, p1}, Lcom/voxel/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    :goto_5
    return-void
.end method

.method disableLayoutTransitions()V
    .locals 1

    const/4 v0, 0x0

    .line 514
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 4345
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    .line 1098
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1102
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/voxel/launcher3/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method enableChildrenCache(II)V
    .locals 3

    if-le p1, p2, :cond_0

    move v2, p2

    move p2, p1

    move p1, v2

    .line 1903
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    .line 1905
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1906
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    if-gt p1, p2, :cond_1

    .line 1909
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout;

    .line 1910
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1911
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method enableLayoutTransitions()V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public enterOverviewMode()Z
    .locals 2

    .line 2135
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 2138
    invoke-direct {p0, v1, v0, v1}, Lcom/voxel/launcher3/Workspace;->enableOverviewMode(ZIZ)V

    return v1
.end method

.method public estimateItemPosition(Lcom/voxel/launcher3/CellLayout;IIII)Landroid/graphics/Rect;
    .locals 7

    .line 415
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, v6

    .line 416
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    return-object v6
.end method

.method public estimateItemSize(IIZ)[I
    .locals 10

    const/4 v0, 0x2

    .line 394
    new-array v0, v0, [I

    .line 395
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 397
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->numCustomPages()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/voxel/launcher3/CellLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move v8, p1

    move v9, p2

    .line 398
    invoke-virtual/range {v4 .. v9}, Lcom/voxel/launcher3/Workspace;->estimateItemPosition(Lcom/voxel/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object p1

    .line 399
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    aput p2, v0, v3

    .line 400
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    aput p1, v0, v2

    if-eqz p3, :cond_0

    .line 402
    aget p1, v0, v3

    int-to-float p1, p1

    iget p2, p0, Lcom/voxel/launcher3/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    aput p1, v0, v3

    .line 403
    aget p1, v0, v2

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    aput p1, v0, v2

    :cond_0
    return-object v0

    :cond_1
    const p1, 0x7fffffff

    aput p1, v0, v3

    aput p1, v0, v2

    return-object v0
.end method

.method public exitOverviewMode(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2147
    invoke-direct {p0, v0, p1, p2}, Lcom/voxel/launcher3/Workspace;->enableOverviewMode(ZIZ)V

    return-void
.end method

.method public exitOverviewMode(Z)V
    .locals 1

    const/4 v0, -0x1

    .line 2143
    invoke-virtual {p0, v0, p1}, Lcom/voxel/launcher3/Workspace;->exitOverviewMode(IZ)V

    return-void
.end method

.method public exitWidgetResizeMode()Z
    .locals 1

    .line 2069
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 2070
    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->clearAllResizeFrames()Z

    move-result v0

    return v0
.end method

.method getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ShortcutAndWidgetContainer;",
            ">;"
        }
    .end annotation

    .line 4484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4486
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4488
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4490
    :cond_0
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4491
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/Hotseat;->getLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method getChangeStateAnimation(Lcom/voxel/launcher3/Workspace$State;ZII)Landroid/animation/Animator;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2218
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/Workspace;->getChangeStateAnimation(Lcom/voxel/launcher3/Workspace$State;ZIILjava/util/ArrayList;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method getChangeStateAnimation(Lcom/voxel/launcher3/Workspace$State;ZIILjava/util/ArrayList;)Landroid/animation/Animator;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/Workspace$State;",
            "ZII",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p5

    .line 2223
    iget-object v4, v0, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    const/4 v5, 0x0

    if-ne v4, v1, :cond_0

    return-object v5

    .line 2228
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->initAnimationArrays()V

    if-eqz v2, :cond_1

    .line 2230
    invoke-static {}, Lcom/voxel/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 2232
    :goto_0
    iget-object v6, v0, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    .line 2233
    sget-object v7, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    if-ne v6, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 2234
    :goto_1
    sget-object v10, Lcom/voxel/launcher3/Workspace$State;->SPRING_LOADED:Lcom/voxel/launcher3/Workspace$State;

    .line 2235
    sget-object v10, Lcom/voxel/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/voxel/launcher3/Workspace$State;

    .line 2236
    sget-object v10, Lcom/voxel/launcher3/Workspace$State;->OVERVIEW_HIDDEN:Lcom/voxel/launcher3/Workspace$State;

    .line 2237
    sget-object v10, Lcom/voxel/launcher3/Workspace$State;->OVERVIEW:Lcom/voxel/launcher3/Workspace$State;

    if-ne v6, v10, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 2238
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/voxel/launcher3/Workspace;->setState(Lcom/voxel/launcher3/Workspace$State;)V

    .line 2239
    sget-object v10, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    if-ne v1, v10, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    .line 2240
    :goto_3
    sget-object v11, Lcom/voxel/launcher3/Workspace$State;->SPRING_LOADED:Lcom/voxel/launcher3/Workspace$State;

    if-ne v1, v11, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    .line 2241
    :goto_4
    sget-object v12, Lcom/voxel/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/voxel/launcher3/Workspace$State;

    if-ne v1, v12, :cond_6

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    .line 2242
    :goto_5
    sget-object v13, Lcom/voxel/launcher3/Workspace$State;->OVERVIEW_HIDDEN:Lcom/voxel/launcher3/Workspace$State;

    if-ne v1, v13, :cond_7

    const/4 v13, 0x1

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    .line 2243
    :goto_6
    sget-object v14, Lcom/voxel/launcher3/Workspace$State;->OVERVIEW:Lcom/voxel/launcher3/Workspace$State;

    if-ne v1, v14, :cond_8

    const/4 v14, 0x1

    goto :goto_7

    :cond_8
    const/4 v14, 0x0

    :goto_7
    const/high16 v15, 0x3f800000    # 1.0f

    if-nez v11, :cond_a

    if-eqz v14, :cond_9

    goto :goto_8

    :cond_9
    const/4 v9, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_9
    if-nez v10, :cond_c

    if-eqz v11, :cond_b

    goto :goto_a

    :cond_b
    const/4 v5, 0x0

    goto :goto_b

    :cond_c
    :goto_a
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_b
    if-eqz v14, :cond_d

    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_d
    const/16 v17, 0x0

    :goto_c
    if-nez v10, :cond_e

    const/16 v18, 0x0

    goto :goto_d

    :cond_e
    const/high16 v18, 0x3f800000    # 1.0f

    :goto_d
    if-nez v14, :cond_10

    if-eqz v13, :cond_f

    goto :goto_e

    :cond_f
    const/4 v8, 0x0

    goto :goto_f

    .line 2249
    :cond_10
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->getOverviewModeTranslationY()I

    move-result v8

    int-to-float v8, v8

    :goto_f
    if-eqz v7, :cond_11

    if-eqz v12, :cond_11

    const/16 v19, 0x1

    goto :goto_10

    :cond_11
    const/16 v19, 0x0

    :goto_10
    if-eqz v6, :cond_12

    if-eqz v13, :cond_12

    const/16 v20, 0x1

    goto :goto_11

    :cond_12
    const/16 v20, 0x0

    :goto_11
    if-eqz v12, :cond_13

    if-eqz v10, :cond_13

    const/16 v21, 0x1

    goto :goto_12

    :cond_13
    const/16 v21, 0x0

    :goto_12
    if-eqz v7, :cond_14

    if-eqz v14, :cond_14

    const/4 v7, 0x1

    goto :goto_13

    :cond_14
    const/4 v7, 0x0

    :goto_13
    if-eqz v6, :cond_15

    if-eqz v10, :cond_15

    const/16 v22, 0x1

    goto :goto_14

    :cond_15
    const/16 v22, 0x0

    .line 2257
    :goto_14
    iput v15, v0, Lcom/voxel/launcher3/Workspace;->mNewScale:F

    if-eqz v6, :cond_16

    .line 2260
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->disableFreeScroll()V

    goto :goto_15

    :cond_16
    if-eqz v14, :cond_17

    .line 2262
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->enableFreeScroll()V

    .line 2265
    :cond_17
    :goto_15
    sget-object v6, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    if-eq v1, v6, :cond_1a

    if-eqz v11, :cond_18

    .line 2267
    iget v1, v0, Lcom/voxel/launcher3/Workspace;->mSpringLoadedShrinkFactor:F

    iput v1, v0, Lcom/voxel/launcher3/Workspace;->mNewScale:F

    goto :goto_16

    :cond_18
    if-nez v14, :cond_19

    if-eqz v13, :cond_1a

    .line 2269
    :cond_19
    iget v1, v0, Lcom/voxel/launcher3/Workspace;->mOverviewModeShrinkFactor:F

    iput v1, v0, Lcom/voxel/launcher3/Workspace;->mNewScale:F

    :cond_1a
    :goto_16
    if-nez v19, :cond_1e

    if-eqz v20, :cond_1b

    goto :goto_18

    :cond_1b
    if-nez v7, :cond_1d

    if-eqz v22, :cond_1c

    goto :goto_17

    .line 2279
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0b000e

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_19

    .line 2277
    :cond_1d
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0b0029

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_19

    .line 2275
    :cond_1e
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0b0030

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_19
    const/4 v6, -0x1

    move/from16 v11, p4

    if-ne v11, v6, :cond_1f

    .line 2283
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v11

    :cond_1f
    if-ne v11, v6, :cond_20

    .line 2286
    iget v11, v0, Lcom/voxel/launcher3/Workspace;->mDefaultPage:I

    .line 2288
    :cond_20
    iget-object v6, v0, Lcom/voxel/launcher3/Workspace;->mZoomInInterpolator:Lcom/voxel/launcher3/Workspace$ZoomInInterpolator;

    invoke-virtual {v0, v11, v1, v6}, Lcom/voxel/launcher3/Workspace;->snapToPage(IILandroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    .line 2290
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v14

    if-ge v6, v14, :cond_2c

    .line 2291
    invoke-virtual {v0, v6}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/voxel/launcher3/CellLayout;

    if-ne v6, v11, :cond_21

    const/16 v20, 0x1

    goto :goto_1b

    :cond_21
    const/16 v20, 0x0

    .line 2293
    :goto_1b
    invoke-virtual {v14}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v23

    if-nez v12, :cond_26

    if-eqz v13, :cond_22

    goto :goto_1e

    :cond_22
    if-eqz v10, :cond_25

    .line 2297
    iget-boolean v15, v0, Lcom/voxel/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v15, :cond_25

    if-eq v6, v11, :cond_24

    .line 2298
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->numCustomPages()I

    move-result v15

    if-ge v6, v15, :cond_23

    goto :goto_1c

    :cond_23
    const/4 v15, 0x0

    goto :goto_1d

    :cond_24
    :goto_1c
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_1d
    move/from16 p1, v11

    goto :goto_1f

    :cond_25
    move/from16 p1, v11

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_1f

    :cond_26
    :goto_1e
    move/from16 p1, v11

    const/4 v15, 0x0

    .line 2305
    :goto_1f
    iget-boolean v11, v0, Lcom/voxel/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v11, :cond_2a

    if-nez v19, :cond_27

    if-eqz v21, :cond_2a

    :cond_27
    if-eqz v21, :cond_28

    if-eqz v20, :cond_28

    const/4 v11, 0x0

    goto :goto_20

    :cond_28
    if-nez v20, :cond_29

    const/4 v11, 0x0

    const/4 v15, 0x0

    goto :goto_20

    :cond_29
    move/from16 v11, v23

    .line 2312
    :goto_20
    invoke-virtual {v14, v11}, Lcom/voxel/launcher3/CellLayout;->setShortcutAndWidgetAlpha(F)V

    move/from16 v23, v11

    .line 2316
    :cond_2a
    iget-object v11, v0, Lcom/voxel/launcher3/Workspace;->mOldAlphas:[F

    aput v23, v11, v6

    .line 2317
    iget-object v11, v0, Lcom/voxel/launcher3/Workspace;->mNewAlphas:[F

    aput v15, v11, v6

    if-eqz v2, :cond_2b

    .line 2319
    iget-object v11, v0, Lcom/voxel/launcher3/Workspace;->mOldBackgroundAlphas:[F

    invoke-virtual {v14}, Lcom/voxel/launcher3/CellLayout;->getBackgroundAlpha()F

    move-result v14

    aput v14, v11, v6

    .line 2320
    iget-object v11, v0, Lcom/voxel/launcher3/Workspace;->mNewBackgroundAlphas:[F

    aput v9, v11, v6

    goto :goto_21

    .line 2322
    :cond_2b
    invoke-virtual {v14, v9}, Lcom/voxel/launcher3/CellLayout;->setBackgroundAlpha(F)V

    .line 2323
    invoke-virtual {v14, v15}, Lcom/voxel/launcher3/CellLayout;->setShortcutAndWidgetAlpha(F)V

    :goto_21
    add-int/lit8 v6, v6, 0x1

    move/from16 v11, p1

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_1a

    .line 2327
    :cond_2c
    iget-object v6, v0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/voxel/launcher3/Launcher;->getQsbBar()Landroid/view/View;

    move-result-object v6

    .line 2328
    iget-object v9, v0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/voxel/launcher3/Launcher;->getOverviewPanelAlpha()Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v9

    .line 2329
    iget-object v11, v0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/voxel/launcher3/Launcher;->getHotseatAlpha()Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v11

    .line 2330
    iget-object v12, v0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v12}, Lcom/voxel/launcher3/Launcher;->getIndicatorAlpha()Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    move-result-object v12

    if-eqz v2, :cond_36

    .line 2334
    new-instance v13, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;

    invoke-direct {v13, v0}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 2335
    iget v14, v0, Lcom/voxel/launcher3/Workspace;->mNewScale:F

    invoke-virtual {v13, v14}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->scaleX(F)Lcom/voxel/launcher3/LauncherViewPropertyAnimator;

    move-result-object v14

    iget v15, v0, Lcom/voxel/launcher3/Workspace;->mNewScale:F

    .line 2336
    invoke-virtual {v14, v15}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->scaleY(F)Lcom/voxel/launcher3/LauncherViewPropertyAnimator;

    move-result-object v14

    .line 2337
    invoke-virtual {v14, v8}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->translationY(F)Lcom/voxel/launcher3/LauncherViewPropertyAnimator;

    move-result-object v8

    int-to-long v14, v1

    .line 2338
    invoke-virtual {v8, v14, v15}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    iget-object v8, v0, Lcom/voxel/launcher3/Workspace;->mZoomInInterpolator:Lcom/voxel/launcher3/Workspace$ZoomInInterpolator;

    .line 2339
    invoke-virtual {v1, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2340
    invoke-virtual {v4, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v1, 0x0

    .line 2343
    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_33

    .line 2345
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/voxel/launcher3/CellLayout;

    .line 2346
    invoke-virtual {v8}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v13

    .line 2347
    iget-object v2, v0, Lcom/voxel/launcher3/Workspace;->mOldAlphas:[F

    aget v2, v2, v1

    const/16 v16, 0x0

    cmpl-float v2, v2, v16

    if-nez v2, :cond_2d

    iget-object v2, v0, Lcom/voxel/launcher3/Workspace;->mNewAlphas:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v16

    if-nez v2, :cond_2d

    .line 2348
    iget-object v2, v0, Lcom/voxel/launcher3/Workspace;->mNewBackgroundAlphas:[F

    aget v2, v2, v1

    invoke-virtual {v8, v2}, Lcom/voxel/launcher3/CellLayout;->setBackgroundAlpha(F)V

    .line 2349
    iget-object v2, v0, Lcom/voxel/launcher3/Workspace;->mNewAlphas:[F

    aget v2, v2, v1

    invoke-virtual {v8, v2}, Lcom/voxel/launcher3/CellLayout;->setShortcutAndWidgetAlpha(F)V

    goto :goto_23

    :cond_2d
    if-eqz v3, :cond_2e

    .line 2352
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2354
    :cond_2e
    iget-object v2, v0, Lcom/voxel/launcher3/Workspace;->mOldAlphas:[F

    aget v2, v2, v1

    iget-object v3, v0, Lcom/voxel/launcher3/Workspace;->mNewAlphas:[F

    aget v16, v3, v1

    cmpl-float v2, v2, v16

    if-nez v2, :cond_2f

    aget v2, v3, v1

    cmpl-float v2, v13, v2

    if-eqz v2, :cond_30

    .line 2355
    :cond_2f
    new-instance v2, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;

    .line 2356
    invoke-virtual {v8}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 2357
    iget-object v3, v0, Lcom/voxel/launcher3/Workspace;->mNewAlphas:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->alpha(F)Lcom/voxel/launcher3/LauncherViewPropertyAnimator;

    move-result-object v3

    .line 2358
    invoke-virtual {v3, v14, v15}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    iget-object v13, v0, Lcom/voxel/launcher3/Workspace;->mZoomInInterpolator:Lcom/voxel/launcher3/Workspace$ZoomInInterpolator;

    .line 2359
    invoke-virtual {v3, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2360
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2362
    :cond_30
    iget-object v2, v0, Lcom/voxel/launcher3/Workspace;->mOldBackgroundAlphas:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_31

    iget-object v2, v0, Lcom/voxel/launcher3/Workspace;->mNewBackgroundAlphas:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_32

    :cond_31
    const/4 v2, 0x2

    .line 2364
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 2365
    invoke-static {v8, v2}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 2366
    iget-object v3, v0, Lcom/voxel/launcher3/Workspace;->mZoomInInterpolator:Lcom/voxel/launcher3/Workspace$ZoomInInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2367
    invoke-virtual {v2, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2368
    new-instance v3, Lcom/voxel/launcher3/Workspace$5;

    invoke-direct {v3, v0, v8, v1}, Lcom/voxel/launcher3/Workspace$5;-><init>(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/CellLayout;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2375
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_32
    :goto_23
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, p2

    move-object/from16 v3, p5

    goto/16 :goto_22

    .line 2380
    :cond_33
    invoke-static {v12, v0, v5}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->ofFloat(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;F)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    move-result-object v1

    .line 2381
    invoke-static {v11, v0, v5}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->ofFloat(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;F)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    move-result-object v2

    .line 2383
    new-instance v3, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;

    invoke-direct {v3, v6}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    move/from16 v13, v18

    .line 2384
    invoke-virtual {v3, v13}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->alpha(F)Lcom/voxel/launcher3/LauncherViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator;->withLayer()Lcom/voxel/launcher3/LauncherViewPropertyAnimator;

    move-result-object v3

    .line 2385
    new-instance v5, Lcom/voxel/launcher3/Workspace$AlphaUpdateListener;

    invoke-direct {v5, v6}, Lcom/voxel/launcher3/Workspace$AlphaUpdateListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move/from16 v5, v17

    .line 2387
    invoke-static {v9, v0, v5}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->ofFloat(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;F)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v7, :cond_34

    .line 2403
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2404
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v7, 0x0

    .line 2405
    invoke-virtual {v5, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_24

    :cond_34
    const/4 v7, 0x0

    if-eqz v22, :cond_35

    .line 2407
    invoke-virtual {v1, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2408
    invoke-virtual {v2, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2409
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2412
    :cond_35
    :goto_24
    invoke-virtual {v5, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2413
    invoke-virtual {v1, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2414
    invoke-virtual {v2, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2415
    invoke-virtual {v3, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2417
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2418
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2419
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2420
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move/from16 v1, p3

    int-to-long v1, v1

    .line 2421
    invoke-virtual {v4, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_25

    :cond_36
    move/from16 v15, v17

    move/from16 v13, v18

    .line 2423
    invoke-virtual {v9, v0, v15}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    .line 2424
    invoke-virtual {v11, v0, v5}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    .line 2425
    invoke-virtual {v12, v0, v5}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    .line 2427
    invoke-virtual {v6, v13}, Landroid/view/View;->setAlpha(F)V

    .line 2428
    invoke-static {v6}, Lcom/voxel/launcher3/Workspace$AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 2429
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->updateCustomContentVisibility()V

    .line 2430
    iget v1, v0, Lcom/voxel/launcher3/Workspace;->mNewScale:F

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Workspace;->setScaleX(F)V

    .line 2431
    iget v1, v0, Lcom/voxel/launcher3/Workspace;->mNewScale:F

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Workspace;->setScaleY(F)V

    .line 2432
    invoke-virtual {v0, v8}, Lcom/voxel/launcher3/Workspace;->setTranslationY(F)V

    .line 2434
    :goto_25
    iget-object v1, v0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/Launcher;->updateVoiceButtonProxyVisible(Z)V

    if-eqz v10, :cond_37

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 2437
    invoke-direct {v0, v2, v1}, Lcom/voxel/launcher3/Workspace;->animateBackgroundGradient(FZ)V

    goto :goto_26

    :cond_37
    move/from16 v1, p2

    .line 2439
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-direct {v0, v2, v1}, Lcom/voxel/launcher3/Workspace;->animateBackgroundGradient(FZ)V

    :goto_26
    return-object v4

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getChangeStateAnimation(Lcom/voxel/launcher3/Workspace$State;ZLjava/util/ArrayList;)Landroid/animation/Animator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/Workspace$State;",
            "Z",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    .line 2085
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/Workspace;->getChangeStateAnimation(Lcom/voxel/launcher3/Workspace$State;ZIILjava/util/ArrayList;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public getChildrenOutlineAlpha()F
    .locals 1

    .line 1626
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mChildrenOutlineAlpha:F

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getCurrentDropLayout()Lcom/voxel/launcher3/CellLayout;
    .locals 1

    .line 4051
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout;

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 6

    .line 5109
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mNextPage:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mCurrentPage:I

    .line 5110
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->numCustomPages()I

    move-result v1

    .line 5111
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hasCustomContent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getNextPage()I

    move-result v2

    if-nez v2, :cond_1

    .line 5112
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentDescription:Ljava/lang/String;

    return-object v0

    .line 5114
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1202d7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    add-int/2addr v0, v5

    sub-int/2addr v0, v1

    .line 5115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    .line 5114
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPageOffsetFromCustomContent()I
    .locals 2

    .line 4064
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->numCustomPages()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getCustomContentCallbacks()Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;
    .locals 1

    .line 1297
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentCallbacks:Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .line 1874
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x60000

    return v0

    .line 1877
    :cond_0
    invoke-super {p0}, Lcom/voxel/launcher3/PagedView;->getDescendantFocusability()I

    move-result v0

    return v0
.end method

.method public getDragInfo()Lcom/voxel/launcher3/CellLayout$CellInfo;
    .locals 1

    .line 4060
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    return-object v0
.end method

.method protected getFreeScrollPageRange([I)V
    .locals 0

    .line 2090
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Workspace;->getOverviewModePages([I)V

    return-void
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 1

    .line 3705
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    return-void
.end method

.method public getIdForScreen(Lcom/voxel/launcher3/CellLayout;)J
    .locals 3

    .line 885
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 886
    iget-object v2, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 887
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getNumScreens()I
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 761
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getOverviewModeTranslationY()I
    .locals 5

    .line 2170
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 2171
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    .line 2172
    invoke-virtual {v0}, Lcom/voxel/launcher3/DeviceProfile;->getOverviewModeButtonBarRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2174
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getViewportHeight()I

    move-result v1

    .line 2175
    iget v2, p0, Lcom/voxel/launcher3/Workspace;->mOverviewModeShrinkFactor:F

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getNormalChildHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int v3, v1, v2

    .line 2176
    div-int/lit8 v3, v3, 0x2

    .line 2177
    iget-object v4, p0, Lcom/voxel/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    neg-int v0, v3

    .line 2180
    iget-object v2, p0, Lcom/voxel/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getPageIndexForScreenId(J)I
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method protected getPageIndicatorClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .line 1751
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1752
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1755
    :cond_0
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Workspace$p1fwzFjAphStUaMkjkovmLuQeRc;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/-$$Lambda$Workspace$p1fwzFjAphStUaMkjkovmLuQeRc;-><init>(Lcom/voxel/launcher3/Workspace;)V

    return-object v0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 3

    .line 5104
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageIndicatorMarker(I)Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;
    .locals 5

    .line 5091
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    const-wide/16 v2, -0xc9

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 5093
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->numCustomPages()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 5095
    new-instance p1, Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;

    const v0, 0x7f0800f9

    const v1, 0x7f0800f8

    invoke-direct {p1, v0, v1}, Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;-><init>(II)V

    return-object p1

    .line 5100
    :cond_0
    invoke-super {p0, p1}, Lcom/voxel/launcher3/PagedView;->getPageIndicatorMarker(I)Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;

    move-result-object p1

    return-object p1
.end method

.method getParentCellLayoutForView(Landroid/view/View;)Lcom/voxel/launcher3/CellLayout;
    .locals 4

    .line 4454
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 4455
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout;

    .line 4456
    invoke-virtual {v1}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getScreenIdForPageIndex(I)J
    .locals 2

    if-ltz p1, :cond_0

    .line 898
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method getScreenOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 905
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScreenWithId(J)Lcom/voxel/launcher3/CellLayout;
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout;

    return-object p1
.end method

.method getState()Lcom/voxel/launcher3/Workspace$State;
    .locals 1

    .line 2205
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    return-object v0
.end method

.method getUniqueComponents(ZLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 4177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4178
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/Hotseat;->getLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/voxel/launcher3/Workspace;->getUniqueIntents(Lcom/voxel/launcher3/CellLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 4179
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4181
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout;

    .line 4182
    invoke-virtual {p0, v3, p1, p2, v1}, Lcom/voxel/launcher3/Workspace;->getUniqueIntents(Lcom/voxel/launcher3/CellLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method getUniqueIntents(Lcom/voxel/launcher3/CellLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/CellLayout;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .line 4189
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 4191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 4193
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4194
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_a

    .line 4198
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 4199
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/ItemInfo;

    .line 4201
    instance-of v6, v5, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v6, :cond_4

    .line 4202
    check-cast v5, Lcom/voxel/launcher3/ShortcutInfo;

    .line 4203
    iget-object v6, v5, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 4205
    iget-object v7, v5, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 4209
    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_5

    .line 4213
    :cond_1
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 4214
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_3

    .line 4217
    invoke-virtual {p1, v4}, Lcom/voxel/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 4218
    iget-object v7, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {v7, v5}, Lcom/voxel/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 4221
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4225
    :cond_4
    :goto_2
    instance-of v5, v4, Lcom/voxel/launcher3/FolderIcon;

    if-eqz v5, :cond_9

    .line 4226
    check-cast v4, Lcom/voxel/launcher3/FolderIcon;

    .line 4227
    invoke-virtual {v4}, Lcom/voxel/launcher3/FolderIcon;->getFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voxel/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    .line 4228
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 4229
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v7, :cond_8

    .line 4230
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voxel/launcher3/ShortcutInfo;

    .line 4231
    iget-object v8, v7, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 4233
    iget-object v9, v7, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 4237
    sget-object v10, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_4

    .line 4241
    :cond_5
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 4242
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    if-eqz p4, :cond_7

    .line 4245
    invoke-virtual {v4}, Lcom/voxel/launcher3/FolderIcon;->getFolderInfo()Lcom/voxel/launcher3/FolderInfo;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/voxel/launcher3/FolderInfo;->remove(Lcom/voxel/launcher3/ShortcutInfo;)V

    .line 4246
    iget-object v9, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {v9, v7}, Lcom/voxel/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    :cond_7
    if-eqz p3, :cond_8

    .line 4249
    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method public getWidgetForAppWidgetId(I)Lcom/voxel/launcher3/LauncherAppWidgetHostView;
    .locals 1

    .line 4506
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Workspace$F1X0yQriunp_VXCZXD88bAGdCT0;

    invoke-direct {v0, p1}, Lcom/voxel/launcher3/-$$Lambda$Workspace$F1X0yQriunp_VXCZXD88bAGdCT0;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Workspace;->getFirstMatch(Lcom/voxel/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    return-object p1
.end method

.method getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/CellLayout;",
            ">;"
        }
    .end annotation

    .line 4467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4468
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4470
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4472
    :cond_0
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4473
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/Hotseat;->getLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public hasCustomContent()Z
    .locals 6

    .line 1701
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x12d

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hasExtraEmptyScreen()Z
    .locals 4

    .line 845
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 846
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->numCustomPages()I

    move-result v1

    sub-int/2addr v0, v1

    .line 847
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v2, -0xc9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method hideCustomContentIfNecessary()V
    .locals 3

    .line 2533
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2534
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2535
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->disableLayoutTransitions()V

    .line 2536
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v1, -0x12d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CellLayout;->setVisibility(I)V

    .line 2537
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->enableLayoutTransitions()V

    :cond_1
    return-void
.end method

.method hideOutlines()V
    .locals 4

    .line 1601
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2

    .line 1602
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1603
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    .line 1604
    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    .line 1605
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1606
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1607
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void
.end method

.method protected initWorkspace()V
    .locals 2

    .line 476
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mDefaultPage:I

    iput v0, p0, Lcom/voxel/launcher3/Workspace;->mCurrentPage:I

    .line 477
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mCurrentPage:I

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->setScreen(I)V

    .line 478
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    .line 480
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mIconCache:Lcom/voxel/launcher3/IconCache;

    const/4 v0, 0x0

    .line 481
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setWillNotDraw(Z)V

    .line 482
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setClipChildren(Z)V

    .line 483
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setClipToPadding(Z)V

    const/4 v0, 0x1

    .line 484
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 486
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mOverviewModeShrinkFactor:F

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setMinScale(F)V

    .line 487
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace;->setupLayoutTransition()V

    .line 489
    new-instance v0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/voxel/launcher3/Workspace;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mWallpaperOffset:Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;

    .line 490
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 493
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mDensity:F

    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/voxel/launcher3/Workspace;->mFlingThresholdVelocity:I

    .line 496
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->setWallpaperDimension()V

    return-void
.end method

.method public insertNewWorkspaceScreen(J)J
    .locals 1

    .line 575
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/voxel/launcher3/Workspace;->insertNewWorkspaceScreen(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public insertNewWorkspaceScreen(JI)J
    .locals 3

    const-string v0, "Launcher.Workspace"

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "11683562 - insertNewWorkspaceScreen(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 583
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 588
    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d013c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout;

    .line 590
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 591
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 592
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CellLayout;->setSoundEffectsEnabled(Z)V

    .line 593
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 595
    invoke-virtual {p0, v0, p3}, Lcom/voxel/launcher3/Workspace;->addView(Landroid/view/View;I)V

    return-wide p1

    .line 584
    :cond_0
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " already exists!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public insertNewWorkspaceScreenBeforeEmptyScreen(J)J
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v1, -0xc9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 571
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/voxel/launcher3/Workspace;->insertNewWorkspaceScreen(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public isDropEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFinishedSwitchingState()Z
    .locals 2

    .line 1089
    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

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

.method public isInOverviewMode()Z
    .locals 2

    .line 2131
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->OVERVIEW:Lcom/voxel/launcher3/Workspace$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnOrMovingToCustomContent()Z
    .locals 1

    .line 1709
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getNextPage()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPointInSelfOverHotseat(IILandroid/graphics/Rect;)Z
    .locals 1

    if-nez p3, :cond_0

    .line 3323
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 3325
    :cond_0
    iget-object p3, p0, Lcom/voxel/launcher3/Workspace;->mTempPt:[I

    const/4 v0, 0x0

    aput p1, p3, v0

    const/4 p1, 0x1

    .line 3326
    aput p2, p3, p1

    .line 3327
    iget-object p2, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object p2

    iget-object p3, p0, Lcom/voxel/launcher3/Workspace;->mTempPt:[I

    invoke-virtual {p2, p0, p3, p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    .line 3329
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p2

    .line 3330
    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object p2

    .line 3331
    invoke-virtual {p2}, Lcom/voxel/launcher3/DeviceProfile;->getHotseatRect()Landroid/graphics/Rect;

    move-result-object p2

    .line 3332
    iget-object p3, p0, Lcom/voxel/launcher3/Workspace;->mTempPt:[I

    aget v0, p3, v0

    aget p1, p3, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public isSwitchingState()Z
    .locals 1

    .line 1081
    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method isTouchActive()Z
    .locals 1

    .line 538
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method mapOverItems(ZLcom/voxel/launcher3/Workspace$ItemOperator;)V
    .locals 13

    .line 4748
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v0

    .line 4749
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 4751
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    .line 4753
    invoke-virtual {v4}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    .line 4755
    invoke-virtual {v4, v6}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4756
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voxel/launcher3/ItemInfo;

    if-eqz p1, :cond_1

    .line 4757
    instance-of v9, v8, Lcom/voxel/launcher3/FolderInfo;

    if-eqz v9, :cond_1

    instance-of v9, v7, Lcom/voxel/launcher3/FolderIcon;

    if-eqz v9, :cond_1

    .line 4758
    check-cast v7, Lcom/voxel/launcher3/FolderIcon;

    .line 4759
    invoke-virtual {v7}, Lcom/voxel/launcher3/FolderIcon;->getFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/voxel/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v8

    .line 4761
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_2

    .line 4763
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 4764
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/voxel/launcher3/ItemInfo;

    .line 4765
    invoke-interface {p2, v12, v11, v7}, Lcom/voxel/launcher3/Workspace$ItemOperator;->evaluate(Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    return-void

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    .line 4770
    invoke-interface {p2, v8, v7, v9}, Lcom/voxel/launcher3/Workspace$ItemOperator;->evaluate(Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    return-void

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method mapPointFromChildToSelf(Landroid/view/View;[F)V
    .locals 3

    const/4 v0, 0x0

    .line 3352
    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x1

    .line 3353
    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    aput v1, p2, v0

    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V
    .locals 2

    const/4 p3, 0x0

    .line 3317
    aget v0, p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, p3

    const/4 p3, 0x1

    .line 3318
    aget v0, p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    aput v0, p2, p3

    return-void
.end method

.method mapPointFromSelfToHotseatLayout(Lcom/voxel/launcher3/Hotseat;[F)V
    .locals 4

    .line 3336
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mTempPt:[I

    const/4 v1, 0x0

    aget v2, p2, v1

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v2, 0x1

    .line 3337
    aget v3, p2, v2

    float-to-int v3, v3

    aput v3, v0, v2

    .line 3338
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v3, p0, Lcom/voxel/launcher3/Workspace;->mTempPt:[I

    invoke-virtual {v0, p0, v3, v2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    .line 3339
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/voxel/launcher3/Hotseat;->getLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object p1

    iget-object v3, p0, Lcom/voxel/launcher3/Workspace;->mTempPt:[I

    invoke-virtual {v0, p1, v3}, Lcom/voxel/launcher3/dragndrop/DragLayer;->mapCoordInSelfToDescendent(Landroid/view/View;[I)F

    .line 3341
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mTempPt:[I

    aget v0, p1, v1

    int-to-float v0, v0

    aput v0, p2, v1

    .line 3342
    aget p1, p1, v2

    int-to-float p1, p1

    aput p1, p2, v2

    return-void
.end method

.method public moveToDefaultScreen(Z)Z
    .locals 4

    .line 5067
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mNextPage:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mDefaultPage:I

    iget v3, p0, Lcom/voxel/launcher3/Workspace;->mNextPage:I

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mDefaultPage:I

    iget v3, p0, Lcom/voxel/launcher3/Workspace;->mCurrentPage:I

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5068
    :goto_0
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mDefaultPage:I

    invoke-direct {p0, v0, p1}, Lcom/voxel/launcher3/Workspace;->moveToScreen(IZ)V

    return v1
.end method

.method protected notifyPageSwitchListener()V
    .locals 4

    .line 1276
    invoke-super {p0}, Lcom/voxel/launcher3/PagedView;->notifyPageSwitchListener()V

    .line 1277
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getNextPage()I

    move-result v0

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->setScreen(I)V

    .line 1279
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getNextPage()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentShowing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1280
    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentShowing:Z

    .line 1281
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentCallbacks:Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_1

    .line 1282
    invoke-interface {v0, v1}, Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;->onShow(Z)V

    .line 1283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentShowTime:J

    .line 1284
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Launcher;->updateVoiceButtonProxyVisible(Z)V

    goto :goto_0

    .line 1286
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getNextPage()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentShowing:Z

    if-eqz v0, :cond_1

    .line 1287
    iput-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentShowing:Z

    .line 1288
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentCallbacks:Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_1

    .line 1289
    invoke-interface {v0}, Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;->onHide()V

    .line 1290
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->resetQSBScroll()V

    .line 1291
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Launcher;->updateVoiceButtonProxyVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public numCustomPages()I
    .locals 1

    .line 1705
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1805
    invoke-super {p0}, Lcom/voxel/launcher3/PagedView;->onAttachedToWindow()V

    .line 1806
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1808
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    if-eqz v0, :cond_0

    .line 1809
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/dragndrop/DragController;->setWindowToken(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 519
    instance-of v0, p2, Lcom/voxel/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 522
    move-object v0, p2

    check-cast v0, Lcom/voxel/launcher3/CellLayout;

    .line 523
    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x1

    .line 524
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CellLayout;->setClickable(Z)V

    const/4 v1, 0x2

    .line 525
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 526
    invoke-super {p0, p1, p2}, Lcom/voxel/launcher3/PagedView;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    return-void

    .line 520
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A Workspace can only have CellLayout children."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1814
    invoke-super {p0}, Lcom/voxel/launcher3/PagedView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 1815
    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public onDragEnd()V
    .locals 3

    .line 450
    sget-boolean v0, Lcom/voxel/launcher3/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "onDragEnd"

    .line 451
    invoke-direct {p0, v0, v1, v1}, Lcom/voxel/launcher3/Workspace;->enforceDragParity(Ljava/lang/String;II)V

    .line 454
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    if-nez v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDragSourceInternal:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/voxel/launcher3/Workspace;->removeExtraEmptyScreen(ZZ)V

    .line 458
    :cond_2
    iput-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mIsDragOccuring:Z

    .line 459
    invoke-direct {p0, v1}, Lcom/voxel/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 460
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 463
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)I

    .line 464
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/UninstallShortcutReceiver;->disableAndFlushUninstallQueue(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 466
    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDragSourceInternal:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    .line 467
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->onInteractionEnd()V

    .line 469
    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mOutlineProvider:Lcom/voxel/launcher3/graphics/DragPreviewProvider;

    return-void
.end method

.method public onDragEnter(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 2

    .line 3100
    sget-boolean v0, Lcom/voxel/launcher3/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    if-eqz v0, :cond_0

    const-string v0, "onDragEnter"

    const/4 v1, 0x1

    .line 3101
    invoke-direct {p0, v0, v1, v1}, Lcom/voxel/launcher3/Workspace;->enforceDragParity(Ljava/lang/String;II)V

    :cond_0
    const/4 v0, 0x0

    .line 3104
    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 3105
    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    const/4 v0, 0x0

    .line 3107
    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDropToLayout:Lcom/voxel/launcher3/CellLayout;

    .line 3108
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getCurrentDropLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    .line 3109
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setCurrentDropLayout(Lcom/voxel/launcher3/CellLayout;)V

    .line 3110
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/voxel/launcher3/CellLayout;)V

    .line 3112
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->isDesktopLocked:Z

    if-nez p1, :cond_1

    .line 3113
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->showPageHints()V

    :cond_1
    return-void
.end method

.method public onDragExit(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 2

    .line 3159
    sget-boolean p1, Lcom/voxel/launcher3/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    if-eqz p1, :cond_0

    const-string p1, "onDragExit"

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 3160
    invoke-direct {p0, p1, v0, v1}, Lcom/voxel/launcher3/Workspace;->enforceDragParity(Ljava/lang/String;II)V

    .line 3164
    :cond_0
    iget-boolean p1, p0, Lcom/voxel/launcher3/Workspace;->mInScrollArea:Z

    if-eqz p1, :cond_2

    .line 3165
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->isPageMoving()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3168
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout;

    iput-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDropToLayout:Lcom/voxel/launcher3/CellLayout;

    goto :goto_0

    .line 3170
    :cond_1
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragOverlappingLayout:Lcom/voxel/launcher3/CellLayout;

    iput-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDropToLayout:Lcom/voxel/launcher3/CellLayout;

    goto :goto_0

    .line 3173
    :cond_2
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    iput-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDropToLayout:Lcom/voxel/launcher3/CellLayout;

    .line 3176
    :goto_0
    iget p1, p0, Lcom/voxel/launcher3/Workspace;->mDragMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 3177
    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 3179
    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 3183
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace;->onResetScrollArea()V

    const/4 p1, 0x0

    .line 3184
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->setCurrentDropLayout(Lcom/voxel/launcher3/CellLayout;)V

    .line 3185
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/voxel/launcher3/CellLayout;)V

    .line 3187
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mSpringLoadedDragController:Lcom/voxel/launcher3/SpringLoadedDragController;

    invoke-virtual {p1}, Lcom/voxel/launcher3/SpringLoadedDragController;->cancel()V

    .line 3189
    iget-boolean p1, p0, Lcom/voxel/launcher3/Workspace;->mIsPageMoving:Z

    if-nez p1, :cond_5

    .line 3190
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hideOutlines()V

    .line 3192
    :cond_5
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->hidePageHints()V

    return-void
.end method

.method public onDragOver(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 26

    move-object/from16 v9, p0

    move-object/from16 v7, p1

    .line 3464
    iget-boolean v0, v9, Lcom/voxel/launcher3/Workspace;->mInScrollArea:Z

    if-nez v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 3466
    :cond_0
    iget-boolean v0, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->isDesktopLocked:Z

    if-eqz v0, :cond_1

    return-void

    .line 3470
    :cond_1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 3472
    iget-object v10, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    if-nez v10, :cond_3

    .line 3474
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 3475
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "DragObject has null info"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3482
    :cond_3
    iget v0, v10, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    if-ltz v0, :cond_16

    iget v0, v10, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    if-ltz v0, :cond_16

    .line 3483
    iget v1, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->x:I

    iget v2, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->y:I

    iget v3, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->xOffset:I

    iget v4, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->yOffset:I

    iget-object v5, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    iget-object v6, v9, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/Workspace;->getDragViewVisualCenter(IIIILcom/voxel/launcher3/dragndrop/DragView;[F)[F

    move-result-object v0

    iput-object v0, v9, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 3486
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    move-object/from16 v22, v1

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v22, v0

    .line 3488
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    const/4 v15, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_9

    .line 3489
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct/range {p0 .. p1}, Lcom/voxel/launcher3/Workspace;->isExternalDragWidget(Lcom/voxel/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3490
    iget v0, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->x:I

    iget v2, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->y:I

    invoke-virtual {v9, v0, v2, v8}, Lcom/voxel/launcher3/Workspace;->isPointInSelfOverHotseat(IILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3491
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/Hotseat;->getLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_6

    .line 3495
    iget-object v0, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    iget v2, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->x:I

    int-to-float v2, v2

    iget v3, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->y:I

    int-to-float v3, v3

    invoke-direct {v9, v0, v2, v3, v14}, Lcom/voxel/launcher3/Workspace;->findMatchingPageForDragOver(Lcom/voxel/launcher3/dragndrop/DragView;FFZ)Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    .line 3497
    :cond_6
    iget-object v2, v9, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    if-eq v0, v2, :cond_c

    .line 3498
    invoke-virtual {v9, v0}, Lcom/voxel/launcher3/Workspace;->setCurrentDropLayout(Lcom/voxel/launcher3/CellLayout;)V

    .line 3499
    invoke-virtual {v9, v0}, Lcom/voxel/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/voxel/launcher3/CellLayout;)V

    .line 3501
    iget-object v2, v9, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    sget-object v3, Lcom/voxel/launcher3/Workspace$State;->SPRING_LOADED:Lcom/voxel/launcher3/Workspace$State;

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_c

    .line 3503
    iget-object v2, v9, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2, v0}, Lcom/voxel/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3504
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mSpringLoadedDragController:Lcom/voxel/launcher3/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/voxel/launcher3/SpringLoadedDragController;->cancel()V

    goto :goto_4

    .line 3506
    :cond_8
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mSpringLoadedDragController:Lcom/voxel/launcher3/SpringLoadedDragController;

    iget-object v2, v9, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/SpringLoadedDragController;->setAlarm(Lcom/voxel/launcher3/CellLayout;)V

    goto :goto_4

    .line 3512
    :cond_9
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-direct/range {p0 .. p1}, Lcom/voxel/launcher3/Workspace;->isDragWidget(Lcom/voxel/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3513
    iget v0, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->x:I

    iget v2, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->y:I

    invoke-virtual {v9, v0, v2, v8}, Lcom/voxel/launcher3/Workspace;->isPointInSelfOverHotseat(IILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3514
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/Hotseat;->getLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    goto :goto_3

    :cond_a
    move-object v0, v1

    :goto_3
    if-nez v0, :cond_b

    .line 3518
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Workspace;->getCurrentDropLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    .line 3520
    :cond_b
    iget-object v2, v9, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    if-eq v0, v2, :cond_c

    .line 3521
    invoke-virtual {v9, v0}, Lcom/voxel/launcher3/Workspace;->setCurrentDropLayout(Lcom/voxel/launcher3/CellLayout;)V

    .line 3522
    invoke-virtual {v9, v0}, Lcom/voxel/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/voxel/launcher3/CellLayout;)V

    .line 3527
    :cond_c
    :goto_4
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    if-eqz v0, :cond_15

    .line 3529
    iget-object v2, v9, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2, v0}, Lcom/voxel/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3530
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v0

    iget-object v1, v9, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v9, v0, v1}, Lcom/voxel/launcher3/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/voxel/launcher3/Hotseat;[F)V

    goto :goto_5

    .line 3532
    :cond_d
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    iget-object v2, v9, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v9, v0, v2, v1}, Lcom/voxel/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 3535
    :goto_5
    iget-object v8, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    .line 3537
    iget v0, v10, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 3538
    iget v1, v10, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    .line 3539
    iget v2, v10, Lcom/voxel/launcher3/ItemInfo;->minSpanX:I

    if-lez v2, :cond_e

    iget v2, v10, Lcom/voxel/launcher3/ItemInfo;->minSpanY:I

    if-lez v2, :cond_e

    .line 3540
    iget v0, v10, Lcom/voxel/launcher3/ItemInfo;->minSpanX:I

    .line 3541
    iget v1, v10, Lcom/voxel/launcher3/ItemInfo;->minSpanY:I

    move/from16 v23, v0

    move/from16 v24, v1

    goto :goto_6

    :cond_e
    move/from16 v23, v0

    move/from16 v24, v1

    .line 3544
    :goto_6
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v14

    float-to-int v1, v1

    aget v0, v0, v15

    float-to-int v2, v0

    iget-object v5, v9, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    iget-object v6, v9, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/Workspace;->findNearestArea(IIIILcom/voxel/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v9, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    .line 3547
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    aget v6, v0, v14

    .line 3548
    aget v13, v0, v15

    .line 3550
    aget v1, v0, v14

    aget v0, v0, v15

    invoke-virtual {v9, v1, v0}, Lcom/voxel/launcher3/Workspace;->setCurrentDropOverCell(II)V

    .line 3552
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    iget-object v1, v9, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v14

    aget v1, v1, v15

    iget-object v3, v9, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0, v2, v1, v3}, Lcom/voxel/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v4

    .line 3555
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    iget-object v1, v9, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    aget v2, v1, v14

    aget v1, v1, v15

    invoke-virtual {v0, v2, v1}, Lcom/voxel/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 3558
    iget-object v2, v9, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    iget-object v3, v9, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/Workspace;->manageFolderFeedback(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/CellLayout;[IFLandroid/view/View;)V

    .line 3561
    iget-object v11, v9, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v14

    float-to-int v12, v1

    aget v0, v0, v15

    float-to-int v0, v0

    iget v1, v10, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v2, v10, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    iget-object v3, v9, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    move v4, v13

    move v13, v0

    const/4 v0, 0x0

    move v14, v1

    const/4 v8, 0x1

    move v15, v2

    move-object/from16 v16, v22

    move-object/from16 v17, v3

    invoke-virtual/range {v11 .. v17}, Lcom/voxel/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v25

    const/4 v5, 0x2

    if-nez v25, :cond_f

    .line 3566
    iget-object v11, v9, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    iget-object v1, v9, Lcom/voxel/launcher3/Workspace;->mOutlineProvider:Lcom/voxel/launcher3/graphics/DragPreviewProvider;

    iget-object v13, v1, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->generatedDragOutline:Landroid/graphics/Bitmap;

    iget-object v1, v9, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v0

    float-to-int v14, v2

    aget v1, v1, v8

    float-to-int v15, v1

    iget-object v1, v9, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    aget v16, v1, v0

    aget v17, v1, v8

    iget v0, v10, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v1, v10, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    const/16 v20, 0x0

    iget-object v2, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    .line 3569
    invoke-virtual {v2}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v21

    iget-object v2, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v12, v22

    move/from16 v18, v0

    move/from16 v19, v1

    move-object/from16 v22, v2

    .line 3566
    invoke-virtual/range {v11 .. v22}, Lcom/voxel/launcher3/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    const/4 v10, 0x1

    const/4 v12, 0x2

    goto/16 :goto_8

    .line 3570
    :cond_f
    iget v1, v9, Lcom/voxel/launcher3/Workspace;->mDragMode:I

    if-eqz v1, :cond_11

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    goto :goto_7

    :cond_10
    const/4 v10, 0x1

    const/4 v12, 0x2

    goto :goto_8

    :cond_11
    :goto_7
    iget-object v1, v9, Lcom/voxel/launcher3/Workspace;->mReorderAlarm:Lcom/voxel/launcher3/Alarm;

    .line 3571
    invoke-virtual {v1}, Lcom/voxel/launcher3/Alarm;->alarmPending()Z

    move-result v1

    if-nez v1, :cond_13

    iget v1, v9, Lcom/voxel/launcher3/Workspace;->mLastReorderX:I

    if-ne v1, v6, :cond_12

    iget v1, v9, Lcom/voxel/launcher3/Workspace;->mLastReorderY:I

    if-eq v1, v4, :cond_13

    .line 3574
    :cond_12
    new-array v1, v5, [I

    .line 3575
    iget-object v11, v9, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    iget-object v2, v9, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v2, v0

    float-to-int v12, v0

    aget v0, v2, v8

    float-to-int v13, v0

    iget v0, v10, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v2, v10, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    iget-object v3, v9, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    const/16 v21, 0x0

    move/from16 v14, v23

    move/from16 v15, v24

    move/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v18, v22

    move-object/from16 v19, v3

    move-object/from16 v20, v1

    invoke-virtual/range {v11 .. v21}, Lcom/voxel/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    .line 3581
    new-instance v11, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;

    iget-object v2, v9, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    iget v6, v10, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v10, v10, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    iget-object v7, v7, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v3, v23

    move/from16 v4, v24

    const/4 v12, 0x2

    move v5, v6

    move v6, v10

    const/4 v10, 0x1

    move-object/from16 v8, v22

    invoke-direct/range {v0 .. v8}, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;-><init>(Lcom/voxel/launcher3/Workspace;[FIIIILcom/voxel/launcher3/dragndrop/DragView;Landroid/view/View;)V

    .line 3583
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mReorderAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {v0, v11}, Lcom/voxel/launcher3/Alarm;->setOnAlarmListener(Lcom/voxel/launcher3/OnAlarmListener;)V

    .line 3584
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mReorderAlarm:Lcom/voxel/launcher3/Alarm;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Lcom/voxel/launcher3/Alarm;->setAlarm(J)V

    goto :goto_8

    :cond_13
    const/4 v10, 0x1

    const/4 v12, 0x2

    .line 3587
    :goto_8
    iget v0, v9, Lcom/voxel/launcher3/Workspace;->mDragMode:I

    if-eq v0, v10, :cond_14

    if-eq v0, v12, :cond_14

    if-nez v25, :cond_15

    .line 3589
    :cond_14
    iget-object v0, v9, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    if-eqz v0, :cond_15

    .line 3590
    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->revertTempState()V

    :cond_15
    return-void

    .line 3482
    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_9
    return-void
.end method

.method public onDragStart(Lcom/voxel/launcher3/DropTarget$DragObject;Lcom/voxel/launcher3/dragndrop/DragOptions;)V
    .locals 1

    .line 421
    sget-boolean p1, Lcom/voxel/launcher3/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string p1, "onDragStart"

    .line 422
    invoke-direct {p0, p1, p2, p2}, Lcom/voxel/launcher3/Workspace;->enforceDragParity(Ljava/lang/String;II)V

    .line 425
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mOutlineProvider:Lcom/voxel/launcher3/graphics/DragPreviewProvider;

    if-eqz p1, :cond_1

    .line 427
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->generateDragOutline(Landroid/graphics/Canvas;)V

    :cond_1
    const/4 p1, 0x1

    .line 430
    iput-boolean p1, p0, Lcom/voxel/launcher3/Workspace;->mIsDragOccuring:Z

    .line 431
    invoke-direct {p0, p2}, Lcom/voxel/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 432
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->lockScreenOrientation()V

    .line 433
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->onInteractionBegin()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 434
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Workspace;->setChildrenBackgroundAlphaMultipliers(F)V

    .line 436
    invoke-static {}, Lcom/voxel/launcher3/InstallShortcutReceiver;->enableInstallQueue()V

    .line 437
    invoke-static {}, Lcom/voxel/launcher3/UninstallShortcutReceiver;->enableUninstallQueue()V

    .line 439
    iput-boolean p2, p0, Lcom/voxel/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 440
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->addExtraEmptyScreenOnDrag()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1853
    invoke-super {p0, p1}, Lcom/voxel/launcher3/PagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1856
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mBindPages:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 43

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 2884
    iget v1, v11, Lcom/voxel/launcher3/DropTarget$DragObject;->x:I

    iget v2, v11, Lcom/voxel/launcher3/DropTarget$DragObject;->y:I

    iget v3, v11, Lcom/voxel/launcher3/DropTarget$DragObject;->xOffset:I

    iget v4, v11, Lcom/voxel/launcher3/DropTarget$DragObject;->yOffset:I

    iget-object v5, v11, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    iget-object v6, v10, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/Workspace;->getDragViewVisualCenter(IIIILcom/voxel/launcher3/dragndrop/DragView;[F)[F

    move-result-object v0

    iput-object v0, v10, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 2887
    iget-object v15, v10, Lcom/voxel/launcher3/Workspace;->mDropToLayout:Lcom/voxel/launcher3/CellLayout;

    const/4 v14, 0x0

    if-eqz v15, :cond_1

    .line 2891
    iget-object v0, v10, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, v15}, Lcom/voxel/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2892
    iget-object v0, v10, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v0

    iget-object v1, v10, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v10, v0, v1}, Lcom/voxel/launcher3/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/voxel/launcher3/Hotseat;[F)V

    goto :goto_0

    .line 2894
    :cond_0
    iget-object v0, v10, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v10, v15, v0, v14}, Lcom/voxel/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2900
    :cond_1
    :goto_0
    iget-object v0, v11, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v9, 0x0

    if-eq v0, v10, :cond_2

    .line 2901
    new-array v1, v13, [I

    iget-object v0, v10, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v0, v9

    float-to-int v2, v2

    aput v2, v1, v9

    aget v0, v0, v12

    float-to-int v0, v0

    aput v0, v1, v12

    .line 2903
    iget-object v2, v11, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v3, v15

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/voxel/launcher3/CellLayout;ZLcom/voxel/launcher3/DropTarget$DragObject;)V

    goto/16 :goto_11

    .line 2904
    :cond_2
    iget-object v0, v10, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_1b

    .line 2905
    iget-object v8, v0, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/16 v23, -0x1

    if-eqz v15, :cond_16

    .line 2908
    iget-boolean v0, v11, Lcom/voxel/launcher3/DropTarget$DragObject;->cancelled:Z

    if-nez v0, :cond_16

    .line 2910
    invoke-virtual {v10, v8}, Lcom/voxel/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    if-eq v0, v15, :cond_3

    const/16 v24, 0x1

    goto :goto_1

    :cond_3
    const/16 v24, 0x0

    .line 2911
    :goto_1
    iget-object v0, v10, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, v15}, Lcom/voxel/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v25

    const-wide/16 v26, -0x65

    if-eqz v25, :cond_4

    move-wide/from16 v30, v26

    goto :goto_2

    :cond_4
    const-wide/16 v0, -0x64

    move-wide/from16 v30, v0

    .line 2915
    :goto_2
    iget-object v0, v10, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v9

    if-gez v0, :cond_5

    iget-object v0, v10, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget-wide v0, v0, Lcom/voxel/launcher3/CellLayout$CellInfo;->screenId:J

    move-wide v6, v0

    goto :goto_3

    .line 2916
    :cond_5
    invoke-virtual {v10, v15}, Lcom/voxel/launcher3/Workspace;->getIdForScreen(Lcom/voxel/launcher3/CellLayout;)J

    move-result-wide v0

    move-wide v6, v0

    .line 2917
    :goto_3
    iget-object v0, v10, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_6

    iget v0, v0, Lcom/voxel/launcher3/CellLayout$CellInfo;->spanX:I

    move/from16 v17, v0

    goto :goto_4

    :cond_6
    const/16 v17, 0x1

    .line 2918
    :goto_4
    iget-object v0, v10, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/voxel/launcher3/CellLayout$CellInfo;->spanY:I

    move/from16 v18, v0

    goto :goto_5

    :cond_7
    const/16 v18, 0x1

    .line 2922
    :goto_5
    iget-object v0, v10, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v9

    float-to-int v1, v1

    aget v0, v0, v12

    float-to-int v2, v0

    iget-object v5, v10, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v16, v5

    move-object v5, v15

    move-wide/from16 v38, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/Workspace;->findNearestArea(IIIILcom/voxel/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v10, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    .line 2924
    iget-object v0, v10, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v9

    aget v0, v0, v12

    iget-object v2, v10, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v15, v1, v0, v2}, Lcom/voxel/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v16

    .line 2929
    iget-boolean v0, v10, Lcom/voxel/launcher3/Workspace;->mInScrollArea:Z

    if-nez v0, :cond_8

    iget-object v5, v10, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    iget-object v6, v11, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-wide/from16 v2, v30

    move-object v4, v15

    move-object/from16 v20, v6

    move/from16 v6, v16

    move-object/from16 v40, v8

    move-object/from16 v8, v20

    const/4 v12, 0x0

    move-object/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Lcom/voxel/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/voxel/launcher3/CellLayout;[IFZLcom/voxel/launcher3/dragndrop/DragView;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_8
    move-object/from16 v40, v8

    const/4 v12, 0x0

    .line 2934
    :cond_9
    iget-object v3, v10, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object v2, v15

    move/from16 v4, v16

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/voxel/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/voxel/launcher3/CellLayout;[IFLcom/voxel/launcher3/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 2941
    :cond_a
    iget-object v9, v11, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    .line 2942
    iget v0, v9, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 2943
    iget v1, v9, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    .line 2944
    iget v2, v9, Lcom/voxel/launcher3/ItemInfo;->minSpanX:I

    if-lez v2, :cond_b

    iget v2, v9, Lcom/voxel/launcher3/ItemInfo;->minSpanY:I

    if-lez v2, :cond_b

    .line 2945
    iget v0, v9, Lcom/voxel/launcher3/ItemInfo;->minSpanX:I

    .line 2946
    iget v1, v9, Lcom/voxel/launcher3/ItemInfo;->minSpanY:I

    move/from16 v16, v1

    goto :goto_6

    :cond_b
    move/from16 v16, v1

    .line 2949
    :goto_6
    new-array v1, v13, [I

    .line 2950
    iget-object v2, v10, Lcom/voxel/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v2, v12

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v2, v2

    iget-object v5, v10, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    const/16 v22, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v12, v15

    const/16 v41, 0x2

    move v13, v3

    move-object/from16 v28, v14

    move v14, v2

    move-object v6, v15

    move v15, v0

    move-object/from16 v19, v40

    move-object/from16 v20, v5

    move-object/from16 v21, v1

    invoke-virtual/range {v12 .. v22}, Lcom/voxel/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v10, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    .line 2954
    iget-object v0, v10, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    aget v2, v0, v8

    if-ltz v2, :cond_c

    aget v0, v0, v7

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_e

    move-object/from16 v12, v40

    .line 2957
    instance-of v2, v12, Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_f

    aget v2, v1, v8

    iget v3, v9, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    if-ne v2, v3, :cond_d

    aget v2, v1, v7

    iget v3, v9, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    if-eq v2, v3, :cond_f

    .line 2960
    :cond_d
    aget v2, v1, v8

    iput v2, v9, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 2961
    aget v2, v1, v7

    iput v2, v9, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    .line 2962
    move-object v2, v12

    check-cast v2, Landroid/appwidget/AppWidgetHostView;

    .line 2963
    iget-object v3, v10, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    aget v4, v1, v8

    aget v1, v1, v7

    invoke-static {v2, v3, v4, v1}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/voxel/launcher3/Launcher;II)V

    const/4 v13, 0x1

    goto :goto_8

    :cond_e
    move-object/from16 v12, v40

    :cond_f
    const/4 v13, 0x0

    .line 2967
    :goto_8
    iget v1, v10, Lcom/voxel/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {v10, v1}, Lcom/voxel/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v1

    move-wide/from16 v14, v38

    cmp-long v3, v1, v14

    if-eqz v3, :cond_10

    if-nez v25, :cond_10

    .line 2968
    invoke-virtual {v10, v14, v15}, Lcom/voxel/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    .line 2969
    invoke-virtual {v10, v1}, Lcom/voxel/launcher3/Workspace;->snapToPage(I)V

    move/from16 v16, v1

    goto :goto_9

    :cond_10
    const/16 v16, -0x1

    :goto_9
    if-eqz v0, :cond_15

    .line 2973
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/voxel/launcher3/ItemInfo;

    if-eqz v24, :cond_13

    .line 2976
    invoke-virtual {v10, v12}, Lcom/voxel/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2978
    invoke-virtual {v0, v12}, Lcom/voxel/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_a

    .line 2979
    :cond_11
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2982
    :goto_a
    iget-object v0, v10, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    aget v17, v0, v8

    aget v18, v0, v7

    iget v5, v4, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v2, v4, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v19, v2

    move-wide/from16 v2, v30

    move/from16 v21, v5

    move/from16 v20, v13

    move-object v13, v4

    move-wide v4, v14

    move-object v11, v6

    move/from16 v6, v17

    move-wide/from16 v38, v14

    const/4 v14, 0x1

    move/from16 v7, v18

    const/4 v15, 0x0

    move/from16 v8, v21

    move-object/from16 v42, v9

    move/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Lcom/voxel/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_b

    .line 2980
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mDragInfo.cell has null parent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object v11, v6

    move-object/from16 v42, v9

    move/from16 v20, v13

    move-wide/from16 v38, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v13, v4

    .line 2987
    :goto_b
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 2988
    iget-object v1, v10, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    aget v2, v1, v15

    iput v2, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v2, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 2989
    aget v1, v1, v14

    iput v1, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v1, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v1, v42

    .line 2990
    iget v2, v1, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iput v2, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2991
    iget v2, v1, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    iput v2, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2992
    iput-boolean v14, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    cmp-long v2, v30, v26

    if-eqz v2, :cond_14

    .line 2994
    instance-of v2, v12, Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    if-eqz v2, :cond_14

    .line 3000
    move-object v8, v12

    check-cast v8, Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    .line 3001
    invoke-virtual {v8}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 3006
    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$Workspace$Yzg-EHYHNKtY2aLNe087JrtxgAQ;

    invoke-direct {v2, v10, v13, v8, v11}, Lcom/voxel/launcher3/-$$Lambda$Workspace$Yzg-EHYHNKtY2aLNe087JrtxgAQ;-><init>(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/LauncherAppWidgetHostView;Lcom/voxel/launcher3/CellLayout;)V

    .line 3010
    new-instance v3, Lcom/voxel/launcher3/-$$Lambda$Workspace$WuXbCNZfUrKJJfPciR70Di3_o_g;

    invoke-direct {v3, v10, v2}, Lcom/voxel/launcher3/-$$Lambda$Workspace$WuXbCNZfUrKJJfPciR70Di3_o_g;-><init>(Lcom/voxel/launcher3/Workspace;Ljava/lang/Runnable;)V

    goto :goto_c

    :cond_14
    move-object/from16 v3, v28

    .line 3020
    :goto_c
    iget-object v2, v10, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget v4, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v0, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v1, v1, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    move-object/from16 v28, v2

    move-object/from16 v29, v13

    move-wide/from16 v32, v38

    move/from16 v34, v4

    move/from16 v35, v0

    move/from16 v36, v5

    move/from16 v37, v1

    invoke-static/range {v28 .. v37}, Lcom/voxel/launcher3/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJIIII)V

    goto :goto_d

    :cond_15
    move/from16 v20, v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 3024
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 3025
    iget-object v1, v10, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    iget v2, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    aput v2, v1, v15

    .line 3026
    iget-object v1, v10, Lcom/voxel/launcher3/Workspace;->mTargetCell:[I

    iget v0, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    aput v0, v1, v14

    .line 3027
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout;

    .line 3028
    invoke-virtual {v0, v12}, Lcom/voxel/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    move-object/from16 v3, v28

    goto :goto_d

    :cond_16
    move-object v12, v8

    move-object/from16 v28, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v41, 0x2

    move-object/from16 v3, v28

    const/16 v16, -0x1

    const/16 v20, 0x0

    .line 3032
    :goto_d
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/voxel/launcher3/CellLayout;

    .line 3036
    new-instance v4, Lcom/voxel/launcher3/-$$Lambda$Workspace$3eYfUmlyxMvpIfZKDWtWROEMXtE;

    invoke-direct {v4, v10, v3}, Lcom/voxel/launcher3/-$$Lambda$Workspace$3eYfUmlyxMvpIfZKDWtWROEMXtE;-><init>(Lcom/voxel/launcher3/Workspace;Ljava/lang/Runnable;)V

    .line 3043
    iput-boolean v14, v10, Lcom/voxel/launcher3/Workspace;->mAnimatingViewIntoPlace:Z

    move-object/from16 v0, p1

    .line 3044
    iget-object v1, v0, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v1}, Lcom/voxel/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3045
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/ItemInfo;

    .line 3046
    iget v2, v1, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18

    if-eqz v20, :cond_17

    const/4 v5, 0x2

    goto :goto_e

    :cond_17
    const/4 v5, 0x0

    .line 3049
    :goto_e
    iget-object v3, v0, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v2, v8

    move-object v6, v12

    invoke-virtual/range {v0 .. v7}, Lcom/voxel/launcher3/Workspace;->animateWidgetDrop(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_10

    :cond_18
    if-gez v16, :cond_19

    const/4 v3, -0x1

    goto :goto_f

    :cond_19
    const/16 v1, 0x12c

    const/16 v3, 0x12c

    .line 3053
    :goto_f
    iget-object v1, v10, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v1

    iget-object v2, v0, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v12

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto :goto_10

    .line 3057
    :cond_1a
    iput-boolean v15, v0, Lcom/voxel/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 3058
    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    .line 3060
    :goto_10
    invoke-virtual {v8, v12}, Lcom/voxel/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    :cond_1b
    :goto_11
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/evie/common/dragndrop/DragObjectAbstraction;ZZ)V
    .locals 6

    .line 4096
    move-object v3, p2

    check-cast v3, Lcom/voxel/launcher3/DropTarget$DragObject;

    if-eqz p1, :cond_0

    .line 4100
    instance-of p2, p1, Lcom/voxel/launcher3/RemoveDropTarget;

    .line 4105
    :cond_0
    iget-boolean p2, p0, Lcom/voxel/launcher3/Workspace;->mDeferDropAfterUninstall:Z

    if-eqz p2, :cond_1

    .line 4106
    new-instance p2, Lcom/voxel/launcher3/-$$Lambda$Workspace$pL1aVQeWZXsebrXcp3xx2Dl3GM4;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/-$$Lambda$Workspace$pL1aVQeWZXsebrXcp3xx2Dl3GM4;-><init>(Lcom/voxel/launcher3/Workspace;Landroid/view/View;Lcom/voxel/launcher3/DropTarget$DragObject;ZZ)V

    iput-object p2, p0, Lcom/voxel/launcher3/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    return-void

    .line 4113
    :cond_1
    iget-object p2, p0, Lcom/voxel/launcher3/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_6

    if-eqz p2, :cond_3

    .line 4115
    iget-boolean p4, p0, Lcom/voxel/launcher3/Workspace;->mUninstallSuccessful:Z

    if-eqz p4, :cond_6

    :cond_3
    if-eq p1, p0, :cond_c

    .line 4116
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    if-eqz p1, :cond_c

    .line 4117
    iget-object p1, p1, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/voxel/launcher3/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4119
    iget-object p4, p0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget-object p4, p4, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p4}, Lcom/voxel/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 4120
    :cond_4
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result p1

    if-nez p1, :cond_5

    .line 4123
    :goto_1
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of p1, p1, Lcom/voxel/launcher3/DropTarget;

    if-eqz p1, :cond_c

    .line 4124
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    iget-object p4, p0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget-object p4, p4, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast p4, Lcom/voxel/launcher3/DropTarget;

    invoke-virtual {p1, p4}, Lcom/voxel/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/voxel/launcher3/DropTarget;)V

    goto :goto_5

    .line 4121
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "mDragInfo.cell has null parent"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4127
    :cond_6
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    if-eqz p1, :cond_c

    .line 4129
    iget-wide v1, p1, Lcom/voxel/launcher3/CellLayout$CellInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long p1, v1, v4

    if-nez p1, :cond_7

    .line 4130
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/Hotseat;->getLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object p1

    goto :goto_2

    .line 4132
    :cond_7
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget-wide v1, p1, Lcom/voxel/launcher3/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/voxel/launcher3/Workspace;->getScreenWithId(J)Lcom/voxel/launcher3/CellLayout;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_9

    .line 4134
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result p4

    if-nez p4, :cond_8

    goto :goto_3

    .line 4135
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid state: cellLayout == null in Workspace#onDropCompleted. Please file a bug. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    if-eqz p1, :cond_c

    .line 4140
    iget-object p4, p0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget-object p4, p4, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz p4, :cond_a

    .line 4141
    iget-object p4, p0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget-object p4, p4, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto :goto_4

    :cond_a
    move-object p4, v0

    :goto_4
    if-eqz p4, :cond_b

    .line 4146
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v1

    iget-object v2, v3, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    new-instance v4, Lcom/voxel/launcher3/-$$Lambda$Workspace$bF7UBqx2qrKRj8bDM1WWR7M5Sic;

    invoke-direct {v4, p4, p1}, Lcom/voxel/launcher3/-$$Lambda$Workspace$bF7UBqx2qrKRj8bDM1WWR7M5Sic;-><init>(Landroid/view/View;Lcom/voxel/launcher3/CellLayout;)V

    invoke-virtual {v1, v2, p4, v4, p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    goto :goto_5

    .line 4151
    :cond_b
    iput-boolean p3, v3, Lcom/voxel/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 4155
    :cond_c
    :goto_5
    iget-boolean p1, v3, Lcom/voxel/launcher3/DropTarget$DragObject;->cancelled:Z

    if-nez p1, :cond_d

    if-eqz p2, :cond_e

    iget-boolean p1, p0, Lcom/voxel/launcher3/Workspace;->mUninstallSuccessful:Z

    if-nez p1, :cond_e

    :cond_d
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz p1, :cond_e

    .line 4157
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 4159
    :cond_e
    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mOutlineProvider:Lcom/voxel/launcher3/graphics/DragPreviewProvider;

    .line 4160
    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    return-void
.end method

.method protected onEndReordering()V
    .locals 6

    .line 2109
    invoke-super {p0}, Lcom/voxel/launcher3/PagedView;->onEndReordering()V

    .line 2111
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2116
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hideOutlines()V

    .line 2117
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2118
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2120
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/CellLayout;

    .line 2121
    iget-object v3, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/Workspace;->getIdForScreen(Lcom/voxel/launcher3/CellLayout;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2124
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v2, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/voxel/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2127
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->enableLayoutTransitions()V

    return-void
.end method

.method public onEnterScrollArea(III)Z
    .locals 6

    .line 4394
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherAppState;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 4395
    iget-object v2, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 4396
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4397
    iget-object v2, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->getHotseat()Lcom/voxel/launcher3/Hotseat;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/voxel/launcher3/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 4398
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return v3

    .line 4404
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->workspaceInModalState()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/voxel/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getOpenFolder()Lcom/voxel/launcher3/Folder;

    move-result-object p1

    if-nez p1, :cond_3

    .line 4405
    iput-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mInScrollArea:Z

    .line 4407
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getNextPage()I

    move-result p1

    if-nez p3, :cond_1

    const/4 p2, -0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    add-int/2addr p1, p2

    const/4 p2, 0x0

    .line 4410
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/Workspace;->setCurrentDropLayout(Lcom/voxel/launcher3/CellLayout;)V

    if-ltz p1, :cond_3

    .line 4412
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 4414
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide p2

    const-wide/16 v4, -0x12d

    cmp-long v0, p2, v4

    if-nez v0, :cond_2

    return v3

    .line 4418
    :cond_2
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout;

    .line 4419
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/voxel/launcher3/CellLayout;)V

    .line 4423
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->invalidate()V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public onExitScrollArea()Z
    .locals 2

    .line 4433
    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mInScrollArea:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4434
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->invalidate()V

    .line 4435
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getCurrentDropLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    .line 4436
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setCurrentDropLayout(Lcom/voxel/launcher3/CellLayout;)V

    .line 4437
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/voxel/launcher3/CellLayout;)V

    const/4 v0, 0x1

    .line 4440
    iput-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mInScrollArea:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFlingToDelete(Lcom/voxel/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1128
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    const-wide/16 v2, -0x12d

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentCallbacks:Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_0

    .line 1130
    invoke-interface {v0}, Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;->isScrollingAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1133
    :cond_0
    invoke-super {p0, p1}, Lcom/voxel/launcher3/PagedView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1109
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/Workspace;->mXDown:F

    .line 1110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/Workspace;->mYDown:F

    .line 1111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/Workspace;->mTouchDownTime:J

    goto :goto_0

    .line 1115
    :cond_0
    :pswitch_1
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mTouchState:I

    if-nez v0, :cond_1

    .line 1116
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout;

    if-eqz v0, :cond_1

    .line 1117
    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1118
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    .line 1122
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/voxel/launcher3/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLauncherTransitionEnd(Lcom/voxel/launcher3/Launcher;ZZ)V
    .locals 0

    .line 2505
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->onTransitionEnd()V

    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/voxel/launcher3/Launcher;ZZ)V
    .locals 0

    .line 2491
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->onTransitionPrepare()V

    return-void
.end method

.method public onLauncherTransitionStart(Lcom/voxel/launcher3/Launcher;ZZ)V
    .locals 0

    return-void
.end method

.method public onLauncherTransitionStep(Lcom/voxel/launcher3/Launcher;F)V
    .locals 0

    .line 2500
    iput p2, p0, Lcom/voxel/launcher3/Workspace;->mTransitionProgress:F

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1844
    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mWallpaperOffset:Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1846
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mWallpaperOffset:Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 1848
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/voxel/launcher3/PagedView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 2

    .line 1226
    invoke-super {p0}, Lcom/voxel/launcher3/PagedView;->onPageBeginMoving()V

    .line 1228
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1229
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    goto :goto_0

    .line 1231
    :cond_0
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1233
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mCurrentPage:I

    iget v1, p0, Lcom/voxel/launcher3/Workspace;->mNextPage:I

    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/Workspace;->enableChildrenCache(II)V

    goto :goto_0

    .line 1237
    :cond_1
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/voxel/launcher3/Workspace;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/Workspace;->enableChildrenCache(II)V

    :goto_0
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 3

    .line 1243
    invoke-super {p0}, Lcom/voxel/launcher3/PagedView;->onPageEndMoving()V

    .line 1245
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->isHardwareAccelerated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1246
    invoke-direct {p0, v1}, Lcom/voxel/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    goto :goto_0

    .line 1248
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->clearChildrenCache()V

    .line 1251
    :goto_0
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1252
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragController;->forceTouchMove()V

    .line 1259
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1260
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1261
    iput-object v2, p0, Lcom/voxel/launcher3/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 1264
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 1265
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1266
    iput-object v2, p0, Lcom/voxel/launcher3/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 1268
    :cond_3
    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    if-eqz v0, :cond_4

    .line 1269
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->stripEmptyScreens()V

    .line 1270
    iput-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    :cond_4
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 1861
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1862
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getOpenFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1864
    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 1866
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/voxel/launcher3/PagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 4336
    invoke-super {p0, p1}, Lcom/voxel/launcher3/PagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4337
    iget p1, p0, Lcom/voxel/launcher3/Workspace;->mCurrentPage:I

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->setScreen(I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1819
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getPageIndicator()Lcom/voxel/launcher3/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1822
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getPageIndicatorClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1824
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getPageIndicator()Lcom/voxel/launcher3/PageIndicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/PageIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1828
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1829
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/voxel/launcher3/Workspace;->sAccessibilityEnabled:Z

    .line 1833
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->hasWallpaperChangedSinceLastCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1834
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->setWallpaperDimension()V

    .line 1836
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->canAccessWallpaper()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mWallpaperIsLiveWallpaper:Z

    const/4 v0, 0x0

    .line 1839
    iput v0, p0, Lcom/voxel/launcher3/Workspace;->mLastSetWallpaperOffsetSteps:F

    return-void
.end method

.method protected onStartReordering()V
    .locals 0

    .line 2102
    invoke-super {p0}, Lcom/voxel/launcher3/PagedView;->onStartReordering()V

    .line 2103
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->showOutlines()V

    .line 2105
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->disableLayoutTransitions()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1076
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->workspaceInModalState()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1077
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->workspaceInModalState()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget p2, p0, Lcom/voxel/launcher3/Workspace;->mCurrentPage:I

    if-eq p1, p2, :cond_0

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

.method public onTransitionEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 2542
    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mIsSwitchingState:Z

    .line 2543
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2544
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->showCustomContentIfNecessary()V

    return-void
.end method

.method public onTransitionPrepare()V
    .locals 1

    const/4 v0, 0x1

    .line 2509
    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mIsSwitchingState:Z

    .line 2512
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->invalidate()V

    const/4 v0, 0x0

    .line 2514
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2515
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hideCustomContentIfNecessary()V

    return-void
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 12

    .line 1995
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mTempCell:[I

    .line 1996
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->getLocationOnScreen([I)V

    .line 1998
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/4 v2, 0x0

    .line 1999
    aget v3, v0, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v3, 0x1

    .line 2000
    aget v4, v0, v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v4, v1

    aput v4, v0, v3

    .line 2002
    iget-object v5, p0, Lcom/voxel/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    .line 2003
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_0

    const-string p1, "android.wallpaper.tap"

    goto :goto_0

    :cond_0
    const-string p1, "android.wallpaper.secondaryTap"

    :goto_0
    move-object v7, p1

    aget v8, v0, v2

    aget v9, v0, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2002
    invoke-virtual/range {v5 .. v11}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Launcher;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method protected overScroll(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 1794
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hasCustomContent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mIsRtl:Z

    if-nez v1, :cond_1

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    .line 1795
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hasCustomContent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mIsRtl:Z

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 1797
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->dampedOverScroll(F)V

    .line 1798
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->acceleratedOverFactor(F)F

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/Workspace;->mOverScrollEffect:F

    goto :goto_1

    .line 1800
    :cond_3
    iput v0, p0, Lcom/voxel/launcher3/Workspace;->mOverScrollEffect:F

    :goto_1
    return-void
.end method

.method public prepareDragWithProvider(Lcom/voxel/launcher3/graphics/DragPreviewProvider;)V
    .locals 0

    .line 2646
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace;->mOutlineProvider:Lcom/voxel/launcher3/graphics/DragPreviewProvider;

    return-void
.end method

.method protected reinflateWidgetsIfNecessary()V
    .locals 10

    .line 1137
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1139
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout;

    .line 1140
    invoke-virtual {v3}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    .line 1141
    invoke-virtual {v4}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 1143
    invoke-virtual {v4, v6}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1145
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    if-eqz v8, :cond_0

    .line 1146
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    .line 1147
    iget-object v8, v7, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v8, Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    if-eqz v8, :cond_0

    .line 1148
    invoke-virtual {v8}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->isReinflateRequired()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1149
    iget-object v9, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v9, v7}, Lcom/voxel/launcher3/Launcher;->removeAppWidget(Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V

    .line 1151
    invoke-virtual {v3, v8}, Lcom/voxel/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1152
    iget-object v8, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v8, v7}, Lcom/voxel/launcher3/Launcher;->bindAppWidget(Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeAbandonedPromise(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 2

    .line 4912
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 4913
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4914
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {v1, p1, p2}, Lcom/voxel/launcher3/LauncherModel;->deletePackageFromDatabase(Landroid/content/Context;Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 4915
    invoke-virtual {p0, v0, p2}, Lcom/voxel/launcher3/Workspace;->removeItemsByPackageName(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method public removeAllWorkspaceScreens()V
    .locals 1

    .line 545
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->disableLayoutTransitions()V

    .line 549
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->removeCustomContentPage()V

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->removeAllViews()V

    .line 555
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 556
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x1

    .line 558
    iput-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mFirstLayout:Z

    .line 561
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->enableLayoutTransitions()V

    return-void
.end method

.method public removeCustomContentPage()V
    .locals 5

    const-wide/16 v0, -0x12d

    .line 625
    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/Workspace;->getScreenWithId(J)Lcom/voxel/launcher3/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 630
    iget-object v3, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-object v3, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 632
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/Workspace;->removeView(Landroid/view/View;)V

    .line 634
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentCallbacks:Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 635
    invoke-interface {v0, v1, v1}, Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;->onCustomContentScrollProgressChanged(FF)V

    .line 636
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentCallbacks:Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    invoke-interface {v0}, Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;->onHide()V

    :cond_0
    const/4 v0, 0x0

    .line 639
    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mCustomContentCallbacks:Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    .line 642
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mOriginalDefaultPage:I

    iput v0, p0, Lcom/voxel/launcher3/Workspace;->mDefaultPage:I

    .line 645
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mRestorePage:I

    const/16 v1, -0x3e9

    if-eq v0, v1, :cond_1

    .line 646
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mRestorePage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/voxel/launcher3/Workspace;->mRestorePage:I

    goto :goto_0

    .line 648
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setCurrentPage(I)V

    :goto_0
    return-void

    .line 627
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected custom content screen to exist"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeExtraEmptyScreen(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 765
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/voxel/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    return-void
.end method

.method public removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V
    .locals 3

    const-string v0, "Launcher.Workspace"

    const-string v1, "11683562 - removeExtraEmptyScreen()"

    const/4 v2, 0x1

    .line 771
    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 772
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Launcher.Workspace"

    const-string p2, "    - workspace loading, skip"

    .line 774
    invoke-static {p1, p2, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    if-lez p3, :cond_1

    .line 779
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Workspace$yQT6_4m2v72zDFLqIPEiZILn-bk;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/voxel/launcher3/-$$Lambda$Workspace$yQT6_4m2v72zDFLqIPEiZILn-bk;-><init>(Lcom/voxel/launcher3/Workspace;ZLjava/lang/Runnable;Z)V

    int-to-long p1, p3

    invoke-virtual {p0, v0, p1, p2}, Lcom/voxel/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 783
    :cond_1
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace;->convertFinalScreenToEmptyScreenIfNecessary()V

    .line 784
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hasExtraEmptyScreen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 785
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v0, -0xc9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 786
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getNextPage()I

    move-result p3

    const/16 v0, 0x96

    if-ne p3, p1, :cond_2

    .line 787
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getNextPage()I

    move-result p1

    sub-int/2addr p1, v2

    const/16 p3, 0x190

    invoke-virtual {p0, p1, p3}, Lcom/voxel/launcher3/Workspace;->snapToPage(II)V

    .line 788
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/voxel/launcher3/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 791
    invoke-direct {p0, p1, v0, p2, p4}, Lcom/voxel/launcher3/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V

    :goto_0
    return-void

    :cond_3
    if-eqz p4, :cond_4

    .line 798
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->stripEmptyScreens()V

    :cond_4
    if-eqz p2, :cond_5

    .line 802
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method removeItemsByComponentName(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4664
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 4665
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout;

    .line 4666
    invoke-virtual {v1}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 4668
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 4669
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 4670
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4671
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/ItemInfo;

    invoke-virtual {v9, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4674
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4675
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 4677
    new-instance v12, Lcom/voxel/launcher3/-$$Lambda$Workspace$lRUFBgTLJmx6HjIRF_UzDKa1VcI;

    move-object v3, v12

    move-object v4, p1

    move-object v5, p2

    move-object v6, v11

    move-object v7, v10

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/voxel/launcher3/-$$Lambda$Workspace$lRUFBgTLJmx6HjIRF_UzDKa1VcI;-><init>(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 4699
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v12}, Lcom/voxel/launcher3/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lcom/voxel/launcher3/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    .line 4702
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/FolderInfo;

    .line 4703
    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 4704
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/ShortcutInfo;

    .line 4705
    invoke-virtual {v4, v6}, Lcom/voxel/launcher3/FolderInfo;->remove(Lcom/voxel/launcher3/ShortcutInfo;)V

    goto :goto_2

    .line 4710
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 4713
    invoke-virtual {v1, v4}, Lcom/voxel/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 4714
    instance-of v5, v4, Lcom/voxel/launcher3/DropTarget;

    if-eqz v5, :cond_4

    .line 4715
    iget-object v5, p0, Lcom/voxel/launcher3/Workspace;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    check-cast v4, Lcom/voxel/launcher3/DropTarget;

    invoke-virtual {v5, v4}, Lcom/voxel/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/voxel/launcher3/DropTarget;)V

    goto :goto_3

    .line 4719
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4720
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4721
    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0

    .line 4726
    :cond_6
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->stripEmptyScreens()V

    return-void
.end method

.method public removeItemsByMatcher(Lcom/voxel/launcher3/util/ItemInfoMatcher;)V
    .locals 9

    .line 4539
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 4540
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout;

    .line 4541
    invoke-virtual {v1}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 4543
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    .line 4544
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 4545
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4546
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/ItemInfo;

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4549
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4550
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4551
    new-instance v6, Lcom/voxel/launcher3/-$$Lambda$Workspace$BFa00BaVFGg_oLPeVI1OwRFwi-0;

    invoke-direct {v6, p1, v5, v4, v3}, Lcom/voxel/launcher3/-$$Lambda$Workspace$BFa00BaVFGg_oLPeVI1OwRFwi-0;-><init>(Lcom/voxel/launcher3/util/ItemInfoMatcher;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 4573
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/voxel/launcher3/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lcom/voxel/launcher3/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    .line 4576
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/FolderInfo;

    .line 4577
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 4578
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voxel/launcher3/ShortcutInfo;

    .line 4579
    invoke-virtual {v6, v8}, Lcom/voxel/launcher3/FolderInfo;->remove(Lcom/voxel/launcher3/ShortcutInfo;)V

    goto :goto_2

    .line 4584
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 4587
    invoke-virtual {v1, v5}, Lcom/voxel/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 4588
    instance-of v6, v5, Lcom/voxel/launcher3/DropTarget;

    if-eqz v6, :cond_4

    .line 4589
    iget-object v6, p0, Lcom/voxel/launcher3/Workspace;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    check-cast v5, Lcom/voxel/launcher3/DropTarget;

    invoke-virtual {v6, v5}, Lcom/voxel/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/voxel/launcher3/DropTarget;)V

    goto :goto_3

    .line 4593
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4594
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4595
    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0

    .line 4600
    :cond_6
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->stripEmptyScreens()V

    return-void
.end method

.method removeItemsByPackageName(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4611
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4614
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 4615
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4616
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v2

    .line 4617
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout;

    .line 4618
    invoke-virtual {v3}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 4619
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 4621
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4622
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/ItemInfo;

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4625
    :cond_1
    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$Workspace$A6bLPOl7ElOjP3VxfcvG9yaCSds;

    invoke-direct {v2, v0, p2, v1}, Lcom/voxel/launcher3/-$$Lambda$Workspace$A6bLPOl7ElOjP3VxfcvG9yaCSds;-><init>(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/HashSet;)V

    .line 4634
    invoke-static {p1, v2}, Lcom/voxel/launcher3/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lcom/voxel/launcher3/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    .line 4637
    invoke-virtual {p0, v1, p2}, Lcom/voxel/launcher3/Workspace;->removeItemsByComponentName(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method public resetTransitionTransform(Lcom/voxel/launcher3/CellLayout;)V
    .locals 0

    .line 4040
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->isSwitchingState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4041
    iget p1, p0, Lcom/voxel/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->setScaleX(F)V

    .line 4042
    iget p1, p0, Lcom/voxel/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public restoreInstanceStateForChild(I)V
    .locals 2

    .line 4349
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 4350
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4351
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout;

    if-eqz p1, :cond_0

    .line 4353
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public restoreInstanceStateForRemainingPages()V
    .locals 4

    .line 4359
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4361
    iget-object v2, p0, Lcom/voxel/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4362
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4365
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 4366
    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    return-void
.end method

.method protected screenScrolled(I)V
    .locals 4

    .line 1761
    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mIsRtl:Z

    .line 1762
    invoke-super {p0, p1}, Lcom/voxel/launcher3/PagedView;->screenScrolled(I)V

    .line 1764
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Workspace;->updatePageAlphaValues(I)V

    .line 1765
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Workspace;->updateStateForCustomContent(I)V

    .line 1766
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1768
    iget p1, p0, Lcom/voxel/launcher3/Workspace;->mOverScrollX:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/voxel/launcher3/Workspace;->mOverScrollX:I

    iget v3, p0, Lcom/voxel/launcher3/Workspace;->mMaxScrollX:I

    if-le p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_6

    .line 1773
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v1

    .line 1775
    iget v3, p0, Lcom/voxel/launcher3/Workspace;->mOverScrollX:I

    if-gez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v0, :cond_3

    if-nez v3, :cond_4

    :cond_3
    if-eqz v0, :cond_5

    if-nez v3, :cond_5

    :cond_4
    const/4 p1, 0x0

    .line 1778
    :cond_5
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout;

    .line 1779
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mOverScrollEffect:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1780
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1, v0, v3}, Lcom/voxel/launcher3/CellLayout;->setOverScrollAmount(FZ)V

    .line 1782
    iput-boolean v1, p0, Lcom/voxel/launcher3/Workspace;->mOverscrollEffectSet:Z

    goto :goto_3

    .line 1784
    :cond_6
    iget-boolean p1, p0, Lcom/voxel/launcher3/Workspace;->mOverscrollEffectSet:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result p1

    if-lez p1, :cond_7

    .line 1785
    iput-boolean v2, p0, Lcom/voxel/launcher3/Workspace;->mOverscrollEffectSet:Z

    .line 1786
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/voxel/launcher3/CellLayout;->setOverScrollAmount(FZ)V

    .line 1787
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {p1, v0, v2}, Lcom/voxel/launcher3/CellLayout;->setOverScrollAmount(FZ)V

    :cond_7
    :goto_3
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .line 4371
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    .line 4372
    invoke-super {p0}, Lcom/voxel/launcher3/PagedView;->scrollLeft()V

    .line 4374
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getOpenFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4376
    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->completeDragExit()V

    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 1

    .line 4382
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    .line 4383
    invoke-super {p0}, Lcom/voxel/launcher3/PagedView;->scrollRight()V

    .line 4385
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getOpenFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4387
    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->completeDragExit()V

    :cond_1
    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    const/4 v0, 0x0

    .line 1687
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1688
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout;

    .line 1689
    invoke-virtual {v1, p1}, Lcom/voxel/launcher3/CellLayout;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setChildrenOutlineAlpha(F)V
    .locals 2

    .line 1618
    iput p1, p0, Lcom/voxel/launcher3/Workspace;->mChildrenOutlineAlpha:F

    const/4 v0, 0x0

    .line 1619
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1620
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout;

    .line 1621
    invoke-virtual {v1, p1}, Lcom/voxel/launcher3/CellLayout;->setBackgroundAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setCurrentDragOverlappingLayout(Lcom/voxel/launcher3/CellLayout;)V
    .locals 2

    .line 3228
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDragOverlappingLayout:Lcom/voxel/launcher3/CellLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3229
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 3231
    :cond_0
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragOverlappingLayout:Lcom/voxel/launcher3/CellLayout;

    .line 3232
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragOverlappingLayout:Lcom/voxel/launcher3/CellLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 3233
    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 3235
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->invalidate()V

    return-void
.end method

.method setCurrentDropLayout(Lcom/voxel/launcher3/CellLayout;)V
    .locals 1

    .line 3214
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 3215
    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->revertTempState()V

    .line 3216
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->onDragExit()V

    .line 3218
    :cond_0
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    .line 3219
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragTargetLayout:Lcom/voxel/launcher3/CellLayout;

    if-eqz p1, :cond_1

    .line 3220
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->onDragEnter()V

    :cond_1
    const/4 p1, 0x1

    .line 3222
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Workspace;->cleanupReorder(Z)V

    .line 3223
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace;->cleanupFolderCreation()V

    const/4 p1, -0x1

    .line 3224
    invoke-virtual {p0, p1, p1}, Lcom/voxel/launcher3/Workspace;->setCurrentDropOverCell(II)V

    return-void
.end method

.method setCurrentDropOverCell(II)V
    .locals 1

    .line 3252
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_1

    .line 3253
    :cond_0
    iput p1, p0, Lcom/voxel/launcher3/Workspace;->mDragOverX:I

    .line 3254
    iput p2, p0, Lcom/voxel/launcher3/Workspace;->mDragOverY:I

    const/4 p1, 0x0

    .line 3255
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->setDragMode(I)V

    :cond_1
    return-void
.end method

.method setDragMode(I)V
    .locals 2

    .line 3260
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_4

    if-nez p1, :cond_0

    .line 3262
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace;->cleanupAddToFolder()V

    const/4 v0, 0x0

    .line 3265
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Workspace;->cleanupReorder(Z)V

    .line 3266
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 3268
    invoke-direct {p0, v1}, Lcom/voxel/launcher3/Workspace;->cleanupReorder(Z)V

    .line 3269
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 3271
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace;->cleanupAddToFolder()V

    .line 3272
    invoke-direct {p0, v1}, Lcom/voxel/launcher3/Workspace;->cleanupReorder(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 3274
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace;->cleanupAddToFolder()V

    .line 3275
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace;->cleanupFolderCreation()V

    .line 3277
    :cond_3
    :goto_0
    iput p1, p0, Lcom/voxel/launcher3/Workspace;->mDragMode:I

    :cond_4
    return-void
.end method

.method public setFinalScrollForPageChange(I)V
    .locals 2

    .line 3065
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 3067
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getScrollX()I

    move-result v1

    iput v1, p0, Lcom/voxel/launcher3/Workspace;->mSavedScrollX:I

    .line 3068
    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getTranslationX()F

    move-result v1

    iput v1, p0, Lcom/voxel/launcher3/Workspace;->mSavedTranslationX:F

    .line 3069
    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getRotationY()F

    move-result v1

    iput v1, p0, Lcom/voxel/launcher3/Workspace;->mSavedRotationY:F

    .line 3070
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getScrollForPage(I)I

    move-result p1

    .line 3071
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->setScrollX(I)V

    const/4 p1, 0x0

    .line 3072
    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/CellLayout;->setTranslationX(F)V

    .line 3073
    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/CellLayout;->setRotationY(F)V

    :cond_0
    return-void
.end method

.method public setFinalTransitionTransform(Lcom/voxel/launcher3/CellLayout;)V
    .locals 0

    .line 4032
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->isSwitchingState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4033
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getScaleX()F

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/Workspace;->mCurrentScale:F

    .line 4034
    iget p1, p0, Lcom/voxel/launcher3/Workspace;->mNewScale:F

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->setScaleX(F)V

    .line 4035
    iget p1, p0, Lcom/voxel/launcher3/Workspace;->mNewScale:F

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2

    .line 377
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const-wide/16 v0, -0x12d

    .line 380
    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/Workspace;->getScreenWithId(J)Lcom/voxel/launcher3/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 382
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 383
    instance-of v0, p1, Lcom/voxel/launcher3/Insettable;

    if-eqz v0, :cond_0

    .line 384
    check-cast p1, Lcom/voxel/launcher3/Insettable;

    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Lcom/voxel/launcher3/Insettable;->setInsets(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setInsets(Landroid/view/WindowInsets;)V
    .locals 4

    .line 368
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 369
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 370
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 371
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 372
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setInsets(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZZ)V
    .locals 0

    .line 3240
    invoke-super {p0, p1, p2, p3}, Lcom/voxel/launcher3/PagedView;->setPageHoveringOverDeleteDropTarget(IZZ)V

    .line 3241
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout;

    if-eqz p2, :cond_0

    .line 3244
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getDeleteDropTarget()Lcom/voxel/launcher3/RemoveDropTarget;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/RemoveDropTarget;->getHoverColor()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3247
    :goto_0
    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/CellLayout;->setColor(I)V

    return-void
.end method

.method protected setWallpaperDimension()V
    .locals 5

    .line 1301
    new-instance v0, Lcom/voxel/launcher3/Workspace$3;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/Workspace$3;-><init>(Lcom/voxel/launcher3/Workspace;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1311
    invoke-virtual {v0, v1, v2}, Lcom/voxel/launcher3/Workspace$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method setup(Lcom/voxel/launcher3/dragndrop/DragController;)V
    .locals 2

    .line 4079
    new-instance v0, Lcom/voxel/launcher3/SpringLoadedDragController;

    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/voxel/launcher3/SpringLoadedDragController;-><init>(Lcom/voxel/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mSpringLoadedDragController:Lcom/voxel/launcher3/SpringLoadedDragController;

    .line 4080
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    .line 4081
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4082
    iget-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/dragndrop/DragController;->setWindowToken(Landroid/os/IBinder;)V

    :cond_0
    const/4 p1, 0x0

    .line 4087
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 2

    .line 530
    move-object v0, p1

    check-cast v0, Lcom/voxel/launcher3/CellLayout;

    .line 531
    invoke-super {p0, p1}, Lcom/voxel/launcher3/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/voxel/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez p1, :cond_0

    .line 533
    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getAlpha()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_0

    .line 534
    invoke-virtual {v0}, Lcom/voxel/launcher3/CellLayout;->getBackgroundAlpha()F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method shouldVoiceButtonProxyBeVisible()Z
    .locals 3

    .line 2184
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->isOnOrMovingToCustomContent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2187
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    sget-object v2, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method showCustomContentIfNecessary()V
    .locals 5

    .line 2526
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2527
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2528
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v3, -0x12d

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/CellLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method showOutlines()V
    .locals 4

    .line 1591
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2

    .line 1592
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1593
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    .line 1594
    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 1595
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1596
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    .line 1612
    iget-boolean v0, p0, Lcom/voxel/launcher3/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1613
    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->snapToPage(I)V

    :cond_0
    return-void
.end method

.method protected snapToPage(IILjava/lang/Runnable;)V
    .locals 1

    .line 1319
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1320
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1322
    :cond_0
    iput-object p3, p0, Lcom/voxel/launcher3/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 1323
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/Workspace;->snapToPage(II)V

    return-void
.end method

.method protected snapToPage(ILjava/lang/Runnable;)V
    .locals 1

    const/16 v0, 0x3b6

    .line 1315
    invoke-virtual {p0, p1, v0, p2}, Lcom/voxel/launcher3/Workspace;->snapToPage(IILjava/lang/Runnable;)V

    return-void
.end method

.method public snapToScreenId(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1327
    invoke-virtual {p0, p1, p2, v0}, Lcom/voxel/launcher3/Workspace;->snapToScreenId(JLjava/lang/Runnable;)V

    return-void
.end method

.method protected snapToScreenId(JLjava/lang/Runnable;)V
    .locals 0

    .line 1331
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/voxel/launcher3/Workspace;->snapToPage(ILjava/lang/Runnable;)V

    return-void
.end method

.method startDragFromWorkspace(Lcom/voxel/launcher3/CellLayout$CellInfo;Lcom/voxel/launcher3/dragndrop/DragOptions;)V
    .locals 2

    .line 2566
    iget-object v0, p1, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2569
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2573
    :cond_0
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    const/4 p1, 0x4

    .line 2574
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2575
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout;

    .line 2576
    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/CellLayout;->prepareChildForDrag(Landroid/view/View;)V

    .line 2578
    invoke-virtual {p0, v0, p0, p2}, Lcom/voxel/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/evie/common/dragndrop/DragSource;Lcom/voxel/launcher3/dragndrop/DragOptions;)Lcom/voxel/launcher3/dragndrop/DragView;

    return-void
.end method

.method public stripEmptyScreens()V
    .locals 11

    const-string v0, "Launcher.Workspace"

    const-string v1, "11683562 - stripEmptyScreens()"

    const/4 v2, 0x1

    .line 910
    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 912
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Workspace"

    const-string v1, "    - workspace loading, skip"

    .line 915
    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 919
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 920
    iput-boolean v2, p0, Lcom/voxel/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    return-void

    .line 924
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getNextPage()I

    move-result v0

    .line 925
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 926
    iget-object v3, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 927
    iget-object v5, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/CellLayout;

    .line 928
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2

    invoke-virtual {v5}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 929
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 935
    :cond_3
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->numCustomPages()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x0

    .line 938
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    const-string v7, "Launcher.Workspace"

    .line 939
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "11683562 -   removing id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 940
    iget-object v7, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voxel/launcher3/CellLayout;

    .line 941
    iget-object v8, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    iget-object v8, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 944
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v6

    if-le v6, v3, :cond_5

    .line 945
    invoke-virtual {p0, v7}, Lcom/voxel/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 948
    :cond_4
    invoke-virtual {p0, v7}, Lcom/voxel/launcher3/Workspace;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    .line 951
    iput-object v6, p0, Lcom/voxel/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 952
    iget-object v6, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v8, -0xc9

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    iget-object v6, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 957
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 959
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v3, p0, Lcom/voxel/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lcom/voxel/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_7
    if-ltz v4, :cond_8

    sub-int/2addr v0, v4

    .line 963
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Workspace;->setCurrentPage(I)V

    :cond_8
    return-void
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsRemoveDropTarget()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public transitionStateShouldAllowDrop()Z
    .locals 2

    .line 2650
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/voxel/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->SPRING_LOADED:Lcom/voxel/launcher3/Workspace$State;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method updateCustomContentVisibility()V
    .locals 4

    .line 2519
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 2520
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Workspace;->hasCustomContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2521
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v2, -0x12d

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/CellLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateInteractionForState()V
    .locals 2

    .line 2191
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    if-eq v0, v1, :cond_0

    .line 2192
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->onInteractionBegin()V

    goto :goto_0

    .line 2194
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->onInteractionEnd()V

    :goto_0
    return-void
.end method

.method public updatePackageBadge(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 1

    .line 4919
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Workspace$HMp2dJ5eU-DEPHYWm6oT5_s5zPk;

    invoke-direct {v0, p0, p2, p1}, Lcom/voxel/launcher3/-$$Lambda$Workspace$HMp2dJ5eU-DEPHYWm6oT5_s5zPk;-><init>(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/Workspace;->mapOverItems(ZLcom/voxel/launcher3/Workspace$ItemOperator;)V

    return-void
.end method

.method public updatePackageState(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;",
            ">;)V"
        }
    .end annotation

    .line 4948
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4950
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    const/4 v2, 0x1

    .line 4951
    new-instance v3, Lcom/voxel/launcher3/-$$Lambda$Workspace$_7BvzxrHdAlnkCy5mEuk802VOEk;

    invoke-direct {v3, v1}, Lcom/voxel/launcher3/-$$Lambda$Workspace$_7BvzxrHdAlnkCy5mEuk802VOEk;-><init>(Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    invoke-virtual {p0, v2, v3}, Lcom/voxel/launcher3/Workspace;->mapOverItems(ZLcom/voxel/launcher3/Workspace$ItemOperator;)V

    .line 4976
    iget v2, v1, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    if-nez v2, :cond_0

    .line 4977
    iget-object v1, v1, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4982
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4983
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Workspace;->restorePendingWidgets(Ljava/util/Set;)V

    :cond_2
    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 4797
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4798
    new-instance p1, Lcom/voxel/launcher3/-$$Lambda$Workspace$8-iZmxi-dI1bR1CXww_-LXNgzvA;

    invoke-direct {p1, p0, v0}, Lcom/voxel/launcher3/-$$Lambda$Workspace$8-iZmxi-dI1bR1CXww_-LXNgzvA;-><init>(Lcom/voxel/launcher3/Workspace;Ljava/util/HashSet;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/voxel/launcher3/Workspace;->mapOverItems(ZLcom/voxel/launcher3/Workspace$ItemOperator;)V

    return-void
.end method

.method updateShortcutsAndWidgets(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 4780
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4782
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/AppInfo;

    .line 4783
    iget-object v2, v1, Lcom/voxel/launcher3/AppInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 4785
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4786
    iget-object v3, v1, Lcom/voxel/launcher3/AppInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4788
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4791
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4792
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-direct {p0, v1, v0}, Lcom/voxel/launcher3/Workspace;->updateShortcutsAndWidgetsPerUser(Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public widgetsRestored(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 4988
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4989
    new-instance v0, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;

    iget-object v1, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 4990
    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->getAppWidgetHost()Lcom/voxel/launcher3/LauncherAppWidgetHost;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;-><init>(Lcom/voxel/launcher3/Workspace;Ljava/util/ArrayList;Lcom/voxel/launcher3/LauncherAppWidgetHost;)V

    const/4 v1, 0x0

    .line 4992
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    const/4 v2, 0x1

    .line 4994
    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4995
    iget-object v2, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 4996
    invoke-static {v2}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v2

    iget-object v3, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v1, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v2, v3, v1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    goto :goto_0

    .line 4998
    :cond_0
    iget-object v2, p0, Lcom/voxel/launcher3/Workspace;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {v2}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v2

    iget v1, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 4999
    invoke-virtual {v2, v1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 5004
    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace$DeferredWidgetRefresh;->run()V

    goto :goto_2

    .line 5008
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    .line 5009
    iget-object v1, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v1, v1, Lcom/voxel/launcher3/PendingAppWidgetHostView;

    if-eqz v1, :cond_2

    const/16 v1, 0x64

    .line 5010
    iput v1, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->installProgress:I

    .line 5011
    iget-object v0, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v0, Lcom/voxel/launcher3/PendingAppWidgetHostView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->applyState()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method willAddToExistingUserFolder(Ljava/lang/Object;Lcom/voxel/launcher3/CellLayout;[IF)Z
    .locals 2

    .line 2788
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace;->calculateMaxDistanceForFolderCreation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float p4, p4, v0

    if-lez p4, :cond_0

    return v1

    .line 2789
    :cond_0
    aget p4, p3, v1

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-virtual {p2, p4, p3}, Lcom/voxel/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2792
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 2793
    iget-boolean p4, p3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz p4, :cond_2

    iget p4, p3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v0, p3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne p4, v0, :cond_1

    iget p4, p3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget p3, p3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    if-eq p4, p3, :cond_2

    :cond_1
    return v1

    .line 2798
    :cond_2
    instance-of p3, p2, Lcom/voxel/launcher3/FolderIcon;

    if-eqz p3, :cond_3

    .line 2799
    check-cast p2, Lcom/voxel/launcher3/FolderIcon;

    .line 2800
    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method willCreateUserFolder(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/CellLayout;[IFZ)Z
    .locals 3

    .line 2758
    invoke-direct {p0}, Lcom/voxel/launcher3/Workspace;->calculateMaxDistanceForFolderCreation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float p4, p4, v0

    if-lez p4, :cond_0

    return v1

    .line 2759
    :cond_0
    aget p4, p3, v1

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-virtual {p2, p4, p3}, Lcom/voxel/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2762
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 2763
    iget-boolean p4, p3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz p4, :cond_2

    iget p4, p3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v2, p3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne p4, v2, :cond_1

    iget p4, p3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget p3, p3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    if-eq p4, p3, :cond_2

    :cond_1
    return v1

    .line 2769
    :cond_2
    iget-object p3, p0, Lcom/voxel/launcher3/Workspace;->mDragInfo:Lcom/voxel/launcher3/CellLayout$CellInfo;

    if-eqz p3, :cond_4

    .line 2770
    iget-object p3, p3, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne p2, p3, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    :goto_0
    if-eqz p2, :cond_9

    if-nez p3, :cond_9

    if-eqz p5, :cond_5

    .line 2773
    iget-boolean p3, p0, Lcom/voxel/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez p3, :cond_5

    goto :goto_4

    .line 2777
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/voxel/launcher3/ShortcutInfo;

    .line 2778
    iget p3, p1, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    if-eqz p3, :cond_7

    iget p3, p1, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    if-eq p3, v0, :cond_7

    iget p1, p1, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 p3, 0x6

    if-ne p1, p3, :cond_6

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_9
    :goto_4
    return v1
.end method

.method public workspaceInModalState()Z
    .locals 2

    .line 1893
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace;->mState:Lcom/voxel/launcher3/Workspace$State;

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
