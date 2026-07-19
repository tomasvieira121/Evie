.class public Lcom/voxel/launcher3/FolderIcon;
.super Landroid/widget/FrameLayout;
.source "FolderIcon.java"

# interfaces
.implements Lcom/voxel/launcher3/FolderInfo$FolderListener;
.implements Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;,
        Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;
    }
.end annotation


# static fields
.field public static sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable; = null

.field private static sStaticValuesDirty:Z = true


# instance fields
.field private mAnimParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

.field mAnimating:Z

.field private mAvailableSpaceInPreview:I

.field private mBadgeCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

.field private mBadgeSum:I

.field private mBaselineIconScale:F

.field private mBaselineIconSize:I

.field private mCellParams:Lcom/voxel/launcher3/CellParams;

.field private mDayChangeReceiverRegistered:Z

.field private mDayChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

.field private mDragInfo:Lcom/voxel/launcher3/ItemInfo;

.field private mDragMode:Z

.field private mFolder:Lcom/voxel/launcher3/Folder;

.field private mFolderName:Lcom/voxel/launcher3/BubbleTextView;

.field mFolderRingAnimator:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

.field private mHiddenItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconsVisible:Z

.field private mInfo:Lcom/voxel/launcher3/FolderInfo;

.field private mIntrinsicIconSize:I

.field public mLauncher:Lcom/voxel/launcher3/Launcher;

.field private mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

.field private mMaxPerspectiveShift:F

.field private mOldBounds:Landroid/graphics/Rect;

.field mOnOpenListener:Lcom/voxel/launcher3/OnAlarmListener;

.field private mOpenAlarm:Lcom/voxel/launcher3/Alarm;

.field private mParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

.field private mPrevTextVisible:Ljava/lang/Boolean;

.field private mPreviewBackground:Landroid/widget/ImageView;

.field private mPreviewOffsetX:I

.field private mPreviewOffsetY:I

.field private mSlop:F

.field private mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 158
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderRingAnimator:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    const/4 p1, -0x1

    .line 125
    iput p1, p0, Lcom/voxel/launcher3/FolderIcon;->mTotalWidth:I

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/voxel/launcher3/FolderIcon;->mAnimating:Z

    const/4 p2, 0x1

    .line 130
    iput-boolean p2, p0, Lcom/voxel/launcher3/FolderIcon;->mIconsVisible:Z

    .line 131
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/voxel/launcher3/FolderIcon;->mOldBounds:Landroid/graphics/Rect;

    .line 135
    new-instance p2, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, v0, p1}, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;-><init>(FFFI)V

    iput-object p2, p0, Lcom/voxel/launcher3/FolderIcon;->mParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    .line 136
    new-instance p2, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p2, v0, v0, v0, p1}, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;-><init>(FFFI)V

    iput-object p2, p0, Lcom/voxel/launcher3/FolderIcon;->mAnimParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    .line 139
    new-instance p1, Lcom/voxel/launcher3/Alarm;

    invoke-direct {p1}, Lcom/voxel/launcher3/Alarm;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mOpenAlarm:Lcom/voxel/launcher3/Alarm;

    .line 149
    new-instance p1, Lcom/voxel/launcher3/FolderIcon$1;

    invoke-direct {p1, p0}, Lcom/voxel/launcher3/FolderIcon$1;-><init>(Lcom/voxel/launcher3/FolderIcon;)V

    iput-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mDayChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 447
    new-instance p1, Lcom/voxel/launcher3/FolderIcon$2;

    invoke-direct {p1, p0}, Lcom/voxel/launcher3/FolderIcon$2;-><init>(Lcom/voxel/launcher3/FolderIcon;)V

    iput-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mOnOpenListener:Lcom/voxel/launcher3/OnAlarmListener;

    .line 159
    invoke-direct {p0}, Lcom/voxel/launcher3/FolderIcon;->init()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 67
    sget-boolean v0, Lcom/voxel/launcher3/FolderIcon;->sStaticValuesDirty:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 67
    sput-boolean p0, Lcom/voxel/launcher3/FolderIcon;->sStaticValuesDirty:Z

    return p0
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/FolderIcon;)Landroid/widget/ImageView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/voxel/launcher3/FolderIcon;)Lcom/voxel/launcher3/ItemInfo;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/voxel/launcher3/FolderIcon;->mDragInfo:Lcom/voxel/launcher3/ItemInfo;

    return-object p0
.end method

.method static synthetic access$400(Lcom/voxel/launcher3/FolderIcon;)Lcom/voxel/launcher3/Folder;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolder:Lcom/voxel/launcher3/Folder;

    return-object p0
.end method

