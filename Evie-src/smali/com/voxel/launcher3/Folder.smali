.class public Lcom/voxel/launcher3/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/evie/common/dragndrop/DragSource;
.implements Lcom/voxel/launcher3/DropTarget;
.implements Lcom/voxel/launcher3/FolderInfo$FolderListener;
.implements Lcom/voxel/launcher3/dragndrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/Folder$OnScrollFinishedListener;,
        Lcom/voxel/launcher3/Folder$OnScrollHintListener;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ITEM_POS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultFolderName:Ljava/lang/String;

.field private static sHintText:Ljava/lang/String;

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mCellParams:Lcom/voxel/launcher3/CellParams;

.field mContent:Lcom/voxel/launcher3/FolderPagedView;

.field mContentWrapper:Landroid/view/View;

.field private mCurrentDragInfo:Lcom/voxel/launcher3/ShortcutInfo;

.field private mCurrentDragView:Landroid/view/View;

.field mCurrentScrollDir:I

.field private mDeferDropAfterUninstall:Z

.field mDeferredAction:Ljava/lang/Runnable;

.field private mDeleteFolderOnDropCompleted:Z

.field private mDestroyed:Z

.field private mDragBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mDragBackgroundAlphaAnim:Landroid/animation/Animator;

.field protected mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

.field private mDragInProgress:Z

.field mEmptyCellRank:I

.field private final mExpandDuration:I

.field mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

.field mFolderIconPivotX:F

.field mFolderIconPivotY:F

.field mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

.field private mFolderNameHeight:I

.field private mFooter:Landroid/view/View;

.field private mFooterHeight:I

.field protected mInfo:Lcom/voxel/launcher3/FolderInfo;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEditingName:Z

.field private mIsExternalDrag:Z

.field private mItemAddedBackToSelfViaIcon:Z

.field final mItemsInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mItemsInvalidated:Z

.field protected mLauncher:Lcom/voxel/launcher3/Launcher;

.field private final mMaterialExpandDuration:I

.field private final mMaterialExpandStagger:I

.field private final mOnExitAlarm:Lcom/voxel/launcher3/Alarm;

.field mOnExitAlarmListener:Lcom/voxel/launcher3/OnAlarmListener;

.field private final mOnScrollHintAlarm:Lcom/voxel/launcher3/Alarm;

.field mPrevTargetRank:I

.field private mRearrangeOnClose:Z

.field private final mReorderAlarm:Lcom/voxel/launcher3/Alarm;

.field mReorderAlarmListener:Lcom/voxel/launcher3/OnAlarmListener;

.field private mScrollAreaOffset:I

.field mScrollHintDir:I

.field final mScrollPauseAlarm:Lcom/voxel/launcher3/Alarm;

.field mState:I

.field private mSuppressFolderDeletion:Z

.field mSuppressOnAdd:Z

.field mTargetRank:I

.field private mUninstallSuccessful:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/Folder;->sTempRect:Landroid/graphics/Rect;

    .line 1259
    sget-object v0, Lcom/voxel/launcher3/-$$Lambda$Folder$WgKHSCDZp7tDi-9d-DRnsse-hjI;->INSTANCE:Lcom/voxel/launcher3/-$$Lambda$Folder$WgKHSCDZp7tDi-9d-DRnsse-hjI;

    sput-object v0, Lcom/voxel/launcher3/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    .line 1269
    sget-object v0, Lcom/voxel/launcher3/-$$Lambda$Folder$12mRUzS7MMAtk135yLD9Nqe-CVE;->INSTANCE:Lcom/voxel/launcher3/-$$Lambda$Folder$12mRUzS7MMAtk135yLD9Nqe-CVE;

    sput-object v0, Lcom/voxel/launcher3/Folder;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 175
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    new-instance p2, Lcom/voxel/launcher3/Alarm;

    invoke-direct {p2}, Lcom/voxel/launcher3/Alarm;-><init>()V

    iput-object p2, p0, Lcom/voxel/launcher3/Folder;->mReorderAlarm:Lcom/voxel/launcher3/Alarm;

    .line 107
    new-instance p2, Lcom/voxel/launcher3/Alarm;

    invoke-direct {p2}, Lcom/voxel/launcher3/Alarm;-><init>()V

    iput-object p2, p0, Lcom/voxel/launcher3/Folder;->mOnExitAlarm:Lcom/voxel/launcher3/Alarm;

    .line 108
    new-instance p2, Lcom/voxel/launcher3/Alarm;

    invoke-direct {p2}, Lcom/voxel/launcher3/Alarm;-><init>()V

    iput-object p2, p0, Lcom/voxel/launcher3/Folder;->mOnScrollHintAlarm:Lcom/voxel/launcher3/Alarm;

    .line 109
    new-instance p2, Lcom/voxel/launcher3/Alarm;

    invoke-direct {p2}, Lcom/voxel/launcher3/Alarm;-><init>()V

    iput-object p2, p0, Lcom/voxel/launcher3/Folder;->mScrollPauseAlarm:Lcom/voxel/launcher3/Alarm;

    .line 111
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/voxel/launcher3/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    const/4 p2, -0x1

    .line 138
    iput p2, p0, Lcom/voxel/launcher3/Folder;->mState:I

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mRearrangeOnClose:Z

    .line 140
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mItemsInvalidated:Z

    .line 144
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mSuppressOnAdd:Z

    .line 145
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mDragInProgress:Z

    .line 146
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 147
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mSuppressFolderDeletion:Z

    .line 148
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 151
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mIsEditingName:Z

    .line 162
    iput p2, p0, Lcom/voxel/launcher3/Folder;->mScrollHintDir:I

    .line 163
    iput p2, p0, Lcom/voxel/launcher3/Folder;->mCurrentScrollDir:I

    .line 254
    new-instance p2, Lcom/voxel/launcher3/Folder$1;

    invoke-direct {p2, p0}, Lcom/voxel/launcher3/Folder$1;-><init>(Lcom/voxel/launcher3/Folder;)V

    iput-object p2, p0, Lcom/voxel/launcher3/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 580
    new-instance p2, Lcom/voxel/launcher3/Folder$2;

    invoke-direct {p2, p0}, Lcom/voxel/launcher3/Folder$2;-><init>(Lcom/voxel/launcher3/Folder;)V

    iput-object p2, p0, Lcom/voxel/launcher3/Folder;->mReorderAlarmListener:Lcom/voxel/launcher3/OnAlarmListener;

    .line 667
    new-instance p2, Lcom/voxel/launcher3/-$$Lambda$Folder$RjW4n87ADXXHAlDudFC9X0iaDv4;

    invoke-direct {p2, p0}, Lcom/voxel/launcher3/-$$Lambda$Folder$RjW4n87ADXXHAlDudFC9X0iaDv4;-><init>(Lcom/voxel/launcher3/Folder;)V

    iput-object p2, p0, Lcom/voxel/launcher3/Folder;->mOnExitAlarmListener:Lcom/voxel/launcher3/OnAlarmListener;

    .line 176
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/voxel/launcher3/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 180
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0025

    .line 181
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/Folder;->mExpandDuration:I

    const v0, 0x7f0b0026

    .line 182
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/Folder;->mMaterialExpandDuration:I

    const v0, 0x7f0b0027

    .line 183
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/Folder;->mMaterialExpandStagger:I

    .line 185
    sget-object v0, Lcom/voxel/launcher3/Folder;->sDefaultFolderName:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f120146

    .line 186
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/launcher3/Folder;->sDefaultFolderName:Ljava/lang/String;

    .line 188
    :cond_0
    sget-object v0, Lcom/voxel/launcher3/Folder;->sHintText:Ljava/lang/String;

    if-nez v0, :cond_1

    const v0, 0x7f120145

    .line 189
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/voxel/launcher3/Folder;->sHintText:Ljava/lang/String;

    .line 192
    :cond_1
    instance-of p2, p1, Lcom/voxel/launcher3/Launcher;

    if-eqz p2, :cond_2

    .line 193
    check-cast p1, Lcom/voxel/launcher3/Launcher;

    iput-object p1, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    :cond_2
    const/4 p1, 0x1

    .line 198
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Folder;->setFocusableInTouchMode(Z)V

    .line 201
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object p1

    .line 203
    sget-object p2, Lcom/voxel/launcher3/DeviceProfile$ParamType;->FOLDER:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/Folder;->mCellParams:Lcom/voxel/launcher3/CellParams;

    return-void
