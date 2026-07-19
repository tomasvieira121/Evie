.class public Lcom/voxel/launcher3/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/CellLayout$CellInfo;,
        Lcom/voxel/launcher3/CellLayout$LayoutParams;,
        Lcom/voxel/launcher3/CellLayout$CellAndSpan;,
        Lcom/voxel/launcher3/CellLayout$ItemConfiguration;,
        Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;,
        Lcom/voxel/launcher3/CellLayout$ViewCluster;
    }
.end annotation


# static fields
.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private FOREGROUND_ALPHA_DAMPER:F

.field private mActiveGlowBackground:Landroid/graphics/drawable/NinePatchDrawable;

.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mCellHeight:I

.field private mCellParams:Lcom/voxel/launcher3/CellParams;

.field private mCellWidth:I

.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mColorTint:I

.field private mCountX:I

.field private mCountY:I

.field private mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

.field private mDirectionVector:[I

.field private final mDragCell:[I

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/voxel/launcher3/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Rect;

.field private mDragging:Z

.field private mDrawBackground:Z

.field private mDropPending:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mFixedCellHeight:I

.field private mFixedCellWidth:I

.field private mFixedHeight:I

.field private mFixedWidth:I

.field private mFolderLeaveBehindCell:[I

.field private mFolderOuterRings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundAlpha:I

.field private mForegroundPadding:I

.field private mForegroundRect:Landroid/graphics/Rect;

.field private mHeightGap:I

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIntersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragOverlapping:Z

.field private mIsDragTarget:Z

.field private mItemPlacementDirty:Z

.field private mLastDownOnOccupiedCell:Z

.field private mLauncher:Lcom/voxel/launcher3/Launcher;

.field private mMaxGap:I

.field private mNormalBackground:Landroid/graphics/drawable/NinePatchDrawable;

.field mOccupied:[[Z

.field private mOccupiedRect:Landroid/graphics/Rect;

.field private mOriginalHeightGap:I

.field private mOriginalWidthGap:I

.field private mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverScrollLeft:Landroid/graphics/drawable/Drawable;

.field private mOverScrollRight:Landroid/graphics/drawable/Drawable;

.field mPreviousReorderDirection:[I

.field private mReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/voxel/launcher3/CellLayout$LayoutParams;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mReorderPreviewAnimationMagnitude:F

.field private mShakeAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

.field mTempLocation:[I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTempRectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mTmpOccupied:[[Z

.field private final mTmpPoint:[I

.field private final mTmpXY:[I

.field private final mTouchFeedbackView:Lcom/voxel/launcher3/FastBitmapView;

.field mUseActiveGlowBackground:Z

.field private mWidthGap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/CellLayout;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 186
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mDropPending:Z

    const/4 v1, 0x1

    .line 82
    iput-boolean v1, p0, Lcom/voxel/launcher3/CellLayout;->mIsDragTarget:Z

    const/4 v2, 0x2

    .line 86
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/voxel/launcher3/CellLayout;->mTmpXY:[I

    .line 87
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/voxel/launcher3/CellLayout;->mTmpPoint:[I

    .line 88
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/voxel/launcher3/CellLayout;->mTempLocation:[I

    .line 92
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/voxel/launcher3/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 97
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/voxel/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    const v3, 0x3f266666    # 0.65f

    .line 99
    iput v3, p0, Lcom/voxel/launcher3/CellLayout;->FOREGROUND_ALPHA_DAMPER:F

    .line 100
    iput v0, p0, Lcom/voxel/launcher3/CellLayout;->mForegroundAlpha:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 102
    iput v3, p0, Lcom/voxel/launcher3/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 103
    iput-boolean v1, p0, Lcom/voxel/launcher3/CellLayout;->mDrawBackground:Z

    .line 105
    iput v0, p0, Lcom/voxel/launcher3/CellLayout;->mColorTint:I

    const/4 v3, -0x1

    .line 117
    iput v3, p0, Lcom/voxel/launcher3/CellLayout;->mFixedWidth:I

    .line 118
    iput v3, p0, Lcom/voxel/launcher3/CellLayout;->mFixedHeight:I

    .line 121
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mIsDragOverlapping:Z

    .line 122
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mUseActiveGlowBackground:Z

    const/4 v4, 0x4

    .line 126
    new-array v4, v4, [Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 127
    iget-object v4, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v4

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlineAlphas:[F

    .line 128
    array-length v4, v4

    new-array v4, v4, [Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    iput-object v4, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    .line 132
    iput v0, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 133
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 137
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/voxel/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 139
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/voxel/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    .line 142
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mItemPlacementDirty:Z

    .line 145
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/voxel/launcher3/CellLayout;->mDragCell:[I

    .line 147
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mDragging:Z

    .line 167
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/voxel/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 168
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/voxel/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    .line 169
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/voxel/launcher3/CellLayout;->mDirectionVector:[I

    .line 170
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mPreviousReorderDirection:[I

    .line 173
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 1269
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 190
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/CellLayout;->setWillNotDraw(Z)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/CellLayout;->setClipToPadding(Z)V

    .line 193
    instance-of v2, p1, Lcom/voxel/launcher3/Launcher;

    if-eqz v2, :cond_0

    .line 194
    move-object v2, p1

    check-cast v2, Lcom/voxel/launcher3/Launcher;

    iput-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 197
    :cond_0
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    .line 200
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    sget-object v4, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v2, v4}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v2

    iput-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mCellParams:Lcom/voxel/launcher3/CellParams;

    .line 203
    sget-object v2, Lis/shortcut/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 205
    iput v3, p0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    iput v3, p0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    .line 206
    iput v3, p0, Lcom/voxel/launcher3/CellLayout;->mFixedCellHeight:I

    iput v3, p0, Lcom/voxel/launcher3/CellLayout;->mFixedCellWidth:I

    .line 207
    iput v0, p0, Lcom/voxel/launcher3/CellLayout;->mOriginalWidthGap:I

    iput v0, p0, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    .line 208
    iput v0, p0, Lcom/voxel/launcher3/CellLayout;->mOriginalHeightGap:I

    iput v0, p0, Lcom/voxel/launcher3/CellLayout;->mHeightGap:I

    const p3, 0x7fffffff

    .line 209
    iput p3, p0, Lcom/voxel/launcher3/CellLayout;->mMaxGap:I

    .line 210
    iget-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget p3, p3, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int p3, p3

    iput p3, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    .line 211
    iget-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget p3, p3, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int p3, p3

    iput p3, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    .line 212
    iget p3, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    filled-new-array {p3, v2}, [I

    move-result-object p3

    const-class v2, Z

    invoke-static {v2, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[Z

    iput-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mOccupied:[[Z

    .line 213
    iget p3, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    filled-new-array {p3, v2}, [I

    move-result-object p3

    const-class v2, Z

    invoke-static {v2, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[Z

    iput-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    .line 214
    iget-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/16 v2, -0x64

    aput v2, p3, v0

    .line 215
    aput v2, p3, v1

    .line 217
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f080163

    .line 223
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mNormalBackground:Landroid/graphics/drawable/NinePatchDrawable;

    const p3, 0x7f080164

    .line 224
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/NinePatchDrawable;

    const p3, 0x7f07028c

    .line 230
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/voxel/launcher3/CellLayout;->mForegroundPadding:I

    const p3, 0x3df5c28f    # 0.12f

    .line 232
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v2, v2, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    int-to-float v2, v2

    mul-float v2, v2, p3

    iput v2, p0, Lcom/voxel/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    .line 235
    iget-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mNormalBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setFilterBitmap(Z)V

    .line 236
    iget-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setFilterBitmap(Z)V

    .line 239
    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {p3, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 240
    iget-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mDragCell:[I

    aput v3, p3, v1

    aput v3, p3, v0

    const/4 p3, 0x0

    .line 241
    :goto_0
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v2, v1

    if-ge p3, v2, :cond_1

    .line 242
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 244
    :cond_1
    iget-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    const p3, 0x7f0b001a

    .line 250
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    const v1, 0x7f0b001b

    .line 252
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    .line 254
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlineAlphas:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 256
    :goto_1
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 257
    new-instance v7, Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    int-to-long v3, p3

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/voxel/launcher3/InterruptibleInOutAnimator;-><init>(Landroid/view/View;JFF)V

    .line 259
    invoke-virtual {v7}, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 261
    invoke-virtual {v7}, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$CellLayout$CutH1Cj23M4YjeX05w_id7bYol0;

    invoke-direct {v2, p0, v7, v0}, Lcom/voxel/launcher3/-$$Lambda$CellLayout$CutH1Cj23M4YjeX05w_id7bYol0;-><init>(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/InterruptibleInOutAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 283
    invoke-virtual {v7}, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/voxel/launcher3/CellLayout$1;

    invoke-direct {v2, p0, v7}, Lcom/voxel/launcher3/CellLayout$1;-><init>(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/InterruptibleInOutAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 291
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    aput-object v7, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    :cond_2
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/voxel/launcher3/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    .line 295
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/voxel/launcher3/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    .line 297
    new-instance p2, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-direct {p2, p1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    .line 298
    iget-object p2, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    iget-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    invoke-virtual {p2, p3}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setDeviceProfile(Lcom/voxel/launcher3/DeviceProfile;)V

    .line 299
    iget-object p2, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    iget-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {p2, p3}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 300
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    iget v4, p0, Lcom/voxel/launcher3/CellLayout;->mHeightGap:I

    iget v5, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    iget v6, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    invoke-virtual/range {v0 .. v6}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 303
    new-instance p2, Lcom/voxel/launcher3/FastBitmapView;

    invoke-direct {p2, p1}, Lcom/voxel/launcher3/FastBitmapView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/voxel/launcher3/CellLayout;->mTouchFeedbackView:Lcom/voxel/launcher3/FastBitmapView;

    .line 305
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mTouchFeedbackView:Lcom/voxel/launcher3/FastBitmapView;

    iget-object p2, p0, Lcom/voxel/launcher3/CellLayout;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget p2, p2, Lcom/voxel/launcher3/CellParams;->cellWidthPx:I

    int-to-double p2, p2

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v0

    double-to-int p2, p2

    iget-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget p3, p3, Lcom/voxel/launcher3/CellParams;->cellHeightPx:I

    int-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-int p3, v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/launcher3/CellLayout;->addView(Landroid/view/View;II)V

    .line 306
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/CellLayout;->addView(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/CellLayout;)Ljava/util/HashMap;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/voxel/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/CellLayout;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    return p0
.end method

.method static synthetic access$200(Lcom/voxel/launcher3/CellLayout;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    return p0
.end method

.method static synthetic access$300(Lcom/voxel/launcher3/CellLayout;)[I
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/voxel/launcher3/CellLayout;->mTmpPoint:[I

    return-object p0
.end method

.method static synthetic access$400(Lcom/voxel/launcher3/CellLayout;)F
    .locals 0

    .line 62
    iget p0, p0, Lcom/voxel/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    return p0
.end method

.method static synthetic access$500(Lcom/voxel/launcher3/CellLayout;)Ljava/util/HashMap;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/voxel/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    return-object p0
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 10

    .line 1498
    iget-object p4, p4, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    .line 1500
    iget v1, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v2, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v3, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v4, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 1501
    iget-object p4, p0, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, v0}, Lcom/voxel/launcher3/CellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 1503
    iget v2, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v3, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v4, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v5, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    iget-object v7, p0, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 p2, 0x0

    move-object v8, p2

    check-cast v8, [[Z

    iget-object v9, p0, Lcom/voxel/launcher3/CellLayout;->mTempLocation:[I

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/voxel/launcher3/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1505
    iget-object p2, p0, Lcom/voxel/launcher3/CellLayout;->mTempLocation:[I

    const/4 p3, 0x0

    aget p4, p2, p3

    if-ltz p4, :cond_0

    aget p4, p2, v0

    if-ltz p4, :cond_0

    .line 1506
    aget p3, p2, p3

    iput p3, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    .line 1507
    aget p2, p2, v0

    iput p2, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    const/4 p3, 0x1

    .line 1510
    :cond_0
    iget v1, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v2, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v3, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v4, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    return p3
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/voxel/launcher3/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p5

    .line 1848
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_0

    return v11

    :cond_0
    const/4 v0, 0x0

    .line 1853
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v12, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1854
    iget-object v2, v10, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    if-nez v12, :cond_1

    .line 1856
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v4, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v5, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v0, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, v0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v12, v2

    goto :goto_0

    .line 1858
    :cond_1
    iget v2, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v3, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v4, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v5, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v0, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v0

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    .line 1863
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1864
    iget-object v1, v10, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    .line 1865
    iget v1, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v2, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v3, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v4, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, v9, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    .line 1868
    :cond_3
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [[Z

    .line 1869
    iget v8, v12, Landroid/graphics/Rect;->top:I

    .line 1870
    iget v13, v12, Landroid/graphics/Rect;->left:I

    .line 1873
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1874
    iget-object v1, v10, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    .line 1875
    iget v1, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    sub-int/2addr v1, v13

    iget v2, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    sub-int/2addr v2, v8

    iget v3, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v4, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_2

    .line 1878
    :cond_4
    iget-object v0, v9, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    move-object/from16 v1, p2

    invoke-direct {p0, v1, v0, v11}, Lcom/voxel/launcher3/CellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 1880
    iget v1, v12, Landroid/graphics/Rect;->left:I

    iget v2, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1881
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v6, v9, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    iget-object v8, v9, Lcom/voxel/launcher3/CellLayout;->mTempLocation:[I

    move-object v0, p0

    move-object/from16 v5, p3

    .line 1880
    invoke-direct/range {v0 .. v8}, Lcom/voxel/launcher3/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1884
    iget-object v0, v9, Lcom/voxel/launcher3/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-ltz v2, :cond_5

    aget v2, v0, v11

    if-ltz v2, :cond_5

    .line 1885
    aget v0, v0, v1

    iget v1, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 1886
    iget-object v1, v9, Lcom/voxel/launcher3/CellLayout;->mTempLocation:[I

    aget v1, v1, v11

    iget v2, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 1887
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1888
    iget-object v4, v10, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    .line 1889
    iget v4, v3, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    .line 1890
    iget v4, v3, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    .line 1896
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1897
    iget-object v1, v10, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    .line 1898
    iget v1, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v2, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v3, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v4, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, v9, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_4

    :cond_7
    return v11
.end method

.method private animateItemsToSolution(Lcom/voxel/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    .line 2169
    iget-object v0, v8, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    move-object v10, v0

    check-cast v10, [[Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2170
    :goto_0
    iget v2, v8, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 2171
    :goto_1
    iget v3, v8, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    if-ge v2, v3, :cond_0

    .line 2172
    aget-object v3, v10, v1

    aput-boolean v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2176
    :cond_1
    iget-object v1, v8, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_4

    .line 2178
    iget-object v0, v8, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v12}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v13, p2

    if-ne v1, v13, :cond_2

    goto :goto_3

    .line 2180
    :cond_2
    iget-object v0, v9, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    if-eqz v14, :cond_3

    .line 2182
    iget v2, v14, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v3, v14, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    const/16 v4, 0x96

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/voxel/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2184
    iget v1, v14, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v2, v14, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v3, v14, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v4, v14, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    const/4 v6, 0x1

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    .line 2188
    iget v1, v9, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewX:I

    iget v2, v9, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewY:I

    iget v3, v9, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewSpanX:I

    iget v4, v9, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewSpanY:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    :cond_5
    return-void
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/voxel/launcher3/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1912
    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    aget v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    if-le v1, v2, :cond_4

    .line 1915
    aget v1, p3, v2

    .line 1916
    aput v0, p3, v2

    .line 1918
    invoke-direct/range {p0 .. p5}, Lcom/voxel/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    .line 1922
    :cond_0
    aput v1, p3, v2

    .line 1923
    aget v1, p3, v0

    .line 1924
    aput v0, p3, v0

    .line 1926
    invoke-direct/range {p0 .. p5}, Lcom/voxel/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 1931
    :cond_1
    aput v1, p3, v0

    .line 1934
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    .line 1935
    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    .line 1936
    aget v1, p3, v2

    .line 1937
    aput v0, p3, v2

    .line 1938
    invoke-direct/range {p0 .. p5}, Lcom/voxel/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    .line 1943
    :cond_2
    aput v1, p3, v2

    .line 1944
    aget v1, p3, v0

    .line 1945
    aput v0, p3, v0

    .line 1946
    invoke-direct/range {p0 .. p5}, Lcom/voxel/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    .line 1951
    :cond_3
    aput v1, p3, v0

    .line 1952
    aget p1, p3, v0

    mul-int/lit8 p1, p1, -0x1

    aput p1, p3, v0

    .line 1953
    aget p1, p3, v2

    mul-int/lit8 p1, p1, -0x1

    aput p1, p3, v2

    goto :goto_0

    .line 1958
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/voxel/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    .line 1963
    :cond_5
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    .line 1964
    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    .line 1965
    invoke-direct/range {p0 .. p5}, Lcom/voxel/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    .line 1970
    :cond_6
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    .line 1971
    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    .line 1977
    aget v1, p3, v2

    .line 1978
    aget v3, p3, v0

    aput v3, p3, v2

    .line 1979
    aput v1, p3, v0

    .line 1980
    invoke-direct/range {p0 .. p5}, Lcom/voxel/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v2

    .line 1986
    :cond_7
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    .line 1987
    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    .line 1988
    invoke-direct/range {p0 .. p5}, Lcom/voxel/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    .line 1993
    :cond_8
    aget p1, p3, v0

    mul-int/lit8 p1, p1, -0x1

    aput p1, p3, v0

    .line 1994
    aget p1, p3, v2

    mul-int/lit8 p1, p1, -0x1

    aput p1, p3, v2

    .line 1997
    aget p1, p3, v2

    .line 1998
    aget p2, p3, v0

    aput p2, p3, v2

    .line 1999
    aput p1, p3, v0

    :goto_0
    return v0
.end method

.method private beginOrAdjustReorderPreviewAnimations(Lcom/voxel/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;II)V
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 2197
    iget-object v0, v10, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_3

    .line 2199
    iget-object v0, v10, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v14}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v15, p2

    if-ne v2, v15, :cond_0

    goto :goto_2

    .line 2201
    :cond_0
    iget-object v0, v11, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    if-nez p4, :cond_1

    .line 2202
    iget-object v1, v11, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, v11, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    .line 2203
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2205
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 2207
    new-instance v16, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v4, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v6, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v7, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v8, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v9, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v3, p4

    invoke-direct/range {v0 .. v9}, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;-><init>(Lcom/voxel/launcher3/CellLayout;Landroid/view/View;IIIIIII)V

    .line 2209
    invoke-virtual/range {v16 .. v16}, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->animate()V

    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private clearOccupiedCells()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3058
    :goto_0
    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 3059
    :goto_1
    iget v3, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    if-ge v2, v3, :cond_0

    .line 3060
    iget-object v3, p0, Lcom/voxel/launcher3/CellLayout;->mOccupied:[[Z

    aget-object v3, v3, v1

    aput-boolean v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private commitTempPlacement()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2345
    :goto_0
    iget v3, v0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 2346
    :goto_1
    iget v4, v0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    if-ge v3, v4, :cond_0

    .line 2347
    iget-object v4, v0, Lcom/voxel/launcher3/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    iget-object v5, v0, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    aget-object v5, v5, v2

    aget-boolean v5, v5, v3

    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2351
    :cond_1
    iget-object v2, v0, Lcom/voxel/launcher3/CellLayout;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/voxel/launcher3/Workspace;->getIdForScreen(Lcom/voxel/launcher3/CellLayout;)J

    move-result-wide v2

    const/16 v4, -0x64

    .line 2354
    iget-object v5, v0, Lcom/voxel/launcher3/CellLayout;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v5, v0}, Lcom/voxel/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide/16 v2, -0x1

    const/16 v4, -0x65

    .line 2359
    :cond_2
    iget-object v5, v0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v15

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v15, :cond_7

    .line 2361
    iget-object v5, v0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5, v14}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2362
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 2363
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/voxel/launcher3/ItemInfo;

    if-eqz v7, :cond_6

    .line 2367
    iget v5, v7, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v8, v6, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    if-ne v5, v8, :cond_4

    iget v5, v7, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iget v8, v6, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v5, v8, :cond_4

    iget v5, v7, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v8, v6, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v5, v8, :cond_4

    iget v5, v7, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    iget v8, v6, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v5, v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v5, 0x1

    .line 2371
    :goto_4
    iget v8, v6, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v8, v6, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v8, v7, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    .line 2372
    iget v8, v6, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v8, v6, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v8, v7, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    .line 2373
    iget v8, v6, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput v8, v7, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 2374
    iget v6, v6, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput v6, v7, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    if-eqz v5, :cond_5

    .line 2377
    iget-object v5, v0, Lcom/voxel/launcher3/CellLayout;->mLauncher:Lcom/voxel/launcher3/Launcher;

    int-to-long v8, v4

    iget v11, v7, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v12, v7, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iget v13, v7, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v10, v7, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    move-object v6, v7

    move-wide v7, v8

    move/from16 v16, v10

    move-wide v9, v2

    move/from16 v17, v14

    move/from16 v14, v16

    invoke-static/range {v5 .. v14}, Lcom/voxel/launcher3/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJIIII)V

    goto :goto_5

    :cond_5
    move/from16 v17, v14

    goto :goto_5

    :cond_6
    move/from16 v17, v14

    :goto_5
    add-int/lit8 v14, v17, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private completeAndClearReorderPreviewAnimations()V
    .locals 2

    .line 2338
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;

    .line 2339
    invoke-static {v1}, Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;->access$600(Lcom/voxel/launcher3/CellLayout$ReorderPreviewAnimation;)V

    goto :goto_0

    .line 2341
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private computeDirectionVector(FF[I)V
    .locals 9

    div-float v0, p2, p1

    float-to-double v0, v0

    .line 2065
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const/4 v2, 0x0

    .line 2067
    aput v2, p3, v2

    const/4 v3, 0x1

    .line 2068
    aput v2, p3, v3

    .line 2069
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v8, v4, v6

    if-lez v8, :cond_0

    .line 2070
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, p3, v2

    .line 2072
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double p1, v0, v6

    if-lez p1, :cond_1

    .line 2073
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, p3, v3

    :cond_1
    return-void
.end method

.method private copyCurrentStateToSolution(Lcom/voxel/launcher3/CellLayout$ItemConfiguration;Z)V
    .locals 10

    .line 2127
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v6

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    .line 2129
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v7}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2130
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    if-eqz p2, :cond_0

    .line 2133
    new-instance v9, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    iget v2, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v4, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout$CellAndSpan;-><init>(Lcom/voxel/launcher3/CellLayout;IIII)V

    goto :goto_1

    .line 2135
    :cond_0
    new-instance v9, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    iget v2, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v4, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout$CellAndSpan;-><init>(Lcom/voxel/launcher3/CellLayout;IIII)V

    .line 2137
    :goto_1
    invoke-virtual {p1, v8, v9}, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->add(Landroid/view/View;Lcom/voxel/launcher3/CellLayout$CellAndSpan;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private copyOccupiedArray([[Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2078
    :goto_0
    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 2079
    :goto_1
    iget v3, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    if-ge v2, v3, :cond_0

    .line 2080
    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/voxel/launcher3/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v1

    aget-boolean v4, v4, v2

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private copySolutionToTempState(Lcom/voxel/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2142
    :goto_0
    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 2143
    :goto_1
    iget v3, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    if-ge v2, v3, :cond_0

    .line 2144
    iget-object v3, p0, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    aget-object v3, v3, v1

    aput-boolean v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2148
    :cond_1
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_4

    .line 2150
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p2, :cond_2

    goto :goto_3

    .line 2152
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 2153
    iget-object v4, p1, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    if-eqz v2, :cond_3

    .line 2155
    iget v4, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iput v4, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 2156
    iget v4, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iput v4, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 2157
    iget v4, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    iput v4, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2158
    iget v4, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    iput v4, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2159
    iget v6, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v7, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v8, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v9, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    iget-object v10, p0, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v11, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/voxel/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2162
    :cond_4
    iget v3, p1, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewX:I

    iget v4, p1, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewY:I

    iget v5, p1, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewSpanX:I

    iget v6, p1, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewSpanY:I

    iget-object v7, p0, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/voxel/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    return-void
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    if-eqz p8, :cond_0

    move-object/from16 v3, p8

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 1447
    new-array v3, v3, [I

    :goto_0
    const/high16 v4, -0x80000000

    .line 1451
    iget v5, v0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    .line 1452
    iget v6, v0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    const/4 v4, 0x0

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v10, -0x80000000

    :goto_1
    add-int/lit8 v11, v2, -0x1

    sub-int v11, v6, v11

    const/4 v12, 0x1

    if-ge v4, v11, :cond_8

    move v11, v10

    move v10, v9

    const/4 v9, 0x0

    :goto_2
    add-int/lit8 v13, v1, -0x1

    sub-int v13, v5, v13

    if-ge v9, v13, :cond_7

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v1, :cond_3

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v2, :cond_2

    add-int v15, v9, v13

    .line 1460
    aget-object v15, p6, v15

    add-int v16, v4, v14

    aget-boolean v15, v15, v16

    if-eqz v15, :cond_1

    if-eqz p7, :cond_6

    aget-object v15, p7, v13

    aget-boolean v15, v15, v14

    if-eqz v15, :cond_1

    goto :goto_6

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    sub-int v13, v9, p1

    mul-int v14, v13, v13

    sub-int v15, v4, p2

    mul-int v16, v15, v15

    add-int v14, v14, v16

    int-to-double v7, v14

    .line 1467
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 1468
    iget-object v8, v0, Lcom/voxel/launcher3/CellLayout;->mTmpPoint:[I

    int-to-float v13, v13

    int-to-float v14, v15

    .line 1469
    invoke-direct {v0, v13, v14, v8}, Lcom/voxel/launcher3/CellLayout;->computeDirectionVector(FF[I)V

    const/4 v13, 0x0

    .line 1472
    aget v14, p5, v13

    aget v15, v8, v13

    mul-int v14, v14, v15

    aget v15, p5, v12

    aget v16, v8, v12

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    .line 1475
    aget v15, p5, v13

    aget v12, v8, v13

    if-ne v15, v12, :cond_4

    aget v12, p5, v13

    aget v8, v8, v13

    if-ne v12, v8, :cond_4

    const/4 v8, 0x1

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    .line 1478
    :goto_5
    invoke-static {v7, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-ltz v8, :cond_5

    invoke-static {v7, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_6

    if-le v14, v11, :cond_6

    :cond_5
    const/4 v8, 0x0

    .line 1482
    aput v9, v3, v8

    const/4 v8, 0x1

    .line 1483
    aput v4, v3, v8

    move v10, v7

    move v11, v14

    :cond_6
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    move v9, v10

    move v10, v11

    goto/16 :goto_1

    :cond_8
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v9, v4

    if-nez v1, :cond_9

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1490
    aput v1, v3, v2

    const/4 v2, 0x1

    .line 1491
    aput v1, v3, v2

    :cond_9
    return-object v3
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_6

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_5

    .line 3037
    aget-object v3, p5, v2

    aget-boolean v3, v3, v1

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    move v5, v3

    move v3, v2

    :goto_2
    add-int v6, v2, p1

    sub-int/2addr v6, v4

    if-ge v3, v6, :cond_3

    if-ge v2, p3, :cond_3

    move v6, v5

    move v5, v1

    :goto_3
    add-int v7, v1, p2

    sub-int/2addr v7, v4

    if-ge v5, v7, :cond_2

    if-ge v1, p4, :cond_2

    if-eqz v6, :cond_0

    .line 3041
    aget-object v6, p5, v3

    aget-boolean v6, v6, v5

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_4

    :cond_0
    const/4 v6, 0x0

    :goto_4
    if-nez v6, :cond_1

    move v5, v6

    goto :goto_5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v5, v6

    goto :goto_2

    :cond_3
    :goto_5
    if-eqz v5, :cond_4

    .line 3047
    aput v2, p0, v0

    .line 3048
    aput v1, p0, v4

    return v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method private getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 15

    move-object v8, p0

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    const/4 v0, 0x2

    .line 2425
    new-array v6, v0, [I

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v6

    .line 2427
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    .line 2428
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v12, 0x0

    .line 2429
    aget v1, v6, v12

    const/4 v13, 0x1

    aget v2, v6, v13

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2430
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2432
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 2433
    aget v1, v6, v12

    aget v2, v6, v13

    iget-object v7, v8, Lcom/voxel/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, p0

    move-object/from16 v5, p5

    move-object v6, v14

    invoke-direct/range {v0 .. v7}, Lcom/voxel/launcher3/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2436
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 2437
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 2439
    iget v1, v14, Landroid/graphics/Rect;->left:I

    iget v2, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2440
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v5, v14

    .line 2439
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2442
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, v0, p1

    div-int/2addr v0, v9

    .line 2443
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, v1, p2

    div-int/2addr v1, v10

    .line 2445
    iget v2, v8, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    if-eq v6, v2, :cond_0

    if-ne v9, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2448
    :cond_1
    iget v2, v8, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    if-eq v7, v2, :cond_2

    if-ne v10, v2, :cond_3

    :cond_2
    const/4 v1, 0x0

    :cond_3
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 2454
    aput v13, v11, v12

    .line 2455
    aput v12, v11, v13

    goto :goto_0

    :cond_4
    int-to-float v0, v0

    int-to-float v1, v1

    .line 2457
    invoke-direct {p0, v0, v1, v11}, Lcom/voxel/launcher3/CellLayout;->computeDirectionVector(FF[I)V

    :goto_0
    return-void
.end method

.method private getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p6, :cond_0

    add-int v0, p1, p3

    add-int v1, p2, p4

    .line 2465
    invoke-virtual {p6, p1, p2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2467
    :cond_0
    invoke-virtual {p7}, Ljava/util/ArrayList;->clear()V

    .line 2468
    new-instance p7, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {p7, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2469
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2470
    iget-object p2, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_3

    .line 2472
    iget-object p4, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p4, p3}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    if-ne p4, p5, :cond_1

    goto :goto_1

    .line 2474
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 2475
    iget v1, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v2, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v3, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v4, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v0, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2476
    invoke-static {p7, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2477
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_2

    .line 2479
    invoke-virtual {p6, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic lambda$animateChildToPosition$1(Lcom/voxel/launcher3/CellLayout$LayoutParams;IIIILandroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1080
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p6

    int-to-float p1, p1

    mul-float p1, p1, v0

    int-to-float p2, p2

    mul-float p2, p2, p6

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 1081
    iput p1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->x:I

    int-to-float p1, p3

    mul-float v0, v0, p1

    int-to-float p1, p4

    mul-float p6, p6, p1

    add-float/2addr v0, p6

    float-to-int p1, v0

    .line 1082
    iput p1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->y:I

    .line 1083
    invoke-virtual {p5}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/InterruptibleInOutAnimator;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 262
    invoke-virtual {p1}, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 275
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlineAlphas:[F

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    aput p3, p1, p2

    .line 278
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/CellLayout;->invalidate(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private lazyInitTempRectStack()V
    .locals 3

    .line 1272
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1273
    :goto_0
    iget v1, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    mul-int v1, v1, v2

    if-ge v0, v1, :cond_0

    .line 1274
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private markCellsForRect(Landroid/graphics/Rect;[[ZZ)V
    .locals 7

    .line 1904
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    return-void
.end method

.method private markCellsForView(IIII[[ZZ)V
    .locals 3

    if-ltz p1, :cond_3

    if-gez p2, :cond_0

    goto :goto_2

    :cond_0
    move v0, p1

    :goto_0
    add-int v1, p1, p3

    if-ge v0, v1, :cond_2

    .line 3093
    iget v1, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    if-ge v0, v1, :cond_2

    move v1, p2

    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_1

    .line 3094
    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_1

    .line 3095
    aget-object v2, p5, v0

    aput-boolean p6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method private pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/voxel/launcher3/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v8, p5

    .line 1754
    new-instance v9, Lcom/voxel/launcher3/CellLayout$ViewCluster;

    move-object/from16 v1, p1

    invoke-direct {v9, v7, v1, v8}, Lcom/voxel/launcher3/CellLayout$ViewCluster;-><init>(Lcom/voxel/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)V

    .line 1755
    invoke-virtual {v9}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v10, 0x0

    .line 1762
    aget v3, p3, v10

    const/4 v11, 0x1

    if-gez v3, :cond_0

    .line 1764
    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    move v12, v2

    const/4 v13, 0x0

    goto :goto_0

    .line 1765
    :cond_0
    aget v3, p3, v10

    if-lez v3, :cond_1

    const/4 v3, 0x2

    .line 1767
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, v2

    move v12, v2

    const/4 v13, 0x2

    goto :goto_0

    .line 1768
    :cond_1
    aget v3, p3, v11

    if-gez v3, :cond_2

    .line 1770
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    move v12, v2

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    .line 1773
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v0, v2

    move v12, v2

    const/4 v13, 0x3

    :goto_0
    if-gtz v12, :cond_3

    return v10

    .line 1782
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1783
    iget-object v1, v8, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    .line 1784
    iget v1, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v2, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v3, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v4, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, v7, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    .line 1790
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->save()V

    .line 1795
    invoke-virtual {v9, v13}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->sortConfigurationForEdgePush(I)V

    const/4 v14, 0x0

    :goto_2
    if-lez v12, :cond_8

    if-nez v14, :cond_8

    .line 1798
    iget-object v0, v8, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1802
    iget-object v1, v9, Lcom/voxel/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v6, p4

    if-eq v0, v6, :cond_5

    .line 1803
    invoke-virtual {v9, v0, v13}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->isViewTouchingEdge(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1804
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 1805
    iget-boolean v1, v1, Lcom/voxel/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez v1, :cond_6

    const/4 v14, 0x1

    goto :goto_4

    .line 1810
    :cond_6
    invoke-virtual {v9, v0}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->addView(Landroid/view/View;)V

    .line 1811
    iget-object v1, v8, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    .line 1814
    iget v1, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v2, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v3, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v4, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, v7, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v12, v12, -0x1

    .line 1822
    invoke-virtual {v9, v13, v11}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->shift(II)V

    goto :goto_2

    .line 1826
    :cond_8
    invoke-virtual {v9}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v14, :cond_9

    .line 1830
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ltz v1, :cond_9

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v7, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    if-gt v1, v2, :cond_9

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_9

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v7, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    if-gt v0, v1, :cond_9

    const/4 v10, 0x1

    goto :goto_5

    .line 1834
    :cond_9
    invoke-virtual/range {p5 .. p5}, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->restore()V

    .line 1838
    :goto_5
    iget-object v0, v9, Lcom/voxel/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1839
    iget-object v1, v8, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    .line 1840
    iget v1, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v2, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v3, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    iget v4, v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, v7, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_6

    :cond_a
    return v10
.end method

.method private rearrangementExists(IIII[ILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 7

    const/4 v0, 0x0

    if-ltz p1, :cond_a

    if-gez p2, :cond_0

    goto/16 :goto_1

    .line 2009
    :cond_0
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2010
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p6, :cond_1

    .line 2014
    iget-object v1, p7, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    if-eqz v1, :cond_1

    .line 2016
    iput p1, v1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    .line 2017
    iput p2, v1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    .line 2020
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2021
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2022
    iget-object p2, p7, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-ne p3, p6, :cond_3

    goto :goto_0

    .line 2024
    :cond_3
    iget-object p4, p7, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    .line 2025
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 2026
    iget v3, p4, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v4, p4, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v5, p4, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v6, p4, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    iget v6, p4, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget p4, p4, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, p4

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2027
    invoke-static {v1, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 2028
    iget-boolean p4, v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez p4, :cond_4

    return v0

    .line 2031
    :cond_4
    iget-object p4, p0, Lcom/voxel/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2035
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/voxel/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p7, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    .line 2040
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/voxel/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v1, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/voxel/launcher3/CellLayout;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    return p2

    .line 2046
    :cond_6
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/voxel/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v1, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/voxel/launcher3/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_7

    return p2

    .line 2052
    :cond_7
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 2053
    iget-object p4, p0, Lcom/voxel/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, p5, p7}, Lcom/voxel/launcher3/CellLayout;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z

    move-result p3

    if-nez p3, :cond_8

    return v0

    :cond_9
    return p2

    :cond_a
    :goto_1
    return v0
.end method

.method public static rectToCell(II[I)[I
    .locals 7

    .line 2963
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 2964
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    .line 2965
    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    .line 2966
    iget-boolean v2, v0, Lcom/voxel/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/DeviceProfile;->getWorkspacePadding(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 2971
    iget v4, v0, Lcom/voxel/launcher3/DeviceProfile;->widthPx:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget v5, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Lcom/voxel/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result v4

    .line 2973
    iget v5, v0, Lcom/voxel/launcher3/DeviceProfile;->heightPx:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iget v1, v1, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int v1, v1

    invoke-virtual {v0, v5, v1}, Lcom/voxel/launcher3/DeviceProfile;->calculateCellHeight(II)I

    move-result v0

    .line 2975
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    float-to-double v1, p0

    .line 2978
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 2979
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x2

    .line 2982
    new-array p2, p2, [I

    aput p0, p2, v0

    aput p1, p2, v3

    return-object p2

    .line 2984
    :cond_0
    aput p0, p2, v0

    .line 2985
    aput p1, p2, v3

    return-object p2
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1280
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/voxel/launcher3/CellLayout$LayoutParams;Z)Z
    .locals 3

    .line 629
    instance-of v0, p1, Lcom/voxel/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    .line 630
    move-object v0, p1

    check-cast v0, Lcom/voxel/launcher3/BubbleTextView;

    .line 631
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/BubbleTextView;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    goto :goto_0

    .line 632
    :cond_0
    instance-of v0, p1, Lcom/voxel/launcher3/FolderIcon;

    if-eqz v0, :cond_1

    .line 633
    move-object v0, p1

    check-cast v0, Lcom/voxel/launcher3/FolderIcon;

    .line 634
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/FolderIcon;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 638
    :cond_1
    :goto_0
    iget v0, p4, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ltz v0, :cond_5

    iget v0, p4, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v1, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_5

    iget v0, p4, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    if-ltz v0, :cond_5

    iget v0, p4, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v1, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_5

    .line 641
    iget v0, p4, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    iput v0, p4, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 642
    :cond_2
    iget v0, p4, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    iput v0, p4, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 644
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 646
    iget-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p3, p1, p2, p4}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_4

    .line 648
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_4
    return v2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .locals 14

    move-object v0, p0

    move-object v8, p1

    move/from16 v1, p2

    move/from16 v2, p3

    .line 1031
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 1032
    iget-object v4, v0, Lcom/voxel/launcher3/CellLayout;->mOccupied:[[Z

    if-nez p6, :cond_0

    .line 1034
    iget-object v4, v0, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    .line 1037
    :cond_0
    invoke-virtual {v3, p1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_5

    .line 1038
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 1039
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/ItemInfo;

    .line 1042
    iget-object v6, v0, Lcom/voxel/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1043
    iget-object v6, v0, Lcom/voxel/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    .line 1044
    iget-object v6, v0, Lcom/voxel/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    :cond_1
    iget v6, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->x:I

    .line 1048
    iget v10, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->y:I

    const/4 v11, 0x1

    if-eqz p7, :cond_2

    .line 1050
    iget v12, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    aget-object v12, v4, v12

    iget v13, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    aput-boolean v7, v12, v13

    .line 1051
    aget-object v4, v4, v1

    aput-boolean v11, v4, v2

    .line 1053
    :cond_2
    iput-boolean v11, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz p6, :cond_3

    .line 1055
    iput v1, v5, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iput v1, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 1056
    iput v2, v5, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iput v2, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    goto :goto_0

    .line 1058
    :cond_3
    iput v1, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 1059
    iput v2, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 1061
    :goto_0
    invoke-virtual {v3, v9}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setupLp(Lcom/voxel/launcher3/CellLayout$LayoutParams;)V

    .line 1062
    iput-boolean v7, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1063
    iget v4, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->x:I

    .line 1064
    iget v7, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->y:I

    .line 1066
    iput v6, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->x:I

    .line 1067
    iput v10, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->y:I

    if-ne v6, v4, :cond_4

    if-ne v10, v7, :cond_4

    .line 1071
    iput-boolean v11, v9, Lcom/voxel/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    return v11

    :cond_4
    const/4 v1, 0x2

    .line 1075
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v1}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v12

    move/from16 v1, p4

    int-to-long v1, v1

    .line 1076
    invoke-virtual {v12, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1077
    iget-object v1, v0, Lcom/voxel/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v1, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    new-instance v13, Lcom/voxel/launcher3/-$$Lambda$CellLayout$hnHdFOaBIEV6irgG0Wg60QrFdvA;

    move-object v1, v13

    move-object v2, v9

    move v3, v6

    move v5, v10

    move v6, v7

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/voxel/launcher3/-$$Lambda$CellLayout$hnHdFOaBIEV6irgG0Wg60QrFdvA;-><init>(Lcom/voxel/launcher3/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1085
    new-instance v1, Lcom/voxel/launcher3/CellLayout$2;

    invoke-direct {v1, p0, v9, p1}, Lcom/voxel/launcher3/CellLayout$2;-><init>(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/CellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v12, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move/from16 v1, p5

    int-to-long v1, v1

    .line 1103
    invoke-virtual {v12, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1104
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    return v11

    :cond_5
    return v7

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public buildHardwareLayer()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->buildLayer()V

    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .line 602
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 605
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 607
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 608
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method cellToCenterPoint(II[I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 773
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    return-void
.end method

.method cellToPoint(II[I)V
    .locals 4

    .line 758
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 759
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 761
    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    add-int/2addr v2, v3

    mul-int p1, p1, v2

    add-int/2addr v0, p1

    const/4 p1, 0x0

    aput v0, p3, p1

    .line 762
    iget p1, p0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mHeightGap:I

    add-int/2addr p1, v0

    mul-int p2, p2, p1

    add-int/2addr v1, p2

    const/4 p1, 0x1

    aput v1, p3, p1

    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/Rect;)V
    .locals 7

    .line 2937
    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    .line 2938
    iget v1, p0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    .line 2939
    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    .line 2940
    iget v3, p0, Lcom/voxel/launcher3/CellLayout;->mHeightGap:I

    .line 2942
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingLeft()I

    move-result v4

    .line 2943
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingTop()I

    move-result v5

    mul-int v6, p3, v0

    add-int/lit8 p3, p3, -0x1

    mul-int p3, p3, v2

    add-int/2addr v6, p3

    mul-int p3, p4, v1

    add-int/lit8 p4, p4, -0x1

    mul-int p4, p4, v3

    add-int/2addr p3, p4

    add-int/2addr v0, v2

    mul-int p1, p1, v0

    add-int/2addr v4, p1

    add-int/2addr v1, v3

    mul-int p2, p2, v1

    add-int/2addr v5, p2

    add-int/2addr v6, v4

    add-int/2addr p3, v5

    .line 2951
    invoke-virtual {p5, v4, v5, v6, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 3125
    instance-of p1, p1, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    return p1
.end method

.method public clearDragOutlines()V
    .locals 3

    .line 1205
    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1206
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 1207
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mDragCell:[I

    const/4 v1, 0x1

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    return-void
.end method

.method createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v13, p7

    const/4 v0, 0x2

    .line 2513
    new-array v6, v0, [I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v6

    .line 2514
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    const/4 v14, 0x0

    .line 2517
    aget v1, v6, v14

    const/4 v15, 0x1

    aget v2, v6, v15

    new-instance v10, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

    const/4 v0, 0x0

    invoke-direct {v10, v11, v0}, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/CellLayout$1;)V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v10}, Lcom/voxel/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/voxel/launcher3/CellLayout$ItemConfiguration;)Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    .line 2520
    invoke-virtual {v11, v15}, Lcom/voxel/launcher3/CellLayout;->setUseTempCoords(Z)V

    if-eqz v0, :cond_1

    .line 2521
    iget-boolean v1, v0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v1, :cond_1

    .line 2525
    invoke-direct {v11, v0, v12}, Lcom/voxel/launcher3/CellLayout;->copySolutionToTempState(Lcom/voxel/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2526
    invoke-virtual {v11, v15}, Lcom/voxel/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 2527
    invoke-direct {v11, v0, v12, v13}, Lcom/voxel/launcher3/CellLayout;->animateItemsToSolution(Lcom/voxel/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    if-eqz v13, :cond_0

    .line 2530
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/CellLayout;->commitTempPlacement()V

    .line 2531
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2532
    invoke-virtual {v11, v14}, Lcom/voxel/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x96

    .line 2534
    invoke-direct {v11, v0, v12, v1, v15}, Lcom/voxel/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/voxel/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    .line 2537
    :goto_0
    iget-object v1, v11, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2539
    :cond_1
    iget-boolean v0, v0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return v0
.end method

.method disableBackground()V
    .locals 1

    const/4 v0, 0x0

    .line 394
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mDrawBackground:Z

    return-void
.end method

.method disableDragTarget()V
    .locals 1

    const/4 v0, 0x0

    .line 398
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mIsDragTarget:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 554
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public enableHardwareLayer(Z)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v1, Lcom/voxel/launcher3/CellLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method findCellForSpan([III)Z
    .locals 8

    .line 2786
    iget-object v7, p0, Lcom/voxel/launcher3/CellLayout;->mOccupied:[[Z

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/voxel/launcher3/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z

    move-result p1

    return p1
.end method

.method findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    .line 2826
    invoke-virtual {v0, v3, v4}, Lcom/voxel/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    const/4 v6, 0x0

    move/from16 v7, p4

    move/from16 v8, p5

    const/4 v9, 0x0

    :goto_0
    if-ltz v7, :cond_0

    add-int/lit8 v10, v1, -0x1

    sub-int v10, v7, v10

    .line 2832
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    .line 2834
    :goto_1
    iget v11, v0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    add-int/lit8 v12, v1, -0x1

    sub-int/2addr v11, v12

    const/4 v13, 0x1

    if-ltz v7, :cond_2

    add-int/2addr v12, v7

    if-ne v1, v13, :cond_1

    const/4 v14, 0x1

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    :goto_2
    add-int/2addr v12, v14

    .line 2836
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    :cond_2
    if-ltz v8, :cond_3

    add-int/lit8 v12, v2, -0x1

    sub-int v12, v8, v12

    .line 2840
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 2842
    :goto_3
    iget v14, v0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    add-int/lit8 v15, v2, -0x1

    sub-int/2addr v14, v15

    if-ltz v8, :cond_5

    add-int/2addr v15, v8

    if-ne v2, v13, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    :goto_4
    add-int v15, v15, v16

    .line 2844
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    :cond_5
    :goto_5
    if-ge v12, v14, :cond_b

    if-nez v9, :cond_b

    move v15, v10

    :goto_6
    if-ge v15, v11, :cond_a

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v1, :cond_8

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v2, :cond_7

    add-int v17, v15, v5

    .line 2852
    aget-object v18, v4, v17

    add-int v19, v12, v13

    aget-boolean v18, v18, v19

    if-eqz v18, :cond_6

    add-int/lit8 v15, v17, 0x1

    const/4 v13, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    const/4 v13, 0x1

    goto :goto_7

    :cond_8
    if-eqz p1, :cond_9

    .line 2861
    aput v15, p1, v6

    const/4 v5, 0x1

    .line 2862
    aput v12, p1, v5

    goto :goto_9

    :cond_9
    const/4 v5, 0x1

    :goto_9
    const/4 v9, 0x1

    goto :goto_a

    :cond_a
    const/4 v5, 0x1

    :goto_a
    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    goto :goto_5

    :cond_b
    const/4 v5, -0x1

    if-ne v7, v5, :cond_c

    if-ne v8, v5, :cond_c

    .line 2880
    invoke-virtual {v0, v3, v4}, Lcom/voxel/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    return v9

    :cond_c
    const/4 v7, -0x1

    const/4 v8, -0x1

    goto :goto_0
.end method

.method findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Lcom/voxel/launcher3/CellLayout$ItemConfiguration;
    .locals 13

    move-object/from16 v0, p8

    const/4 v1, 0x2

    .line 2394
    new-array v12, v1, [I

    .line 2395
    new-array v1, v1, [I

    const/4 v9, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object v10, v12

    move-object v11, v1

    .line 2396
    invoke-virtual/range {v2 .. v11}, Lcom/voxel/launcher3/CellLayout;->findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I

    const/4 v2, 0x0

    .line 2398
    aget v3, v12, v2

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    aget v4, v12, v3

    if-ltz v4, :cond_0

    move-object v4, p0

    .line 2399
    invoke-direct {p0, v0, v2}, Lcom/voxel/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/voxel/launcher3/CellLayout$ItemConfiguration;Z)V

    .line 2400
    aget v5, v12, v2

    iput v5, v0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewX:I

    .line 2401
    aget v5, v12, v3

    iput v5, v0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewY:I

    .line 2402
    aget v2, v1, v2

    iput v2, v0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2403
    aget v1, v1, v3

    iput v1, v0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewSpanY:I

    .line 2404
    iput-boolean v3, v0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0

    :cond_0
    move-object v4, p0

    .line 2406
    iput-boolean v2, v0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    :goto_0
    return-object v0
.end method

.method findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p11

    .line 1304
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/CellLayout;->lazyInitTempRectStack()V

    .line 1306
    invoke-virtual {v0, v5, v6}, Lcom/voxel/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    move/from16 v7, p1

    int-to-float v7, v7

    .line 1311
    iget v8, v0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    iget v9, v0, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    add-int/2addr v8, v9

    add-int/lit8 v9, v3, -0x1

    mul-int v8, v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v7, v7

    move/from16 v8, p2

    int-to-float v8, v8

    .line 1312
    iget v10, v0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    iget v11, v0, Lcom/voxel/launcher3/CellLayout;->mHeightGap:I

    add-int/2addr v10, v11

    add-int/lit8 v11, v4, -0x1

    mul-int v10, v10, v11

    int-to-float v10, v10

    div-float/2addr v10, v9

    sub-float/2addr v8, v10

    float-to-int v8, v8

    if-eqz p9, :cond_0

    move-object/from16 v9, p9

    goto :goto_0

    :cond_0
    const/4 v9, 0x2

    .line 1315
    new-array v9, v9, [I

    .line 1317
    :goto_0
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v11, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1318
    new-instance v12, Ljava/util/Stack;

    invoke-direct {v12}, Ljava/util/Stack;-><init>()V

    .line 1320
    iget v13, v0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    .line 1321
    iget v14, v0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    if-lez v1, :cond_1f

    if-lez v2, :cond_1f

    if-lez v3, :cond_1f

    if-lez v4, :cond_1f

    if-lt v3, v1, :cond_1f

    if-ge v4, v2, :cond_1

    goto/16 :goto_13

    :cond_1
    const/16 v17, 0x0

    const/4 v11, 0x0

    const-wide v18, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_1
    add-int/lit8 v20, v2, -0x1

    sub-int v15, v14, v20

    const/16 v16, 0x1

    if-ge v11, v15, :cond_1d

    const/4 v15, 0x0

    :goto_2
    add-int/lit8 v20, v1, -0x1

    sub-int v5, v13, v20

    if-ge v15, v5, :cond_1c

    if-eqz p8, :cond_15

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_4

    move-object/from16 p2, v9

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v2, :cond_3

    add-int v20, v15, v5

    .line 1337
    aget-object v20, v6, v20

    add-int v21, v11, v9

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2

    move/from16 v22, v8

    move-object v5, v10

    move v10, v13

    move/from16 v20, v14

    goto/16 :goto_12

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, p2

    goto :goto_3

    :cond_4
    move-object/from16 p2, v9

    if-lt v1, v3, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-lt v2, v4, :cond_6

    const/4 v9, 0x1

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    const/16 v20, 0x1

    :goto_7
    if-eqz v5, :cond_8

    if-nez v9, :cond_7

    goto :goto_8

    :cond_7
    move/from16 v22, v8

    move-object/from16 p9, v10

    goto/16 :goto_e

    :cond_8
    :goto_8
    if-eqz v20, :cond_d

    if-nez v5, :cond_d

    move/from16 v21, v5

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v2, :cond_b

    move-object/from16 p9, v10

    add-int v10, v15, v1

    move/from16 v22, v8

    add-int/lit8 v8, v13, -0x1

    if-gt v10, v8, :cond_9

    .line 1354
    aget-object v8, v6, v10

    add-int v10, v11, v5

    aget-boolean v8, v8, v10

    if-eqz v8, :cond_a

    :cond_9
    const/16 v21, 0x1

    :cond_a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v10, p9

    move/from16 v8, v22

    goto :goto_9

    :cond_b
    move/from16 v22, v8

    move-object/from16 p9, v10

    if-nez v21, :cond_c

    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v21

    goto :goto_b

    :cond_c
    move/from16 v5, v21

    goto :goto_b

    :cond_d
    move/from16 v22, v8

    move-object/from16 p9, v10

    if-nez v9, :cond_12

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v1, :cond_10

    add-int v10, v11, v2

    move/from16 v21, v1

    add-int/lit8 v1, v14, -0x1

    if-gt v10, v1, :cond_e

    add-int v1, v15, v8

    .line 1364
    aget-object v1, v6, v1

    aget-boolean v1, v1, v10

    if-eqz v1, :cond_f

    :cond_e
    const/4 v9, 0x1

    :cond_f
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v21

    goto :goto_a

    :cond_10
    move/from16 v21, v1

    if-nez v9, :cond_11

    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v21

    goto :goto_b

    :cond_11
    move/from16 v1, v21

    goto :goto_b

    :cond_12
    move/from16 v21, v1

    :goto_b
    if-lt v1, v3, :cond_13

    const/4 v8, 0x1

    goto :goto_c

    :cond_13
    const/4 v8, 0x0

    :goto_c
    or-int/2addr v5, v8

    if-lt v2, v4, :cond_14

    const/4 v8, 0x1

    goto :goto_d

    :cond_14
    const/4 v8, 0x0

    :goto_d
    or-int/2addr v9, v8

    xor-int/lit8 v20, v20, 0x1

    move-object/from16 v10, p9

    move/from16 v8, v22

    goto :goto_7

    :cond_15
    move/from16 v22, v8

    move-object/from16 p2, v9

    move-object/from16 p9, v10

    const/4 v1, -0x1

    const/4 v2, -0x1

    .line 1381
    :goto_e
    iget-object v5, v0, Lcom/voxel/launcher3/CellLayout;->mTmpXY:[I

    .line 1382
    invoke-virtual {v0, v15, v11, v5}, Lcom/voxel/launcher3/CellLayout;->cellToCenterPoint(II[I)V

    .line 1387
    iget-object v8, v0, Lcom/voxel/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    add-int v9, v15, v1

    add-int v10, v11, v2

    .line 1388
    invoke-virtual {v8, v15, v11, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1390
    invoke-virtual {v12}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 1391
    invoke-virtual {v10, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v9, 0x1

    goto :goto_f

    :cond_17
    const/4 v9, 0x0

    .line 1396
    :goto_f
    invoke-virtual {v12, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    aget v10, v5, v17

    sub-int/2addr v10, v7

    int-to-double v3, v10

    move v10, v13

    move/from16 v20, v14

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    aget v5, v5, v16

    sub-int v5, v5, v22

    int-to-double v5, v5

    .line 1398
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 1397
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    cmpg-double v5, v3, v18

    if-gtz v5, :cond_19

    if-eqz v9, :cond_18

    goto :goto_10

    :cond_18
    move-object/from16 v5, p9

    goto :goto_11

    :cond_19
    :goto_10
    move-object/from16 v5, p9

    .line 1401
    invoke-virtual {v8, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1403
    :goto_11
    aput v15, p2, v17

    .line 1404
    aput v11, p2, v16

    if-eqz p10, :cond_1a

    .line 1406
    aput v1, p10, v17

    .line 1407
    aput v2, p10, v16

    .line 1409
    :cond_1a
    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-wide/from16 v18, v3

    :cond_1b
    :goto_12
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, p2

    move v13, v10

    move/from16 v14, v20

    move/from16 v8, v22

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p11

    move-object v10, v5

    move-object/from16 v5, p7

    goto/16 :goto_2

    :cond_1c
    move/from16 v22, v8

    move-object/from16 p2, v9

    move-object v5, v10

    move v10, v13

    move/from16 v20, v14

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p11

    move-object v10, v5

    move-object/from16 v5, p7

    goto/16 :goto_1

    :cond_1d
    move-object v1, v5

    move-object v2, v6

    move-object/from16 p2, v9

    .line 1414
    invoke-virtual {v0, v1, v2}, Lcom/voxel/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v3, v18, v1

    if-nez v3, :cond_1e

    const/4 v1, -0x1

    .line 1418
    aput v1, p2, v17

    .line 1419
    aput v1, p2, v16

    .line 1421
    :cond_1e
    invoke-direct {v0, v12}, Lcom/voxel/launcher3/CellLayout;->recycleTempRects(Ljava/util/Stack;)V

    return-object p2

    :cond_1f
    :goto_13
    move-object/from16 p2, v9

    return-object p2
.end method

.method findNearestArea(IIIILandroid/view/View;Z[I)[I
    .locals 13

    move-object v12, p0

    .line 1265
    iget-object v11, v12, Lcom/voxel/launcher3/CellLayout;->mOccupied:[[Z

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v11}, Lcom/voxel/launcher3/CellLayout;->findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestArea(IIII[I)[I
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    .line 2766
    invoke-virtual/range {v0 .. v7}, Lcom/voxel/launcher3/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object p1

    return-object p1
.end method

.method findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I
    .locals 13

    move-object v12, p0

    .line 2748
    iget-object v11, v12, Lcom/voxel/launcher3/CellLayout;->mOccupied:[[Z

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v11}, Lcom/voxel/launcher3/CellLayout;->findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIIII[I[I)[I
    .locals 10

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 1245
    invoke-virtual/range {v0 .. v9}, Lcom/voxel/launcher3/CellLayout;->findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIILandroid/view/View;[I)[I
    .locals 8

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 2728
    invoke-virtual/range {v0 .. v7}, Lcom/voxel/launcher3/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object p1

    return-object p1
.end method

.method findNearestVacantArea(IIII[I)[I
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 1225
    invoke-virtual/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object p1

    return-object p1
.end method

.method findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/voxel/launcher3/CellLayout$ItemConfiguration;)Lcom/voxel/launcher3/CellLayout$ItemConfiguration;
    .locals 16

    move-object/from16 v11, p0

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v12, p10

    const/4 v13, 0x0

    .line 2089
    invoke-direct {v11, v12, v13}, Lcom/voxel/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/voxel/launcher3/CellLayout$ItemConfiguration;Z)V

    .line 2092
    iget-object v0, v11, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    invoke-direct {v11, v0}, Lcom/voxel/launcher3/CellLayout;->copyOccupiedArray([[Z)V

    const/4 v0, 0x2

    .line 2096
    new-array v5, v0, [I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    .line 2097
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v14

    .line 2102
    aget v1, v14, v13

    const/4 v15, 0x1

    aget v2, v14, v15

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/voxel/launcher3/CellLayout;->rearrangementExists(IIII[ILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-nez v0, :cond_3

    move/from16 v3, p3

    if-le v9, v3, :cond_1

    if-eq v8, v10, :cond_0

    if-eqz p9, :cond_1

    :cond_0
    add-int/lit8 v5, v9, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    .line 2109
    invoke-virtual/range {v0 .. v10}, Lcom/voxel/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/voxel/launcher3/CellLayout$ItemConfiguration;)Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    return-object v0

    :cond_1
    if-le v10, v8, :cond_2

    add-int/lit8 v6, v10, -0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move v9, v10

    move-object/from16 v10, p10

    .line 2112
    invoke-virtual/range {v0 .. v10}, Lcom/voxel/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/voxel/launcher3/CellLayout$ItemConfiguration;)Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    return-object v0

    .line 2115
    :cond_2
    iput-boolean v13, v12, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0

    .line 2117
    :cond_3
    iput-boolean v15, v12, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2118
    aget v0, v14, v13

    iput v0, v12, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewX:I

    .line 2119
    aget v0, v14, v15

    iput v0, v12, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewY:I

    .line 2120
    iput v9, v12, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2121
    iput v10, v12, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewSpanY:I

    :goto_0
    return-object v12
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 3120
    new-instance v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/voxel/launcher3/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3130
    new-instance v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/voxel/launcher3/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .line 995
    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundAlphaMultiplier()F
    .locals 1

    .line 1007
    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mBackgroundAlphaMultiplier:F

    return v0
.end method

.method public getCellHeight()I
    .locals 1

    .line 850
    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellParams()Lcom/voxel/launcher3/CellParams;
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mCellParams:Lcom/voxel/launcher3/CellParams;

    return-object v0
.end method

.method public getCellWidth()I
    .locals 1

    .line 846
    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildrenScale()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getCountX()I
    .locals 1

    .line 617
    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    return v0
.end method

.method public getCountY()I
    .locals 1

    .line 621
    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 3

    .line 3106
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    mul-int v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 3107
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mHeightGap:I

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    .line 3101
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    mul-int v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 3102
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    return-object v0
.end method

.method public getDistanceFromCell(FF[I)F
    .locals 5

    const/4 v0, 0x0

    .line 809
    aget v1, p3, v0

    const/4 v2, 0x1

    aget p3, p3, v2

    iget-object v3, p0, Lcom/voxel/launcher3/CellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v1, p3, v3}, Lcom/voxel/launcher3/CellLayout;->cellToCenterPoint(II[I)V

    .line 810
    iget-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mTmpPoint:[I

    aget p3, p3, v0

    int-to-float p3, p3

    sub-float/2addr p1, p3

    float-to-double v0, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mTmpPoint:[I

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    .line 811
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    .line 810
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public getHeightGap()I
    .locals 1

    .line 858
    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mHeightGap:I

    return v0
.end method

.method public getIsDragOverlapping()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    return-object v0
.end method

.method public getWidthGap()I
    .locals 1

    .line 854
    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    return v0
.end method

.method public hideFolderAccept(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;)V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 568
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->invalidate()V

    return-void
.end method

.method public isDragTarget()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mIsDragTarget:Z

    return v0
.end method

.method public isDropPending()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mDropPending:Z

    return v0
.end method

.method isItemPlacementDirty()Z
    .locals 1

    .line 2650
    iget-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mItemPlacementDirty:Z

    return v0
.end method

.method isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 2487
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 2488
    aget v1, p1, p2

    const/4 p2, 0x1

    aget v2, p1, p2

    iget-object v7, p0, Lcom/voxel/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/voxel/launcher3/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2490
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p2

    return p1
.end method

.method public isOccupied(II)Z
    .locals 1

    .line 3111
    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    .line 3112
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mOccupied:[[Z

    aget-object p1, v0, p1

    aget-boolean p1, p1, p2

    return p1

    .line 3114
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Position exceeds the bound of this CellLayout"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .line 3335
    iget-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 1

    .line 3071
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mOccupied:[[Z

    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    return-void
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;[[Z)V
    .locals 7

    if-eqz p1, :cond_1

    .line 3075
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3076
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 3077
    iget v1, p1, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v2, p1, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v3, p1, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, p1, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 1

    .line 3081
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mOccupied:[[Z

    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V
    .locals 7

    if-eqz p1, :cond_1

    .line 3085
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3086
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 3087
    iget v1, p1, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v2, p1, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v3, p1, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, p1, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout;->markCellsForView(IIII[[ZZ)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method onDragEnter()V
    .locals 1

    const/4 v0, 0x1

    .line 2890
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mDragging:Z

    return-void
.end method

.method onDragExit()V
    .locals 4

    .line 2900
    iget-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2901
    iput-boolean v1, p0, Lcom/voxel/launcher3/CellLayout;->mDragging:Z

    .line 2905
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mDragCell:[I

    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, v0, v3

    aput v2, v0, v1

    .line 2906
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 2907
    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlineCurrent:I

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 2908
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->revertTempState()V

    .line 2909
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 443
    iget-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mDrawBackground:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mBackgroundAlpha:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 446
    iget-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mUseActiveGlowBackground:Z

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 449
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mNormalBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 452
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 455
    :goto_0
    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mBackgroundAlpha:F

    iget v3, p0, Lcom/voxel/launcher3/CellLayout;->mBackgroundAlphaMultiplier:F

    mul-float v2, v2, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 456
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 457
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 461
    :goto_1
    iget-object v4, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 462
    iget-object v5, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlineAlphas:[F

    aget v5, v5, v3

    cmpl-float v6, v5, v1

    if-lez v6, :cond_2

    .line 464
    aget-object v4, v4, v3

    .line 465
    iget-object v6, p0, Lcom/voxel/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 466
    iget-object v4, p0, Lcom/voxel/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getChildrenScale()F

    move-result v6

    invoke-static {v4, v6}, Lcom/voxel/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 467
    iget-object v4, p0, Lcom/voxel/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 468
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v5, 0x0

    .line 469
    iget-object v6, p0, Lcom/voxel/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 490
    :cond_3
    sget v0, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 492
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    const/4 v1, 0x0

    .line 494
    :goto_2
    iget-object v3, p0, Lcom/voxel/launcher3/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_5

    .line 495
    iget-object v3, p0, Lcom/voxel/launcher3/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    .line 499
    iget v5, v3, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mCellX:I

    iget v6, v3, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mCellY:I

    iget-object v7, p0, Lcom/voxel/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v5, v6, v7}, Lcom/voxel/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 500
    iget v5, v3, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mCellX:I

    iget v6, v3, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->mCellY:I

    invoke-virtual {p0, v5, v6}, Lcom/voxel/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 503
    iget-object v6, p0, Lcom/voxel/launcher3/CellLayout;->mTempLocation:[I

    aget v7, v6, v2

    iget v8, p0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    .line 504
    aget v4, v6, v4

    div-int/lit8 v6, v0, 0x2

    add-int/2addr v4, v6

    .line 505
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 509
    sget-object v5, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 510
    invoke-virtual {v3}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->getOuterRingSize()F

    move-result v6

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getChildrenScale()F

    move-result v8

    mul-float v6, v6, v8

    float-to-int v6, v6

    .line 512
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 513
    div-int/lit8 v8, v6, 0x2

    sub-int v9, v7, v8

    int-to-float v9, v9

    sub-int v8, v4, v8

    int-to-float v8, v8

    invoke-virtual {p1, v9, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 514
    invoke-virtual {v5, v2, v2, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 515
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 516
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 520
    sget-object v5, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 521
    invoke-virtual {v3}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->getInnerRingSize()F

    move-result v3

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getChildrenScale()F

    move-result v6

    mul-float v3, v3, v6

    float-to-int v3, v3

    .line 523
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 524
    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v7, v6

    int-to-float v7, v7

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 525
    invoke-virtual {v5, v2, v2, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 526
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 527
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 531
    :cond_5
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    aget v3, v1, v2

    if-ltz v3, :cond_6

    aget v1, v1, v4

    if-ltz v1, :cond_6

    .line 532
    sget-object v1, Lcom/voxel/launcher3/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    .line 533
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 534
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 536
    iget-object v6, p0, Lcom/voxel/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    aget v7, v6, v2

    aget v6, v6, v4

    iget-object v8, p0, Lcom/voxel/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v7, v6, v8}, Lcom/voxel/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 537
    iget-object v6, p0, Lcom/voxel/launcher3/CellLayout;->mFolderLeaveBehindCell:[I

    aget v7, v6, v2

    aget v6, v6, v4

    invoke-virtual {p0, v7, v6}, Lcom/voxel/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 539
    iget-object v7, p0, Lcom/voxel/launcher3/CellLayout;->mTempLocation:[I

    aget v8, v7, v2

    iget v9, p0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 540
    aget v4, v7, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    .line 541
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v4, v0

    .line 543
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 544
    div-int/lit8 v0, v3, 0x2

    sub-int/2addr v8, v0

    int-to-float v6, v8

    sub-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 545
    invoke-virtual {v1, v2, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 546
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 547
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2921
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    const/4 v1, 0x1

    .line 2922
    iput-boolean v1, v0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->dropped:Z

    .line 2923
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 958
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    iget v1, p0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    mul-int v0, v0, v1

    sub-int/2addr p1, v0

    .line 960
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    add-int/2addr v0, p1

    .line 961
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingTop()I

    move-result p1

    .line 962
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 964
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v4, v0, p4

    sub-int/2addr v4, p2

    add-int v5, p1, p5

    sub-int/2addr v5, p3

    .line 965
    invoke-virtual {v3, v0, p1, v4, v5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 892
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/CellLayout;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v1

    .line 894
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 895
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 896
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 897
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 898
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v6, v4, v6

    .line 899
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v5, v7

    .line 900
    iget v8, v0, Lcom/voxel/launcher3/CellLayout;->mFixedCellWidth:I

    if-ltz v8, :cond_0

    iget v8, v0, Lcom/voxel/launcher3/CellLayout;->mFixedCellHeight:I

    if-gez v8, :cond_2

    .line 901
    :cond_0
    iget v8, v0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    invoke-virtual {v1, v6, v8}, Lcom/voxel/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result v8

    .line 902
    iget v9, v0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    invoke-virtual {v1, v7, v9}, Lcom/voxel/launcher3/DeviceProfile;->calculateCellHeight(II)I

    move-result v1

    .line 903
    iget v9, v0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    if-ne v8, v9, :cond_1

    iget v9, v0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    if-eq v1, v9, :cond_2

    .line 904
    :cond_1
    iput v8, v0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    .line 905
    iput v1, v0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    .line 906
    iget-object v10, v0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    iget v11, v0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    iget v12, v0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    iget v13, v0, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    iget v14, v0, Lcom/voxel/launcher3/CellLayout;->mHeightGap:I

    iget v15, v0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    iget v1, v0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    move/from16 v16, v1

    invoke-virtual/range {v10 .. v16}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 913
    :cond_2
    iget v1, v0, Lcom/voxel/launcher3/CellLayout;->mFixedWidth:I

    if-lez v1, :cond_3

    iget v8, v0, Lcom/voxel/launcher3/CellLayout;->mFixedHeight:I

    if-lez v8, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    move v1, v6

    move v8, v7

    .line 920
    :goto_0
    iget v2, v0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    add-int/lit8 v2, v2, -0x1

    .line 921
    iget v3, v0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    add-int/lit8 v3, v3, -0x1

    .line 923
    iget v9, v0, Lcom/voxel/launcher3/CellLayout;->mOriginalWidthGap:I

    const/4 v10, 0x0

    if-ltz v9, :cond_5

    iget v11, v0, Lcom/voxel/launcher3/CellLayout;->mOriginalHeightGap:I

    if-gez v11, :cond_4

    goto :goto_1

    .line 933
    :cond_4
    iput v9, v0, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    .line 934
    iput v11, v0, Lcom/voxel/launcher3/CellLayout;->mHeightGap:I

    goto :goto_4

    .line 926
    :cond_5
    :goto_1
    iget v9, v0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    iget v11, v0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    mul-int v9, v9, v11

    sub-int/2addr v6, v9

    .line 927
    iget v9, v0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    iget v11, v0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    mul-int v9, v9, v11

    sub-int/2addr v7, v9

    .line 928
    iget v9, v0, Lcom/voxel/launcher3/CellLayout;->mMaxGap:I

    if-lez v2, :cond_6

    div-int v2, v6, v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    .line 929
    iget v2, v0, Lcom/voxel/launcher3/CellLayout;->mMaxGap:I

    if-lez v3, :cond_7

    div-int v3, v7, v3

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/voxel/launcher3/CellLayout;->mHeightGap:I

    .line 930
    iget-object v11, v0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    iget v12, v0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    iget v13, v0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    iget v14, v0, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    iget v15, v0, Lcom/voxel/launcher3/CellLayout;->mHeightGap:I

    iget v2, v0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    iget v3, v0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-virtual/range {v11 .. v17}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 936
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/CellLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_5
    if-ge v10, v2, :cond_8

    .line 940
    invoke-virtual {v0, v10}, Lcom/voxel/launcher3/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/high16 v9, 0x40000000    # 2.0f

    .line 941
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 943
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 945
    invoke-virtual {v7, v11, v9}, Landroid/view/View;->measure(II)V

    .line 946
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 947
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 949
    :cond_8
    iget v1, v0, Lcom/voxel/launcher3/CellLayout;->mFixedWidth:I

    if-lez v1, :cond_9

    iget v1, v0, Lcom/voxel/launcher3/CellLayout;->mFixedHeight:I

    if-lez v1, :cond_9

    .line 950
    invoke-virtual {v0, v3, v6}, Lcom/voxel/launcher3/CellLayout;->setMeasuredDimension(II)V

    goto :goto_6

    .line 952
    :cond_9
    invoke-virtual {v0, v4, v5}, Lcom/voxel/launcher3/CellLayout;->setMeasuredDimension(II)V

    :goto_6
    return-void

    .line 917
    :cond_a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 973
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 976
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 977
    iget-object p4, p0, Lcom/voxel/launcher3/CellLayout;->mNormalBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p4, p3}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 978
    iget-object p4, p0, Lcom/voxel/launcher3/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v0, p3, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p1

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p3, p2

    invoke-virtual {p4, v0, v1, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 980
    iget-object p3, p0, Lcom/voxel/launcher3/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    iget p4, p0, Lcom/voxel/launcher3/CellLayout;->mForegroundPadding:I

    sub-int/2addr p1, p4

    sub-int/2addr p2, p4

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method performReorder(IIIIIILandroid/view/View;[I[II)[I
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v12, p7

    move/from16 v13, p10

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p8

    .line 2545
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v14

    const/4 v15, 0x2

    if-nez p9, :cond_0

    .line 2548
    new-array v0, v15, [I

    move-object/from16 v16, v0

    goto :goto_0

    :cond_0
    move-object/from16 v16, p9

    :goto_0
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eq v13, v15, :cond_1

    if-eq v13, v10, :cond_1

    const/4 v0, 0x4

    if-ne v13, v0, :cond_3

    .line 2554
    :cond_1
    iget-object v0, v11, Lcom/voxel/launcher3/CellLayout;->mPreviousReorderDirection:[I

    aget v1, v0, v8

    const/16 v2, -0x64

    if-eq v1, v2, :cond_3

    .line 2556
    iget-object v1, v11, Lcom/voxel/launcher3/CellLayout;->mDirectionVector:[I

    aget v3, v0, v8

    aput v3, v1, v8

    .line 2557
    aget v0, v0, v9

    aput v0, v1, v9

    if-eq v13, v15, :cond_2

    if-ne v13, v10, :cond_4

    .line 2560
    :cond_2
    iget-object v0, v11, Lcom/voxel/launcher3/CellLayout;->mPreviousReorderDirection:[I

    aput v2, v0, v8

    .line 2561
    aput v2, v0, v9

    goto :goto_1

    .line 2564
    :cond_3
    iget-object v6, v11, Lcom/voxel/launcher3/CellLayout;->mDirectionVector:[I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/voxel/launcher3/CellLayout;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    .line 2565
    iget-object v0, v11, Lcom/voxel/launcher3/CellLayout;->mPreviousReorderDirection:[I

    iget-object v1, v11, Lcom/voxel/launcher3/CellLayout;->mDirectionVector:[I

    aget v2, v1, v8

    aput v2, v0, v8

    .line 2566
    aget v1, v1, v9

    aput v1, v0, v9

    .line 2570
    :cond_4
    :goto_1
    iget-object v7, v11, Lcom/voxel/launcher3/CellLayout;->mDirectionVector:[I

    const/16 v17, 0x1

    new-instance v6, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

    const/4 v5, 0x0

    invoke-direct {v6, v11, v5}, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/CellLayout$1;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v15, v5

    move/from16 v5, p5

    move-object/from16 v18, v6

    move/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, v17

    move-object/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, Lcom/voxel/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/voxel/launcher3/CellLayout$ItemConfiguration;)Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

    move-result-object v9

    .line 2574
    new-instance v8, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v8, v11, v15}, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/CellLayout$1;)V

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/voxel/launcher3/CellLayout;->findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

    move-result-object v5

    .line 2581
    iget-boolean v0, v9, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_5

    invoke-virtual {v9}, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->area()I

    move-result v0

    invoke-virtual {v5}, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->area()I

    move-result v1

    if-lt v0, v1, :cond_5

    move-object v5, v9

    goto :goto_2

    .line 2583
    :cond_5
    iget-boolean v0, v5, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move-object v5, v15

    :goto_2
    const/4 v0, -0x1

    if-nez v13, :cond_8

    if-eqz v5, :cond_7

    const/4 v1, 0x0

    .line 2589
    invoke-direct {v11, v5, v12, v1, v1}, Lcom/voxel/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/voxel/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    .line 2591
    iget v0, v5, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewX:I

    aput v0, v14, v1

    .line 2592
    iget v0, v5, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewY:I

    const/4 v2, 0x1

    aput v0, v14, v2

    .line 2593
    iget v0, v5, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewSpanX:I

    aput v0, v16, v1

    .line 2594
    iget v0, v5, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewSpanY:I

    aput v0, v16, v2

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2596
    aput v0, v16, v2

    aput v0, v16, v1

    aput v0, v14, v2

    aput v0, v14, v1

    :goto_3
    return-object v14

    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2603
    invoke-virtual {v11, v2}, Lcom/voxel/launcher3/CellLayout;->setUseTempCoords(Z)V

    if-eqz v5, :cond_f

    .line 2607
    iget v0, v5, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewX:I

    aput v0, v14, v1

    .line 2608
    iget v0, v5, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewY:I

    aput v0, v14, v2

    .line 2609
    iget v0, v5, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewSpanX:I

    aput v0, v16, v1

    .line 2610
    iget v0, v5, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewSpanY:I

    aput v0, v16, v2

    if-eq v13, v2, :cond_9

    const/4 v0, 0x2

    if-eq v13, v0, :cond_a

    const/4 v3, 0x3

    if-ne v13, v3, :cond_e

    goto :goto_4

    :cond_9
    const/4 v0, 0x2

    :cond_a
    const/4 v3, 0x3

    .line 2617
    :goto_4
    invoke-direct {v11, v5, v12}, Lcom/voxel/launcher3/CellLayout;->copySolutionToTempState(Lcom/voxel/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2619
    invoke-virtual {v11, v2}, Lcom/voxel/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    if-ne v13, v0, :cond_b

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    .line 2620
    :goto_5
    invoke-direct {v11, v5, v12, v4}, Lcom/voxel/launcher3/CellLayout;->animateItemsToSolution(Lcom/voxel/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    if-eq v13, v0, :cond_d

    if-ne v13, v3, :cond_c

    goto :goto_6

    :cond_c
    const/16 v0, 0x96

    .line 2628
    invoke-direct {v11, v5, v12, v0, v2}, Lcom/voxel/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/voxel/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    goto :goto_7

    .line 2624
    :cond_d
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/CellLayout;->commitTempPlacement()V

    .line 2625
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2626
    invoke-virtual {v11, v1}, Lcom/voxel/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    :cond_e
    :goto_7
    const/4 v0, 0x2

    goto :goto_8

    .line 2634
    :cond_f
    aput v0, v16, v2

    aput v0, v16, v1

    aput v0, v14, v2

    aput v0, v14, v1

    const/4 v0, 0x2

    const/4 v2, 0x0

    :goto_8
    if-eq v13, v0, :cond_10

    if-nez v2, :cond_11

    .line 2638
    :cond_10
    invoke-virtual {v11, v1}, Lcom/voxel/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 2641
    :cond_11
    iget-object v0, v11, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->requestLayout()V

    return-object v14
.end method

.method public prepareChildForDrag(Landroid/view/View;)V
    .locals 0

    .line 2412
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    return-void
.end method

.method regionToCenterPoint(IIII[I)V
    .locals 5

    .line 784
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 785
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 786
    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    add-int v4, v2, v3

    mul-int p1, p1, v4

    add-int/2addr v0, p1

    mul-int v2, v2, p3

    const/4 p1, 0x1

    sub-int/2addr p3, p1

    mul-int p3, p3, v3

    add-int/2addr v2, p3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    const/4 p3, 0x0

    aput v0, p5, p3

    .line 788
    iget p3, p0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mHeightGap:I

    add-int v2, p3, v0

    mul-int p2, p2, v2

    add-int/2addr v1, p2

    mul-int p3, p3, p4

    sub-int/2addr p4, p1

    mul-int p4, p4, v0

    add-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    add-int/2addr v1, p3

    aput v1, p5, p1

    return-void
.end method

.method regionToRect(IIIILandroid/graphics/Rect;)V
    .locals 6

    .line 800
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 801
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 802
    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    add-int v4, v2, v3

    mul-int p1, p1, v4

    add-int/2addr v0, p1

    .line 803
    iget p1, p0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/voxel/launcher3/CellLayout;->mHeightGap:I

    add-int v5, p1, v4

    mul-int p2, p2, v5

    add-int/2addr v1, p2

    mul-int v2, v2, p3

    add-int/lit8 p3, p3, -0x1

    mul-int p3, p3, v3

    add-int/2addr v2, p3

    add-int/2addr v2, v0

    mul-int p1, p1, p4

    add-int/lit8 p4, p4, -0x1

    mul-int p4, p4, v4

    add-int/2addr p1, p4

    add-int/2addr p1, v1

    .line 804
    invoke-virtual {p5, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .line 657
    invoke-direct {p0}, Lcom/voxel/launcher3/CellLayout;->clearOccupiedCells()V

    .line 658
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->removeAllViews()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 664
    invoke-direct {p0}, Lcom/voxel/launcher3/CellLayout;->clearOccupiedCells()V

    .line 665
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->removeAllViewsInLayout()V

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 675
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 676
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 682
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    .line 687
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 688
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->removeViewsInLayout(II)V

    return-void
.end method

.method public restoreInstanceState(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 590
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 592
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CellLayout"

    const-string v1, "Ignoring an error while restoring a view instance state"

    .line 596
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    .line 593
    :cond_0
    throw p1
.end method

.method revertTempState()V
    .locals 12

    .line 2494
    invoke-direct {p0}, Lcom/voxel/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2495
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->isItemPlacementDirty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2496
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2498
    iget-object v3, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v2}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2499
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 2500
    iget v4, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v4, v6, :cond_0

    iget v4, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v6, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v4, v6, :cond_1

    .line 2501
    :cond_0
    iget v4, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v4, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 2502
    iget v4, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v4, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 2503
    iget v6, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    const/16 v8, 0x96

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/voxel/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2507
    :cond_2
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    :cond_3
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1

    .line 1011
    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mBackgroundAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1012
    iput p1, p0, Lcom/voxel/launcher3/CellLayout;->mBackgroundAlpha:F

    .line 1013
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBackgroundAlphaMultiplier(F)V
    .locals 1

    .line 1000
    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mBackgroundAlphaMultiplier:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1001
    iput p1, p0, Lcom/voxel/launcher3/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 1002
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCellDimensions(II)V
    .locals 7

    .line 325
    iput p1, p0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    iput p1, p0, Lcom/voxel/launcher3/CellLayout;->mFixedCellWidth:I

    .line 326
    iput p2, p0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    iput p2, p0, Lcom/voxel/launcher3/CellLayout;->mFixedCellHeight:I

    .line 327
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    iget v4, p0, Lcom/voxel/launcher3/CellLayout;->mHeightGap:I

    iget v5, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    iget v6, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    invoke-virtual/range {v0 .. v6}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    return-void
.end method

.method public setCellParams(Lcom/voxel/launcher3/CellParams;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 839
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mCellParams:Lcom/voxel/launcher3/CellParams;

    if-eq p1, v0, :cond_0

    .line 840
    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mCellParams:Lcom/voxel/launcher3/CellParams;

    .line 841
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mCellParams:Lcom/voxel/launcher3/CellParams;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    :cond_0
    return-void

    .line 836
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cell params must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method setColor(I)V
    .locals 3

    .line 421
    iget v0, p0, Lcom/voxel/launcher3/CellLayout;->mColorTint:I

    if-eq p1, v0, :cond_1

    .line 422
    iput p1, p0, Lcom/voxel/launcher3/CellLayout;->mColorTint:I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 425
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 427
    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 432
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public setDeviceProfile(Lcom/voxel/launcher3/DeviceProfile;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 824
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    if-eq p1, v0, :cond_0

    .line 825
    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    .line 826
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setDeviceProfile(Lcom/voxel/launcher3/DeviceProfile;)V

    :cond_0
    return-void

    .line 821
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Device profile must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDropPending(Z)V
    .locals 0

    .line 348
    iput-boolean p1, p0, Lcom/voxel/launcher3/CellLayout;->mDropPending:Z

    return-void
.end method

.method public setFixedSize(II)V
    .locals 0

    .line 886
    iput p1, p0, Lcom/voxel/launcher3/CellLayout;->mFixedWidth:I

    .line 887
    iput p2, p0, Lcom/voxel/launcher3/CellLayout;->mFixedHeight:I

    return-void
.end method

.method public setGridSize(II)V
    .locals 7

    .line 332
    iput p1, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    .line 333
    iput p2, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    .line 334
    iget p1, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    iget p2, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    filled-new-array {p1, p2}, [I

    move-result-object p1

    const-class p2, Z

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mOccupied:[[Z

    .line 335
    iget p1, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    iget p2, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    filled-new-array {p1, p2}, [I

    move-result-object p1

    const-class p2, Z

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mTmpOccupied:[[Z

    .line 336
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 337
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    iget v4, p0, Lcom/voxel/launcher3/CellLayout;->mHeightGap:I

    iget v5, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    iget v6, p0, Lcom/voxel/launcher3/CellLayout;->mCountY:I

    invoke-virtual/range {v0 .. v6}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 339
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->requestLayout()V

    return-void
.end method

.method public setInvertIfRtl(Z)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setInvertIfRtl(Z)V

    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1

    .line 406
    iget-boolean v0, p0, Lcom/voxel/launcher3/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    .line 407
    iput-boolean p1, p0, Lcom/voxel/launcher3/CellLayout;->mIsDragOverlapping:Z

    .line 408
    iget-boolean p1, p0, Lcom/voxel/launcher3/CellLayout;->mIsDragOverlapping:Z

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/CellLayout;->setUseActiveGlowBackground(Z)V

    .line 409
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method setItemPlacementDirty(Z)V
    .locals 0

    .line 2646
    iput-boolean p1, p0, Lcom/voxel/launcher3/CellLayout;->mItemPlacementDirty:Z

    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method setOverScrollAmount(FZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 356
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 357
    iput-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 358
    iget-object p2, p0, Lcom/voxel/launcher3/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    if-eq p2, v0, :cond_1

    .line 359
    iput-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 362
    :cond_1
    :goto_0
    iget p2, p0, Lcom/voxel/launcher3/CellLayout;->FOREGROUND_ALPHA_DAMPER:F

    mul-float p1, p1, p2

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float p1, p1, p2

    .line 363
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/CellLayout;->mForegroundAlpha:I

    .line 366
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->invalidate()V

    return-void
.end method

.method setPressedIcon(Lcom/voxel/launcher3/BubbleTextView;Landroid/graphics/Bitmap;I)V
    .locals 5

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/voxel/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    .line 376
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout;->mTouchFeedbackView:Lcom/voxel/launcher3/FastBitmapView;

    invoke-virtual {p1}, Lcom/voxel/launcher3/BubbleTextView;->getLeft()I

    move-result v2

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/2addr v2, v0

    sub-int/2addr v2, p3

    int-to-float v0, v2

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/FastBitmapView;->setTranslationX(F)V

    .line 378
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mTouchFeedbackView:Lcom/voxel/launcher3/FastBitmapView;

    invoke-virtual {p1}, Lcom/voxel/launcher3/BubbleTextView;->getTop()I

    move-result p1

    sub-int/2addr p1, p3

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/FastBitmapView;->setTranslationY(F)V

    .line 379
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mTouchFeedbackView:Lcom/voxel/launcher3/FastBitmapView;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/FastBitmapView;->setBitmap(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 380
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mTouchFeedbackView:Lcom/voxel/launcher3/FastBitmapView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/FastBitmapView;->setAlpha(F)V

    .line 381
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mTouchFeedbackView:Lcom/voxel/launcher3/FastBitmapView;

    invoke-virtual {p1}, Lcom/voxel/launcher3/FastBitmapView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x7d0

    .line 382
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/voxel/launcher3/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 383
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 384
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 371
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mTouchFeedbackView:Lcom/voxel/launcher3/FastBitmapView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/FastBitmapView;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 372
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout;->mTouchFeedbackView:Lcom/voxel/launcher3/FastBitmapView;

    invoke-virtual {p1}, Lcom/voxel/launcher3/FastBitmapView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setShortcutAndWidgetAlpha(F)V
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    return-void
.end method

.method setUseActiveGlowBackground(Z)V
    .locals 0

    .line 390
    iput-boolean p1, p0, Lcom/voxel/launcher3/CellLayout;->mUseActiveGlowBackground:Z

    return-void
.end method

.method public setUseTempCoords(Z)V
    .locals 3

    .line 2385
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2387
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 2388
    iput-boolean p1, v2, Lcom/voxel/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showFolderAccept(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;)V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 12

    move-object v6, p0

    move-object v7, p2

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v0, p10

    .line 1142
    iget-object v3, v6, Lcom/voxel/launcher3/CellLayout;->mDragCell:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v8, 0x1

    .line 1143
    aget v3, v3, v8

    if-nez v7, :cond_0

    return-void

    :cond_0
    if-ne v1, v5, :cond_1

    if-eq v2, v3, :cond_5

    .line 1150
    :cond_1
    iget-object v3, v6, Lcom/voxel/launcher3/CellLayout;->mDragCell:[I

    aput v1, v3, v4

    .line 1151
    aput v2, v3, v8

    .line 1153
    iget-object v3, v6, Lcom/voxel/launcher3/CellLayout;->mTmpPoint:[I

    .line 1154
    invoke-virtual {p0, v1, v2, v3}, Lcom/voxel/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 1156
    aget v4, v3, v4

    .line 1157
    aget v3, v3, v8

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 1162
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1163
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    .line 1164
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v0

    .line 1169
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    .line 1171
    iget v0, v6, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    mul-int v0, v0, p7

    add-int/lit8 v5, p7, -0x1

    iget v9, v6, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    mul-int v5, v5, v9

    add-int/2addr v0, v5

    .line 1172
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-eqz p11, :cond_3

    .line 1177
    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v9, v6, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    mul-int v9, v9, p7

    add-int/lit8 v10, p7, -0x1

    iget v11, v6, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    mul-int v10, v10, v11

    add-int/2addr v9, v10

    .line 1178
    invoke-virtual/range {p11 .. p11}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    add-int/2addr v4, v5

    .line 1179
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v5

    const/4 v9, 0x0

    .line 1180
    iget v10, v6, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    sub-int/2addr v10, v5

    int-to-float v5, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v5, v10

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    .line 1181
    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v5

    add-int/2addr v3, v0

    goto :goto_0

    .line 1184
    :cond_3
    iget v0, v6, Lcom/voxel/launcher3/CellLayout;->mCellWidth:I

    mul-int v0, v0, p7

    add-int/lit8 v5, p7, -0x1

    iget v9, v6, Lcom/voxel/launcher3/CellLayout;->mWidthGap:I

    mul-int v5, v5, v9

    add-int/2addr v0, v5

    .line 1185
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    .line 1186
    iget v0, v6, Lcom/voxel/launcher3/CellLayout;->mCellHeight:I

    mul-int v0, v0, p8

    add-int/lit8 v5, p8, -0x1

    iget v9, v6, Lcom/voxel/launcher3/CellLayout;->mHeightGap:I

    mul-int v5, v5, v9

    add-int/2addr v0, v5

    .line 1187
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    .line 1190
    :goto_0
    iget v0, v6, Lcom/voxel/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1191
    iget-object v5, v6, Lcom/voxel/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->animateOut()V

    add-int/2addr v0, v8

    .line 1192
    iget-object v5, v6, Lcom/voxel/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v8, v5

    rem-int/2addr v0, v8

    iput v0, v6, Lcom/voxel/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1193
    iget v0, v6, Lcom/voxel/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v5, v5, v0

    .line 1194
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v5, v4, v3, v0, v8}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p9, :cond_4

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    .line 1196
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 1199
    :cond_4
    iget-object v0, v6, Lcom/voxel/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    iget v1, v6, Lcom/voxel/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 1200
    iget-object v0, v6, Lcom/voxel/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    iget v1, v6, Lcom/voxel/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->animateIn()V

    :cond_5
    return-void
.end method