.method private animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 825
    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;I)V

    return-void
.end method

.method private animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;I)V
    .locals 7

    const/4 v0, 0x0

    .line 830
    invoke-virtual {p0, p5, v0}, Lcom/voxel/launcher3/FolderIcon;->computePreviewItemDrawingParams(ILcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;)Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-result-object v5

    .line 833
    iget p5, p0, Lcom/voxel/launcher3/FolderIcon;->mAvailableSpaceInPreview:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr p5, v0

    const/4 v0, 0x2

    div-int/2addr p5, v0

    int-to-float v4, p5

    .line 834
    iget p5, p0, Lcom/voxel/launcher3/FolderIcon;->mAvailableSpaceInPreview:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p5, v1

    div-int/2addr p5, v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->getPaddingTop()I

    move-result v1

    add-int/2addr p5, v1

    int-to-float v6, p5

    .line 835
    iget-object p5, p0, Lcom/voxel/launcher3/FolderIcon;->mAnimParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    iput-object p1, p5, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 837
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p0, p1}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 838
    new-instance p5, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$Bguyuyr82PuqphXVAAbOfYxSkak;

    move-object v1, p5

    move-object v2, p0

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$Bguyuyr82PuqphXVAAbOfYxSkak;-><init>(Lcom/voxel/launcher3/FolderIcon;ZFLcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;F)V

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 850
    new-instance p3, Lcom/voxel/launcher3/FolderIcon$3;

    invoke-direct {p3, p0, p4}, Lcom/voxel/launcher3/FolderIcon$3;-><init>(Lcom/voxel/launcher3/FolderIcon;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long p2, p2

    .line 864
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 865
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 645
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/FolderIcon;->computePreviewDrawingParams(II)V

    return-void
.end method

.method private drawPreviewItem(Landroid/graphics/Canvas;Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;)V
    .locals 3

    .line 710
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 711
    iget v0, p2, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v1, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewOffsetX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p2, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v2, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewOffsetY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 712
    iget v0, p2, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v1, p2, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 713
    iget-object p2, p2, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 716
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 717
    iget v0, p0, Lcom/voxel/launcher3/FolderIcon;->mIntrinsicIconSize:I

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 718
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 719
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 721
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static fromXml(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/voxel/launcher3/FolderInfo;Lcom/voxel/launcher3/IconCache;)Lcom/voxel/launcher3/FolderIcon;
    .locals 8

    .line 189
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v6

    const/4 v7, 0x1

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 191
    invoke-static/range {v1 .. v7}, Lcom/voxel/launcher3/FolderIcon;->fromXml(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/voxel/launcher3/FolderInfo;Lcom/voxel/launcher3/IconCache;Lcom/voxel/launcher3/DeviceProfile;Z)Lcom/voxel/launcher3/FolderIcon;

    move-result-object p0

    return-object p0
.end method

.method public static fromXml(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/voxel/launcher3/FolderInfo;Lcom/voxel/launcher3/IconCache;Lcom/voxel/launcher3/DeviceProfile;Z)Lcom/voxel/launcher3/FolderIcon;
    .locals 3

    .line 205
    instance-of p4, p1, Lcom/voxel/launcher3/Launcher;

    if-eqz p4, :cond_0

    .line 206
    move-object p4, p1

    check-cast p4, Lcom/voxel/launcher3/Launcher;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 209
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/voxel/launcher3/FolderIcon;

    .line 210
    sget-object p2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p5, p2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object p2

    .line 211
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/FolderIcon;->setClipToPadding(Z)V

    const v0, 0x7f0a011e

    .line 212
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/BubbleTextView;

    iput-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderName:Lcom/voxel/launcher3/BubbleTextView;

    const v0, 0x7f0a0206

    .line 213
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 215
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getFolderShapeResourceId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderName:Lcom/voxel/launcher3/BubbleTextView;

    iget-object v2, p3, Lcom/voxel/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/FolderIcon;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 220
    invoke-virtual {p0, p3}, Lcom/voxel/launcher3/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0, p4}, Lcom/voxel/launcher3/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iput-object p3, p0, Lcom/voxel/launcher3/FolderIcon;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    .line 223
    iput-object p4, p0, Lcom/voxel/launcher3/FolderIcon;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 224
    iput-object p5, p0, Lcom/voxel/launcher3/FolderIcon;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    const p2, 0x7f120147

    .line 225
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/Object;

    iget-object v0, p3, Lcom/voxel/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    aput-object v0, p5, v1

    invoke-static {p2, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 229
    invoke-static {p1}, Lcom/voxel/launcher3/Folder;->fromXml(Landroid/content/Context;)Lcom/voxel/launcher3/Folder;

    move-result-object p2

    if-eqz p4, :cond_1

    .line 231
    invoke-virtual {p4}, Lcom/voxel/launcher3/Launcher;->getDragController()Lcom/voxel/launcher3/dragndrop/DragController;

    move-result-object p5

    invoke-virtual {p2, p5}, Lcom/voxel/launcher3/Folder;->setDragController(Lcom/voxel/launcher3/dragndrop/DragController;)V

    .line 233
    :cond_1
    invoke-virtual {p2, p0}, Lcom/voxel/launcher3/Folder;->setFolderIcon(Lcom/voxel/launcher3/FolderIcon;)V

    .line 234
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p5

    invoke-virtual {p5}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getFolderAlphabetSortEnabled()Z

    move-result p5

    invoke-virtual {p2, p3, p6, p5}, Lcom/voxel/launcher3/Folder;->bind(Lcom/voxel/launcher3/FolderInfo;ZZ)V

    .line 235
    iput-object p2, p0, Lcom/voxel/launcher3/FolderIcon;->mFolder:Lcom/voxel/launcher3/Folder;

    .line 236
    new-instance p2, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    invoke-direct {p2, p1, p0}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;-><init>(Landroid/content/Context;Lcom/voxel/launcher3/FolderIcon;)V

    iput-object p2, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderRingAnimator:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    if-eqz p4, :cond_2

    .line 238
    invoke-virtual {p3, p0}, Lcom/voxel/launcher3/FolderInfo;->addListener(Lcom/voxel/launcher3/FolderInfo$FolderListener;)V

    .line 239
    iget-object p1, p4, Lcom/voxel/launcher3/Launcher;->mFocusHandler:Lcom/voxel/launcher3/FocusIndicatorView;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/FolderIcon;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->initBadgeCounts()V

    return-object p0
.end method

.method private getLocalCenterForIndex(I[I)F
    .locals 4

    const/4 v0, 0x4

    .line 664
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/FolderIcon;->computePreviewItemDrawingParams(ILcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;)Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    .line 666
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v0, p1, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v1, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewOffsetX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 667
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v0, p1, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v1, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewOffsetY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 668
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget p1, p1, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v0, v0, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v1, p0, Lcom/voxel/launcher3/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    .line 669
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v0, v0, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget-object v2, p0, Lcom/voxel/launcher3/FolderIcon;->mParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v3, p0, Lcom/voxel/launcher3/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 671
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v1, 0x0

    aput p1, p2, v1

    .line 672
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x1

    aput p1, p2, v0

    .line 673
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget p1, p1, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    return p1
.end method

.method private getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 811
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    .line 812
    instance-of v0, p1, Lcom/voxel/launcher3/PreloadIconDrawable;

    if-eqz v0, :cond_0

    .line 813
    check-cast p1, Lcom/voxel/launcher3/PreloadIconDrawable;

    iget-object p1, p1, Lcom/voxel/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 816
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    .line 817
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    .line 818
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private init()V
    .locals 1

    .line 168
    new-instance v0, Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    return-void
.end method

.method public static synthetic lambda$animateFirstItem$1(Lcom/voxel/launcher3/FolderIcon;ZFLcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;FLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 839
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    sub-float p5, v0, p5

    .line 842
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 845
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mAnimParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v1, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    sub-float/2addr v1, p2

    mul-float v1, v1, p5

    add-float/2addr p2, v1

    iput p2, p1, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 846
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mAnimParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget p2, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    sub-float/2addr p2, p4

    mul-float p2, p2, p5

    add-float/2addr p4, p2

    iput p4, p1, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 847
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mAnimParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget p2, p3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    sub-float/2addr p2, v0

    mul-float p5, p5, p2

    add-float/2addr p5, v0

    iput p5, p1, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 848
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->invalidate()V

    return-void
.end method

.method public static synthetic lambda$onDrop$0(Lcom/voxel/launcher3/FolderIcon;Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 573
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Folder;->showItem(Lcom/voxel/launcher3/ShortcutInfo;)V

    .line 574
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->invalidate()V

    return-void
.end method

.method public static onDeviceProfileChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 254
    sput-boolean v0, Lcom/voxel/launcher3/FolderIcon;->sStaticValuesDirty:Z

    return-void
.end method

.method private onDrop(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v2, p5

    const/4 v4, -0x1

    .line 526
    iput v4, v1, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    .line 527
    iput v4, v1, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    if-eqz v3, :cond_2

    .line 533
    iget-object v4, v0, Lcom/voxel/launcher3/FolderIcon;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v4

    .line 534
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 535
    invoke-virtual {v4, v3, v5}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez p3, :cond_0

    .line 538
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 539
    iget-object v8, v0, Lcom/voxel/launcher3/FolderIcon;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object v8

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v8, v9}, Lcom/voxel/launcher3/Workspace;->setFinalTransitionTransform(Lcom/voxel/launcher3/CellLayout;)V

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/FolderIcon;->getScaleX()F

    move-result v9

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/FolderIcon;->getScaleY()F

    move-result v10

    .line 544
    invoke-virtual {v0, v6}, Lcom/voxel/launcher3/FolderIcon;->setScaleX(F)V

    .line 545
    invoke-virtual {v0, v6}, Lcom/voxel/launcher3/FolderIcon;->setScaleY(F)V

    .line 546
    invoke-virtual {v4, v0, v7}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v11

    .line 548
    invoke-virtual {v0, v9}, Lcom/voxel/launcher3/FolderIcon;->setScaleX(F)V

    .line 549
    invoke-virtual {v0, v10}, Lcom/voxel/launcher3/FolderIcon;->setScaleY(F)V

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/voxel/launcher3/CellLayout;

    invoke-virtual {v8, v9}, Lcom/voxel/launcher3/Workspace;->resetTransitionTransform(Lcom/voxel/launcher3/CellLayout;)V

    goto :goto_0

    :cond_0
    move-object/from16 v7, p3

    move/from16 v11, p4

    :goto_0
    const/4 v8, 0x2

    .line 553
    new-array v9, v8, [I

    .line 554
    invoke-direct {v0, v2, v9}, Lcom/voxel/launcher3/FolderIcon;->getLocalCenterForIndex(I[I)F

    move-result v10

    const/4 v12, 0x0

    .line 555
    aget v13, v9, v12

    int-to-float v13, v13

    mul-float v13, v13, v11

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    aput v13, v9, v12

    const/4 v13, 0x1

    .line 556
    aget v14, v9, v13

    int-to-float v14, v14

    mul-float v14, v14, v11

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    aput v14, v9, v13

    .line 558
    aget v12, v9, v12

    invoke-virtual/range {p2 .. p2}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v14

    div-int/2addr v14, v8

    sub-int/2addr v12, v14

    aget v9, v9, v13

    .line 559
    invoke-virtual/range {p2 .. p2}, Lcom/voxel/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v13

    div-int/2addr v13, v8

    sub-int/2addr v9, v13

    .line 558
    invoke-virtual {v7, v12, v9}, Landroid/graphics/Rect;->offset(II)V

    const/4 v8, 0x4

    if-ge v2, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_1
    mul-float v10, v10, v11

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v11, 0x190

    .line 564
    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v12, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v13, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v13, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v2, v4

    move-object/from16 v3, p2

    move-object v4, v5

    move-object v5, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move-object/from16 v14, p6

    invoke-virtual/range {v2 .. v16}, Lcom/voxel/launcher3/dragndrop/DragLayer;->animateView(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 568
    invoke-virtual/range {p0 .. p1}, Lcom/voxel/launcher3/FolderIcon;->addItem(Lcom/voxel/launcher3/ShortcutInfo;)V

    .line 569
    iget-object v2, v0, Lcom/voxel/launcher3/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v2, v0, Lcom/voxel/launcher3/FolderIcon;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v2, v1}, Lcom/voxel/launcher3/Folder;->hideItem(Lcom/voxel/launcher3/ShortcutInfo;)V

    .line 571
    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$nQH84jIMUB4pRCafOkNkqzJkKdk;

    invoke-direct {v2, v0, v1}, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$nQH84jIMUB4pRCafOkNkqzJkKdk;-><init>(Lcom/voxel/launcher3/FolderIcon;Lcom/voxel/launcher3/ShortcutInfo;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v2, v3, v4}, Lcom/voxel/launcher3/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 577
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/voxel/launcher3/FolderIcon;->addItem(Lcom/voxel/launcher3/ShortcutInfo;)V

    :goto_2
    return-void
.end method

.method private registerDayChangedReceiver()V
    .locals 3

    .line 1035
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mDayChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/voxel/launcher3/FolderIcon;->mDayChangeReceiverRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1038
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.evie.day_changed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    .line 1040
    iget-object v2, p0, Lcom/voxel/launcher3/FolderIcon;->mDayChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x1

    .line 1041
    iput-boolean v0, p0, Lcom/voxel/launcher3/FolderIcon;->mDayChangeReceiverRegistered:Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private willAcceptItem(Lcom/voxel/launcher3/ItemInfo;)Z
    .locals 3

    .line 408
    iget v0, p1, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolder:Lcom/voxel/launcher3/Folder;

    .line 412
    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->isFull()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    if-eq p1, v0, :cond_1

    iget-boolean p1, v0, Lcom/voxel/launcher3/FolderInfo;->opened:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public acceptDrop(Ljava/lang/Object;)Z
    .locals 1

    .line 416
    check-cast p1, Lcom/voxel/launcher3/ItemInfo;

    .line 417
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/FolderIcon;->willAcceptItem(Lcom/voxel/launcher3/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addItem(Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/FolderInfo;->add(Lcom/voxel/launcher3/ShortcutInfo;)V

    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .line 975
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 977
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public computePreviewDrawingParams(II)V
    .locals 4

    .line 611
    iget v0, p0, Lcom/voxel/launcher3/FolderIcon;->mIntrinsicIconSize:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/voxel/launcher3/FolderIcon;->mTotalWidth:I

    if-eq v0, p2, :cond_1

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    .line 614
    iput p1, p0, Lcom/voxel/launcher3/FolderIcon;->mIntrinsicIconSize:I

    .line 615
    iput p2, p0, Lcom/voxel/launcher3/FolderIcon;->mTotalWidth:I

    .line 617
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 618
    sget p2, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    mul-float p2, p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 v0, p2, 0x2

    sub-int/2addr p1, v0

    .line 620
    iput p1, p0, Lcom/voxel/launcher3/FolderIcon;->mAvailableSpaceInPreview:I

    .line 622
    iget p1, p0, Lcom/voxel/launcher3/FolderIcon;->mAvailableSpaceInPreview:I

    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    const v1, 0x3fe66666    # 1.8f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 624
    iget v1, p0, Lcom/voxel/launcher3/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v2, v1

    const v3, 0x3f970a3e    # 1.1800001f

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v0, v0

    mul-float v0, v0, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 626
    iput v0, p0, Lcom/voxel/launcher3/FolderIcon;->mBaselineIconScale:F

    int-to-float v0, v1

    .line 628
    iget v1, p0, Lcom/voxel/launcher3/FolderIcon;->mBaselineIconScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/voxel/launcher3/FolderIcon;->mBaselineIconSize:I

    .line 629
    iget v0, p0, Lcom/voxel/launcher3/FolderIcon;->mBaselineIconSize:I

    int-to-float v0, v0

    const v1, 0x3e3851ec    # 0.18f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/voxel/launcher3/FolderIcon;->mMaxPerspectiveShift:F

    .line 631
    iget v0, p0, Lcom/voxel/launcher3/FolderIcon;->mTotalWidth:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewOffsetX:I

    .line 632
    sget p1, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->sPreviewVerticalOffset:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewOffsetY:I

    :cond_1
    return-void
.end method

.method public computePreviewItemDrawingParams(ILcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;)Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;
    .locals 5

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x4

    if-ge p1, v1, :cond_0

    .line 682
    rem-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    .line 683
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    const v1, 0x3ee66666    # 0.45f

    .line 691
    iget v2, p0, Lcom/voxel/launcher3/FolderIcon;->mBaselineIconSize:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    .line 693
    iget v3, p0, Lcom/voxel/launcher3/FolderIcon;->mAvailableSpaceInPreview:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v2

    sub-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    mul-float v4, v2, p1

    add-float/2addr v4, v3

    mul-float p1, p1, v3

    add-float/2addr v4, p1

    .line 695
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v4, p1

    mul-float v2, v2, v0

    add-float/2addr v2, v3

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    .line 697
    iget p1, p0, Lcom/voxel/launcher3/FolderIcon;->mBaselineIconScale:F

    mul-float p1, p1, v1

    if-nez p2, :cond_1

    .line 700
    new-instance p2, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    const/4 v0, 0x0

    invoke-direct {p2, v2, v4, p1, v0}, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;-><init>(FFFI)V

    goto :goto_1

    .line 702
    :cond_1
    iput v2, p2, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 703
    iput v4, p2, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 704
    iput p1, p2, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    :goto_1
    return-object p2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 746
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 748
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolder:Lcom/voxel/launcher3/Folder;

    if-nez v0, :cond_0

    return-void

    .line 749
    :cond_0
    iget-boolean v1, p0, Lcom/voxel/launcher3/FolderIcon;->mIconsVisible:Z

    if-nez v1, :cond_2

    .line 750
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    if-eqz v0, :cond_1

    .line 751
    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    .line 755
    :cond_2
    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    .line 756
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/voxel/launcher3/FolderIcon;->mAnimating:Z

    if-nez v1, :cond_3

    return-void

    .line 762
    :cond_3
    iget-boolean v1, p0, Lcom/voxel/launcher3/FolderIcon;->mAnimating:Z

    if-eqz v1, :cond_4

    .line 763
    iget-object v1, p0, Lcom/voxel/launcher3/FolderIcon;->mAnimParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget-object v1, v1, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/voxel/launcher3/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 765
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 766
    invoke-direct {p0, v1}, Lcom/voxel/launcher3/FolderIcon;->getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 767
    invoke-direct {p0, v1}, Lcom/voxel/launcher3/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    .line 770
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 771
    iget-boolean v2, p0, Lcom/voxel/launcher3/FolderIcon;->mAnimating:Z

    if-nez v2, :cond_6

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_7

    .line 773
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 774
    iget-object v3, p0, Lcom/voxel/launcher3/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 775
    invoke-direct {p0, v2}, Lcom/voxel/launcher3/FolderIcon;->getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 776
    iget-object v3, p0, Lcom/voxel/launcher3/FolderIcon;->mParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    invoke-virtual {p0, v1, v3}, Lcom/voxel/launcher3/FolderIcon;->computePreviewItemDrawingParams(ILcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;)Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-result-object v3

    iput-object v3, p0, Lcom/voxel/launcher3/FolderIcon;->mParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    .line 777
    iget-object v3, p0, Lcom/voxel/launcher3/FolderIcon;->mParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    iput-object v2, v3, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 778
    invoke-direct {p0, p1, v3}, Lcom/voxel/launcher3/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;)V

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 782
    :cond_6
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mAnimParams:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;)V

    .line 785
    :cond_7
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/voxel/launcher3/FolderIcon;->mDragMode:Z

    if-nez v1, :cond_8

    .line 786
    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    return-void
.end method

.method public getCellParams()Lcom/voxel/launcher3/CellParams;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mCellParams:Lcom/voxel/launcher3/CellParams;

    return-object v0
.end method

.method public getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mDeviceProfile:Lcom/voxel/launcher3/DeviceProfile;

    if-nez v0, :cond_0

    .line 180
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method public getFolder()Lcom/voxel/launcher3/Folder;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolder:Lcom/voxel/launcher3/Folder;

    return-object v0
.end method

.method getFolderInfo()Lcom/voxel/launcher3/FolderInfo;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    return-object v0
.end method

.method public getPreviewOffsetX()I
    .locals 1

    .line 637
    iget v0, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewOffsetX:I

    return v0
.end method

.method public getPreviewOffsetY()I
    .locals 1

    .line 641
    iget v0, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewOffsetY:I

    return v0
.end method

.method public getTextVisible()Z
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderName:Lcom/voxel/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/BubbleTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized initBadgeCounts()V
    .locals 7

    monitor-enter p0

    .line 983
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeCounts:Ljava/util/Map;

    .line 985
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;-><init>(Landroid/content/Context;Lcom/voxel/launcher3/graphics/IconPalette;)V

    iput-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    .line 986
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {v0, p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 988
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-object v0, v0, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 993
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v1

    .line 994
    invoke-virtual {v1, p0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->unregisterListenerForAll(Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;)V

    .line 996
    iget-object v2, p0, Lcom/voxel/launcher3/FolderIcon;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-object v2, v2, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/ShortcutInfo;

    .line 997
    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->supportsNotifications(Lcom/voxel/launcher3/ShortcutInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 999
    :cond_1
    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->fromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;)Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1002
    :cond_2
    invoke-virtual {v1, v3}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->readCount(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V

    .line 1003
    iget-object v4, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeCounts:Ljava/util/Map;

    iget-object v5, v3, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    iget v6, v3, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    iget v4, v3, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    add-int/2addr v0, v4

    .line 1008
    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, p0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->registerListener(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;)V

    goto :goto_0

    .line 1011
    :cond_3
    iput v0, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeSum:I

    .line 1012
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    iget v1, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeSum:I

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBadge(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    monitor-exit p0

    return-void

    .line 989
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public declared-synchronized onAdd(Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 2

    monitor-enter p0

    .line 894
    :try_start_0
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->supportsNotifications(Lcom/voxel/launcher3/ShortcutInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->fromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;)Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 898
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v0

    .line 899
    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->readCount(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V

    .line 900
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->registerListener(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;)V

    .line 901
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/FolderIcon;->onNotificationChanged(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V

    .line 905
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->invalidate()V

    .line 906
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 956
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 957
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/voxel/launcher3/FolderIcon;->mSlop:F

    .line 958
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->onFolderIconAttachedToWindow()V

    .line 960
    invoke-direct {p0}, Lcom/voxel/launcher3/FolderIcon;->registerDayChangedReceiver()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 965
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 967
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->onFolderIconDetachedFromWindow()V

    .line 969
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/FolderIcon;->mDayChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 970
    iput-boolean v0, p0, Lcom/voxel/launcher3/FolderIcon;->mDayChangeReceiverRegistered:Z

    return-void
.end method

.method public onDragEnter(Ljava/lang/Object;)V
    .locals 5

    .line 425
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/voxel/launcher3/ItemInfo;

    invoke-direct {p0, v0}, Lcom/voxel/launcher3/FolderIcon;->willAcceptItem(Lcom/voxel/launcher3/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    .line 427
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/CellLayout;

    .line 428
    iget-object v3, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderRingAnimator:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    iget v4, v1, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v1, v1, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v3, v4, v1}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->setCell(II)V

    .line 429
    iget-object v1, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderRingAnimator:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->setCellLayout(Lcom/voxel/launcher3/CellLayout;)V

    .line 430
    iget-object v1, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderRingAnimator:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    invoke-virtual {v1}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->animateToAcceptState()V

    .line 431
    iget-object v1, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderRingAnimator:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    invoke-virtual {v2, v1}, Lcom/voxel/launcher3/CellLayout;->showFolderAccept(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;)V

    .line 432
    iget-object v1, p0, Lcom/voxel/launcher3/FolderIcon;->mOpenAlarm:Lcom/voxel/launcher3/Alarm;

    iget-object v2, p0, Lcom/voxel/launcher3/FolderIcon;->mOnOpenListener:Lcom/voxel/launcher3/OnAlarmListener;

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/Alarm;->setOnAlarmListener(Lcom/voxel/launcher3/OnAlarmListener;)V

    .line 433
    instance-of v1, p1, Lcom/voxel/launcher3/AppInfo;

    if-nez v1, :cond_1

    instance-of p1, p1, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz p1, :cond_2

    .line 439
    :cond_1
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mOpenAlarm:Lcom/voxel/launcher3/Alarm;

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v1, v2}, Lcom/voxel/launcher3/Alarm;->setAlarm(J)V

    .line 441
    :cond_2
    iput-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mDragInfo:Lcom/voxel/launcher3/ItemInfo;

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public onDragExit()V
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderRingAnimator:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 520
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mOpenAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Alarm;->cancelAlarm()V

    return-void
.end method

.method public onDragExit(Ljava/lang/Object;)V
    .locals 0

    .line 515
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->onDragExit()V

    return-void
.end method

.method public onDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 9

    .line 583
    iget-object v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/voxel/launcher3/AppInfo;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    check-cast v0, Lcom/voxel/launcher3/AppInfo;

    invoke-virtual {v0}, Lcom/voxel/launcher3/AppInfo;->makeShortcut()Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    check-cast v0, Lcom/voxel/launcher3/ShortcutInfo;

    move-object v2, v0

    .line 589
    :goto_0
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolder:Lcom/voxel/launcher3/Folder;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->notifyDrop()V

    .line 593
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getFolderAlphabetSortEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/voxel/launcher3/FolderIcon;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-object v1, v1, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 596
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    sget-object v1, Lcom/voxel/launcher3/Folder;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 598
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-object v0, v0, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    move v6, v0

    goto :goto_1

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-object v0, v0, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v6, v0

    .line 607
    :goto_1
    iget-object v3, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v7, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/voxel/launcher3/FolderIcon;->onDrop(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/voxel/launcher3/DropTarget$DragObject;)V

    return-void
.end method

.method public onItemsChanged()V
    .locals 0

    .line 889
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->invalidate()V

    .line 890
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->requestLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 792
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 795
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 796
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 797
    iget-object p2, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLeft()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 798
    iget-object p2, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getRight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 799
    iget-object p2, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 800
    iget-object p2, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getBottom()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 801
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 802
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->getWidth()I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 803
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->getHeight()I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 804
    iget-object p3, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {p3, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBaseBounds(Landroid/graphics/Rect;)V

    .line 805
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setMaxBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onNotificationChanged(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V
    .locals 3

    monitor-enter p0

    .line 1017
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeCounts:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1018
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1021
    :try_start_1
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeCounts:Ljava/util/Map;

    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    .line 1025
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1026
    iget-object v2, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeCounts:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_0

    .line 1029
    :cond_2
    iput p1, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeSum:I

    .line 1030
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    iget v0, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeSum:I

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBadge(I)V

    .line 1031
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->postInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1032
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized onRemove(Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 2

    monitor-enter p0

    .line 910
    :try_start_0
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->supportsNotifications(Lcom/voxel/launcher3/ShortcutInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->fromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;)Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v0

    .line 915
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->unregisterListener(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;)V

    .line 916
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mBadgeCounts:Ljava/util/Map;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 917
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/FolderIcon;->onNotificationChanged(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V

    .line 921
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->invalidate()V

    .line 922
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    .line 249
    sput-boolean v0, Lcom/voxel/launcher3/FolderIcon;->sStaticValuesDirty:Z

    .line 250
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3

    .line 926
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderName:Lcom/voxel/launcher3/BubbleTextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120147

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 935
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 937
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 946
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/voxel/launcher3/FolderIcon;->mSlop:F

    invoke-static {p0, v1, p1, v2}, Lcom/voxel/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result p1

    if-nez p1, :cond_0

    .line 947
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/voxel/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 943
    :pswitch_1
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/voxel/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 939
    :pswitch_2
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/voxel/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    :cond_0
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performCreateAnimation(Lcom/voxel/launcher3/ShortcutInfo;Landroid/view/View;Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
    .locals 11

    move-object v8, p0

    .line 478
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/voxel/launcher3/FolderIcon;->getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 479
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 480
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 479
    invoke-virtual {p0, v0, v2}, Lcom/voxel/launcher3/FolderIcon;->computePreviewDrawingParams(II)V

    .line 485
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getFolderAlphabetSortEnabled()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 486
    sget-object v0, Lcom/voxel/launcher3/Folder;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    move-object v6, p1

    move-object v7, p3

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v5, 0x1

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    move-object v6, p1

    move-object v7, p3

    :cond_1
    const/4 v5, 0x0

    const/4 v9, 0x1

    :goto_0
    const/16 v2, 0x15e

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 496
    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;I)V

    .line 497
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/FolderIcon;->addItem(Lcom/voxel/launcher3/ShortcutInfo;)V

    const/4 v10, 0x0

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move v5, v9

    move-object/from16 v6, p7

    move-object v7, v10

    .line 500
    invoke-direct/range {v0 .. v7}, Lcom/voxel/launcher3/FolderIcon;->onDrop(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/voxel/launcher3/DropTarget$DragObject;)V

    return-void
.end method

.method public performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 504
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/voxel/launcher3/FolderIcon;->getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 506
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 505
    invoke-virtual {p0, v1, p1}, Lcom/voxel/launcher3/FolderIcon;->computePreviewDrawingParams(II)V

    const/16 p1, 0xc8

    const/4 v1, 0x1

    .line 510
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/voxel/launcher3/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    return-void
.end method

.method public setCellParams(Lcom/voxel/launcher3/CellParams;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 396
    iput-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mCellParams:Lcom/voxel/launcher3/CellParams;

    .line 397
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderName:Lcom/voxel/launcher3/BubbleTextView;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/BubbleTextView;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 398
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderName:Lcom/voxel/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 399
    iget v1, p1, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    iget v2, p1, Lcom/voxel/launcher3/CellParams;->iconDrawablePaddingPx:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 401
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 402
    iget v1, p1, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 403
    iget p1, p1, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    return-void

    .line 394
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cell params must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDragMode(Z)V
    .locals 2

    .line 725
    iget-boolean v0, p0, Lcom/voxel/launcher3/FolderIcon;->mDragMode:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderName:Lcom/voxel/launcher3/BubbleTextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 733
    invoke-virtual {v0}, Lcom/voxel/launcher3/BubbleTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mPrevTextVisible:Ljava/lang/Boolean;

    .line 734
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderName:Lcom/voxel/launcher3/BubbleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/BubbleTextView;->setVisibility(I)V

    goto :goto_0

    .line 736
    :cond_3
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mPrevTextVisible:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 737
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderName:Lcom/voxel/launcher3/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/BubbleTextView;->setVisibility(I)V

    :cond_4
    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lcom/voxel/launcher3/FolderIcon;->mPrevTextVisible:Ljava/lang/Boolean;

    .line 741
    :goto_0
    iput-boolean p1, p0, Lcom/voxel/launcher3/FolderIcon;->mDragMode:Z

    return-void
.end method

.method public setIconsVisible(Z)V
    .locals 1

    .line 869
    iget-boolean v0, p0, Lcom/voxel/launcher3/FolderIcon;->mIconsVisible:Z

    if-eq p1, v0, :cond_0

    .line 870
    iput-boolean p1, p0, Lcom/voxel/launcher3/FolderIcon;->mIconsVisible:Z

    .line 871
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderIcon;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 878
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderName:Lcom/voxel/launcher3/BubbleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/BubbleTextView;->setVisibility(I)V

    goto :goto_0

    .line 880
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon;->mFolderName:Lcom/voxel/launcher3/BubbleTextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/BubbleTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