.end method

.method private beginDrag(Landroid/view/View;Z)Z
    .locals 5

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    .line 286
    instance-of v0, p2, Lcom/voxel/launcher3/ShortcutInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 287
    check-cast p2, Lcom/voxel/launcher3/ShortcutInfo;

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 292
    :cond_0
    new-instance v0, Lcom/voxel/launcher3/dragndrop/DragOptions;

    invoke-direct {v0}, Lcom/voxel/launcher3/dragndrop/DragOptions;-><init>()V

    .line 293
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isDesktopLockedCurrently()Z

    move-result v3

    iput-boolean v3, v0, Lcom/voxel/launcher3/dragndrop/DragOptions;->isDesktopLocked:Z

    .line 294
    invoke-static {p2}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->canProperlyShow(Lcom/voxel/launcher3/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    new-instance v3, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-direct {v3, p1, p2, p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;-><init>(Landroid/view/View;Lcom/voxel/launcher3/ItemInfo;Lcom/evie/common/dragndrop/DragSource;)V

    .line 296
    iget-object v4, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v4, v3}, Lcom/voxel/launcher3/Launcher;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    const/4 v4, 0x0

    .line 297
    invoke-virtual {v3, v4}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->createDeferDragCondition(Ljava/lang/Runnable;)Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;

    move-result-object v3

    iput-object v3, v0, Lcom/voxel/launcher3/dragndrop/DragOptions;->deferDragCondition:Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;

    .line 299
    :cond_1
    iget-object v3, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object v3

    invoke-virtual {v3, p1, p0, v0}, Lcom/voxel/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/evie/common/dragndrop/DragSource;Lcom/voxel/launcher3/dragndrop/DragOptions;)Lcom/voxel/launcher3/dragndrop/DragView;

    .line 301
    iput-object p2, p0, Lcom/voxel/launcher3/Folder;->mCurrentDragInfo:Lcom/voxel/launcher3/ShortcutInfo;

    .line 302
    iget p2, p2, Lcom/voxel/launcher3/ShortcutInfo;->rank:I

    iput p2, p0, Lcom/voxel/launcher3/Folder;->mEmptyCellRank:I

    .line 303
    iput-object p1, p0, Lcom/voxel/launcher3/Folder;->mCurrentDragView:Landroid/view/View;

    .line 305
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/FolderPagedView;->removeItem(Landroid/view/View;)V

    .line 306
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mCurrentDragInfo:Lcom/voxel/launcher3/ShortcutInfo;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/FolderInfo;->remove(Lcom/voxel/launcher3/ShortcutInfo;)V

    .line 307
    iput-boolean v1, p0, Lcom/voxel/launcher3/Folder;->mDragInProgress:Z

    .line 308
    iput-boolean v2, p0, Lcom/voxel/launcher3/Folder;->mItemAddedBackToSelfViaIcon:Z

    :cond_2
    return v1
.end method

.method private clearDragInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 682
    iput-object v0, p0, Lcom/voxel/launcher3/Folder;->mCurrentDragInfo:Lcom/voxel/launcher3/ShortcutInfo;

    .line 683
    iput-object v0, p0, Lcom/voxel/launcher3/Folder;->mCurrentDragView:Landroid/view/View;

    const/4 v0, 0x0

    .line 684
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mSuppressOnAdd:Z

    .line 685
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mIsExternalDrag:Z

    return-void
.end method

.method public static fromXml(Landroid/content/Context;)Lcom/voxel/launcher3/Folder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 450
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d0119

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/voxel/launcher3/Folder;

    return-object p0
.end method

.method private getContentAreaWidth()I
    .locals 2

    .line 879
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/FolderPagedView;->getDesiredWidth()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getFolderHeight(I)I
    .locals 2

    .line 883
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/voxel/launcher3/Folder;->mFolderNameHeight:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/voxel/launcher3/Folder;->mFooterHeight:I

    add-int/2addr v0, p1

    return v0
.end method

.method private getTargetRank(Lcom/voxel/launcher3/DropTarget$DragObject;[F)I
    .locals 2

    .line 598
    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object p1

    .line 599
    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mContentWrapper:Landroid/view/View;

    .line 600
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v1}, Lcom/voxel/launcher3/FolderPagedView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    aget p1, p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mContentWrapper:Landroid/view/View;

    .line 601
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v1}, Lcom/voxel/launcher3/FolderPagedView;->getTop()I

    move-result v1

    sub-int/2addr p1, v1

    .line 599
    invoke-virtual {p2, v0, p1}, Lcom/voxel/launcher3/FolderPagedView;->findNearestArea(II)I

    move-result p1

    return p1
.end method

.method private getViewForInfo(Lcom/voxel/launcher3/ShortcutInfo;)Landroid/view/View;
    .locals 2

    .line 1144
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$Folder$UoodmKmCO2mOsJN65KUh00F-5kM;

    invoke-direct {v1, p1}, Lcom/voxel/launcher3/-$$Lambda$Folder$UoodmKmCO2mOsJN65KUh00F-5kM;-><init>(Lcom/voxel/launcher3/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/FolderPagedView;->iterateOverItems(Lcom/voxel/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$bind$2(Lcom/voxel/launcher3/Folder;)V
    .locals 2

    .line 435
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->replaceFolderWithFinalItem()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getItemsInReadingOrder$7(Ljava/util/List;Ljava/util/Map;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1162
    move-object p4, p2

    check-cast p4, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$getItemsInReadingOrder$8(Lcom/voxel/launcher3/Folder;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1174
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic lambda$getViewForInfo$6(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$new$3(Lcom/voxel/launcher3/Folder;Lcom/voxel/launcher3/Alarm;)V
    .locals 0

    .line 667
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->completeDragExit()V

    return-void
.end method

.method public static synthetic lambda$onDropCompleted$4(Lcom/voxel/launcher3/Folder;Landroid/view/View;Lcom/voxel/launcher3/DropTarget$DragObject;ZZ)V
    .locals 0

    .line 712
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/voxel/launcher3/Folder;->onDropCompleted(Landroid/view/View;Lcom/evie/common/dragndrop/DragObjectAbstraction;ZZ)V

    const/4 p1, 0x0

    .line 713
    iput-object p1, p0, Lcom/voxel/launcher3/Folder;->mDeferredAction:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/voxel/launcher3/Folder;Landroid/view/View;)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {p1}, Lcom/voxel/launcher3/FolderPagedView;->isPageMoving()Z

    move-result p1

    if-nez p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->closeFolder()Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$1(Lcom/voxel/launcher3/Folder;)Z
    .locals 1

    const/4 v0, 0x1

    .line 226
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Folder;->doneEditingFolderName(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$replaceFolderWithFinalItem$5(Lcom/voxel/launcher3/Folder;)V
    .locals 13

    .line 973
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-wide v1, v1, Lcom/voxel/launcher3/FolderInfo;->container:J

    iget-object v3, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-wide v3, v3, Lcom/voxel/launcher3/FolderInfo;->screenId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/voxel/launcher3/Launcher;->getCellLayout(JJ)Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    .line 977
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 978
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-object v1, v1, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/voxel/launcher3/ShortcutInfo;

    .line 979
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    const v3, 0x7f0d0029

    invoke-virtual {v1, v3, v0, v4}, Lcom/voxel/launcher3/Launcher;->createShortcut(ILcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v1

    .line 980
    iget-object v3, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v5, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-wide v5, v5, Lcom/voxel/launcher3/FolderInfo;->container:J

    iget-object v7, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-wide v7, v7, Lcom/voxel/launcher3/FolderInfo;->screenId:J

    iget-object v9, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget v9, v9, Lcom/voxel/launcher3/FolderInfo;->cellX:I

    iget-object v10, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget v10, v10, Lcom/voxel/launcher3/FolderInfo;->cellY:I

    invoke-static/range {v3 .. v10}, Lcom/voxel/launcher3/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJII)V

    move-object v4, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v4, v1

    .line 983
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getItemCount()I

    move-result v1

    if-gt v1, v2, :cond_3

    .line 985
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v2, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    invoke-static {v1, v2}, Lcom/voxel/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    if-eqz v0, :cond_1

    .line 988
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 990
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    instance-of v1, v0, Lcom/voxel/launcher3/DropTarget;

    if-eqz v1, :cond_2

    .line 991
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    check-cast v0, Lcom/voxel/launcher3/DropTarget;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/voxel/launcher3/DropTarget;)V

    .line 993
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Launcher;->removeFolder(Lcom/voxel/launcher3/FolderInfo;)V

    :cond_3
    if-eqz v4, :cond_4

    .line 999
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object v3

    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-wide v5, v0, Lcom/voxel/launcher3/FolderInfo;->container:J

    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-wide v7, v0, Lcom/voxel/launcher3/FolderInfo;->screenId:J

    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget v9, v0, Lcom/voxel/launcher3/FolderInfo;->cellX:I

    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget v10, v0, Lcom/voxel/launcher3/FolderInfo;->cellY:I

    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget v11, v0, Lcom/voxel/launcher3/FolderInfo;->spanX:I

    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget v12, v0, Lcom/voxel/launcher3/FolderInfo;->spanY:I

    invoke-virtual/range {v3 .. v12}, Lcom/voxel/launcher3/Workspace;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    :cond_4
    return-void
.end method

.method static synthetic lambda$static$10(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;)I
    .locals 2

    .line 1270
    iget-object v0, p0, Lcom/voxel/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    .line 1271
    iget-object v1, p1, Lcom/voxel/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-nez v1, :cond_2

    const/4 p0, -0x1

    return p0

    .line 1280
    :cond_2
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object p0, p0, Lcom/voxel/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/voxel/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$static$9(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;)I
    .locals 2

    .line 1260
    iget v0, p0, Lcom/voxel/launcher3/ItemInfo;->rank:I

    iget v1, p1, Lcom/voxel/launcher3/ItemInfo;->rank:I

    if-eq v0, v1, :cond_0

    .line 1261
    iget p0, p0, Lcom/voxel/launcher3/ItemInfo;->rank:I

    iget p1, p1, Lcom/voxel/launcher3/ItemInfo;->rank:I

    sub-int/2addr p0, p1

    return p0

    .line 1262
    :cond_0
    iget v0, p0, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iget v1, p1, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_1

    .line 1263
    iget p0, p0, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iget p1, p1, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    sub-int/2addr p0, p1

    return p0

    .line 1265
    :cond_1
    iget p0, p0, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget p1, p1, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private showScrollHint(ILcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 2

    .line 650
    iget v0, p0, Lcom/voxel/launcher3/Folder;->mScrollHintDir:I

    if-eq v0, p1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/FolderPagedView;->showScrollHint(I)V

    .line 652
    iput p1, p0, Lcom/voxel/launcher3/Folder;->mScrollHintDir:I

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mOnScrollHintAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/voxel/launcher3/Folder;->mCurrentScrollDir:I

    if-eq v0, p1, :cond_2

    .line 657
    :cond_1
    iput p1, p0, Lcom/voxel/launcher3/Folder;->mCurrentScrollDir:I

    .line 658
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mOnScrollHintAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Alarm;->cancelAlarm()V

    .line 659
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mOnScrollHintAlarm:Lcom/voxel/launcher3/Alarm;

    new-instance v0, Lcom/voxel/launcher3/Folder$OnScrollHintListener;

    invoke-direct {v0, p0, p2}, Lcom/voxel/launcher3/Folder$OnScrollHintListener;-><init>(Lcom/voxel/launcher3/Folder;Lcom/voxel/launcher3/DropTarget$DragObject;)V

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/Alarm;->setOnAlarmListener(Lcom/voxel/launcher3/OnAlarmListener;)V

    .line 660
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mOnScrollHintAlarm:Lcom/voxel/launcher3/Alarm;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/Alarm;->setAlarm(J)V

    .line 662
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mReorderAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Alarm;->cancelAlarm()V

    .line 663
    iget p1, p0, Lcom/voxel/launcher3/Folder;->mEmptyCellRank:I

    iput p1, p0, Lcom/voxel/launcher3/Folder;->mTargetRank:I

    :cond_2
    return-void
.end method

.method private updateItemLocationsInDatabaseBatch()V
    .locals 5

    .line 819
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 822
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    .line 823
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 824
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 825
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 826
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/ItemInfo;

    .line 827
    iput v3, v4, Lcom/voxel/launcher3/ItemInfo;->rank:I

    .line 828
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v3, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-wide v3, v3, Lcom/voxel/launcher3/FolderInfo;->id:J

    invoke-static {v0, v1, v3, v4, v2}, Lcom/voxel/launcher3/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/ArrayList;JI)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)Z
    .locals 3

    .line 553
    iget-object v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    .line 555
    iget-boolean p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->isDesktopLocked:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    .line 558
    :cond_0
    iget p1, v0, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->isFull()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public beginExternalDrag(Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 1

    .line 455
    iput-object p1, p0, Lcom/voxel/launcher3/Folder;->mCurrentDragInfo:Lcom/voxel/launcher3/ShortcutInfo;

    .line 456
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/FolderPagedView;->allocateRankForNewItem(Lcom/voxel/launcher3/ShortcutInfo;)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/Folder;->mEmptyCellRank:I

    const/4 p1, 0x1

    .line 457
    iput-boolean p1, p0, Lcom/voxel/launcher3/Folder;->mIsExternalDrag:Z

    .line 458
    iput-boolean p1, p0, Lcom/voxel/launcher3/Folder;->mDragInProgress:Z

    return-void
.end method

.method public bind(Lcom/voxel/launcher3/FolderInfo;ZZ)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    .line 402
    iget-object p1, p1, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    if-eqz p3, :cond_0

    .line 404
    sget-object p3, Lcom/voxel/launcher3/Folder;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 406
    :cond_0
    sget-object p3, Lcom/voxel/launcher3/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 409
    :goto_0
    iget-object p3, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {p3, p1, p2}, Lcom/voxel/launcher3/FolderPagedView;->bindItems(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 414
    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    if-eqz p2, :cond_1

    .line 415
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/ShortcutInfo;

    .line 416
    iget-object p3, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    invoke-virtual {p3, p2}, Lcom/voxel/launcher3/FolderInfo;->remove(Lcom/voxel/launcher3/ShortcutInfo;)V

    .line 417
    iget-object p3, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {p3, p2}, Lcom/voxel/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 421
    iput-boolean p1, p0, Lcom/voxel/launcher3/Folder;->mItemsInvalidated:Z

    .line 422
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->updateTextViewFocus()V

    .line 423
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/FolderInfo;->addListener(Lcom/voxel/launcher3/FolderInfo$FolderListener;)V

    .line 425
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-object p1, p1, Lcom/voxel/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/voxel/launcher3/Folder;->sDefaultFolderName:Ljava/lang/String;

    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-object p2, p2, Lcom/voxel/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 426
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-object p2, p2, Lcom/voxel/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 428
    :cond_2
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 433
    :goto_2
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    if-eqz p1, :cond_3

    .line 434
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    new-instance p2, Lcom/voxel/launcher3/-$$Lambda$Folder$2zJZH3sYoBN7n0dId1P4eH4KGKo;

    invoke-direct {p2, p0}, Lcom/voxel/launcher3/-$$Lambda$Folder$2zJZH3sYoBN7n0dId1P4eH4KGKo;-><init>(Lcom/voxel/launcher3/Folder;)V

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/FolderIcon;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public completeDragExit()V
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-boolean v0, v0, Lcom/voxel/launcher3/FolderInfo;->opened:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->closeFolder()Z

    .line 672
    iput-boolean v1, p0, Lcom/voxel/launcher3/Folder;->mRearrangeOnClose:Z

    goto :goto_0

    .line 673
    :cond_0
    iget v0, p0, Lcom/voxel/launcher3/Folder;->mState:I

    if-ne v0, v1, :cond_1

    .line 674
    iput-boolean v1, p0, Lcom/voxel/launcher3/Folder;->mRearrangeOnClose:Z

    goto :goto_0

    .line 676
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->rearrangeChildren()V

    .line 677
    invoke-direct {p0}, Lcom/voxel/launcher3/Folder;->clearDragInfo()V

    :goto_0
    return-void
.end method

.method public dismissEditingName()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v0, 0x1

    .line 324
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Folder;->doneEditingFolderName(Z)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public doneEditingFolderName(Z)V
    .locals 4

    .line 328
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isDesktopLockedCurrently()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-object v0, v0, Lcom/voxel/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    sget-object v1, Lcom/voxel/launcher3/Folder;->sHintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/ExtendedEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    if-eqz v1, :cond_1

    .line 339
    iget-object v2, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    invoke-static {v1, v2}, Lcom/voxel/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/16 p1, 0x20

    .line 344
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120149

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    .line 348
    :cond_2
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->requestFocus()Z

    .line 350
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {p1}, Lcom/voxel/launcher3/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1, v1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 351
    iput-boolean v1, p0, Lcom/voxel/launcher3/Folder;->mIsEditingName:Z

    return-void
.end method

.method public getContent()Lcom/voxel/launcher3/FolderPagedView;
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    return-object v0
.end method

.method public getContentAreaHeight()I
    .locals 2

    .line 869
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 870
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    .line 871
    iget v0, v0, Lcom/voxel/launcher3/DeviceProfile;->availableHeightPx:I

    iget v1, p0, Lcom/voxel/launcher3/Folder;->mFooterHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/voxel/launcher3/Folder;->mFolderNameHeight:I

    sub-int/2addr v0, v1

    .line 873
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    .line 874
    invoke-virtual {v1}, Lcom/voxel/launcher3/FolderPagedView;->getDesiredHeight()I

    move-result v1

    .line 873
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x5

    .line 875
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getEditTextRegion()Landroid/view/View;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    return-object v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 2

    .line 1204
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Folder;->getHitRect(Landroid/graphics/Rect;)V

    .line 1205
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/voxel/launcher3/Folder;->mScrollAreaOffset:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1206
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/voxel/launcher3/Folder;->mScrollAreaOffset:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public getInfo()Lcom/voxel/launcher3/FolderInfo;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    return-object v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/FolderPagedView;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemsInReadingOrder()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1155
    iget-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mItemsInvalidated:Z

    if-eqz v0, :cond_2

    .line 1156
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1158
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getFolderAlphabetSortEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1161
    iget-object v2, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    new-instance v3, Lcom/voxel/launcher3/-$$Lambda$Folder$I5eS0Uira6uBjE3-q2P9pguPZT4;

    invoke-direct {v3, v0, v1}, Lcom/voxel/launcher3/-$$Lambda$Folder$I5eS0Uira6uBjE3-q2P9pguPZT4;-><init>(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/FolderPagedView;->iterateOverItems(Lcom/voxel/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    .line 1167
    sget-object v2, Lcom/voxel/launcher3/Folder;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/ShortcutInfo;

    .line 1169
    iget-object v3, p0, Lcom/voxel/launcher3/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$Folder$hMYExIYs_fTp1q9Ov38CJ4z5HBE;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/-$$Lambda$Folder$hMYExIYs_fTp1q9Ov38CJ4z5HBE;-><init>(Lcom/voxel/launcher3/Folder;)V

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/FolderPagedView;->iterateOverItems(Lcom/voxel/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    :cond_1
    const/4 v0, 0x0

    .line 1178
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mItemsInvalidated:Z

    .line 1180
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method getPivotXForIconAnimation()F
    .locals 1

    .line 862
    iget v0, p0, Lcom/voxel/launcher3/Folder;->mFolderIconPivotX:F

    return v0
.end method

.method getPivotYForIconAnimation()F
    .locals 1

    .line 865
    iget v0, p0, Lcom/voxel/launcher3/Folder;->mFolderIconPivotY:F

    return v0
.end method

.method public hideItem(Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 1

    .line 1100
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Folder;->getViewForInfo(Lcom/voxel/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    .line 1101
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method isDestroyed()Z
    .locals 1

    .line 1013
    iget-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mDestroyed:Z

    return v0
.end method

.method public isDropEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEditingName()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mIsEditingName:Z

    return v0
.end method

.method public isFull()Z
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/FolderPagedView;->isFull()Z

    move-result v0

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 589
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public notifyDrop()V
    .locals 1

    .line 848
    iget-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 849
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mItemAddedBackToSelfViaIcon:Z

    :cond_0
    return-void
.end method

.method public onAdd(Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 9

    .line 1113
    iget-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mSuppressOnAdd:Z

    if-eqz v0, :cond_0

    return-void

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/FolderPagedView;->allocateRankForNewItem(Lcom/voxel/launcher3/ShortcutInfo;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/voxel/launcher3/FolderPagedView;->createAndAddViewForRank(Lcom/voxel/launcher3/ShortcutInfo;I)Landroid/view/View;

    const/4 v0, 0x1

    .line 1115
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mItemsInvalidated:Z

    .line 1116
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    if-eqz v1, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-wide v3, v0, Lcom/voxel/launcher3/FolderInfo;->id:J

    const-wide/16 v5, 0x0

    iget v7, p1, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    iget v8, p1, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/voxel/launcher3/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJII)V

    .line 1121
    :cond_1
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getFolderAlphabetSortEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1122
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->rearrangeChildren()V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 273
    instance-of v0, v0, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Launcher;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCloseComplete()V
    .locals 3

    .line 945
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/voxel/launcher3/DropTarget;)V

    .line 950
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->clearFocus()V

    .line 951
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    invoke-virtual {v0}, Lcom/voxel/launcher3/FolderIcon;->requestFocus()Z

    .line 953
    iget-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mRearrangeOnClose:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 954
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->rearrangeChildren()V

    .line 955
    iput-boolean v1, p0, Lcom/voxel/launcher3/Folder;->mRearrangeOnClose:Z

    .line 957
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_3

    .line 958
    iget-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mDragInProgress:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mSuppressFolderDeletion:Z

    if-nez v0, :cond_2

    .line 959
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->replaceFolderWithFinalItem()V

    goto :goto_0

    .line 960
    :cond_2
    iget-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_4

    .line 961
    iput-boolean v2, p0, Lcom/voxel/launcher3/Folder;->mDeleteFolderOnDropCompleted:Z

    goto :goto_0

    .line 963
    :cond_3
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/FolderPagedView;->getPageCount()I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 964
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/FolderPagedView;->setCurrentPage(I)V

    .line 966
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/voxel/launcher3/Folder;->mSuppressFolderDeletion:Z

    .line 967
    invoke-direct {p0}, Lcom/voxel/launcher3/Folder;->clearDragInfo()V

    return-void
.end method

.method public onDragEnd()V
    .locals 4

    .line 506
    iget-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mIsExternalDrag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->completeDragExit()V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mDragBackgroundAlphaAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 511
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 512
    iput-object v0, p0, Lcom/voxel/launcher3/Folder;->mDragBackgroundAlphaAnim:Landroid/animation/Animator;

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-boolean v0, v0, Lcom/voxel/launcher3/FolderInfo;->opened:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "alpha"

    const/4 v2, 0x1

    .line 516
    new-array v3, v2, [I

    aput v1, v3, v1

    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 517
    iget-object v3, p0, Lcom/voxel/launcher3/Folder;->mDragBackground:Landroid/graphics/drawable/GradientDrawable;

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v1

    .line 518
    invoke-static {v3, p0, v2}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/Folder;->mDragBackgroundAlphaAnim:Landroid/animation/Animator;

    .line 519
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mDragBackgroundAlphaAnim:Landroid/animation/Animator;

    iget v1, p0, Lcom/voxel/launcher3/Folder;->mMaterialExpandDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 521
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mDragBackgroundAlphaAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mDragBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    :goto_0
    return-void
.end method

.method public onDragEnter(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 1

    const/4 v0, -0x1

    .line 573
    iput v0, p0, Lcom/voxel/launcher3/Folder;->mPrevTargetRank:I

    .line 574
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mOnExitAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Alarm;->cancelAlarm()V

    .line 577
    iget-object v0, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragRegionWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/voxel/launcher3/Folder;->mScrollAreaOffset:I

    return-void
.end method

.method public onDragExit(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 2

    .line 691
    iget-boolean p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez p1, :cond_0

    .line 692
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mOnExitAlarm:Lcom/voxel/launcher3/Alarm;

    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mOnExitAlarmListener:Lcom/voxel/launcher3/OnAlarmListener;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/Alarm;->setOnAlarmListener(Lcom/voxel/launcher3/OnAlarmListener;)V

    .line 693
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mOnExitAlarm:Lcom/voxel/launcher3/Alarm;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/Alarm;->setAlarm(J)V

    .line 695
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mReorderAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Alarm;->cancelAlarm()V

    .line 697
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mOnScrollHintAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Alarm;->cancelAlarm()V

    .line 698
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mScrollPauseAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Alarm;->cancelAlarm()V

    .line 699
    iget p1, p0, Lcom/voxel/launcher3/Folder;->mScrollHintDir:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 700
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {p1}, Lcom/voxel/launcher3/FolderPagedView;->clearScrollHint()V

    .line 701
    iput v0, p0, Lcom/voxel/launcher3/Folder;->mScrollHintDir:I

    :cond_1
    return-void
.end method

.method public onDragOver(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 1

    const/16 v0, 0xfa

    .line 594
    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/Folder;->onDragOver(Lcom/voxel/launcher3/DropTarget$DragObject;I)V

    return-void
.end method

.method onDragOver(Lcom/voxel/launcher3/DropTarget$DragObject;I)V
    .locals 6

    .line 605
    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mScrollPauseAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {p2}, Lcom/voxel/launcher3/Alarm;->alarmPending()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 609
    :cond_0
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getFolderAlphabetSortEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 612
    :cond_1
    iget-boolean p2, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->isDesktopLocked:Z

    if-eqz p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x2

    .line 616
    new-array p2, p2, [F

    .line 617
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/Folder;->getTargetRank(Lcom/voxel/launcher3/DropTarget$DragObject;[F)I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/Folder;->mTargetRank:I

    .line 619
    iget v0, p0, Lcom/voxel/launcher3/Folder;->mTargetRank:I

    iget v1, p0, Lcom/voxel/launcher3/Folder;->mPrevTargetRank:I

    if-eq v0, v1, :cond_3

    .line 620
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mReorderAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Alarm;->cancelAlarm()V

    .line 621
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mReorderAlarm:Lcom/voxel/launcher3/Alarm;

    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mReorderAlarmListener:Lcom/voxel/launcher3/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Alarm;->setOnAlarmListener(Lcom/voxel/launcher3/OnAlarmListener;)V

    .line 622
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mReorderAlarm:Lcom/voxel/launcher3/Alarm;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/voxel/launcher3/Alarm;->setAlarm(J)V

    .line 623
    iget v0, p0, Lcom/voxel/launcher3/Folder;->mTargetRank:I

    iput v0, p0, Lcom/voxel/launcher3/Folder;->mPrevTargetRank:I

    :cond_3
    const/4 v0, 0x0

    .line 626
    aget p2, p2, v0

    .line 627
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v1}, Lcom/voxel/launcher3/FolderPagedView;->getNextPage()I

    move-result v1

    .line 629
    iget-object v2, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v2}, Lcom/voxel/launcher3/FolderPagedView;->getCurrentCellLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/CellLayout;->getCellWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ee66666    # 0.45f

    mul-float v2, v2, v3

    const/4 v3, 0x1

    cmpg-float v4, p2, v2

    if-gez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 632
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    cmpl-float p2, p2, v5

    if-lez p2, :cond_5

    const/4 p2, 0x1

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    :goto_1
    if-lez v1, :cond_7

    .line 634
    iget-object v2, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    iget-boolean v2, v2, Lcom/voxel/launcher3/FolderPagedView;->mIsRtl:Z

    if-eqz v2, :cond_6

    if-eqz p2, :cond_7

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    .line 635
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/voxel/launcher3/Folder;->showScrollHint(ILcom/voxel/launcher3/DropTarget$DragObject;)V

    goto :goto_4

    .line 636
    :cond_7
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/FolderPagedView;->getPageCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    iget-boolean v0, v0, Lcom/voxel/launcher3/FolderPagedView;->mIsRtl:Z

    if-eqz v0, :cond_8

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_8
    if-eqz p2, :cond_9

    .line 638
    :goto_3
    invoke-direct {p0, v3, p1}, Lcom/voxel/launcher3/Folder;->showScrollHint(ILcom/voxel/launcher3/DropTarget$DragObject;)V

    goto :goto_4

    .line 640
    :cond_9
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mOnScrollHintAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Alarm;->cancelAlarm()V

    .line 641
    iget p1, p0, Lcom/voxel/launcher3/Folder;->mScrollHintDir:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_a

    .line 642
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {p1}, Lcom/voxel/launcher3/FolderPagedView;->clearScrollHint()V

    .line 643
    iput p2, p0, Lcom/voxel/launcher3/Folder;->mScrollHintDir:I

    :cond_a
    :goto_4
    return-void
.end method

.method public onDragStart(Lcom/voxel/launcher3/DropTarget$DragObject;Lcom/voxel/launcher3/dragndrop/DragOptions;)V
    .locals 3

    .line 469
    iget-object p2, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p0, :cond_3

    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-boolean p2, p2, Lcom/voxel/launcher3/FolderInfo;->opened:Z

    if-eqz p2, :cond_3

    .line 471
    iget-object p2, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    instance-of p2, p2, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz p2, :cond_0

    .line 472
    iget-object p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    check-cast p1, Lcom/voxel/launcher3/ShortcutInfo;

    goto :goto_0

    .line 473
    :cond_0
    iget-object p2, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    instance-of p2, p2, Lcom/voxel/launcher3/AppInfo;

    if-eqz p2, :cond_1

    .line 474
    iget-object p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    check-cast p1, Lcom/voxel/launcher3/AppInfo;

    invoke-virtual {p1}, Lcom/voxel/launcher3/AppInfo;->makeShortcut()Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object p1

    .line 475
    iput v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->spanX:I

    .line 476
    iput v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->spanY:I

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 480
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->isFull()Z

    move-result p2

    if-nez p2, :cond_2

    .line 481
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Folder;->beginExternalDrag(Lcom/voxel/launcher3/ShortcutInfo;)V

    goto :goto_1

    .line 483
    :cond_2
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->completeDragExit()V

    .line 487
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mDragBackgroundAlphaAnim:Landroid/animation/Animator;

    if-eqz p1, :cond_4

    .line 488
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 489
    iput-object v0, p0, Lcom/voxel/launcher3/Folder;->mDragBackgroundAlphaAnim:Landroid/animation/Animator;

    .line 492
    :cond_4
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-boolean p1, p1, Lcom/voxel/launcher3/FolderInfo;->opened:Z

    const/16 p2, 0xff

    if-eqz p1, :cond_5

    const-string p1, "alpha"

    .line 493
    new-array v0, v1, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 494
    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mDragBackground:Landroid/graphics/drawable/GradientDrawable;

    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v0, v2

    .line 495
    invoke-static {p2, p0, v0}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/Folder;->mDragBackgroundAlphaAnim:Landroid/animation/Animator;

    .line 496
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mDragBackgroundAlphaAnim:Landroid/animation/Animator;

    iget p2, p0, Lcom/voxel/launcher3/Folder;->mMaterialExpandDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 498
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mDragBackgroundAlphaAnim:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 500
    :cond_5
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mDragBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    :goto_2
    return-void
.end method

.method public onDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)V
    .locals 12

    .line 1033
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    iget v1, p0, Lcom/voxel/launcher3/Folder;->mEmptyCellRank:I

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/FolderPagedView;->rankOnCurrentPage(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1035
    invoke-direct {p0, p1, v1}, Lcom/voxel/launcher3/Folder;->getTargetRank(Lcom/voxel/launcher3/DropTarget$DragObject;[F)I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/Folder;->mTargetRank:I

    .line 1038
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mReorderAlarmListener:Lcom/voxel/launcher3/OnAlarmListener;

    iget-object v2, p0, Lcom/voxel/launcher3/Folder;->mReorderAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-interface {v0, v2}, Lcom/voxel/launcher3/OnAlarmListener;->onAlarm(Lcom/voxel/launcher3/Alarm;)V

    .line 1040
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mOnScrollHintAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Alarm;->cancelAlarm()V

    .line 1041
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mScrollPauseAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Alarm;->cancelAlarm()V

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/FolderPagedView;->completePendingPageChanges()V

    .line 1046
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mCurrentDragInfo:Lcom/voxel/launcher3/ShortcutInfo;

    .line 1047
    iget-boolean v2, p0, Lcom/voxel/launcher3/Folder;->mIsExternalDrag:Z

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    .line 1048
    iget-object v2, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    iget v3, p0, Lcom/voxel/launcher3/Folder;->mEmptyCellRank:I

    invoke-virtual {v2, v0, v3}, Lcom/voxel/launcher3/FolderPagedView;->createAndAddViewForRank(Lcom/voxel/launcher3/ShortcutInfo;I)Landroid/view/View;

    move-result-object v11

    .line 1051
    iget-object v2, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v3, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-wide v4, v3, Lcom/voxel/launcher3/FolderInfo;->id:J

    const-wide/16 v6, 0x0

    iget v8, v0, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    iget v9, v0, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    move-object v3, v0

    invoke-static/range {v2 .. v9}, Lcom/voxel/launcher3/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJII)V

    .line 1055
    iget-object v2, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragSource:Lcom/evie/common/dragndrop/DragSource;

    if-eq v2, p0, :cond_1

    .line 1056
    invoke-direct {p0}, Lcom/voxel/launcher3/Folder;->updateItemLocationsInDatabaseBatch()V

    .line 1058
    :cond_1
    iput-boolean v10, p0, Lcom/voxel/launcher3/Folder;->mIsExternalDrag:Z

    goto :goto_0

    .line 1060
    :cond_2
    iget-object v11, p0, Lcom/voxel/launcher3/Folder;->mCurrentDragView:Landroid/view/View;

    .line 1061
    iget-object v2, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    iget v3, p0, Lcom/voxel/launcher3/Folder;->mEmptyCellRank:I

    invoke-virtual {v2, v11, v0, v3}, Lcom/voxel/launcher3/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/voxel/launcher3/ShortcutInfo;I)V

    .line 1064
    :goto_0
    iget-object v2, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/voxel/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1067
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getScaleX()F

    move-result v2

    .line 1068
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getScaleY()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1069
    invoke-virtual {p0, v4}, Lcom/voxel/launcher3/Folder;->setScaleX(F)V

    .line 1070
    invoke-virtual {p0, v4}, Lcom/voxel/launcher3/Folder;->setScaleY(F)V

    .line 1071
    iget-object v4, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v4

    iget-object p1, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v4, p1, v11, v1, v1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/voxel/launcher3/dragndrop/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 1073
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/Folder;->setScaleX(F)V

    .line 1074
    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/Folder;->setScaleY(F)V

    goto :goto_1

    .line 1076
    :cond_3
    iput-boolean v10, p1, Lcom/voxel/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1077
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const/4 p1, 0x1

    .line 1079
    iput-boolean p1, p0, Lcom/voxel/launcher3/Folder;->mItemsInvalidated:Z

    .line 1080
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->rearrangeChildren()V

    .line 1083
    iput-boolean p1, p0, Lcom/voxel/launcher3/Folder;->mSuppressOnAdd:Z

    .line 1084
    iget-object v2, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    invoke-virtual {v2, v0}, Lcom/voxel/launcher3/FolderInfo;->add(Lcom/voxel/launcher3/ShortcutInfo;)V

    .line 1085
    iput-boolean v10, p0, Lcom/voxel/launcher3/Folder;->mSuppressOnAdd:Z

    .line 1087
    iput-object v1, p0, Lcom/voxel/launcher3/Folder;->mCurrentDragInfo:Lcom/voxel/launcher3/ShortcutInfo;

    .line 1088
    iput-boolean v10, p0, Lcom/voxel/launcher3/Folder;->mDragInProgress:Z

    .line 1090
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/FolderPagedView;->getPageCount()I

    move-result v0

    if-le v0, p1, :cond_4

    .line 1092
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, v1, p1, v2}, Lcom/voxel/launcher3/FolderInfo;->setOption(IZLandroid/content/Context;)V

    :cond_4
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/evie/common/dragndrop/DragObjectAbstraction;ZZ)V
    .locals 6

    .line 707
    move-object v3, p2

    check-cast v3, Lcom/voxel/launcher3/DropTarget$DragObject;

    .line 709
    iget-boolean p2, p0, Lcom/voxel/launcher3/Folder;->mDeferDropAfterUninstall:Z

    if-eqz p2, :cond_0

    const-string p2, "Launcher.Folder"

    const-string v0, "Deferred handling drop because waiting for uninstall."

    .line 710
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    new-instance p2, Lcom/voxel/launcher3/-$$Lambda$Folder$JG4J-l6ilK_X-J5BP2nNgCZ6hVs;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/-$$Lambda$Folder$JG4J-l6ilK_X-J5BP2nNgCZ6hVs;-><init>(Lcom/voxel/launcher3/Folder;Landroid/view/View;Lcom/voxel/launcher3/DropTarget$DragObject;ZZ)V

    iput-object p2, p0, Lcom/voxel/launcher3/Folder;->mDeferredAction:Ljava/lang/Runnable;

    return-void

    .line 718
    :cond_0
    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mDeferredAction:Ljava/lang/Runnable;

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p4, :cond_3

    if-eqz p2, :cond_2

    .line 719
    iget-boolean p2, p0, Lcom/voxel/launcher3/Folder;->mUninstallSuccessful:Z

    if-eqz p2, :cond_3

    :cond_2
    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    .line 723
    iget-boolean p4, p0, Lcom/voxel/launcher3/Folder;->mDeleteFolderOnDropCompleted:Z

    if-eqz p4, :cond_7

    iget-boolean p4, p0, Lcom/voxel/launcher3/Folder;->mItemAddedBackToSelfViaIcon:Z

    if-nez p4, :cond_7

    if-eq p1, p0, :cond_7

    .line 724
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->replaceFolderWithFinalItem()V

    goto :goto_3

    .line 728
    :cond_4
    iget-object p4, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-boolean p4, p4, Lcom/voxel/launcher3/FolderInfo;->opened:Z

    if-eqz p4, :cond_5

    .line 729
    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/Folder;->onDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    goto :goto_3

    .line 731
    :cond_5
    iget-object p4, v3, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    check-cast p4, Lcom/voxel/launcher3/ShortcutInfo;

    .line 732
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mCurrentDragView:Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p4, :cond_6

    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mCurrentDragView:Landroid/view/View;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    .line 733
    invoke-virtual {v1, p4, p3}, Lcom/voxel/launcher3/FolderPagedView;->createNewView(Lcom/voxel/launcher3/ShortcutInfo;Z)Landroid/view/View;

    move-result-object v1

    .line 734
    :goto_2
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    .line 735
    iget p4, p4, Lcom/voxel/launcher3/ShortcutInfo;->rank:I

    invoke-virtual {v2, p4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 736
    iget-object p4, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p4, v2, v1}, Lcom/voxel/launcher3/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    .line 737
    iput-boolean p3, p0, Lcom/voxel/launcher3/Folder;->mItemsInvalidated:Z

    .line 739
    iput-boolean p3, p0, Lcom/voxel/launcher3/Folder;->mSuppressOnAdd:Z

    .line 740
    iget-object p4, p0, Lcom/voxel/launcher3/Folder;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    invoke-virtual {p4, v3}, Lcom/voxel/launcher3/FolderIcon;->onDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)V

    .line 741
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mSuppressOnAdd:Z

    :cond_7
    :goto_3
    if-eq p1, p0, :cond_9

    .line 746
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mOnExitAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Alarm;->alarmPending()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 747
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mOnExitAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Alarm;->cancelAlarm()V

    if-nez p2, :cond_8

    .line 749
    iput-boolean p3, p0, Lcom/voxel/launcher3/Folder;->mSuppressFolderDeletion:Z

    .line 751
    :cond_8
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mScrollPauseAlarm:Lcom/voxel/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Alarm;->cancelAlarm()V

    .line 752
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->completeDragExit()V

    .line 756
    :cond_9
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 757
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mDragInProgress:Z

    .line 758
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mItemAddedBackToSelfViaIcon:Z

    const/4 p1, 0x0

    .line 759
    iput-object p1, p0, Lcom/voxel/launcher3/Folder;->mCurrentDragInfo:Lcom/voxel/launcher3/ShortcutInfo;

    .line 760
    iput-object p1, p0, Lcom/voxel/launcher3/Folder;->mCurrentDragView:Landroid/view/View;

    .line 761
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mSuppressOnAdd:Z

    .line 765
    invoke-direct {p0}, Lcom/voxel/launcher3/Folder;->updateItemLocationsInDatabaseBatch()V

    .line 769
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getItemCount()I

    move-result p1

    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {p2}, Lcom/voxel/launcher3/FolderPagedView;->itemsPerPage()I

    move-result p2

    if-gt p1, p2, :cond_a

    .line 771
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    const/4 p2, 0x4

    iget-object p3, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1, p2, v0, p3}, Lcom/voxel/launcher3/FolderInfo;->setOption(IZLandroid/content/Context;)V

    :cond_a
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->dismissEditingName()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 208
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a011b

    .line 209
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/Folder;->mContentWrapper:Landroid/view/View;

    const v0, 0x7f0a011a

    .line 210
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/FolderPagedView;

    iput-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    .line 211
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/FolderPagedView;->setFolder(Lcom/voxel/launcher3/Folder;)V

    .line 212
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$Folder$4TIDrwsrd9Lp48tqDNK1gkZ00w0;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/-$$Lambda$Folder$4TIDrwsrd9Lp48tqDNK1gkZ00w0;-><init>(Lcom/voxel/launcher3/Folder;)V

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/FolderPagedView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/voxel/launcher3/Folder;->mDragBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 220
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mDragBackground:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 221
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    iget-object v2, p0, Lcom/voxel/launcher3/Folder;->mDragBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/FolderPagedView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a011f

    .line 223
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/ExtendedEditText;

    iput-object v0, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    .line 224
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$Folder$d4bl1_ecylp3Aqm18syuNo1cAes;

    invoke-direct {v2, p0}, Lcom/voxel/launcher3/-$$Lambda$Folder$d4bl1_ecylp3Aqm18syuNo1cAes;-><init>(Lcom/voxel/launcher3/Folder;)V

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/ExtendedEditText;->setOnBackKeyListener(Lcom/voxel/launcher3/ExtendedEditText$OnBackKeyListener;)V

    .line 229
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 234
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v0, v1, v1}, Lcom/voxel/launcher3/ExtendedEditText;->measure(II)V

    .line 235
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ExtendedEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 236
    iget-object v2, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v2}, Lcom/voxel/launcher3/ExtendedEditText;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/voxel/launcher3/Folder;->mFolderNameHeight:I

    .line 239
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    iget-object v2, p0, Lcom/voxel/launcher3/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/ExtendedEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 240
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/ExtendedEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 241
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/ExtendedEditText;->setSelectAllOnFocus(Z)V

    .line 242
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ExtendedEditText;->getInputType()I

    move-result v2

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    or-int/lit16 v2, v2, 0x2000

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/ExtendedEditText;->setInputType(I)V

    const v0, 0x7f0a011c

    .line 245
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/Folder;->mFooter:Landroid/view/View;

    .line 250
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 251
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/Folder;->mFooterHeight:I

    return-void
.end method

.method public onFlingToDelete(Lcom/voxel/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 1189
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isDesktopLockedCurrently()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1190
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 1191
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {p1}, Lcom/voxel/launcher3/FolderPagedView;->requestFocus()Z

    .line 1192
    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    if-eqz p1, :cond_1

    .line 1193
    new-instance p2, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;

    invoke-direct {p2}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;-><init>()V

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/Launcher;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    goto :goto_0

    .line 1196
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->startEditingFolderName()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFolderIconAttachedToWindow()V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/dragndrop/DragController;->addDragListener(Lcom/voxel/launcher3/dragndrop/DragController$DragListener;)V

    :cond_0
    return-void
.end method

.method public onFolderIconDetachedFromWindow()V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/dragndrop/DragController;->removeDragListener(Lcom/voxel/launcher3/dragndrop/DragController$DragListener;)V

    :cond_0
    return-void
.end method

.method public onItemsChanged()V
    .locals 0

    .line 1148
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->updateTextViewFocus()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 281
    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/Folder;->beginDrag(Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 887
    invoke-direct {p0}, Lcom/voxel/launcher3/Folder;->getContentAreaWidth()I

    move-result p2

    .line 888
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getContentAreaHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 890
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 891
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 893
    iget-object v4, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v4, p2, v0}, Lcom/voxel/launcher3/FolderPagedView;->setFixedSize(II)V

    .line 894
    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mContentWrapper:Landroid/view/View;

    invoke-virtual {p2, v2, v3}, Landroid/view/View;->measure(II)V

    .line 896
    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {p2}, Lcom/voxel/launcher3/FolderPagedView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 897
    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/voxel/launcher3/FolderPagedView;->getPageAt(I)Lcom/voxel/launcher3/CellLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/CellLayout;->getCellWidth()I

    move-result p2

    iget-object v3, p0, Lcom/voxel/launcher3/Folder;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v3, v3, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    sub-int/2addr p2, v3

    div-int/lit8 p2, p2, 0x2

    .line 899
    iget-object v3, p0, Lcom/voxel/launcher3/Folder;->mFooter:Landroid/view/View;

    iget-object v4, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v4}, Lcom/voxel/launcher3/FolderPagedView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, p2

    iget-object v5, p0, Lcom/voxel/launcher3/Folder;->mFooter:Landroid/view/View;

    .line 900
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    .line 901
    invoke-virtual {v6}, Lcom/voxel/launcher3/FolderPagedView;->getPaddingRight()I

    move-result v6

    add-int/2addr v6, p2

    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mFooter:Landroid/view/View;

    .line 902
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    .line 899
    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 905
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 906
    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/voxel/launcher3/Folder;->mFolderNameHeight:I

    const/high16 v5, -0x80000000

    .line 907
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 906
    invoke-virtual {p2, v3, v4}, Lcom/voxel/launcher3/ExtendedEditText;->measure(II)V

    .line 908
    iget-object p2, p0, Lcom/voxel/launcher3/Folder;->mFooter:Landroid/view/View;

    iget v3, p0, Lcom/voxel/launcher3/Folder;->mFooterHeight:I

    .line 909
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 908
    invoke-virtual {p2, v2, v1}, Landroid/view/View;->measure(II)V

    .line 912
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getMinimumHeight()I

    move-result p2

    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Folder;->getFolderHeight(I)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 913
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/Folder;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRemove(Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 2

    const/4 v0, 0x1

    .line 1127
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mItemsInvalidated:Z

    .line 1130
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mCurrentDragInfo:Lcom/voxel/launcher3/ShortcutInfo;

    if-ne p1, v1, :cond_0

    return-void

    .line 1131
    :cond_0
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Folder;->getViewForInfo(Lcom/voxel/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object p1

    .line 1132
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v1, p1}, Lcom/voxel/launcher3/FolderPagedView;->removeItem(Landroid/view/View;)V

    .line 1133
    iget p1, p0, Lcom/voxel/launcher3/Folder;->mState:I

    if-ne p1, v0, :cond_1

    .line 1134
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mRearrangeOnClose:Z

    goto :goto_0

    .line 1136
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->rearrangeChildren()V

    .line 1138
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getItemCount()I

    move-result p1

    if-gt p1, v0, :cond_2

    iget-object p1, p0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-boolean p1, p1, Lcom/voxel/launcher3/FolderInfo;->opened:Z

    if-nez p1, :cond_2

    .line 1139
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->replaceFolderWithFinalItem()V

    :cond_2
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public rearrangeChildren()V
    .locals 1

    const/4 v0, -0x1

    .line 920
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Folder;->rearrangeChildren(I)V

    return-void
.end method

.method public rearrangeChildren(I)V
    .locals 3

    .line 930
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    .line 931
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/voxel/launcher3/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    const/4 p1, 0x1

    .line 932
    iput-boolean p1, p0, Lcom/voxel/launcher3/Folder;->mItemsInvalidated:Z

    return-void
.end method

.method replaceFolderWithFinalItem()V
    .locals 3

    .line 972
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Folder$_vvrkBhfBMQ7i--krF-Wkqgx2DE;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/-$$Lambda$Folder$_vvrkBhfBMQ7i--krF-Wkqgx2DE;-><init>(Lcom/voxel/launcher3/Folder;)V

    .line 1003
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v1}, Lcom/voxel/launcher3/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1005
    iget-object v2, p0, Lcom/voxel/launcher3/Folder;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    invoke-virtual {v2, v1, v0}, Lcom/voxel/launcher3/FolderIcon;->performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1007
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 v0, 0x1

    .line 1009
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mDestroyed:Z

    return-void
.end method

.method sendCustomAccessibilityEvent(ILjava/lang/String;)V
    .locals 2

    .line 543
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 544
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 546
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Folder;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 547
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public setCellParams(Lcom/voxel/launcher3/CellParams;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/voxel/launcher3/Folder;->mCellParams:Lcom/voxel/launcher3/CellParams;

    .line 385
    invoke-virtual {p0}, Lcom/voxel/launcher3/Folder;->requestLayout()V

    return-void
.end method

.method public setDragController(Lcom/voxel/launcher3/dragndrop/DragController;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/voxel/launcher3/Folder;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    return-void
.end method

.method public setFolderIcon(Lcom/voxel/launcher3/FolderIcon;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/voxel/launcher3/Folder;->mFolderIcon:Lcom/voxel/launcher3/FolderIcon;

    return-void
.end method

.method public showItem(Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 1

    .line 1105
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Folder;->getViewForInfo(Lcom/voxel/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 1106
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startEditingFolderName()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/ExtendedEditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Lcom/voxel/launcher3/Folder;->mIsEditingName:Z

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

.method public updateTextViewFocus()V
    .locals 3

    .line 1019
    iget-object v0, p0, Lcom/voxel/launcher3/Folder;->mContent:Lcom/voxel/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1021
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/ExtendedEditText;->setNextFocusDownId(I)V

    .line 1022
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/ExtendedEditText;->setNextFocusRightId(I)V

    .line 1023
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/ExtendedEditText;->setNextFocusLeftId(I)V

    .line 1024
    iget-object v1, p0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/ExtendedEditText;->setNextFocusUpId(I)V

    :cond_0
    return-void
.end method
