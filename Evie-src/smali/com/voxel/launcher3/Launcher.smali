.class public Lcom/voxel/launcher3/Launcher;
.super Landroidx/fragment/app/FragmentActivity;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/voxel/launcher3/LauncherModel$Callbacks;
.implements Lcom/voxel/launcher3/PagedView$PageSwitchListener;
.implements Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;
.implements Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;
.implements Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$OnFragmentInteractionListener;
.implements Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$OnFolderFragmentInteractionListener;
.implements Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;
.implements Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$OnFragmentInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/Launcher$AppWidgetResetObserver;,
        Lcom/voxel/launcher3/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;,
        Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;,
        Lcom/voxel/launcher3/Launcher$LocaleConfiguration;,
        Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;,
        Lcom/voxel/launcher3/Launcher$PendingAddArguments;,
        Lcom/voxel/launcher3/Launcher$State;
    }
.end annotation


# static fields
.field private static mIntentsOnWorkspaceFromUpgradePath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field static sDateFormat:Ljava/text/DateFormat;

.field static sDateStamp:Ljava/util/Date;

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFolders:Lcom/voxel/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/voxel/launcher3/util/LongArrayMap<",
            "Lcom/voxel/launcher3/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sForceEnableRotation:Z

.field private static sLocaleConfiguration:Lcom/voxel/launcher3/Launcher$LocaleConfiguration;

.field private static final sLock:Ljava/lang/Object;

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sPendingAddItem:Lcom/voxel/launcher3/Launcher$PendingAddArguments;

.field private static sPermissionHelper:Lcom/voxel/simplesearchlauncher/activity/PermissionHelper;

.field static sRunStart:J

.field private static sScreen:I


# instance fields
.field private final ADVANCE_MSG:I

.field private isLaunchingVoiceAssist:Z

.field private isShowingOnboard:Z

.field private isStopped:Z

.field localAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field mAllAppsBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mAllAppsButton:Landroid/view/View;

.field mAllAppsContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mAllAppsFactorChangeListener:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;

.field private mAllAppsFragment:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

.field private mAllAppsMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

.field mAllAppsUpChevron:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

.field private mAppWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

.field private mAttached:Z

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mBackgroundFolderAnimationHelper:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

.field private mBindOnResumeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBlurGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private mBlurImageAlphaHelper:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

.field mBlurImageView:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBlurLayoutView:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mBlurOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mBuildLayersRunnable:Ljava/lang/Runnable;

.field private mCleanupGoogleNowBackgroundHandler:Landroid/os/Handler;

.field private mCleanupGoogleNowBackgroundRunnable:Ljava/lang/Runnable;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mCustomGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private mCustomGestureListener:Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDeviceAdminComponentName:Landroid/content/ComponentName;

.field private mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

.field mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFocusHandler:Lcom/voxel/launcher3/FocusIndicatorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mFolderFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderInfo:Lcom/voxel/launcher3/FolderInfo;

.field private mForgetWallpaperRunnable:Ljava/lang/Runnable;

.field private mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

.field mFrequentlyUsedModel:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

.field mGoogleNowAnimBackground:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mGoogleNowAnimFinalIconSize:I

.field mGoogleNowAnimIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mGoogleNowLaunchFactorChangeListener:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;

.field private mGoogleNowLaunchMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

.field private mGoogleNowLaunchTriggered:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

.field private mHasFocus:Z

.field mHideAppsModel:Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;

.field mHotseat:Lcom/voxel/launcher3/Hotseat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mHotseatAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

.field mHotseatBg:Lcom/voxel/simplesearchlauncher/view/HotseatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mIconCache:Lcom/voxel/launcher3/IconCache;

.field private mIndicatorAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

.field mIndicatorContainer:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsGoogleNowAnimLocked:Z

.field private mIsLiveWallpaper:Z

.field private mIsSafeModeEnabled:Z

.field private mItemIdToViewId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLauncherCustomContentPresenter:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

.field mLauncherCustomContentPresenterFactory:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;

.field mLauncherCustomContentViewHolder:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;

.field mLauncherView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;

.field mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

.field mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mMainLayerDarken:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mMainLayerDarkenAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

.field private mMainLayerGestureListener:Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;

.field private mMainLayerMiddlePivotLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mModel:Lcom/voxel/launcher3/LauncherModel;

.field private mOnResumeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnResumeNeedsLoad:Z

.field private mOnResumeState:Lcom/voxel/launcher3/Launcher$State;

.field mOverviewPanel:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mOverviewPanelAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

.field mPageIndicators:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mPaused:Z

.field private mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

.field private mPendingAddWidgetId:I

.field private mPendingAddWidgetInfo:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

.field private mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

.field mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mQsb:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mQsbSearchViewEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mQsbSearchViewGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private mQsbSearchViewScroller:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

.field private mQsbSearchViewScrollerModifier:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRectForFolderAnimation:Landroid/graphics/Rect;

.field private mRefreshBlurredImageTask:Landroid/os/AsyncTask;

.field private final mRestoreScreenOrientationDelay:I

.field private mRestoring:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mScaleCustomGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScreenHeight:I

.field mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mSearchDropTargetBarAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

.field private mSearchItemShortcutHandler:Lcom/voxel/launcher3/SearchItemShortcutHandler;

.field mSearchLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mSearchPresenter:Lcom/evie/search/SearchPresenter;

.field private mSearchResultListCloseKeyboardGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private mSearchUiHelper:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

.field private mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mShowUpgradeNotice:Z

.field private mShownDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/voxel/launcher3/Launcher$State;

.field private mStateAnimation:Landroid/animation/AnimatorSet;

.field private mStats:Lcom/voxel/launcher3/Stats;

.field private final mSynchronouslyBoundPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpAddItemCellCoordinates:[I

.field private mUserPresent:Z

.field private mVisible:Z

.field private mWaitingForResult:Z

.field private mWaitingForResume:Lcom/voxel/launcher3/BubbleTextView;

.field private mWallpaperBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mWeightWatcher:Landroid/view/View;

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWorkspace:Lcom/voxel/launcher3/Workspace;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mWorkspaceAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

.field mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    .annotation runtime Lbutterknife/BindDrawable;
    .end annotation
.end field

.field private mWorkspaceLoading:Z

.field private sendHomeAnalyticsEventOnResume:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 412
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/Launcher;->sLock:Ljava/lang/Object;

    const/4 v0, 0x2

    .line 413
    sput v0, Lcom/voxel/launcher3/Launcher;->sScreen:I

    .line 416
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/voxel/launcher3/Launcher;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 563
    sput-object v0, Lcom/voxel/launcher3/Launcher;->sLocaleConfiguration:Lcom/voxel/launcher3/Launcher$LocaleConfiguration;

    .line 565
    new-instance v1, Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-direct {v1}, Lcom/voxel/launcher3/util/LongArrayMap;-><init>()V

    sput-object v1, Lcom/voxel/launcher3/Launcher;->sFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    .line 587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/voxel/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    .line 588
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Lcom/voxel/launcher3/Launcher;->sDateStamp:Ljava/util/Date;

    const/4 v1, 0x3

    .line 590
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lcom/voxel/launcher3/Launcher;->sDateFormat:Ljava/text/DateFormat;

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/voxel/launcher3/Launcher;->sRunStart:J

    .line 597
    sput-object v0, Lcom/voxel/launcher3/Launcher;->mIntentsOnWorkspaceFromUpgradePath:Ljava/util/ArrayList;

    .line 627
    new-instance v0, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper;-><init>(I)V

    sput-object v0, Lcom/voxel/launcher3/Launcher;->sPermissionHelper:Lcom/voxel/simplesearchlauncher/activity/PermissionHelper;

    const-string v0, "launcher_force_rotate"

    .line 657
    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/voxel/launcher3/Launcher;->sForceEnableRotation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 235
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 402
    sget-object v0, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    .line 415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    .line 424
    new-instance v0, Lcom/voxel/launcher3/Launcher$CloseSystemDialogsIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/voxel/launcher3/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/Launcher$1;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 426
    new-instance v0, Lcom/voxel/launcher3/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/Launcher$AppWidgetResetObserver;-><init>(Lcom/voxel/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 450
    new-instance v0, Lcom/voxel/launcher3/ItemInfo;

    invoke-direct {v0}, Lcom/voxel/launcher3/ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    const/4 v0, -0x1

    .line 452
    iput v0, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetId:I

    const/4 v0, 0x2

    .line 454
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    const/4 v0, 0x0

    .line 472
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mAutoAdvanceRunning:Z

    .line 487
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/voxel/launcher3/Launcher;->mShownDialogs:Ljava/util/List;

    .line 489
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/voxel/launcher3/Launcher;->mFolderFragments:Ljava/util/List;

    const/4 v2, 0x1

    .line 491
    iput-boolean v2, p0, Lcom/voxel/launcher3/Launcher;->isStopped:Z

    .line 514
    new-instance v3, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    invoke-direct {v3}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;-><init>()V

    iput-object v3, p0, Lcom/voxel/launcher3/Launcher;->mBlurImageAlphaHelper:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    .line 540
    sget-object v3, Lcom/voxel/launcher3/Launcher$State;->NONE:Lcom/voxel/launcher3/Launcher$State;

    iput-object v3, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeState:Lcom/voxel/launcher3/Launcher$State;

    .line 542
    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 544
    iput-boolean v2, p0, Lcom/voxel/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 546
    iput-boolean v2, p0, Lcom/voxel/launcher3/Launcher;->mPaused:Z

    .line 551
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    .line 552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    .line 558
    iput-boolean v2, p0, Lcom/voxel/launcher3/Launcher;->mUserPresent:Z

    .line 559
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mVisible:Z

    .line 560
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mHasFocus:Z

    .line 561
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mAttached:Z

    .line 570
    iput v2, p0, Lcom/voxel/launcher3/Launcher;->ADVANCE_MSG:I

    const/16 v1, 0x4e20

    .line 571
    iput v1, p0, Lcom/voxel/launcher3/Launcher;->mAdvanceInterval:I

    const/16 v1, 0xfa

    .line 572
    iput v1, p0, Lcom/voxel/launcher3/Launcher;->mAdvanceStagger:I

    const-wide/16 v1, -0x1

    .line 574
    iput-wide v1, p0, Lcom/voxel/launcher3/Launcher;->mAutoAdvanceTimeLeft:J

    .line 575
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    const/16 v1, 0x1f4

    .line 580
    iput v1, p0, Lcom/voxel/launcher3/Launcher;->mRestoreScreenOrientationDelay:I

    .line 584
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    .line 604
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    .line 635
    new-instance v1, Lcom/voxel/launcher3/Launcher$1;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/Launcher$1;-><init>(Lcom/voxel/launcher3/Launcher;)V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 643
    new-instance v1, Lcom/voxel/launcher3/Launcher$2;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/Launcher$2;-><init>(Lcom/voxel/launcher3/Launcher;)V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mForgetWallpaperRunnable:Ljava/lang/Runnable;

    .line 653
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->isLaunchingVoiceAssist:Z

    .line 2892
    new-instance v0, Lcom/voxel/launcher3/Launcher$16;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/Launcher$16;-><init>(Lcom/voxel/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsFactorChangeListener:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;

    .line 3013
    new-instance v0, Lcom/voxel/launcher3/Launcher$17;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/Launcher$17;-><init>(Lcom/voxel/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowLaunchFactorChangeListener:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;

    .line 3094
    new-instance v0, Lcom/voxel/launcher3/Launcher$18;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/Launcher$18;-><init>(Lcom/voxel/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mCleanupGoogleNowBackgroundRunnable:Ljava/lang/Runnable;

    .line 3430
    new-instance v0, Lcom/voxel/launcher3/Launcher$21;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/Launcher$21;-><init>(Lcom/voxel/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3573
    new-instance v0, Lcom/voxel/launcher3/Launcher$23;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/Launcher$23;-><init>(Lcom/voxel/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    const-string v0, "input_method"

    .line 2212
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2213
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mHotseatAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mIndicatorAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBarAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/voxel/launcher3/Launcher;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerMiddlePivotLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/voxel/launcher3/Launcher;)Z
    .locals 0

    .line 235
    iget-boolean p0, p0, Lcom/voxel/launcher3/Launcher;->mIsLiveWallpaper:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/voxel/launcher3/Launcher;Z)Z
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher;->mIsLiveWallpaper:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->refreshBlurredImage()V

    return-void
.end method

.method static synthetic access$1602(Lcom/voxel/launcher3/Launcher;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->mRefreshBlurredImageTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/content/Context;Lcom/voxel/launcher3/Launcher$LocaleConfiguration;)V
    .locals 0

    .line 235
    invoke-static {p0, p1}, Lcom/voxel/launcher3/Launcher;->readConfiguration(Landroid/content/Context;Lcom/voxel/launcher3/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/voxel/launcher3/Launcher$LocaleConfiguration;)Lcom/voxel/launcher3/Launcher$LocaleConfiguration;
    .locals 0

    .line 235
    sput-object p0, Lcom/voxel/launcher3/Launcher;->sLocaleConfiguration:Lcom/voxel/launcher3/Launcher$LocaleConfiguration;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsFragment:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->checkForLocaleChange()V

    return-void
.end method

.method static synthetic access$2100(Landroid/content/Context;Lcom/voxel/launcher3/Launcher$LocaleConfiguration;)V
    .locals 0

    .line 235
    invoke-static {p0, p1}, Lcom/voxel/launcher3/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/voxel/launcher3/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/voxel/launcher3/Launcher;ZZ)V
    .locals 0

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/Launcher;->changeSearchMode(ZZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/voxel/launcher3/Launcher;F)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Launcher;->setSearchBlurAlpha(F)V

    return-void
.end method

.method static synthetic access$2500(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewScrollerModifier:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/voxel/launcher3/Launcher;)Landroid/content/SharedPreferences;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/voxel/launcher3/Launcher;Z)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Launcher;->setPullDownListViewEnabled(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;Z)V
    .locals 0

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/Launcher;->deactivateSearch(Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/voxel/launcher3/Launcher;)Landroid/view/ScaleGestureDetector;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mScaleCustomGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static synthetic access$300(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mSearchUiHelper:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/voxel/launcher3/Launcher;)Landroidx/core/view/GestureDetectorCompat;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mCustomGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewScroller:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/voxel/launcher3/Launcher;)Landroid/os/Handler;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->setupGoogleNowLaunchBackground()V

    return-void
.end method

.method static synthetic access$3400(Lcom/voxel/launcher3/Launcher;)Z
    .locals 0

    .line 235
    iget-boolean p0, p0, Lcom/voxel/launcher3/Launcher;->mIsGoogleNowAnimLocked:Z

    return p0
.end method

.method static synthetic access$3402(Lcom/voxel/launcher3/Launcher;Z)Z
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher;->mIsGoogleNowAnimLocked:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowLaunchMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->updateGoogleNowBackgroundIcon()V

    return-void
.end method

.method static synthetic access$3700(Lcom/voxel/launcher3/Launcher;F)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Launcher;->setGoogleBlurAlpha(F)V

    return-void
.end method

.method static synthetic access$3800(Lcom/voxel/launcher3/Launcher;)Z
    .locals 0

    .line 235
    iget-boolean p0, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowLaunchTriggered:Z

    return p0
.end method

.method static synthetic access$3802(Lcom/voxel/launcher3/Launcher;Z)Z
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowLaunchTriggered:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/voxel/launcher3/Launcher;J)V
    .locals 0

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/Launcher;->scheduleGoogleNowBackgroundCleanup(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerGestureListener:Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->cleanupGoogleNowLaunchBackground()V

    return-void
.end method

.method static synthetic access$4100(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/dragndrop/DragController;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/LauncherAppWidgetHost;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/voxel/launcher3/Launcher;Z)Z
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher;->mUserPresent:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->updateRunning()V

    return-void
.end method

.method static synthetic access$4500(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/ItemInfo;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/voxel/launcher3/Launcher;)Ljava/lang/Runnable;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/voxel/launcher3/Launcher;)Ljava/util/HashMap;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/voxel/launcher3/Launcher;J)V
    .locals 0

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/Launcher;->sendAdvanceMessage(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/Launcher$State;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/voxel/launcher3/Launcher;Landroid/view/View;ZZ)V
    .locals 0

    .line 235
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/launcher3/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$5100(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$600(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mCustomGestureListener:Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->updateMainLayerScale()V

    return-void
.end method

.method static synthetic access$800(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mBackgroundFolderAnimationHelper:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    return-object p0
.end method

.method static synthetic access$900(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspaceAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    return-object p0
.end method

.method public static addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V
    .locals 0

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 7542
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 7544
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 7536
    invoke-static {p0, p1, v0, p2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    return-void
.end method

.method private canRunNewAppsAnimation()Z
    .locals 5

    .line 7055
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v2}, Lcom/voxel/launcher3/dragndrop/DragController;->getLastGestureUpTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private changeSearchMode(ZZ)V
    .locals 4

    .line 6353
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    .line 6359
    invoke-virtual {v0, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setEndValue(F)V

    goto :goto_0

    .line 6361
    :cond_1
    invoke-virtual {v0, v3, v2, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->applyFactor(FZF)V

    .line 6362
    invoke-direct {p0, v1}, Lcom/voxel/launcher3/Launcher;->setSearchBlurAlpha(F)V

    .line 6364
    :goto_0
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6365
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->requestFocus()Z

    .line 6367
    :cond_2
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mBlurLayoutView:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mBlurOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string p1, "input_method"

    .line 6369
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 6370
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 6371
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewEditText:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_2

    .line 6374
    :cond_3
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6375
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->clearFocus()V

    :cond_4
    if-eqz p2, :cond_5

    .line 6378
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setEndValue(F)V

    goto :goto_1

    .line 6380
    :cond_5
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->applyFactor(FZF)V

    .line 6381
    invoke-direct {p0, v3}, Lcom/voxel/launcher3/Launcher;->setSearchBlurAlpha(F)V

    .line 6384
    :goto_1
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    const-string p2, ""

    invoke-virtual {p1, p2, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 6386
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mBlurLayoutView:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_2
    return-void
.end method

.method private checkForLocaleChange()V
    .locals 8

    .line 1258
    sget-object v0, Lcom/voxel/launcher3/Launcher;->sLocaleConfiguration:Lcom/voxel/launcher3/Launcher$LocaleConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1259
    new-instance v0, Lcom/voxel/launcher3/Launcher$6;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/Launcher$6;-><init>(Lcom/voxel/launcher3/Launcher;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 1272
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Launcher$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 1276
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1278
    sget-object v2, Lcom/voxel/launcher3/Launcher;->sLocaleConfiguration:Lcom/voxel/launcher3/Launcher$LocaleConfiguration;

    iget-object v2, v2, Lcom/voxel/launcher3/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1279
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1281
    sget-object v4, Lcom/voxel/launcher3/Launcher;->sLocaleConfiguration:Lcom/voxel/launcher3/Launcher$LocaleConfiguration;

    iget v4, v4, Lcom/voxel/launcher3/Launcher$LocaleConfiguration;->mcc:I

    .line 1282
    iget v5, v0, Landroid/content/res/Configuration;->mcc:I

    .line 1284
    sget-object v6, Lcom/voxel/launcher3/Launcher;->sLocaleConfiguration:Lcom/voxel/launcher3/Launcher$LocaleConfiguration;

    iget v6, v6, Lcom/voxel/launcher3/Launcher$LocaleConfiguration;->mnc:I

    .line 1285
    iget v0, v0, Landroid/content/res/Configuration;->mnc:I

    .line 1287
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    if-ne v5, v4, :cond_2

    if-eq v0, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 1290
    sget-object v2, Lcom/voxel/launcher3/Launcher;->sLocaleConfiguration:Lcom/voxel/launcher3/Launcher$LocaleConfiguration;

    iput-object v3, v2, Lcom/voxel/launcher3/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1291
    iput v5, v2, Lcom/voxel/launcher3/Launcher$LocaleConfiguration;->mcc:I

    .line 1292
    iput v0, v2, Lcom/voxel/launcher3/Launcher$LocaleConfiguration;->mnc:I

    .line 1294
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {v0}, Lcom/voxel/launcher3/IconCache;->flush()V

    .line 1296
    sget-object v0, Lcom/voxel/launcher3/Launcher;->sLocaleConfiguration:Lcom/voxel/launcher3/Launcher$LocaleConfiguration;

    .line 1297
    new-instance v2, Lcom/voxel/launcher3/Launcher$7;

    invoke-direct {v2, p0, v0}, Lcom/voxel/launcher3/Launcher$7;-><init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/Launcher$LocaleConfiguration;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v7, [Ljava/lang/Void;

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Void;

    aput-object v4, v3, v1

    .line 1302
    invoke-virtual {v2, v0, v3}, Lcom/voxel/launcher3/Launcher$7;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    return-void
.end method

.method private checkUpgradeVersion()V
    .locals 3

    .line 3136
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getCurrentVersion()I

    move-result v0

    const v1, 0x146a900

    if-eq v0, v1, :cond_0

    .line 3138
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    invoke-virtual {v2, v1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setCurrentVersion(I)V

    :cond_0
    const v1, 0x13ef458

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3139
    :goto_0
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mShowUpgradeNotice:Z

    return-void
.end method

.method private cleanupGoogleNowLaunchBackground()V
    .locals 2

    const/4 v0, 0x0

    .line 3067
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mIsGoogleNowAnimLocked:Z

    .line 3069
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mCleanupGoogleNowBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3070
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mCleanupGoogleNowBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3072
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimBackground:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 3073
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowLaunchMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setFactor(F)V

    .line 3075
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 3076
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private clearTypedText()V
    .locals 2

    .line 2249
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    return-void

    .line 2252
    :cond_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2253
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2254
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method private completeAdd(Lcom/voxel/launcher3/Launcher$PendingAddArguments;)J
    .locals 10

    .line 1441
    iget-wide v0, p1, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->screenId:J

    .line 1442
    iget-wide v2, p1, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->container:J

    const-wide/16 v4, -0x64

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 1445
    iget-wide v0, p1, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->screenId:J

    invoke-direct {p0, v0, v1}, Lcom/voxel/launcher3/Launcher;->ensurePendingDropLayoutExists(J)J

    move-result-wide v0

    .line 1448
    :cond_0
    iget v2, p1, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->requestCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 1458
    :cond_1
    iget p1, p1, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->appWidgetId:I

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Launcher;->completeRestoreAppWidget(I)V

    goto :goto_0

    .line 1454
    :cond_2
    iget v3, p1, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->appWidgetId:I

    iget-wide v4, p1, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->container:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-wide v6, v0

    invoke-direct/range {v2 .. v9}, Lcom/voxel/launcher3/Launcher;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)V

    goto :goto_0

    .line 1450
    :cond_3
    iget-object v3, p1, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v4, p1, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->container:J

    iget v8, p1, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->cellX:I

    iget v9, p1, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->cellY:I

    move-object v2, p0

    move-wide v6, v0

    invoke-direct/range {v2 .. v9}, Lcom/voxel/launcher3/Launcher;->completeAddShortcut(Landroid/content/Intent;JJII)V

    .line 1464
    :goto_0
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->resetAddInfo()V

    return-wide v0
.end method

.method private completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)V
    .locals 26

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p6

    if-nez p7, :cond_0

    .line 3345
    iget-object v0, v9, Lcom/voxel/launcher3/Launcher;->mAppWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v0, v10}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v8, p7

    .line 3349
    :goto_0
    invoke-virtual {v9, v12, v13, v14, v15}, Lcom/voxel/launcher3/Launcher;->getCellLayout(JJ)Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    .line 3351
    invoke-static {v9, v8}, Lcom/voxel/launcher3/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v1

    .line 3352
    invoke-static {v9, v8}, Lcom/voxel/launcher3/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v2

    .line 3357
    iget-object v7, v9, Lcom/voxel/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 3358
    iget-object v3, v9, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-object v3, v3, Lcom/voxel/launcher3/ItemInfo;->dropPos:[I

    const/4 v4, 0x2

    .line 3359
    new-array v4, v4, [I

    .line 3361
    iget-object v5, v9, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget v5, v5, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    const/4 v6, 0x0

    if-ltz v5, :cond_1

    iget-object v5, v9, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget v5, v5, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    if-ltz v5, :cond_1

    .line 3362
    iget-object v1, v9, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget v1, v1, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    aput v1, v7, v6

    .line 3363
    iget-object v1, v9, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget v1, v1, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    const/4 v5, 0x1

    aput v1, v7, v5

    .line 3364
    iget-object v1, v9, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget v1, v1, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    aput v1, v2, v6

    .line 3365
    iget-object v1, v9, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget v1, v1, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    aput v1, v2, v5

    const/4 v1, 0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    if-eqz v0, :cond_4

    if-eqz v3, :cond_3

    .line 3370
    aget v17, v3, v6

    aget v18, v3, v5

    aget v19, v1, v6

    aget v20, v1, v5

    aget v21, v2, v6

    aget v22, v2, v5

    move-object/from16 v16, v0

    move-object/from16 v23, v7

    move-object/from16 v24, v4

    invoke-virtual/range {v16 .. v24}, Lcom/voxel/launcher3/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    move-result-object v1

    .line 3373
    aget v3, v4, v6

    aput v3, v2, v6

    const/4 v3, 0x1

    .line 3374
    aget v4, v4, v3

    aput v4, v2, v3

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    .line 3377
    aget v4, v1, v6

    aget v1, v1, v3

    invoke-virtual {v0, v7, v4, v1}, Lcom/voxel/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    const/4 v1, -0x1

    if-eq v10, v1, :cond_5

    .line 3385
    new-instance v1, Lcom/voxel/launcher3/Launcher$20;

    invoke-direct {v1, v9, v10}, Lcom/voxel/launcher3/Launcher$20;-><init>(Lcom/voxel/launcher3/Launcher;I)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Void;

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Void;

    aput-object v4, v3, v6

    .line 3390
    invoke-virtual {v1, v2, v3}, Lcom/voxel/launcher3/Launcher$20;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3392
    :cond_5
    invoke-virtual {v9, v0}, Lcom/voxel/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/voxel/launcher3/Launcher;->showOutOfSpaceMessage(Z)V

    return-void

    .line 3397
    :cond_6
    new-instance v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    iget-object v0, v8, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v4, v10, v0}, Lcom/voxel/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 3399
    aget v0, v2, v6

    iput v0, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->spanX:I

    const/4 v0, 0x1

    .line 3400
    aget v1, v2, v0

    iput v1, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 3401
    iget-object v0, v9, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget v0, v0, Lcom/voxel/launcher3/ItemInfo;->minSpanX:I

    iput v0, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    .line 3402
    iget-object v0, v9, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget v0, v0, Lcom/voxel/launcher3/ItemInfo;->minSpanY:I

    iput v0, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    .line 3403
    iget-object v0, v9, Lcom/voxel/launcher3/Launcher;->mAppWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v0, v8}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 3405
    aget v16, v7, v6

    const/16 v17, 0x1

    aget v18, v7, v17

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide/from16 v2, p2

    move-object/from16 v25, v4

    move-wide/from16 v4, p4

    move/from16 v6, v16

    move-object/from16 v16, v7

    move/from16 v7, v18

    move-object v14, v8

    move/from16 v8, v19

    invoke-static/range {v0 .. v8}, Lcom/voxel/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJIIZ)V

    .line 3408
    iget-boolean v0, v9, Lcom/voxel/launcher3/Launcher;->mRestoring:Z

    if-nez v0, :cond_8

    if-nez v11, :cond_7

    .line 3411
    iget-object v0, v9, Lcom/voxel/launcher3/Launcher;->mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0, v9, v10, v14}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 3412
    iget-object v0, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v10, v14}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_2

    :cond_7
    move-object/from16 v1, v25

    .line 3415
    iput-object v11, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 3418
    :goto_2
    iget-object v0, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 3419
    iget-object v0, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 3420
    invoke-virtual {v1, v9}, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/voxel/launcher3/Launcher;)V

    .line 3422
    iget-object v10, v9, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    iget-object v11, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    aget v0, v16, v2

    aget v17, v16, v17

    iget v2, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->spanX:I

    iget v3, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 3423
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v20

    move-wide/from16 v12, p2

    move-object v4, v14

    move-wide/from16 v14, p4

    move/from16 v16, v0

    move/from16 v18, v2

    move/from16 v19, v3

    .line 3422
    invoke-virtual/range {v10 .. v20}, Lcom/voxel/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 3425
    iget-object v0, v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v9, v0, v4}, Lcom/voxel/launcher3/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 3427
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/Launcher;->resetAddInfo()V

    return-void
.end method

.method private completeAddShortcut(Landroid/content/Intent;JJII)V
    .locals 22

    move-object/from16 v9, p0

    .line 3260
    iget-object v8, v9, Lcom/voxel/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 3261
    iget-object v0, v9, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-object v0, v0, Lcom/voxel/launcher3/ItemInfo;->dropPos:[I

    move-wide/from16 v6, p2

    move-wide/from16 v4, p4

    .line 3262
    invoke-virtual {v9, v6, v7, v4, v5}, Lcom/voxel/launcher3/Launcher;->getCellLayout(JJ)Lcom/voxel/launcher3/CellLayout;

    move-result-object v3

    .line 3266
    iget-object v1, v9, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    move-object/from16 v2, p1

    invoke-virtual {v1, v9, v2}, Lcom/voxel/launcher3/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 3270
    :cond_0
    invoke-virtual {v9, v2}, Lcom/voxel/launcher3/Launcher;->createShortcut(Lcom/voxel/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    const/4 v1, 0x1

    if-ltz p6, :cond_3

    if-ltz p7, :cond_3

    .line 3274
    aput p6, v8, v21

    .line 3275
    aput p7, v8, v1

    .line 3279
    iget-object v10, v9, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v11, v20

    move-wide/from16 v12, p2

    move-object v14, v3

    move-object v15, v8

    invoke-virtual/range {v10 .. v19}, Lcom/voxel/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/voxel/launcher3/CellLayout;[IFZLcom/voxel/launcher3/dragndrop/DragView;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3283
    :cond_1
    new-instance v10, Lcom/voxel/launcher3/DropTarget$DragObject;

    invoke-direct {v10}, Lcom/voxel/launcher3/DropTarget$DragObject;-><init>()V

    .line 3284
    iput-object v2, v10, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    .line 3285
    iget-object v0, v9, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v1, v20

    move-object v14, v2

    move-object v2, v3

    move-object v15, v3

    move-object v3, v8

    move v4, v11

    move-object v5, v10

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/voxel/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/voxel/launcher3/CellLayout;[IFLcom/voxel/launcher3/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move-object v14, v2

    move-object v15, v3

    const/4 v13, 0x1

    if-eqz v0, :cond_5

    .line 3291
    aget v1, v0, v21

    aget v2, v0, v13

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, v15

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 3294
    :cond_5
    invoke-virtual {v15, v8, v13, v13}, Lcom/voxel/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_6

    .line 3298
    invoke-virtual {v9, v15}, Lcom/voxel/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/voxel/launcher3/Launcher;->showOutOfSpaceMessage(Z)V

    return-void

    .line 3302
    :cond_6
    aget v6, v8, v21

    aget v7, v8, v13

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object v11, v8

    move v8, v10

    invoke-static/range {v0 .. v8}, Lcom/voxel/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJIIZ)V

    .line 3304
    iget-boolean v0, v9, Lcom/voxel/launcher3/Launcher;->mRestoring:Z

    if-nez v0, :cond_7

    .line 3305
    iget-object v10, v9, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    aget v16, v11, v21

    aget v17, v11, v13

    const/16 v18, 0x1

    const/16 v19, 0x1

    .line 3306
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    move-object/from16 v11, v20

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move/from16 v20, v0

    .line 3305
    invoke-virtual/range {v10 .. v20}, Lcom/voxel/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    :cond_7
    return-void
.end method

.method private completeRestoreAppWidget(I)V
    .locals 1

    .line 6933
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Workspace;->getWidgetForAppWidgetId(I)Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6934
    instance-of v0, p1, Lcom/voxel/launcher3/PendingAppWidgetHostView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6939
    :cond_0
    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    const/4 v0, 0x0

    .line 6940
    iput v0, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 6942
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->reinflateWidgetsIfNecessary()V

    .line 6943
    invoke-static {p0, p1}, Lcom/voxel/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Launcher"

    const-string v0, "Widget update called, when the widget no longer exists."

    .line 6935
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private completeTwoStageWidgetDrop(II)V
    .locals 11

    .line 1725
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-wide v1, v1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 1726
    invoke-virtual {v0, v1, v2}, Lcom/voxel/launcher3/Workspace;->getScreenWithId(J)Lcom/voxel/launcher3/CellLayout;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x3

    .line 1733
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v1, p0, p2, v2}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    .line 1736
    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$Launcher$IK52mSPAKBArZeKBu_mgVNUmLmk;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/voxel/launcher3/-$$Lambda$Launcher$IK52mSPAKBArZeKBu_mgVNUmLmk;-><init>(Lcom/voxel/launcher3/Launcher;ILandroid/appwidget/AppWidgetHostView;I)V

    move-object v9, v1

    move-object v7, v2

    const/4 v8, 0x3

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "Launcher"

    .line 1743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================= Widget deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    const/4 p1, 0x4

    move-object v7, v0

    move-object v9, v7

    const/4 v8, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    move-object v7, v0

    move-object v9, v7

    const/4 v8, 0x0

    :goto_0
    if-nez v5, :cond_3

    .line 1749
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1750
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t complete two stage widget drop due to null celllayout with screenId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-wide v0, v0, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 1752
    :cond_2
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    if-eqz v7, :cond_5

    .line 1754
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1757
    :cond_3
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1758
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    .line 1759
    invoke-virtual {p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/voxel/launcher3/dragndrop/DragView;

    const/4 v10, 0x1

    .line 1758
    invoke-virtual/range {v3 .. v10}, Lcom/voxel/launcher3/Workspace;->animateWidgetDrop(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_5

    .line 1763
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_1
    return-void
.end method

.method private createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .locals 6

    const/4 v0, 0x3

    .line 7060
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 7061
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "scaleX"

    new-array v3, v2, [F

    aput v4, v3, v5

    .line 7062
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "scaleY"

    new-array v2, v2, [F

    aput v4, v2, v5

    .line 7063
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7060
    invoke-static {p1, v0}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1c2

    .line 7064
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    mul-int/lit8 p2, p2, 0x55

    int-to-long v0, p2

    .line 7065
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 7066
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    const v0, 0x3fa66666    # 1.3f

    invoke-direct {p2, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private deactivateSearch(Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 6349
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/Launcher;->changeSearchMode(ZZ)V

    return-void
.end method

.method private dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V
    .locals 1

    .line 5793
    instance-of v0, p1, Lcom/voxel/launcher3/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 5794
    move-object v0, p1

    check-cast v0, Lcom/voxel/launcher3/LauncherTransitionable;

    invoke-interface {v0, p0, p2, p3}, Lcom/voxel/launcher3/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/voxel/launcher3/Launcher;ZZ)V

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 5798
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/Launcher;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    return-void
.end method

.method private dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V
    .locals 1

    .line 5772
    instance-of v0, p1, Lcom/voxel/launcher3/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 5773
    check-cast p1, Lcom/voxel/launcher3/LauncherTransitionable;

    invoke-interface {p1, p0, p2, p3}, Lcom/voxel/launcher3/LauncherTransitionable;->onLauncherTransitionPrepare(Lcom/voxel/launcher3/Launcher;ZZ)V

    :cond_0
    return-void
.end method

.method private dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V
    .locals 1

    .line 5778
    instance-of v0, p1, Lcom/voxel/launcher3/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 5779
    move-object v0, p1

    check-cast v0, Lcom/voxel/launcher3/LauncherTransitionable;

    invoke-interface {v0, p0, p2, p3}, Lcom/voxel/launcher3/LauncherTransitionable;->onLauncherTransitionStart(Lcom/voxel/launcher3/Launcher;ZZ)V

    :cond_0
    const/4 p2, 0x0

    .line 5783
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/Launcher;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    return-void
.end method

.method private dispatchOnLauncherTransitionStep(Landroid/view/View;F)V
    .locals 1

    .line 5787
    instance-of v0, p1, Lcom/voxel/launcher3/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 5788
    check-cast p1, Lcom/voxel/launcher3/LauncherTransitionable;

    invoke-interface {p1, p0, p2}, Lcom/voxel/launcher3/LauncherTransitionable;->onLauncherTransitionStep(Lcom/voxel/launcher3/Launcher;F)V

    :cond_0
    return-void
.end method

.method private ensurePendingDropLayoutExists(J)J
    .locals 1

    .line 1712
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    .line 1713
    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/Workspace;->getScreenWithId(J)Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1717
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Workspace;->addExtraEmptyScreen()Z

    .line 1718
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Workspace;->commitExtraEmptyScreen()J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p1
.end method

.method public static generateViewId()I
    .locals 3

    .line 1408
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1409
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0

    .line 1414
    :cond_0
    sget-object v0, Lcom/voxel/launcher3/Launcher;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const v2, 0xffffff

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    .line 1418
    :cond_1
    sget-object v2, Lcom/voxel/launcher3/Launcher;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0
.end method

.method private getFirstRunDidAutoImport()Z
    .locals 3

    .line 7445
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "launcher.first_run_did_auto_import"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLauncher(Landroid/content/Context;)Lcom/voxel/launcher3/Launcher;
    .locals 1

    .line 7604
    instance-of v0, p0, Lcom/voxel/launcher3/Launcher;

    if-eqz v0, :cond_0

    .line 7605
    check-cast p0, Lcom/voxel/launcher3/Launcher;

    return-object p0

    .line 7607
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/voxel/launcher3/Launcher;

    return-object p0
.end method

.method public static getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 2

    .line 3325
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-static {p0, v0, v1, p1}, Lcom/voxel/launcher3/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object p0

    return-object p0
.end method

.method public static getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 2

    .line 3321
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {p0, v0, v1, p1}, Lcom/voxel/launcher3/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object p0

    return-object p0
.end method

.method public static getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I
    .locals 1

    const/4 v0, 0x0

    .line 3312
    invoke-static {p0, p1, v0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 3315
    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p1

    iget p1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p1

    .line 3316
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p3, p0

    .line 3317
    invoke-static {p2, p3, v0}, Lcom/voxel/launcher3/CellLayout;->rectToCell(II[I)[I

    move-result-object p0

    return-object p0
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .line 2245
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleHomeFirstTimeEvent(Z)V
    .locals 6

    .line 2137
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getNumScreens()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2138
    :goto_0
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v3, "ev_home_first_time"

    new-instance v4, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v5, "is_default"

    .line 2140
    invoke-virtual {v4, v5, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Z)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object p1

    const-string v4, "num_homescreens"

    .line 2141
    invoke-virtual {p1, v4, v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;I)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object p1

    .line 2138
    invoke-virtual {v2, v3, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 2142
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {p1, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->requestLogsSync(Z)V

    .line 2144
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->setHasLaunchedHome()V

    return-void
.end method

.method private hasCompletedFirstLoad()Z
    .locals 3

    .line 7019
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "launcher.first_load_complete"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private hasLaunchedHome()Z
    .locals 3

    .line 7023
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "launcher.has_launhced_home"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private hideAppsCustomizeHelper(Lcom/voxel/launcher3/Workspace$State;ZZLjava/lang/Runnable;)V
    .locals 8

    .line 6094
    iget-object p3, p0, Lcom/voxel/launcher3/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-wide/16 v1, 0x0

    .line 6095
    invoke-virtual {p3, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6096
    iget-object p3, p0, Lcom/voxel/launcher3/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6097
    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 6101
    :cond_0
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isLmpOrAbove()Z

    .line 6102
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0b0010

    .line 6104
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    const v1, 0x7f0b000b

    .line 6105
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    const v1, 0x7f0b0008

    .line 6106
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    const v1, 0x7f0b000c

    .line 6108
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    const v1, 0x7f0b0011

    .line 6111
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 6113
    iget-object p3, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    .line 6115
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6117
    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    if-ne p1, v1, :cond_1

    .line 6118
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, p1, p2, v7}, Lcom/voxel/launcher3/Workspace;->getChangeStateAnimation(Lcom/voxel/launcher3/Workspace$State;ZLjava/util/ArrayList;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 6120
    :cond_1
    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->SPRING_LOADED:Lcom/voxel/launcher3/Workspace$State;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->OVERVIEW:Lcom/voxel/launcher3/Workspace$State;

    if-ne p1, v1, :cond_3

    .line 6122
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, p1, p2, v7}, Lcom/voxel/launcher3/Workspace;->getChangeStateAnimation(Lcom/voxel/launcher3/Workspace$State;ZLjava/util/ArrayList;)Landroid/animation/Animator;

    move-result-object v0

    .line 6127
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspaceLoading:Z

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 6130
    invoke-static {}, Lcom/voxel/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    .line 6132
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 6135
    :cond_4
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/voxel/launcher3/Launcher$25;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/voxel/launcher3/Launcher$25;-><init>(Lcom/voxel/launcher3/Launcher;Landroid/view/View;ZLjava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6147
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 6148
    new-instance p1, Lcom/voxel/launcher3/-$$Lambda$Launcher$SujQgTF21Z-kDddFetTxrYh1uM8;

    move-object v2, p1

    move-object v3, p0

    move-object v5, p3

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/voxel/launcher3/-$$Lambda$Launcher$SujQgTF21Z-kDddFetTxrYh1uM8;-><init>(Lcom/voxel/launcher3/Launcher;Landroid/animation/AnimatorSet;Landroid/view/View;ZLjava/util/ArrayList;)V

    .line 6170
    invoke-virtual {p3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 6176
    :cond_5
    invoke-direct {p0, p3, p2, v1}, Lcom/voxel/launcher3/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 6177
    invoke-direct {p0, p3, p2, v1}, Lcom/voxel/launcher3/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 6178
    invoke-direct {p0, p3, p2, v1}, Lcom/voxel/launcher3/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    :goto_1
    return-void
.end method

.method private static intToState(I)Lcom/voxel/launcher3/Launcher$State;
    .locals 6

    .line 2262
    sget-object v0, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    .line 2263
    invoke-static {}, Lcom/voxel/launcher3/Launcher$State;->values()[Lcom/voxel/launcher3/Launcher$State;

    move-result-object v1

    .line 2264
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 2265
    invoke-virtual {v4}, Lcom/voxel/launcher3/Launcher$State;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private isAllAppsVisibleOrMovingToVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isInstrumentedRun()Z
    .locals 2

    .line 7373
    :try_start_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.voxel.simplesearchlauncher.RemoteAppLaunchTest"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isPropertyEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x2

    .line 675
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isWallpaperDrawableValid(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1320
    :cond_0
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1321
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1322
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v2
.end method

.method public static synthetic lambda$addAppWidgetImpl$23(Lcom/voxel/launcher3/Launcher;)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x12c

    const/4 v2, 0x0

    .line 4193
    invoke-virtual {p0, v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$bindAppWidget$38(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V
    .locals 0

    .line 6840
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->bindAppWidget(Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public static synthetic lambda$bindAppsAdded$33(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 6648
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/voxel/launcher3/Launcher;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic lambda$bindAppsRestored$44(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;)V
    .locals 0

    .line 7169
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->bindAppsRestored(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic lambda$bindAppsUpdated$41(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;)V
    .locals 0

    .line 7095
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->bindAppsUpdated(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic lambda$bindComponentsRemoved$45(Lcom/voxel/launcher3/Launcher;Ljava/util/HashSet;Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 7216
    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/launcher3/Launcher;->bindComponentsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method public static synthetic lambda$bindFolders$37(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/util/LongArrayMap;)V
    .locals 0

    .line 6824
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->bindFolders(Lcom/voxel/launcher3/util/LongArrayMap;)V

    return-void
.end method

.method public static synthetic lambda$bindItems$34(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 6688
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/Launcher;->bindItems(Ljava/util/ArrayList;IIZZ)V

    return-void
.end method

.method public static synthetic lambda$bindItems$35(Lcom/voxel/launcher3/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;ILjava/util/ArrayList;)V
    .locals 0

    .line 6772
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 6774
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p3, p2, :cond_0

    .line 6776
    new-instance p2, Lcom/voxel/launcher3/Launcher$26;

    invoke-direct {p2, p0}, Lcom/voxel/launcher3/Launcher$26;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6800
    :cond_0
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static synthetic lambda$bindItems$36(Lcom/voxel/launcher3/Launcher;ILjava/lang/Runnable;)V
    .locals 2

    .line 6806
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 6807
    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Workspace;->snapToPage(I)V

    .line 6808
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Lcom/voxel/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$bindShortcutsChanged$42(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 7121
    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/launcher3/Launcher;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method public static synthetic lambda$bindWidgetsRestored$43(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;)V
    .locals 0

    .line 7158
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->bindWidgetsRestored(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic lambda$completeTwoStageWidgetDrop$3(Lcom/voxel/launcher3/Launcher;ILandroid/appwidget/AppWidgetHostView;I)V
    .locals 9

    .line 1737
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-wide v3, v0, Lcom/voxel/launcher3/ItemInfo;->container:J

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-wide v5, v0, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/voxel/launcher3/Launcher;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)V

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 p2, 0x12c

    const/4 p3, 0x0

    .line 1739
    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$exitSpringLoadedDragModeDelayed$32(Lcom/voxel/launcher3/Launcher;ZLjava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 6278
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/Launcher;->showWorkspace(ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 6280
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->exitSpringLoadedDragMode()Z

    :goto_0
    return-void
.end method

.method public static synthetic lambda$finishBindingItems$39(Lcom/voxel/launcher3/Launcher;Z)V
    .locals 0

    .line 6956
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->finishBindingItems(Z)V

    return-void
.end method

.method public static synthetic lambda$finishBindingItems$40(Lcom/voxel/launcher3/Launcher;J)V
    .locals 1

    .line 6982
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/Workspace;->snapToScreenId(J)V

    return-void
.end method

.method static synthetic lambda$getHapticFeedbackTouchListener$27(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 4993
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4994
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$hideAppsCustomizeHelper$31(Lcom/voxel/launcher3/Launcher;Landroid/animation/AnimatorSet;Landroid/view/View;ZLjava/util/ArrayList;)V
    .locals 1

    .line 6151
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6154
    invoke-direct {p0, p2, p3, p1}, Lcom/voxel/launcher3/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 6156
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isLmpOrAbove()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6157
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 6158
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_2

    .line 6161
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p3, v0, :cond_1

    .line 6162
    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x1

    :goto_1
    if-eqz p3, :cond_2

    .line 6164
    invoke-virtual {p2}, Landroid/view/View;->buildLayer()V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6168
    :cond_3
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static synthetic lambda$hideBlurImage$30(Lcom/voxel/launcher3/Launcher;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 5695
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Launcher;->setFragmentBlurAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$onActivityResult$0(Lcom/voxel/launcher3/Launcher;I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x12c

    const/4 v1, 0x0

    .line 1502
    invoke-virtual {p0, p1, v0, v1}, Lcom/voxel/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$onActivityResult$1(Lcom/voxel/launcher3/Launcher;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1581
    invoke-virtual {p0, v0, v0, v1}, Lcom/voxel/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$onActivityResult$2(Lcom/voxel/launcher3/Launcher;IILcom/voxel/launcher3/CellLayout;)V
    .locals 0

    .line 1602
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/Launcher;->completeTwoStageWidgetDrop(II)V

    const/4 p1, 0x0

    .line 1603
    invoke-virtual {p3, p1}, Lcom/voxel/launcher3/CellLayout;->setDropPending(Z)V

    return-void
.end method

.method public static synthetic lambda$onClickAppShortcut$26(Lcom/voxel/launcher3/Launcher;Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 4801
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$onClickPendingWidget$24(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/PendingAppWidgetHostView;Ljava/lang/String;Lcom/voxel/launcher3/LauncherAppWidgetInfo;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 4642
    invoke-static {p2}, Lcom/voxel/launcher3/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$onNewIntent$21(Lcom/voxel/launcher3/Launcher;)V
    .locals 1

    .line 3765
    new-instance v0, Lcom/voxel/simplesearchlauncher/fragment/LauncherRestoredFragment;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherRestoredFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    return-void
.end method

.method public static synthetic lambda$onNewIntent$22(Lcom/voxel/launcher3/Launcher;)V
    .locals 1

    .line 3770
    new-instance v0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    return-void
.end method

.method public static synthetic lambda$onResume$4(Lcom/voxel/launcher3/Launcher;Landroid/view/View;Lcom/evie/common/dragndrop/ItemInfoCommon;Lcom/evie/common/dragndrop/DragSource;)V
    .locals 2

    .line 1902
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchItemShortcutHandler:Lcom/voxel/launcher3/SearchItemShortcutHandler;

    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/voxel/launcher3/SearchItemShortcutHandler;->fromItemInfoCommon(Landroid/content/Context;Lcom/evie/common/dragndrop/ItemInfoCommon;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1904
    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/launcher3/Launcher;->startDrag(Landroid/view/View;Lcom/voxel/launcher3/ItemInfo;Lcom/evie/common/dragndrop/DragSource;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onResume$5(Lcom/voxel/launcher3/Launcher;)V
    .locals 1

    .line 2079
    new-instance v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;-><init>()V

    .line 2080
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    return-void
.end method

.method public static synthetic lambda$openFolder$28(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/FolderIcon;)V
    .locals 6

    const/4 v0, 0x2

    .line 5298
    new-array v0, v0, [I

    .line 5299
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/voxel/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v1

    .line 5301
    aget v3, v0, v2

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/voxel/launcher3/FolderIcon;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    .line 5302
    aget v0, v0, v4

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/voxel/launcher3/FolderIcon;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v1

    div-float/2addr p1, v5

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 5304
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->setPivotX(F)V

    .line 5305
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->setPivotY(F)V

    .line 5306
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerMiddlePivotLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 5307
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    invoke-virtual {p1, v2}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setVisibility(I)V

    .line 5309
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mBackgroundFolderAnimationHelper:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    invoke-virtual {p1}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->animateOpenFolder()V

    return-void
.end method

.method public static synthetic lambda$setupViews$10(Lcom/voxel/launcher3/Launcher;Landroid/view/View;)V
    .locals 1

    .line 2409
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2410
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->onClickWallpaperPicker(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setupViews$11(Lcom/voxel/launcher3/Launcher;Landroid/view/View;)V
    .locals 1

    .line 2418
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2419
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->onClickSettingsButton(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setupViews$12(Lcom/voxel/launcher3/Launcher;Landroid/view/View;Z)V
    .locals 0

    .line 2485
    check-cast p1, Landroidx/appcompat/widget/SearchView;

    if-eqz p2, :cond_1

    .line 2487
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getEndValueIfAvailable()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2488
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    .line 2489
    :cond_0
    sget-object p1, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->TAP:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    iget-boolean p2, p0, Lcom/voxel/launcher3/Launcher;->isStopped:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/Launcher;->activateSearch(Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;Z)V

    goto :goto_0

    .line 2492
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getCurrentStackFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_2

    return-void

    .line 2495
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 2496
    iget-boolean p2, p0, Lcom/voxel/launcher3/Launcher;->isStopped:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/Launcher;->changeSearchMode(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setupViews$13(Lcom/voxel/launcher3/Launcher;)Z
    .locals 1

    .line 2615
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getStackFragmentCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$setupViews$14(Lcom/voxel/launcher3/Launcher;Landroid/view/View;)V
    .locals 3

    const-string v0, "Launcher"

    const-string v1, "Voice RecognitionListener - Starting Google Now Assist Listener"

    .line 2620
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const v2, 0x7f1202b7

    .line 2622
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;I)Z

    const/4 p1, 0x1

    .line 2623
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher;->isLaunchingVoiceAssist:Z

    return-void
.end method

.method public static synthetic lambda$setupViews$15(Lcom/voxel/launcher3/Launcher;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2666
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mSearchResultListCloseKeyboardGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$setupViews$16(Lcom/voxel/launcher3/Launcher;)V
    .locals 3

    .line 2669
    sget-object v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->NEG_SPACE:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/voxel/launcher3/Launcher;->deactivateSearch(Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;Z)V

    const-string v0, "input_method"

    .line 2670
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2671
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static synthetic lambda$setupViews$17(Lcom/voxel/launcher3/Launcher;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2695
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2696
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->sendMotionEvent(Landroid/view/MotionEvent;)V

    .line 2698
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mBlurGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$setupViews$18(Lcom/voxel/launcher3/Launcher;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 2703
    invoke-virtual {p0, p1, p1}, Lcom/voxel/launcher3/Launcher;->changeAllAppsVisibility(ZZ)V

    return-void
.end method

.method static synthetic lambda$setupViews$19(Landroidx/core/view/GestureDetectorCompat;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2752
    invoke-virtual {p0, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$setupViews$20(Lcom/voxel/launcher3/Launcher;Landroid/view/View;IIIIIIII)V
    .locals 0

    add-int/2addr p2, p4

    .line 2855
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p5

    .line 2856
    div-int/lit8 p3, p3, 0x2

    .line 2857
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->setPivotX(F)V

    .line 2858
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->setPivotY(F)V

    return-void
.end method

.method public static synthetic lambda$setupViews$6(Lcom/voxel/launcher3/Launcher;Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .line 2361
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewScroller:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    sget-object v0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->ADD_COMBINER:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$Combiner;

    .line 2362
    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->getCombinedFactor(Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$Combiner;)F

    move-result p2

    .line 2361
    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic lambda$setupViews$7(Lcom/voxel/launcher3/Launcher;Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .line 2365
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewScroller:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewScrollerModifier:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    sget-object v0, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->MULTIPLY_COMBINER:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$Combiner;

    .line 2368
    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->getCombinedFactor(Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$Combiner;)F

    move-result p2

    .line 2365
    invoke-virtual {p1, p0, p2}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->putModifier(Ljava/lang/Object;F)V

    return-void
.end method

.method public static synthetic lambda$setupViews$8(Lcom/voxel/launcher3/Launcher;Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p5, p9, :cond_0

    return-void

    .line 2379
    :cond_0
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->refreshBlurredImage()V

    .line 2380
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewScroller:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarDesktopEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getSearchBarHiddenHeight()I

    move-result p2

    int-to-float p2, p2

    :goto_0
    invoke-virtual {p1, p0, p2}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->put(Ljava/lang/Object;F)V

    return-void
.end method

.method public static synthetic lambda$setupViews$9(Lcom/voxel/launcher3/Launcher;Landroid/view/View;)V
    .locals 1

    .line 2401
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2402
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->onClickAddWidgetButton(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$showBlurImage$29(Lcom/voxel/launcher3/Launcher;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 5678
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Launcher;->setFragmentBlurAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$showBrokenAppInstallDialog$25(Lcom/voxel/launcher3/Launcher;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 4729
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p2

    .line 4730
    iget-object p3, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p3, p1, p2}, Lcom/voxel/launcher3/Workspace;->removeAbandonedPromise(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method public static synthetic lambda$unlockScreenOrientation$46(Lcom/voxel/launcher3/Launcher;)V
    .locals 1

    const/4 v0, -0x1

    .line 7287
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->setRequestedOrientation(I)V

    return-void
.end method

.method private mapConfigurationOriActivityInfoOri(I)I
    .locals 6

    .line 7237
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 7239
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x2

    goto :goto_0

    :pswitch_0
    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    :pswitch_1
    const/4 v1, 0x4

    .line 7253
    new-array v4, v1, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 7265
    :goto_1
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result p1

    add-int/2addr p1, v2

    rem-int/2addr p1, v1

    aget p1, v4, p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x0
        0x9
        0x8
    .end array-data
.end method

.method private markFirstRunClingShown()V
    .locals 3

    .line 7439
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launcher.first_run_cling_displayed"

    const/4 v2, 0x1

    .line 7440
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7441
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private onAppWidgetReset()V
    .locals 1

    .line 4508
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    .line 4509
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->startListening()V

    :cond_0
    return-void
.end method

.method private preparePendingAddArgs(ILandroid/content/Intent;ILcom/voxel/launcher3/ItemInfo;)Lcom/voxel/launcher3/Launcher$PendingAddArguments;
    .locals 2

    .line 1694
    new-instance v0, Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/voxel/launcher3/Launcher$PendingAddArguments;-><init>(Lcom/voxel/launcher3/Launcher$1;)V

    .line 1695
    iput p1, v0, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->requestCode:I

    .line 1696
    iput-object p2, v0, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 1697
    iget-wide p1, p4, Lcom/voxel/launcher3/ItemInfo;->container:J

    iput-wide p1, v0, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->container:J

    .line 1698
    iget-wide p1, p4, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    iput-wide p1, v0, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->screenId:J

    .line 1699
    iget p1, p4, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iput p1, v0, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->cellX:I

    .line 1700
    iget p1, p4, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iput p1, v0, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->cellY:I

    .line 1701
    iput p3, v0, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->appWidgetId:I

    return-object v0
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/voxel/launcher3/Launcher$LocaleConfiguration;)V
    .locals 3

    const/4 v0, 0x0

    .line 1338
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1339
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/voxel/launcher3/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1340
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    iput p0, p1, Lcom/voxel/launcher3/Launcher$LocaleConfiguration;->mcc:I

    .line 1341
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    iput p0, p1, Lcom/voxel/launcher3/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1349
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :catch_1
    nop

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1354
    :catch_2
    :cond_0
    throw p0

    :catch_3
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_1

    goto :goto_0

    :catch_4
    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_1

    goto :goto_0

    :catch_5
    :cond_1
    :goto_4
    return-void
.end method

.method private reconfigureWidget(Lcom/voxel/launcher3/PendingAppWidgetHostView;)V
    .locals 8

    .line 4652
    invoke-virtual {p1}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    .line 4653
    iget v0, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 4654
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4656
    iput-object v3, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    .line 4657
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    invoke-virtual {v1, p1}, Lcom/voxel/launcher3/ItemInfo;->copyFrom(Lcom/voxel/launcher3/ItemInfo;)V

    .line 4658
    iput v0, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetId:I

    .line 4660
    invoke-static {p0}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v2

    iget v4, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object v6, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    const/16 v7, 0xc

    move-object v5, p0

    invoke-virtual/range {v2 .. v7}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    :cond_0
    return-void
.end method

.method private refreshBlurredImage()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .line 1133
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mRefreshBlurredImageTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1134
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1141
    :cond_0
    new-instance v0, Lcom/voxel/launcher3/Launcher$5;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/Launcher$5;-><init>(Lcom/voxel/launcher3/Launcher;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 1253
    invoke-virtual {v0, v1, v2}, Lcom/voxel/launcher3/Launcher$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mRefreshBlurredImageTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private registerContentObservers()V
    .locals 4

    .line 4355
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4356
    sget-object v1, Lcom/voxel/launcher3/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private resetAddInfo()V
    .locals 3

    .line 4165
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/voxel/launcher3/ItemInfo;->container:J

    .line 4166
    iput-wide v1, v0, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    const/4 v1, -0x1

    .line 4167
    iput v1, v0, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iput v1, v0, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    .line 4168
    iput v1, v0, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    iput v1, v0, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 4169
    iput v1, v0, Lcom/voxel/launcher3/ItemInfo;->minSpanY:I

    iput v1, v0, Lcom/voxel/launcher3/ItemInfo;->minSpanX:I

    const/4 v1, 0x0

    .line 4170
    iput-object v1, v0, Lcom/voxel/launcher3/ItemInfo;->dropPos:[I

    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "launcher.state"

    .line 2284
    sget-object v1, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->intToState(I)Lcom/voxel/launcher3/Launcher$State;

    move-result-object v0

    .line 2285
    sget-object v1, Lcom/voxel/launcher3/Launcher$State;->APPS_CUSTOMIZE:Lcom/voxel/launcher3/Launcher$State;

    if-ne v0, v1, :cond_1

    .line 2286
    sget-object v0, Lcom/voxel/launcher3/Launcher$State;->APPS_CUSTOMIZE:Lcom/voxel/launcher3/Launcher$State;

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeState:Lcom/voxel/launcher3/Launcher$State;

    :cond_1
    const-string v0, "launcher.current_screen"

    const/16 v1, -0x3e9

    .line 2289
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 2292
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/Workspace;->setRestorePage(I)V

    :cond_2
    const-string v0, "launcher.add_container"

    const-wide/16 v1, -0x1

    .line 2295
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "launcher.add_screen"

    .line 2296
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v0, 0x1

    cmp-long v7, v3, v1

    if-eqz v7, :cond_3

    cmp-long v7, v5, v1

    if-lez v7, :cond_3

    .line 2299
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iput-wide v3, v1, Lcom/voxel/launcher3/ItemInfo;->container:J

    .line 2300
    iput-wide v5, v1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    const-string v2, "launcher.add_cell_x"

    .line 2301
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    .line 2302
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    const-string v2, "launcher.add_cell_y"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    .line 2303
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    const-string v2, "launcher.add_span_x"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 2304
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    const-string v2, "launcher.add_span_y"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    const-string v1, "launcher.add_widget_info"

    .line 2305
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    const-string v1, "launcher.add_widget_id"

    .line 2306
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetId:I

    .line 2307
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->setWaitingForResult(Z)V

    .line 2308
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mRestoring:Z

    :cond_3
    const-string v1, "launcher.rename_folder"

    const/4 v2, 0x0

    .line 2311
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "launcher.rename_folder_id"

    .line 2313
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 2314
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    sget-object v4, Lcom/voxel/launcher3/Launcher;->sFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-virtual {v3, p0, v4, v1, v2}, Lcom/voxel/launcher3/LauncherModel;->getFolderById(Landroid/content/Context;Lcom/voxel/launcher3/util/LongArrayMap;J)Lcom/voxel/launcher3/FolderInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mFolderInfo:Lcom/voxel/launcher3/FolderInfo;

    .line 2315
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mRestoring:Z

    :cond_4
    const-string v0, "launcher.view_ids"

    .line 2334
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    return-void
.end method

.method private scheduleGoogleNowBackgroundCleanup(J)V
    .locals 3

    .line 3082
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mCleanupGoogleNowBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3083
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mCleanupGoogleNowBackgroundHandler:Landroid/os/Handler;

    .line 3086
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mCleanupGoogleNowBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mCleanupGoogleNowBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 3088
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mCleanupGoogleNowBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mCleanupGoogleNowBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3090
    :cond_1
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->cleanupGoogleNowLaunchBackground()V

    :goto_0
    return-void
.end method

.method private sendAdvanceMessage(J)V
    .locals 2

    .line 3549
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3550
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3551
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/voxel/launcher3/Launcher;->mAutoAdvanceSentTime:J

    return-void
.end method

.method private sendLoadingCompleteBroadcastIfNecessary()V
    .locals 3

    .line 7007
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->hasCompletedFirstLoad()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7009
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7010
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.voxel.launcher3.action.FIRST_LOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7011
    invoke-virtual {p0, v1, v0}, Lcom/voxel/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 7012
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launcher.first_load_complete"

    const/4 v2, 0x1

    .line 7013
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7014
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private setFragmentBlurAlpha(F)V
    .locals 2

    .line 6401
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mBlurImageAlphaHelper:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    const-string v1, "fragment"

    invoke-virtual {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->put(Ljava/lang/Object;F)V

    .line 6402
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->updateBlurImageViewAlpha()V

    return-void
.end method

.method private setGoogleBlurAlpha(F)V
    .locals 2

    .line 6396
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mBlurImageAlphaHelper:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    const-string v1, "google"

    invoke-virtual {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->put(Ljava/lang/Object;F)V

    .line 6397
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->updateBlurImageViewAlpha()V

    return-void
.end method

.method private setHasLaunchedHome()V
    .locals 3

    .line 7031
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 7032
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launcher.has_launhced_home"

    const/4 v2, 0x1

    .line 7033
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7034
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private setPullDownListViewEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3160
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->setEnabled(Z)V

    .line 3161
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->setClickable(Z)V

    .line 3162
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->setLongClickable(Z)V

    goto :goto_0

    .line 3164
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->setEnabled(Z)V

    .line 3165
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->setClickable(Z)V

    .line 3166
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->setLongClickable(Z)V

    :goto_0
    return-void
.end method

.method static setScreen(I)V
    .locals 1

    .line 1402
    sget-object v0, Lcom/voxel/launcher3/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1403
    :try_start_0
    sput p0, Lcom/voxel/launcher3/Launcher;->sScreen:I

    .line 1404
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setSearchBlurAlpha(F)V
    .locals 2

    .line 6391
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mBlurImageAlphaHelper:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    const-string v1, "search"

    invoke-virtual {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->put(Ljava/lang/Object;F)V

    .line 6392
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->updateBlurImageViewAlpha()V

    return-void
.end method

.method private setUpSearchHelper()V
    .locals 9

    .line 2865
    new-instance v0, Lcom/voxel/launcher3/SearchItemShortcutHandler;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->localAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-direct {v0, p0, v1}, Lcom/voxel/launcher3/SearchItemShortcutHandler;-><init>(Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchItemShortcutHandler:Lcom/voxel/launcher3/SearchItemShortcutHandler;

    .line 2867
    new-instance v8, Lcom/voxel/launcher3/Launcher$15;

    invoke-direct {v8, p0}, Lcom/voxel/launcher3/Launcher$15;-><init>(Lcom/voxel/launcher3/Launcher;)V

    .line 2885
    new-instance v0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    iget-object v5, p0, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    iget-object v6, p0, Lcom/voxel/launcher3/Launcher;->mFrequentlyUsedModel:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    iget-object v7, p0, Lcom/voxel/launcher3/Launcher;->mHideAppsModel:Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;-><init>(Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/view/SpringySearchView;Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;Lcom/evie/models/frequentlyused/FrequentlyUsedModel;Lcom/evie/search/AppAvailabilityProvider;Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$ScaleState;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchUiHelper:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    .line 2887
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchUiHelper:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->getSearchPresenter()Lcom/evie/search/SearchPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 2888
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evie/search/SearchPresenter;->setWebSearchAllowed(Z)V

    .line 2889
    new-instance v0, Lcom/voxel/launcher3/FragmentHelper;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/FragmentHelper;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    return-void
.end method

.method private setWaitingForResult(Z)V
    .locals 1

    .line 4154
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    .line 4155
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher;->mWaitingForResult:Z

    .line 4156
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result p1

    if-eq v0, p1, :cond_0

    .line 4157
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->onWorkspaceLockedChanged()V

    :cond_0
    return-void
.end method

.method private setWorkspaceBackground(Z)V
    .locals 0

    return-void
.end method

.method private setWorkspaceLoading(Z)V
    .locals 1

    .line 4146
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    .line 4147
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 4148
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result p1

    if-eq v0, p1, :cond_0

    .line 4149
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->onWorkspaceLockedChanged()V

    :cond_0
    return-void
.end method

.method private setupGoogleNowLaunchBackground()V
    .locals 2

    .line 3059
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimBackground:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 3060
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimIcon:Landroid/widget/ImageView;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3061
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimFinalIconSize:I

    const/4 v0, 0x0

    .line 3062
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mIsGoogleNowAnimLocked:Z

    :cond_0
    return-void
.end method

.method private setupViews()V
    .locals 11

    .line 2342
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    .line 2345
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 2346
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a003d

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsFragment:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    .line 2349
    new-instance v1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v1, v3}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;-><init>([Landroid/view/View;)V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspaceAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    .line 2350
    new-instance v1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mHotseatBg:Lcom/voxel/simplesearchlauncher/view/HotseatImageView;

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;-><init>([Landroid/view/View;)V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mHotseatAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    .line 2351
    new-instance v1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mIndicatorContainer:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    aput-object v4, v3, v5

    invoke-direct {v1, v3}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;-><init>([Landroid/view/View;)V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mIndicatorAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    .line 2352
    new-instance v1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    aput-object v4, v3, v5

    invoke-direct {v1, v3}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;-><init>([Landroid/view/View;)V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBarAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    .line 2353
    new-instance v1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    aput-object v4, v3, v5

    invoke-direct {v1, v3}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;-><init>([Landroid/view/View;)V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mOverviewPanelAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    .line 2354
    new-instance v1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    new-array v3, v2, [Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerDarken:Landroid/widget/ImageView;

    aput-object v4, v3, v5

    invoke-direct {v1, v3}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;-><init>([Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerDarkenAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    .line 2356
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mOverviewPanelAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    iget-object v3, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    .line 2357
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mOverviewPanelAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, p0, v3}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    .line 2359
    new-instance v1, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;-><init>()V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewScroller:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    .line 2360
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewScroller:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    new-instance v6, Lcom/voxel/launcher3/-$$Lambda$Launcher$BorPgMNdJmJQ5azuSVWpGl1-m64;

    invoke-direct {v6, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$BorPgMNdJmJQ5azuSVWpGl1-m64;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v1, v6}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->addObserver(Ljava/util/Observer;)V

    .line 2363
    new-instance v1, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;-><init>()V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewScrollerModifier:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    .line 2364
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewScrollerModifier:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    new-instance v6, Lcom/voxel/launcher3/-$$Lambda$Launcher$zhU500aZo-d4VaukXY5jX3eAGdI;

    invoke-direct {v6, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$zhU500aZo-d4VaukXY5jX3eAGdI;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v1, v6}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->addObserver(Ljava/util/Observer;)V

    .line 2372
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->setUpSearchHelper()V

    .line 2374
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mLauncherView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v6, Lcom/voxel/launcher3/-$$Lambda$Launcher$GvpUv7DXjVS5KkPiSaYqD2n_5R4;

    invoke-direct {v6, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$GvpUv7DXjVS5KkPiSaYqD2n_5R4;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v1, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2383
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mLauncherView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFocusableInTouchMode(Z)V

    .line 2384
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mLauncherView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/16 v6, 0x700

    invoke-virtual {v1, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    .line 2389
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1, p0, v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->setup(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/dragndrop/DragController;)V

    .line 2392
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    if-eqz v1, :cond_0

    .line 2393
    invoke-virtual {v1, p0}, Lcom/voxel/launcher3/Hotseat;->setup(Lcom/voxel/launcher3/Launcher;)V

    .line 2394
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    invoke-virtual {v1, p0}, Lcom/voxel/launcher3/Hotseat;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2397
    :cond_0
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    iget-object v6, p0, Lcom/voxel/launcher3/Launcher;->mHotseatBg:Lcom/voxel/simplesearchlauncher/view/HotseatImageView;

    invoke-virtual {v1, v6}, Lcom/voxel/launcher3/Hotseat;->setBackgroundView(Landroid/view/View;)V

    const v1, 0x7f0a02f5

    .line 2399
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2400
    new-instance v6, Lcom/voxel/launcher3/-$$Lambda$Launcher$WiCWsKhJ7G7upckPy8pCsLSkGz0;

    invoke-direct {v6, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$WiCWsKhJ7G7upckPy8pCsLSkGz0;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2405
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v6, 0x7f0a02e8

    .line 2407
    invoke-virtual {p0, v6}, Lcom/voxel/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2408
    new-instance v7, Lcom/voxel/launcher3/-$$Lambda$Launcher$p1VwbHHZQ3ZHHqC9_lswaPZD6jg;

    invoke-direct {v7, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$p1VwbHHZQ3ZHHqC9_lswaPZD6jg;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2413
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v6, 0x7f0a0264

    .line 2415
    invoke-virtual {p0, v6}, Lcom/voxel/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2416
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->hasSettings()Z

    move-result v7

    const/16 v8, 0x8

    if-eqz v7, :cond_1

    .line 2417
    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$Launcher$8bpeOA_SsnRycNsXHgq63uNOkC0;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$8bpeOA_SsnRycNsXHgq63uNOkC0;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2422
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 2424
    :cond_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2425
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const v7, 0x800035

    .line 2426
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2427
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 2431
    :goto_0
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v1, p0}, Lcom/voxel/launcher3/Workspace;->setPageSwitchListener(Lcom/voxel/launcher3/PagedView$PageSwitchListener;)V

    .line 2432
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    iget-object v6, p0, Lcom/voxel/launcher3/Launcher;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    const v7, 0x7f0a02fe

    invoke-virtual {v6, v7}, Lcom/voxel/launcher3/dragndrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/RemoveDropTarget;

    invoke-virtual {v1, v6}, Lcom/voxel/launcher3/Workspace;->setDeleteDropTarget(Lcom/voxel/launcher3/RemoveDropTarget;)V

    .line 2433
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v1, v5}, Lcom/voxel/launcher3/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 2434
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v1, p0}, Lcom/voxel/launcher3/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2435
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/Workspace;->setup(Lcom/voxel/launcher3/dragndrop/DragController;)V

    .line 2436
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/dragndrop/DragController;->addDragListener(Lcom/voxel/launcher3/dragndrop/DragController$DragListener;)V

    .line 2438
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    iget-object v6, p0, Lcom/voxel/launcher3/Launcher;->mIndicatorContainer:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    invoke-virtual {v1, v6}, Lcom/voxel/launcher3/Workspace;->setPageInteractionListener(Lcom/voxel/launcher3/PagedView$PageInteractionListener;)V

    .line 2439
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    iget-object v6, p0, Lcom/voxel/launcher3/Launcher;->mIndicatorContainer:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    invoke-virtual {v1, v6}, Lcom/voxel/launcher3/dragndrop/DragController;->addDragListener(Lcom/voxel/launcher3/dragndrop/DragController$DragListener;)V

    .line 2440
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    new-instance v6, Lcom/voxel/launcher3/Launcher$9;

    invoke-direct {v6, p0}, Lcom/voxel/launcher3/Launcher$9;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v1, v6}, Lcom/voxel/launcher3/dragndrop/DragController;->addDragListener(Lcom/voxel/launcher3/dragndrop/DragController$DragListener;)V

    .line 2477
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070204

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setFactorDistance(I)V

    .line 2478
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarStyle()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 2479
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setUseSubtleBackground(Z)V

    .line 2480
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setVisibility(I)V

    .line 2483
    :cond_2
    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$Launcher$QrXdSFEB58XT5q0HVObpCAfkYw0;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$QrXdSFEB58XT5q0HVObpCAfkYw0;-><init>(Lcom/voxel/launcher3/Launcher;)V

    .line 2501
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v2, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2502
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v2, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2504
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    new-instance v2, Lcom/voxel/launcher3/Launcher$10;

    invoke-direct {v2, p0}, Lcom/voxel/launcher3/Launcher$10;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setOnFactorChangeListener(Lcom/voxel/simplesearchlauncher/view/SpringySearchView$OnFactorChangeListener;)V

    const-string v1, "search"

    .line 2613
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 2614
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 2615
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$Launcher$njqBCaBNIeD1LVn-zUNPErn514k;

    invoke-direct {v2, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$njqBCaBNIeD1LVn-zUNPErn514k;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setKeyboardRulesHandler(Lcom/voxel/simplesearchlauncher/view/SpringySearchView$KeyboardRulesHandler;)V

    .line 2618
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    const v2, 0x7f0a0259

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$Launcher$F2iZ-Jl6bceIfx4T2ns2fSk53LM;

    invoke-direct {v2, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$F2iZ-Jl6bceIfx4T2ns2fSk53LM;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2626
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    const v2, 0x80001

    .line 2627
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 2630
    :cond_3
    new-instance v1, Landroidx/core/view/GestureDetectorCompat;

    new-instance v2, Lcom/voxel/launcher3/Launcher$11;

    invoke-direct {v2, p0}, Lcom/voxel/launcher3/Launcher$11;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-direct {v1, p0, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 2647
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->clearFocus()V

    .line 2648
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mLauncherView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->requestFocus()Z

    .line 2651
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    new-instance v2, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->setItemAnimator(Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2652
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getItemAnimator()Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    const-wide/16 v6, 0x1f4

    invoke-virtual {v1, v6, v7}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 2653
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    new-instance v2, Lcom/voxel/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->setLayoutManager(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2654
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->setItemViewCacheSize(I)V

    .line 2656
    new-instance v1, Landroidx/core/view/GestureDetectorCompat;

    new-instance v2, Lcom/voxel/launcher3/Launcher$12;

    invoke-direct {v2, p0}, Lcom/voxel/launcher3/Launcher$12;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-direct {v1, p0, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mSearchResultListCloseKeyboardGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 2666
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$Launcher$t9Kd_rILOsUISEGlYeTwrgWw0KU;

    invoke-direct {v2, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$t9Kd_rILOsUISEGlYeTwrgWw0KU;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2668
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$Launcher$STKe9PGn9CFluPJLz2v395i2HLY;

    invoke-direct {v2, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$STKe9PGn9CFluPJLz2v395i2HLY;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->setOnNoItemClickListener(Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$OnNoItemClickListener;)V

    .line 2673
    invoke-direct {p0, v5}, Lcom/voxel/launcher3/Launcher;->setPullDownListViewEnabled(Z)V

    .line 2675
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mSearchUiHelper:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->getQueryTextListener()Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 2678
    invoke-direct {p0, v4}, Lcom/voxel/launcher3/Launcher;->setSearchBlurAlpha(F)V

    .line 2680
    new-instance v1, Landroidx/core/view/GestureDetectorCompat;

    new-instance v2, Lcom/voxel/launcher3/Launcher$13;

    invoke-direct {v2, p0}, Lcom/voxel/launcher3/Launcher$13;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-direct {v1, p0, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mBlurGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 2694
    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$Launcher$mffmvBKS6p_M7HV28GMoJVkvaqw;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$mffmvBKS6p_M7HV28GMoJVkvaqw;-><init>(Lcom/voxel/launcher3/Launcher;)V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mBlurOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 2703
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsUpChevron:Landroid/widget/ImageView;

    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$Launcher$gBzU-G4zs5jCY-s4acexIkaeJ74;

    invoke-direct {v2, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$gBzU-G4zs5jCY-s4acexIkaeJ74;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2705
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    invoke-virtual {v1, v5}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setImageAlpha(I)V

    .line 2706
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2707
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2709
    new-instance v1, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    .line 2710
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    new-instance v2, Lcom/facebook/rebound/SpringConfig;

    const-wide v6, 0x4076800000000000L    # 360.0

    const-wide/high16 v9, 0x4044000000000000L    # 40.0

    invoke-direct {v2, v6, v7, v9, v10}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)V

    .line 2711
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    sget-object v2, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;->VERTICAL:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setDirection(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;)V

    .line 2712
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setFactorDistance(I)V

    .line 2713
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsFactorChangeListener:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setOnFactorChangeListener(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;)V

    .line 2714
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-virtual {v1, v3}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setFactor(F)V

    .line 2716
    new-instance v1, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowLaunchMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    .line 2717
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowLaunchMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-virtual {v1, v3}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setFactor(F)V

    .line 2718
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowLaunchMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    new-instance v2, Lcom/facebook/rebound/SpringConfig;

    const-wide v3, 0x407f400000000000L    # 500.0

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)V

    .line 2719
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowLaunchMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    iget v2, p0, Lcom/voxel/launcher3/Launcher;->mScreenHeight:I

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setFactorDistance(I)V

    .line 2720
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowLaunchMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    sget-object v2, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;->VERTICAL:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setDirection(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;)V

    .line 2721
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowLaunchMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowLaunchFactorChangeListener:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setOnFactorChangeListener(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;)V

    .line 2724
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/dragndrop/DragController;->setDragScoller(Lcom/voxel/launcher3/dragndrop/DragScroller;)V

    .line 2725
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/dragndrop/DragController;->setScrollView(Landroid/view/View;)V

    .line 2726
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/dragndrop/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 2727
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/dragndrop/DragController;->addDropTarget(Lcom/voxel/launcher3/DropTarget;)V

    .line 2728
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    if-eqz v1, :cond_4

    .line 2729
    invoke-virtual {v1, p0, v0}, Lcom/voxel/launcher3/SearchDropTargetBar;->setup(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/dragndrop/DragController;)V

    .line 2732
    :cond_4
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Launcher"

    const-string v1, "adding WeightWatcher"

    .line 2733
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    new-instance v0, Lcom/voxel/launcher3/WeightWatcher;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/WeightWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWeightWatcher:Landroid/view/View;

    .line 2735
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWeightWatcher:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2736
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLauncherView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWeightWatcher:Landroid/view/View;

    new-instance v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2742
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->shouldShowWeightWatcher()Z

    move-result v0

    .line 2743
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWeightWatcher:Landroid/view/View;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2746
    :cond_6
    new-instance v0, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;

    new-instance v1, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;-><init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;)V

    invoke-direct {v0, p0, v1}, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/gestures/CustomGestureManager;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mCustomGestureListener:Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;

    .line 2747
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mCustomGestureListener:Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mCustomGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 2748
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mCustomGestureListener:Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;

    invoke-direct {v0, p0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mScaleCustomGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 2750
    new-instance v0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;

    invoke-direct {v0, p0, p0}, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;-><init>(Lcom/voxel/launcher3/Launcher;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerGestureListener:Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;

    .line 2751
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerGestureListener:Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 2752
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$Launcher$ajMcfR8mNeR3-PIGktfzBKgWqes;

    invoke-direct {v2, v0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$ajMcfR8mNeR3-PIGktfzBKgWqes;-><init>(Landroidx/core/view/GestureDetectorCompat;)V

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2754
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    new-instance v2, Lcom/voxel/launcher3/Launcher$14;

    invoke-direct {v2, p0, v0}, Lcom/voxel/launcher3/Launcher$14;-><init>(Lcom/voxel/launcher3/Launcher;Landroidx/core/view/GestureDetectorCompat;)V

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2853
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$i2CCMuykmISgl6teQaKt5sB1adw;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$i2CCMuykmISgl6teQaKt5sB1adw;-><init>(Lcom/voxel/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerMiddlePivotLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 2860
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mMainLayer:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerMiddlePivotLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private shouldRunFirstRunActivity()Z
    .locals 3

    .line 7383
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->isInstrumentedRun()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "launcher.first_run_activity_displayed"

    .line 7384
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private shouldRunFirstRunClings()Z
    .locals 3

    .line 7412
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->isInstrumentedRun()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "launcher.first_run_cling_displayed"

    .line 7413
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private shouldShowIntroScreen()Z
    .locals 3

    .line 7468
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->hasDismissableIntroScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "launcher.intro_screen_dismissed"

    .line 7469
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private shouldShowWeightWatcher()Z
    .locals 3

    .line 6621
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 6622
    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "debug.show_mem"

    .line 6623
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private showBrokenAppInstallDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 4723
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x1030128

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120003

    .line 4724
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120002

    .line 4725
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120004

    .line 4726
    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$J1M51etEzYVkQ2xk1sr_TZFd7eA;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$Launcher$J1M51etEzYVkQ2xk1sr_TZFd7eA;-><init>(Lcom/voxel/launcher3/Launcher;Ljava/lang/String;)V

    const p1, 0x7f120001

    .line 4727
    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 4732
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showShortcutErrorToast()V
    .locals 3

    const v0, 0x7f12024a

    const/4 v1, 0x1

    .line 4877
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 4878
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/16 v2, 0x11

    .line 4879
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 4880
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 10

    const/high16 v0, 0x10000000

    .line 5071
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5072
    sget-object v0, Lcom/voxel/launcher3/Launcher;->sPermissionHelper:Lcom/voxel/simplesearchlauncher/activity/PermissionHelper;

    invoke-virtual {v0, p0, p2}, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper;->checkIntentPermission(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x17

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    :try_start_0
    const-string v3, "com.voxel.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    .line 5081
    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    const/4 v3, 0x0

    .line 5082
    :goto_0
    invoke-static {p0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object v4

    .line 5083
    invoke-static {p0}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object v5

    const-string v6, "profile"

    .line 5085
    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    const-string v6, "profile"

    const-wide/16 v8, -0x1

    .line 5086
    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 5087
    invoke-virtual {v5, v8, v9}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v7

    :goto_1
    if-eqz v3, :cond_8

    .line 5092
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v0, :cond_4

    .line 5094
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 5095
    instance-of v8, p1, Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 5097
    move-object v8, p1

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v8}, Lcom/voxel/launcher3/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 5099
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 5100
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v3, v8

    div-int/lit8 v3, v3, 0x2

    .line 5101
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 5102
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 5103
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto :goto_2

    :cond_3
    move v9, v3

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 5106
    :goto_2
    invoke-static {p1, v3, v8, v9, v6}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_3

    .line 5107
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v3, v6, :cond_5

    .line 5110
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 5109
    invoke-static {p1, v1, v1, v3, v6}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_3

    .line 5111
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt p1, v3, :cond_6

    const p1, 0x7f010022

    const v3, 0x7f010016

    .line 5115
    invoke-static {p0, p1, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_3

    :cond_6
    move-object p1, v7

    :goto_3
    if-eqz p1, :cond_7

    .line 5118
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_4

    :cond_7
    move-object p1, v7

    goto :goto_4

    :cond_8
    move-object p1, v7

    .line 5121
    :goto_4
    instance-of v3, p3, Lcom/voxel/launcher3/ItemInfo;

    if-eqz v3, :cond_9

    move-object v7, p3

    check-cast v7, Lcom/voxel/launcher3/ItemInfo;

    :cond_9
    if-eqz v7, :cond_b

    .line 5123
    iget v3, v7, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    if-eq v3, v2, :cond_a

    iget v3, v7, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_b

    :cond_a
    move-object v3, v7

    check-cast v3, Lcom/voxel/launcher3/ShortcutInfo;

    iget-object v3, v3, Lcom/voxel/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-nez v3, :cond_b

    .line 5128
    invoke-direct {p0, p2, p1, v7}, Lcom/voxel/launcher3/Launcher;->startShortcutIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/voxel/launcher3/ItemInfo;)V

    goto :goto_6

    :cond_b
    if-eqz v5, :cond_d

    .line 5130
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_5

    .line 5142
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 5143
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 5142
    invoke-virtual {v4, v3, v5, v6, p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->startActivityForProfile(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 5133
    :cond_d
    :goto_5
    :try_start_1
    invoke-virtual {p0, p2, p1}, Lcom/voxel/launcher3/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_1
    move-exception p1

    :try_start_2
    const-string v3, "Launcher"

    .line 5138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch. tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    move-exception p1

    const v3, 0x7f12002c

    .line 5135
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const-string v3, "Launcher"

    .line 5136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch. tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". Activity Not Found. intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_6
    return v2

    .line 5147
    :goto_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v0, :cond_e

    instance-of v0, p3, Lcom/voxel/launcher3/ItemInfo;

    if-eqz v0, :cond_e

    .line 5151
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "android.intent.action.CALL"

    .line 5152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "android.permission.CALL_PHONE"

    .line 5153
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    .line 5156
    check-cast p3, Lcom/voxel/launcher3/ItemInfo;

    const/16 p1, 0xd

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/voxel/launcher3/Launcher;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/voxel/launcher3/ItemInfo;)Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    move-result-object p2

    sput-object p2, Lcom/voxel/launcher3/Launcher;->sPendingAddItem:Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    const-string p2, "android.permission.CALL_PHONE"

    .line 5158
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/voxel/launcher3/Launcher;->requestPermissions([Ljava/lang/String;I)V

    return v1

    :cond_e
    const v0, 0x7f12017e

    .line 5163
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Launcher"

    .line 5164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity. tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " intent="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private startAppShortcutOrInfoActivity(Landroid/view/View;)V
    .locals 10

    .line 4810
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 4813
    instance-of v1, v0, Lcom/voxel/launcher3/ShortcutInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4814
    move-object v1, v0

    check-cast v1, Lcom/voxel/launcher3/ShortcutInfo;

    .line 4815
    iget-object v3, v1, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v4, 0x2

    .line 4816
    new-array v4, v4, [I

    .line 4817
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4818
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    aget v7, v4, v6

    aget v8, v4, v2

    aget v6, v4, v6

    .line 4819
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v6, v9

    aget v4, v4, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v4, v9

    invoke-direct {v5, v7, v8, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4818
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 4821
    :cond_0
    instance-of v1, v0, Lcom/voxel/launcher3/AppInfo;

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    .line 4823
    move-object v3, v0

    check-cast v3, Lcom/voxel/launcher3/AppInfo;

    iget-object v3, v3, Lcom/voxel/launcher3/AppInfo;->intent:Landroid/content/Intent;

    :goto_0
    const-string v4, "com.voxel.ACTION_VIEW_ENTITY"

    .line 4829
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4830
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_1

    .line 4832
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->showShortcutErrorToast()V

    return-void

    :cond_1
    const-string v5, "//com.voxel/place/"

    .line 4838
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 4839
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x12

    .line 4840
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.evie.jigsaw.OPEN_CARD"

    .line 4841
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4842
    invoke-static {v4}, Lcom/evie/common/services/links/Link;->toCard(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4843
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.evie.jigsaw.JigsawActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 4845
    :cond_2
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->showShortcutErrorToast()V

    return-void

    .line 4851
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mSearchItemShortcutHandler:Lcom/voxel/launcher3/SearchItemShortcutHandler;

    invoke-virtual {v4, v3}, Lcom/voxel/launcher3/SearchItemShortcutHandler;->handleIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    .line 4854
    :cond_4
    invoke-virtual {p0, p1, v3, v0}, Lcom/voxel/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v0

    .line 4857
    :goto_2
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v5, "homescreen"

    invoke-virtual {v4, p0, v3, v5}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->recordAppLaunch(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4858
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mStats:Lcom/voxel/launcher3/Stats;

    invoke-virtual {v4, v3, v1}, Lcom/voxel/launcher3/Stats;->recordLaunch(Landroid/content/Intent;Lcom/voxel/launcher3/ShortcutInfo;)V

    .line 4860
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 4862
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4863
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 4866
    new-instance v4, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    invoke-direct {v4, v3, v1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v0, :cond_6

    .line 4870
    instance-of v0, p1, Lcom/voxel/launcher3/BubbleTextView;

    if-eqz v0, :cond_6

    .line 4871
    check-cast p1, Lcom/voxel/launcher3/BubbleTextView;

    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWaitingForResume:Lcom/voxel/launcher3/BubbleTextView;

    .line 4872
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWaitingForResume:Lcom/voxel/launcher3/BubbleTextView;

    invoke-virtual {p1, v2}, Lcom/voxel/launcher3/BubbleTextView;->setStayPressed(Z)V

    :cond_6
    return-void

    .line 4825
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input must be a Shortcut or AppInfo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V
    .locals 4

    const-string v0, "search"

    .line 4080
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 4081
    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Launcher"

    const-string p2, "No global search activity found."

    .line 4083
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4086
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 4087
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4088
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-nez p3, :cond_1

    .line 4091
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 4093
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, v2

    :goto_0
    const-string v2, "source"

    .line 4096
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "source"

    .line 4097
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "app_data"

    .line 4099
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "query"

    .line 4101
    invoke-virtual {v1, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    if-eqz p2, :cond_4

    const-string p1, "select_query"

    .line 4104
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4106
    :cond_4
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 4108
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Launcher"

    .line 4110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Global search activity not found: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private startShortcutIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/voxel/launcher3/ItemInfo;)V
    .locals 8

    .line 5174
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 5179
    :try_start_0
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 5180
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 5179
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 5182
    iget v1, p3, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 5183
    move-object v1, p3

    check-cast v1, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-virtual {v1}, Lcom/voxel/launcher3/ShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v4

    .line 5184
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 5185
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    .line 5186
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v7, p3, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-object v6, p2

    .line 5185
    invoke-virtual/range {v2 .. v7}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    goto :goto_0

    .line 5189
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5192
    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 5193
    throw p1
.end method

.method private toggleShowWeightWatcher()V
    .locals 4

    .line 6629
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 6630
    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "debug.show_mem"

    const/4 v3, 0x1

    .line 6631
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v3

    .line 6635
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "debug.show_mem"

    .line 6636
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6637
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6639
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWeightWatcher:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 6640
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateBlurImageViewAlpha()V
    .locals 2

    .line 6407
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mBlurImageAlphaHelper:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    sget-object v1, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->ADD_COMBINER:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$Combiner;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->getCombinedFactor(Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$Combiner;)F

    move-result v0

    .line 6408
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->limitAlpha(F)F

    move-result v0

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result v0

    .line 6409
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mBlurImageView:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    if-nez v1, :cond_0

    return-void

    .line 6413
    :cond_0
    invoke-virtual {v1, v0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setImageAlpha(I)V

    if-nez v0, :cond_1

    .line 6416
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mBlurLayoutView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 6418
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mBlurLayoutView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateGoogleNowBackgroundIcon()V
    .locals 4

    .line 3104
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimBackground:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 3106
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    .line 3107
    iget v1, p0, Lcom/voxel/launcher3/Launcher;->mScreenHeight:I

    int-to-float v1, v1

    sub-float v0, v1, v0

    div-float v1, v0, v1

    .line 3110
    iget v2, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimFinalIconSize:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    .line 3112
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v3, v2

    .line 3113
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3114
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3115
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3116
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimIcon:Landroid/widget/ImageView;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method private updateMainLayerScale()V
    .locals 1

    .line 4384
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchUiHelper:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->updateMainLayerScale()V

    return-void
.end method

.method private updateRunning()V
    .locals 11

    .line 3556
    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mVisible:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mUserPresent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3557
    :goto_0
    iget-boolean v3, p0, Lcom/voxel/launcher3/Launcher;->mAutoAdvanceRunning:Z

    if-eq v0, v3, :cond_4

    .line 3558
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mAutoAdvanceRunning:Z

    const-wide/16 v3, 0x4e20

    if-eqz v0, :cond_2

    .line 3560
    iget-wide v0, p0, Lcom/voxel/launcher3/Launcher;->mAutoAdvanceTimeLeft:J

    const-wide/16 v5, -0x1

    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    move-wide v0, v3

    .line 3561
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/voxel/launcher3/Launcher;->sendAdvanceMessage(J)V

    goto :goto_1

    .line 3563
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v5, 0x0

    .line 3565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/voxel/launcher3/Launcher;->mAutoAdvanceSentTime:J

    sub-long/2addr v7, v9

    sub-long/2addr v3, v7

    .line 3564
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/voxel/launcher3/Launcher;->mAutoAdvanceTimeLeft:J

    .line 3567
    :cond_3
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3568
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private waitUntilResume(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    .line 6507
    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result p1

    return p1
.end method

.method private waitUntilResume(Ljava/lang/Runnable;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/voxel/launcher3/Launcher$LocaleConfiguration;)V
    .locals 4

    const/4 v0, 0x0

    .line 1360
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    const-string v2, "launcher.preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1361
    :try_start_1
    iget-object v0, p1, Lcom/voxel/launcher3/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1362
    iget v0, p1, Lcom/voxel/launcher3/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1363
    iget p1, p1, Lcom/voxel/launcher3/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1364
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1373
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-object v0, v1

    goto :goto_1

    :catch_1
    nop

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    :goto_1
    :try_start_3
    const-string p1, "launcher.preferences"

    .line 1369
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 1373
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :goto_2
    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1378
    :catch_3
    :cond_0
    throw p0

    :catch_4
    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_1

    goto :goto_0

    :catch_5
    :cond_1
    :goto_4
    return-void
.end method


# virtual methods
.method public activateSearch(Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;Z)V
    .locals 2

    .line 6343
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v1, "activate_method"

    .line 6344
    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    const/4 p1, 0x1

    .line 6345
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/Launcher;->changeSearchMode(ZZ)V

    return-void
.end method

.method addAppWidgetFromDrop(Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;JJ[I[I[I)V
    .locals 1

    .line 4243
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->resetAddInfo()V

    .line 4244
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iput-wide p2, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->container:J

    iput-wide p2, v0, Lcom/voxel/launcher3/ItemInfo;->container:J

    .line 4245
    iput-wide p4, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->screenId:J

    iput-wide p4, v0, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 4246
    iput-object p8, v0, Lcom/voxel/launcher3/ItemInfo;->dropPos:[I

    .line 4247
    iget p2, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->minSpanX:I

    iput p2, v0, Lcom/voxel/launcher3/ItemInfo;->minSpanX:I

    .line 4248
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget p3, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->minSpanY:I

    iput p3, p2, Lcom/voxel/launcher3/ItemInfo;->minSpanY:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p6, :cond_0

    .line 4251
    iget-object p4, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    aget p5, p6, p2

    iput p5, p4, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    .line 4252
    aget p5, p6, p3

    iput p5, p4, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    :cond_0
    if-eqz p7, :cond_1

    .line 4255
    iget-object p4, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    aget p2, p7, p2

    iput p2, p4, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 4256
    aget p2, p7, p3

    iput p2, p4, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    .line 4259
    :cond_1
    iget-object p2, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    .line 4266
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 4268
    invoke-virtual {p2}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p3

    .line 4269
    iget-object p5, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->info:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {p0, p3, p1, p2, p5}, Lcom/voxel/launcher3/Launcher;->addAppWidgetImpl(ILcom/voxel/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)V

    .line 4272
    iput-object p4, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    goto :goto_0

    .line 4276
    :cond_2
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getAppWidgetHost()Lcom/voxel/launcher3/LauncherAppWidgetHost;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result p2

    .line 4277
    iget-object p5, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 4279
    iget-object p6, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    iget-object p7, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->info:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {p6, p2, p7, p5}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 4282
    iget-object p3, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->info:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {p0, p2, p1, p4, p3}, Lcom/voxel/launcher3/Launcher;->addAppWidgetImpl(ILcom/voxel/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)V

    goto :goto_0

    .line 4284
    :cond_3
    iget-object p4, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->info:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    iput-object p4, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    .line 4285
    new-instance p4, Landroid/content/Intent;

    const-string p5, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {p4, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p5, "appWidgetId"

    .line 4286
    invoke-virtual {p4, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "appWidgetProvider"

    .line 4287
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p4, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4288
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    const-string p2, "appWidgetProviderProfile"

    .line 4289
    invoke-virtual {p1, p4, p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->addToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4293
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_4

    const/16 p1, 0xb

    .line 4294
    invoke-virtual {p0, p4, p1}, Lcom/voxel/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    const-string p1, "Launcher"

    .line 4296
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Cannot fetch activity for intent: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f1202d5

    .line 4297
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 4298
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method addAppWidgetImpl(ILcom/voxel/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4175
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/Launcher;->addAppWidgetImpl(ILcom/voxel/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;I)V

    return-void
.end method

.method addAppWidgetImpl(ILcom/voxel/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;I)V
    .locals 9

    .line 4181
    iget-object v0, p4, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 4182
    iput-object p4, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    .line 4183
    iput p1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetId:I

    .line 4186
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    iget-object v5, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    const/4 v6, 0x5

    move-object v2, p4

    move v3, p1

    move-object v4, p0

    invoke-virtual/range {v1 .. v6}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    goto :goto_0

    .line 4191
    :cond_0
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$cb4bKeVbHe8xQ9iO2NOBihYGnoY;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$cb4bKeVbHe8xQ9iO2NOBihYGnoY;-><init>(Lcom/voxel/launcher3/Launcher;)V

    .line 4196
    iget-wide v3, p2, Lcom/voxel/launcher3/ItemInfo;->container:J

    iget-wide v5, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    move-object v1, p0

    move v2, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/voxel/launcher3/Launcher;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)V

    .line 4198
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v0, p5, p3}, Lcom/voxel/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    :goto_0
    return-void
.end method

.method addFolder(Lcom/voxel/launcher3/CellLayout;JJII)Lcom/voxel/launcher3/FolderIcon;
    .locals 22

    move-object/from16 v9, p0

    .line 4314
    new-instance v10, Lcom/voxel/launcher3/FolderInfo;

    invoke-direct {v10}, Lcom/voxel/launcher3/FolderInfo;-><init>()V

    const v0, 0x7f120146

    .line 4315
    invoke-virtual {v9, v0}, Lcom/voxel/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v10, Lcom/voxel/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    .line 4318
    invoke-static/range {v0 .. v8}, Lcom/voxel/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;JJIIZ)V

    .line 4320
    sget-object v0, Lcom/voxel/launcher3/Launcher;->sFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    iget-wide v1, v10, Lcom/voxel/launcher3/FolderInfo;->id:J

    invoke-virtual {v0, v1, v2, v10}, Lcom/voxel/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 4323
    iget-object v0, v9, Lcom/voxel/launcher3/Launcher;->mIconCache:Lcom/voxel/launcher3/IconCache;

    const v1, 0x7f0d0052

    move-object/from16 v2, p1

    .line 4324
    invoke-static {v1, v9, v2, v10, v0}, Lcom/voxel/launcher3/FolderIcon;->fromXml(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/voxel/launcher3/FolderInfo;Lcom/voxel/launcher3/IconCache;)Lcom/voxel/launcher3/FolderIcon;

    move-result-object v0

    .line 4325
    iget-object v11, v9, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    .line 4326
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v21

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object v12, v0

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    move/from16 v17, p6

    move/from16 v18, p7

    .line 4325
    invoke-virtual/range {v11 .. v21}, Lcom/voxel/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 4328
    iget-object v1, v9, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/voxel/launcher3/CellLayout;

    move-result-object v1

    .line 4329
    invoke-virtual {v1}, Lcom/voxel/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    return-object v0
.end method

.method public addOnResumeCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 6511
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToCustomContentPage(Landroid/view/View;Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;Ljava/lang/String;)V
    .locals 1

    .line 2181
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, p1, p2, p3}, Lcom/voxel/launcher3/Workspace;->addToCustomContentPage(Landroid/view/View;Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 3592
    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3593
    :cond_0
    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3594
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_1

    .line 3595
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3596
    check-cast v0, Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 3597
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->updateRunning()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public bindAddScreens(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Launcher"

    const-string v1, "11683562 - bindAddScreens()"

    const/4 v2, 0x1

    .line 6611
    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "Launcher"

    .line 6612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "11683562 -   orderedScreenIds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 6613
    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6612
    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6614
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6616
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/voxel/launcher3/Workspace;->insertNewWorkspaceScreenBeforeEmptyScreen(J)J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bindAppWidget(Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V
    .locals 13

    .line 6840
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$LvPFL9-LtwmcXBoRs9H-TYPxcqs;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$Launcher$LvPFL9-LtwmcXBoRs9H-TYPxcqs;-><init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V

    .line 6841
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "DEBUG-HOME-DELAY"

    const-string v0, "++ waitUntilResume - task added from bindAppWidget()"

    .line 6842
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6851
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    .line 6854
    iget v1, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget v1, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 6857
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    iget-object v3, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v1, v3, v4}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6864
    invoke-static {p0, p1}, Lcom/voxel/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    return-void

    .line 6870
    :cond_1
    new-instance v3, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    invoke-direct {v3, p0, v1, v2}, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;-><init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;Landroid/os/Parcelable;)V

    .line 6871
    iget v4, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->spanX:I

    iput v4, v3, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->spanX:I

    .line 6872
    iget v4, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->spanY:I

    iput v4, v3, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->spanY:I

    .line 6873
    iget v4, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    iput v4, v3, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 6874
    iget v4, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    iput v4, v3, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 6876
    invoke-static {p0, v3}, Lcom/voxel/launcher3/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v3

    .line 6878
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v4}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v4

    .line 6879
    iget-object v5, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v5, v4, v1, v3}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6883
    iput v4, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 6887
    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    :goto_0
    iput v1, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 6891
    invoke-static {p0, p1}, Lcom/voxel/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    .line 6895
    :cond_3
    iget v1, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v1, :cond_4

    .line 6896
    iget v1, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 6897
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v2, v1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v2

    .line 6902
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v3, p0, v1, v2}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object v12, v2

    goto :goto_1

    .line 6905
    :cond_4
    new-instance v1, Lcom/voxel/launcher3/PendingAppWidgetHostView;

    invoke-direct {v1, p0, p1}, Lcom/voxel/launcher3/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V

    .line 6906
    iget-object v3, p0, Lcom/voxel/launcher3/Launcher;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {v1, v3}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->updateIcon(Lcom/voxel/launcher3/IconCache;)V

    .line 6907
    iput-object v1, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 6908
    iget-object v1, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 6909
    iget-object v1, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p0}, Landroid/appwidget/AppWidgetHostView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v12, v2

    .line 6912
    :goto_1
    iget-object v1, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 6913
    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/voxel/launcher3/Launcher;)V

    .line 6915
    iget-object v2, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v3, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->container:J

    iget-wide v5, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->screenId:J

    iget v7, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->cellX:I

    iget v8, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v9, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->spanX:I

    iget v10, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->spanY:I

    const/4 v11, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v11}, Lcom/voxel/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 6917
    iget-object p1, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, p1, v12}, Lcom/voxel/launcher3/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 6919
    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->requestLayout()V

    return-void
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 6648
    new-instance v6, Lcom/voxel/launcher3/-$$Lambda$Launcher$BtYbm6PgdaT8jKfl7Z4KA956E2A;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/-$$Lambda$Launcher$BtYbm6PgdaT8jKfl7Z4KA956E2A;-><init>(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 6649
    invoke-direct {p0, v6}, Lcom/voxel/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p1, "DEBUG-HOME-DELAY"

    const-string p2, "++ waitUntilResume - task added from bindAppsAdded()"

    .line 6650
    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 6657
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->bindAddScreens(Ljava/util/ArrayList;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 6662
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v2, 0x0

    .line 6664
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    .line 6663
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/Launcher;->bindItems(Ljava/util/ArrayList;IIZZ)V

    :cond_2
    if-eqz p3, :cond_3

    .line 6666
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v2, 0x0

    .line 6668
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    .line 6667
    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/Launcher;->bindItems(Ljava/util/ArrayList;IIZZ)V

    .line 6672
    :cond_3
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/voxel/launcher3/Workspace;->removeExtraEmptyScreen(ZZ)V

    return-void
.end method

.method public bindAppsRestored(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 7169
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$dHD7PiccOJEIGfibOQ6bazWozco;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$Launcher$dHD7PiccOJEIGfibOQ6bazWozco;-><init>(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;)V

    .line 7170
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "DEBUG-HOME-DELAY"

    const-string v0, "++ waitUntilResume - task added from bindAppsRestored()"

    .line 7171
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7176
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    if-eqz v0, :cond_1

    .line 7177
    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Workspace;->updateShortcutsAndWidgets(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 7095
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$8Klc9yS0vZkXsjWSkV-p4bknX6w;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$Launcher$8Klc9yS0vZkXsjWSkV-p4bknX6w;-><init>(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;)V

    .line 7096
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "DEBUG-HOME-DELAY"

    const-string v0, "++ waitUntilResume - task added from bindAppsUpdated()"

    .line 7097
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7102
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    if-eqz v0, :cond_1

    .line 7103
    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Workspace;->updateShortcutsAndWidgets(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public bindComponentsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .line 7216
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$nxm1DpGP9ASuLXtvALwRAQ4GBJU;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/voxel/launcher3/-$$Lambda$Launcher$nxm1DpGP9ASuLXtvALwRAQ4GBJU;-><init>(Lcom/voxel/launcher3/Launcher;Ljava/util/HashSet;Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 7217
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "DEBUG-HOME-DELAY"

    const-string p2, "++ waitUntilResume - task added from bindComponentsRemoved()"

    .line 7218
    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7223
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7224
    invoke-static {p1, p3}, Lcom/voxel/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/util/ItemInfoMatcher;

    move-result-object p1

    .line 7225
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Workspace;->removeItemsByMatcher(Lcom/voxel/launcher3/util/ItemInfoMatcher;)V

    .line 7226
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/dragndrop/DragController;->onAppsRemoved(Lcom/voxel/launcher3/util/ItemInfoMatcher;)V

    .line 7229
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7230
    invoke-static {p2, p3}, Lcom/voxel/launcher3/util/ItemInfoMatcher;->ofComponents(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/util/ItemInfoMatcher;

    move-result-object p1

    .line 7231
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/Workspace;->removeItemsByMatcher(Lcom/voxel/launcher3/util/ItemInfoMatcher;)V

    .line 7232
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/dragndrop/DragController;->onAppsRemoved(Lcom/voxel/launcher3/util/ItemInfoMatcher;)V

    :cond_2
    return-void
.end method

.method public bindFolders(Lcom/voxel/launcher3/util/LongArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/util/LongArrayMap<",
            "Lcom/voxel/launcher3/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .line 6824
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$8Fq9BnDbfIA-zasvKcJ3-zptmng;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$Launcher$8Fq9BnDbfIA-zasvKcJ3-zptmng;-><init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/util/LongArrayMap;)V

    .line 6825
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "DEBUG-HOME-DELAY"

    const-string v0, "++ waitUntilResume - task added from bindFolders()"

    .line 6826
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6830
    :cond_0
    sget-object v0, Lcom/voxel/launcher3/Launcher;->sFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/voxel/launcher3/util/LongArrayMap;->clear()V

    .line 6831
    invoke-virtual {p1}, Lcom/voxel/launcher3/util/LongArrayMap;->clone()Lcom/voxel/launcher3/util/LongArrayMap;

    move-result-object p1

    sput-object p1, Lcom/voxel/launcher3/Launcher;->sFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;IIZZ)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;IIZZ)V"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 6688
    new-instance v7, Lcom/voxel/launcher3/-$$Lambda$Launcher$tCud5zZ9GSAFuLr9pyNfu03Wz-A;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/-$$Lambda$Launcher$tCud5zZ9GSAFuLr9pyNfu03Wz-A;-><init>(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;IIZ)V

    .line 6689
    invoke-direct {v6, v7}, Lcom/voxel/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DEBUG-HOME-DELAY"

    const-string v1, "++ waitUntilResume - task added from bindItems()"

    .line 6690
    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6696
    :cond_0
    invoke-static {}, Lcom/voxel/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 6697
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_1

    .line 6698
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/Launcher;->canRunNewAppsAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6699
    :goto_0
    iget-object v5, v6, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    const-wide/16 v17, -0x1

    move/from16 v1, p2

    move/from16 v4, p3

    move-wide/from16 v14, v17

    :goto_1
    if-ge v1, v4, :cond_8

    move-object/from16 v13, p1

    .line 6702
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lcom/voxel/launcher3/ItemInfo;

    .line 6705
    iget-wide v7, v11, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v9, -0x65

    cmp-long v12, v7, v9

    if-nez v12, :cond_2

    iget-object v7, v6, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    if-nez v7, :cond_2

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    move-wide/from16 v25, v14

    goto/16 :goto_3

    .line 6710
    :cond_2
    iget v7, v11, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_4

    packed-switch v7, :pswitch_data_0

    .line 6762
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Item Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v7, 0x7f0d0052

    .line 6748
    invoke-virtual {v5}, Lcom/voxel/launcher3/Workspace;->getCurrentPage()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    move-object v9, v11

    check-cast v9, Lcom/voxel/launcher3/FolderInfo;

    iget-object v10, v6, Lcom/voxel/launcher3/Launcher;->mIconCache:Lcom/voxel/launcher3/IconCache;

    .line 6747
    invoke-static {v7, v6, v8, v9, v10}, Lcom/voxel/launcher3/FolderIcon;->fromXml(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/voxel/launcher3/FolderInfo;Lcom/voxel/launcher3/IconCache;)Lcom/voxel/launcher3/FolderIcon;

    move-result-object v9

    .line 6750
    iget-wide v7, v11, Lcom/voxel/launcher3/ItemInfo;->container:J

    iget-wide v12, v11, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    iget v10, v11, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v4, v11, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    const/16 v16, 0x1

    const/16 v19, 0x1

    move-wide/from16 v20, v7

    move-object v7, v5

    move-object v8, v9

    move-object/from16 v22, v9

    move/from16 v23, v10

    move-wide/from16 v9, v20

    move-object/from16 v24, v11

    move-wide v11, v12

    move/from16 v13, v23

    move-wide/from16 v25, v14

    move v14, v4

    move/from16 v15, v16

    move/from16 v16, v19

    invoke-virtual/range {v7 .. v16}, Lcom/voxel/launcher3/Workspace;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    if-eqz v0, :cond_3

    move-object/from16 v4, v22

    const/4 v15, 0x0

    .line 6754
    invoke-virtual {v4, v15}, Lcom/voxel/launcher3/FolderIcon;->setAlpha(F)V

    .line 6755
    invoke-virtual {v4, v15}, Lcom/voxel/launcher3/FolderIcon;->setScaleX(F)V

    .line 6756
    invoke-virtual {v4, v15}, Lcom/voxel/launcher3/FolderIcon;->setScaleY(F)V

    .line 6757
    invoke-direct {v6, v4, v1}, Lcom/voxel/launcher3/Launcher;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v24

    .line 6758
    iget-wide v7, v4, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    move-wide v14, v7

    goto/16 :goto_4

    :cond_3
    move-object/from16 v20, v2

    move-object/from16 v21, v5

    goto/16 :goto_3

    :cond_4
    :pswitch_1
    move-object v4, v11

    move-wide/from16 v25, v14

    const/4 v15, 0x0

    .line 6714
    move-object v11, v4

    check-cast v11, Lcom/voxel/launcher3/ShortcutInfo;

    .line 6715
    invoke-virtual {v6, v11}, Lcom/voxel/launcher3/Launcher;->createShortcut(Lcom/voxel/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v14

    .line 6720
    iget-wide v7, v4, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v9, -0x64

    cmp-long v11, v7, v9

    if-nez v11, :cond_6

    .line 6721
    iget-object v7, v6, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    iget-wide v8, v4, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v7, v8, v9}, Lcom/voxel/launcher3/Workspace;->getScreenWithId(J)Lcom/voxel/launcher3/CellLayout;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 6722
    iget v8, v4, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v9, v4, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v7, v8, v9}, Lcom/voxel/launcher3/CellLayout;->isOccupied(II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 6723
    iget v8, v4, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v9, v4, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v7, v8, v9}, Lcom/voxel/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v7

    .line 6724
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 6725
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Collision while binding workspace item: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ". Collides with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6727
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "Launcher"

    .line 6730
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6728
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6735
    :cond_6
    :goto_2
    iget-wide v9, v4, Lcom/voxel/launcher3/ItemInfo;->container:J

    iget-wide v11, v4, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    iget v13, v4, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v8, v4, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    const/16 v16, 0x1

    const/16 v19, 0x1

    move-object v7, v5

    move/from16 v20, v8

    move-object v8, v14

    move-object/from16 v21, v5

    move-object v5, v14

    move/from16 v14, v20

    move-object/from16 v20, v2

    const/4 v2, 0x0

    move/from16 v15, v16

    move/from16 v16, v19

    invoke-virtual/range {v7 .. v16}, Lcom/voxel/launcher3/Workspace;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    if-eqz v0, :cond_7

    .line 6739
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 6740
    invoke-virtual {v5, v2}, Landroid/view/View;->setScaleX(F)V

    .line 6741
    invoke-virtual {v5, v2}, Landroid/view/View;->setScaleY(F)V

    .line 6742
    invoke-direct {v6, v5, v1}, Lcom/voxel/launcher3/Launcher;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 6743
    iget-wide v4, v4, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    move-wide v14, v4

    goto :goto_4

    :cond_7
    :goto_3
    move-wide/from16 v14, v25

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v20

    move-object/from16 v5, v21

    move/from16 v4, p3

    goto/16 :goto_1

    :cond_8
    move-object/from16 v20, v2

    move-object/from16 v21, v5

    move-wide/from16 v25, v14

    if-eqz v0, :cond_b

    move-wide/from16 v14, v25

    cmp-long v0, v14, v17

    if-lez v0, :cond_a

    .line 6769
    iget-object v0, v6, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v7

    .line 6770
    iget-object v0, v6, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, v14, v15}, Lcom/voxel/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v9

    .line 6771
    new-instance v10, Lcom/voxel/launcher3/-$$Lambda$Launcher$XvhTZaM44pmLCcv7X5G38guhK-E;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v4, p3

    move-object/from16 v11, v21

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/voxel/launcher3/-$$Lambda$Launcher$XvhTZaM44pmLCcv7X5G38guhK-E;-><init>(Lcom/voxel/launcher3/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;ILjava/util/ArrayList;)V

    const-wide/16 v0, 0x1f4

    cmp-long v2, v14, v7

    if-eqz v2, :cond_9

    if-nez p5, :cond_9

    .line 6805
    iget-object v2, v6, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    new-instance v3, Lcom/voxel/launcher3/-$$Lambda$Launcher$puxwcDWYjiGFu7G3cLJj_ytq11o;

    invoke-direct {v3, v6, v9, v10}, Lcom/voxel/launcher3/-$$Lambda$Launcher$puxwcDWYjiGFu7G3cLJj_ytq11o;-><init>(Lcom/voxel/launcher3/Launcher;ILjava/lang/Runnable;)V

    invoke-virtual {v2, v3, v0, v1}, Lcom/voxel/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 6813
    :cond_9
    iget-object v2, v6, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v2, v10, v0, v1}, Lcom/voxel/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_a
    move-object/from16 v11, v21

    goto :goto_5

    :cond_b
    move-object/from16 v11, v21

    .line 6817
    :goto_5
    invoke-virtual {v11}, Lcom/voxel/launcher3/Workspace;->requestLayout()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bindScreens(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 6593
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 6596
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 6597
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Workspace;->addExtraEmptyScreen()Z

    .line 6602
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->hasCustomContentToLeft()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6603
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Workspace;->createCustomContentContainer()V

    .line 6604
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->populateCustomContentContainer()V

    :cond_1
    return-void
.end method

.method public bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ShortcutInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ShortcutInfo;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .line 7121
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$LinNY5Dj8nt7rfvK9_WPAnLqIhw;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/voxel/launcher3/-$$Lambda$Launcher$LinNY5Dj8nt7rfvK9_WPAnLqIhw;-><init>(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 7122
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7126
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7127
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 7130
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 7131
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 7132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7134
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/ShortcutInfo;

    .line 7135
    iget v2, v1, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 7136
    invoke-static {v1}, Lcom/voxel/launcher3/shortcuts/ShortcutKey;->fromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;)Lcom/voxel/launcher3/shortcuts/ShortcutKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7138
    :cond_2
    invoke-virtual {v1}, Lcom/voxel/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7142
    :cond_3
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 7143
    invoke-static {p1, p3}, Lcom/voxel/launcher3/util/ItemInfoMatcher;->ofComponents(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/util/ItemInfoMatcher;

    move-result-object p1

    .line 7144
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/Workspace;->removeItemsByMatcher(Lcom/voxel/launcher3/util/ItemInfoMatcher;)V

    .line 7145
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/dragndrop/DragController;->onAppsRemoved(Lcom/voxel/launcher3/util/ItemInfoMatcher;)V

    .line 7148
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 7149
    invoke-static {v0}, Lcom/voxel/launcher3/util/ItemInfoMatcher;->ofShortcutKeys(Ljava/util/HashSet;)Lcom/voxel/launcher3/util/ItemInfoMatcher;

    move-result-object p1

    .line 7150
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/Workspace;->removeItemsByMatcher(Lcom/voxel/launcher3/util/ItemInfoMatcher;)V

    .line 7151
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {p2, p1}, Lcom/voxel/launcher3/dragndrop/DragController;->onAppsRemoved(Lcom/voxel/launcher3/util/ItemInfoMatcher;)V

    :cond_5
    return-void
.end method

.method public bindWidgetsRestored(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 7158
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$PNqk4Bzu9PJ7EGRJQGOVIgKrUOE;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$Launcher$PNqk4Bzu9PJ7EGRJQGOVIgKrUOE;-><init>(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;)V

    .line 7159
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7162
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Workspace;->widgetsRestored(Ljava/util/ArrayList;)V

    return-void
.end method

.method public canAccessWallpaper()Z
    .locals 4

    .line 1307
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1309
    :goto_0
    invoke-static {}, Lis/shortcut/compat/ModernCompat;->requiresLegacyStoragePermission()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1310
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public canShowAllAppsSetDefaultPrompt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public changeAllAppsVisibility(ZZ)V
    .locals 2

    .line 5426
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsFragment:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 5427
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-virtual {p1, v1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setFactor(F)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 5433
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setEndValue(F)V

    goto :goto_0

    .line 5435
    :cond_1
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setFactor(F)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 5439
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-virtual {p1, v1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setEndValue(F)V

    goto :goto_0

    .line 5441
    :cond_3
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-virtual {p1, v1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setFactor(F)V

    :goto_0
    return-void
.end method

.method protected changeWallpaperVisiblity(Z)V
    .locals 3

    const/high16 v0, 0x100000

    if-eqz p1, :cond_0

    const/high16 v1, 0x100000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5763
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v0

    if-eq v1, v2, :cond_1

    .line 5766
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setFlags(II)V

    .line 5768
    :cond_1
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Launcher;->setWorkspaceBackground(Z)V

    return-void
.end method

.method closeFolder(Lcom/voxel/launcher3/Folder;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 5335
    :cond_0
    invoke-virtual {p1}, Lcom/voxel/launcher3/Folder;->getInfo()Lcom/voxel/launcher3/FolderInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/voxel/launcher3/FolderInfo;->opened:Z

    .line 5336
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/voxel/launcher3/DropTarget;)V

    .line 5338
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mFolderFragments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5339
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    .line 5340
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->getFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 5341
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->runExitAnimation()V

    goto :goto_0

    .line 5347
    :cond_2
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public closeFolder()Z
    .locals 2

    .line 5320
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getOpenFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5322
    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5323
    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->dismissEditingName()V

    .line 5325
    :cond_1
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->closeFolder(Lcom/voxel/launcher3/Folder;)V

    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public closeSystemDialogs()V
    .locals 1

    .line 3721
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    const/4 v0, 0x0

    .line 3724
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->setWaitingForResult(Z)V

    return-void
.end method

.method createShortcut(ILcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/ShortcutInfo;)Landroid/view/View;
    .locals 2

    .line 3241
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/BubbleTextView;

    if-eqz p2, :cond_0

    .line 3245
    invoke-virtual {p2}, Lcom/voxel/launcher3/CellLayout;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/BubbleTextView;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 3247
    :cond_0
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {p1, p3, p2}, Lcom/voxel/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/IconCache;)V

    .line 3248
    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3249
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mFocusHandler:Lcom/voxel/launcher3/FocusIndicatorView;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-object p1
.end method

.method createShortcut(Lcom/voxel/launcher3/ShortcutInfo;)Landroid/view/View;
    .locals 2

    .line 3228
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    .line 3229
    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout;

    const v1, 0x7f0d0029

    .line 3228
    invoke-virtual {p0, v1, v0, p1}, Lcom/voxel/launcher3/Launcher;->createShortcut(ILcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 4362
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 4363
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "launcher_dump_state"

    .line 4367
    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4368
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->dumpState()V

    return v2

    :cond_1
    return v2

    .line 4373
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 4374
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    return v2

    .line 4380
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .line 6434
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 6435
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    .line 6436
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6438
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    sget-object v2, Lcom/voxel/launcher3/Launcher$State;->APPS_CUSTOMIZE:Lcom/voxel/launcher3/Launcher$State;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f120032

    .line 6442
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 7510
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7511
    sget-object p1, Lcom/voxel/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    const-string p2, " "

    .line 7512
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Debug logs: "

    .line 7513
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 7514
    :goto_0
    sget-object p4, Lcom/voxel/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p2, p4, :cond_0

    .line 7515
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/voxel/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 7517
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    return-void
.end method

.method public dumpLogsToLocalData()V
    .locals 0

    return-void
.end method

.method public dumpState()V
    .locals 3

    const-string v0, "Launcher"

    .line 7492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher3 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/voxel/launcher3/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/voxel/launcher3/Launcher;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/voxel/launcher3/Launcher;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedInstanceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/voxel/launcher3/Launcher;->sFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/voxel/launcher3/util/LongArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7499
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherModel;->dumpState()V

    const-string v0, "Launcher"

    const-string v1, "END launcher3 dump state"

    .line 7505
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method enterSpringLoadedDragMode()V
    .locals 3

    .line 6262
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6263
    sget-object v0, Lcom/voxel/launcher3/Workspace$State;->SPRING_LOADED:Lcom/voxel/launcher3/Workspace$State;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/voxel/launcher3/Launcher;->hideAppsCustomizeHelper(Lcom/voxel/launcher3/Workspace$State;ZZLjava/lang/Runnable;)V

    .line 6264
    sget-object v0, Lcom/voxel/launcher3/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/voxel/launcher3/Launcher$State;

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    :cond_0
    return-void
.end method

.method exitSpringLoadedDragMode()Z
    .locals 2

    .line 6286
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    sget-object v1, Lcom/voxel/launcher3/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/voxel/launcher3/Launcher$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6287
    invoke-virtual {p0, v1, v0}, Lcom/voxel/launcher3/Launcher;->showWorkspace(ZLjava/lang/Runnable;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V
    .locals 2

    .line 6270
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    sget-object v1, Lcom/voxel/launcher3/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/voxel/launcher3/Launcher$State;

    if-eq v0, v1, :cond_0

    return-void

    .line 6272
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$Launcher$haSKoLK4vpeWjxWPd2UweqcQrlg;

    invoke-direct {v1, p0, p1, p3}, Lcom/voxel/launcher3/-$$Lambda$Launcher$haSKoLK4vpeWjxWPd2UweqcQrlg;-><init>(Lcom/voxel/launcher3/Launcher;ZLjava/lang/Runnable;)V

    int-to-long p1, p2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public finishBindingItems(Z)V
    .locals 5

    .line 6956
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$WvNwIP9V35gLyoTXUaj81yF5uAo;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$Launcher$WvNwIP9V35gLyoTXUaj81yF5uAo;-><init>(Lcom/voxel/launcher3/Launcher;Z)V

    .line 6957
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "DEBUG-HOME-DELAY"

    const-string v0, "++ waitUntilResume - task added from finishBindingItems()"

    .line 6958
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6962
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6963
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6964
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 6966
    :cond_1
    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 6969
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->restoreInstanceStateForRemainingPages()V

    const/4 v0, 0x0

    .line 6971
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->setWorkspaceLoading(Z)V

    .line 6972
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->sendLoadingCompleteBroadcastIfNecessary()V

    .line 6976
    sget-object v0, Lcom/voxel/launcher3/Launcher;->sPendingAddItem:Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    if-eqz v0, :cond_3

    .line 6977
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->completeAdd(Lcom/voxel/launcher3/Launcher$PendingAddArguments;)J

    move-result-wide v2

    .line 6982
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    new-instance v4, Lcom/voxel/launcher3/-$$Lambda$Launcher$vk1ZNPDriORgDSYhwqpa2Jtc914;

    invoke-direct {v4, p0, v2, v3}, Lcom/voxel/launcher3/-$$Lambda$Launcher$vk1ZNPDriORgDSYhwqpa2Jtc914;-><init>(Lcom/voxel/launcher3/Launcher;J)V

    invoke-virtual {v0, v4}, Lcom/voxel/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 6983
    sput-object v1, Lcom/voxel/launcher3/Launcher;->sPendingAddItem:Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    :cond_3
    if-eqz p1, :cond_4

    .line 6987
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/Workspace;->getUniqueComponents(ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 6988
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/Workspace;->getUniqueComponents(ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    sput-object p1, Lcom/voxel/launcher3/Launcher;->mIntentsOnWorkspaceFromUpgradePath:Ljava/util/ArrayList;

    .line 6990
    :cond_4
    invoke-static {p0}, Lcom/voxel/launcher3/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/PackageInstallerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/compat/PackageInstallerCompat;->onFinishBind()V

    .line 6991
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/LauncherModel;->recheckRestoredItems(Landroid/content/Context;)V

    .line 6993
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->isDevDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6994
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/LauncherApplication;

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherApplication;->getAppStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    const-string p1, "STARTUP-PERFORMANCE"

    .line 6996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> App Startup Completed - Total time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6997
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6996
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6998
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/LauncherApplication;

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherApplication;->resetAppStartTime()V

    .line 7002
    :cond_5
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->localAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->finishStartup()V

    .line 7003
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->finishStartup()V

    return-void
.end method

.method public forceCloseFolders()V
    .locals 5

    .line 5351
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mFolderFragments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5352
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5353
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    .line 5354
    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->getFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->getFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/voxel/launcher3/Folder;->getInfo()Lcom/voxel/launcher3/FolderInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5355
    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->getFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/voxel/launcher3/Folder;->getInfo()Lcom/voxel/launcher3/FolderInfo;

    move-result-object v4

    iput-boolean v2, v4, Lcom/voxel/launcher3/FolderInfo;->opened:Z

    .line 5357
    :cond_1
    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/Launcher;->onFolderFragmentWillExit(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V

    .line 5358
    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/Launcher;->onFolderFragmentExit(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V

    goto :goto_1

    .line 5360
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mFolderFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5362
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mBackgroundFolderAnimationHelper:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->setAnimatedValue(F)V

    if-eqz v1, :cond_3

    .line 5366
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->sendAccessibilityEvent(I)V

    :cond_3
    return-void
.end method

.method public getAppWidgetHost()Lcom/voxel/launcher3/LauncherAppWidgetHost;
    .locals 1

    .line 3681
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCellLayout(JJ)Lcom/voxel/launcher3/CellLayout;
    .locals 3

    const-wide/16 v0, -0x65

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 5742
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    if-eqz p1, :cond_0

    .line 5743
    invoke-virtual {p1}, Lcom/voxel/launcher3/Hotseat;->getLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 5748
    :cond_1
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1, p3, p4}, Lcom/voxel/launcher3/Workspace;->getScreenWithId(J)Lcom/voxel/launcher3/CellLayout;

    move-result-object p1

    return-object p1
.end method

.method protected getCurrentStackFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 5418
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/FragmentHelper;->getCurrentStackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .line 6552
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 6553
    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getDragController()Lcom/voxel/launcher3/dragndrop/DragController;
    .locals 1

    .line 4018
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;
    .locals 1

    .line 3623
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    return-object v0
.end method

.method protected getFirstRunActivity()Landroid/content/Intent;
    .locals 2

    .line 7364
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.voxel.simplesearchlauncher.activity.OnboardingActivity"

    .line 7365
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 4991
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 4992
    sget-object v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$WGjgd4TKg9qXNRsG2jiVaz90yb4;->INSTANCE:Lcom/voxel/launcher3/-$$Lambda$Launcher$WGjgd4TKg9qXNRsG2jiVaz90yb4;

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    .line 4999
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getHotseat()Lcom/voxel/launcher3/Hotseat;
    .locals 1

    .line 3631
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    return-object v0
.end method

.method public getHotseatAlpha()Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;
    .locals 1

    .line 3661
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHotseatAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    return-object v0
.end method

.method public getIndicatorAlpha()Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;
    .locals 1

    .line 3665
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mIndicatorAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    return-object v0
.end method

.method public getIndicatorContainer()Landroid/view/View;
    .locals 1

    .line 3635
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mIndicatorContainer:Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;

    return-object v0
.end method

.method protected getIntroScreen()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainLayerDarkenAlpha()Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;
    .locals 1

    .line 3677
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerDarkenAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    return-object v0
.end method

.method public getModel()Lcom/voxel/launcher3/LauncherModel;
    .locals 1

    .line 3694
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    return-object v0
.end method

.method public getOpenFolder()Lcom/voxel/launcher3/Folder;
    .locals 3

    .line 3701
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mFolderFragments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3702
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    .line 3703
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->getFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 3708
    :cond_1
    invoke-virtual {v1}, Lcom/voxel/launcher3/Folder;->getInfo()Lcom/voxel/launcher3/FolderInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/voxel/launcher3/FolderInfo;->opened:Z

    if-eqz v2, :cond_0

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOverviewPanel()Landroid/view/ViewGroup;
    .locals 1

    .line 3639
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getOverviewPanelAlpha()Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;
    .locals 1

    .line 3673
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mOverviewPanelAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    return-object v0
.end method

.method public getPullDownRecyclerView()Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;
    .locals 1

    .line 3653
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mPullDownRecyclerView:Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;

    return-object v0
.end method

.method public getQsbBar()Landroid/view/View;
    .locals 1

    .line 6332
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsb:Landroid/view/View;

    return-object v0
.end method

.method public getQsbSearchView()Lcom/voxel/simplesearchlauncher/view/SpringySearchView;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    return-object v0
.end method

.method public getQsbSearchViewScroller()Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;
    .locals 1

    .line 3686
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewScroller:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    return-object v0
.end method

.method public getQsbSearchViewScrollerModifier()Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;
    .locals 1

    .line 3690
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewScrollerModifier:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    return-object v0
.end method

.method public getSearchBar()Lcom/voxel/launcher3/SearchDropTargetBar;
    .locals 1

    .line 3643
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    return-object v0
.end method

.method public getSearchBarHiddenHeight()I
    .locals 3

    .line 3647
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsb:Landroid/view/View;

    .line 3648
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    .line 3649
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f866666    # 1.05f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    .line 3647
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getSearchDropTargetBarAlpha()Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;
    .locals 1

    .line 3669
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBarAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    return-object v0
.end method

.method public getStackFragmentAt(I)Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;
    .locals 1

    .line 5410
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentAt(I)Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    move-result-object p1

    return-object p1
.end method

.method public getStackFragmentCount()I
    .locals 1

    .line 5405
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentCount()I

    move-result v0

    return v0
.end method

.method public getViewIdForItem(Lcom/voxel/launcher3/ItemInfo;)I
    .locals 3

    .line 1427
    iget-wide v0, p1, Lcom/voxel/launcher3/ItemInfo;->id:J

    long-to-int p1, v0

    .line 1428
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1431
    :cond_0
    invoke-static {}, Lcom/voxel/launcher3/Launcher;->generateViewId()I

    move-result v0

    .line 1432
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method protected getWallpaperPickerComponent()Landroid/content/ComponentName;
    .locals 3

    .line 4347
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/voxel/launcher3/LauncherWallpaperPickerActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getWorkspace()Lcom/voxel/launcher3/Workspace;
    .locals 1

    .line 3627
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    return-object v0
.end method

.method protected hasCustomContentToLeft()Z
    .locals 1

    .line 1092
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSideScreenEnabled()Z

    move-result v0

    return v0
.end method

.method protected hasDismissableIntroScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hasFirstRunActivity()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected hasSettings()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hideBlurImage()V
    .locals 3

    .line 5693
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    .line 5694
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 5695
    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$Launcher$bRk2eSxa1UDcCxrPMQfXdUUPTFo;

    invoke-direct {v2, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$bRk2eSxa1UDcCxrPMQfXdUUPTFo;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5696
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 5699
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBarAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    const/4 v2, 0x1

    int-to-float v2, v2

    invoke-static {v1, p0, v2}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->ofFloat(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;F)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 5700
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mIndicatorAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    invoke-static {v1, p0, v2}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->ofFloat(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;F)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 5701
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspaceAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    invoke-static {v1, p0, v2}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->ofFloat(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;F)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 5702
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mHotseatAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    invoke-static {v1, p0, v2}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->ofFloat(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;F)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 5703
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mOverviewPanelAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    invoke-static {v1, p0, v2}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->ofFloat(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;F)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 5704
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public hideSpecialFragments()V
    .locals 3

    .line 4434
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsFragment:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->getCurrentFactor()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 4435
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsFragment:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->setVisible(Z)V

    .line 4438
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mFolderFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    .line 4439
    invoke-virtual {v2, v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->setVisible(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isAllAppsButtonRank(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isAllAppsVisible()Z
    .locals 2

    .line 5753
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    sget-object v1, Lcom/voxel/launcher3/Launcher$State;->APPS_CUSTOMIZE:Lcom/voxel/launcher3/Launcher$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeState:Lcom/voxel/launcher3/Launcher$State;

    sget-object v1, Lcom/voxel/launcher3/Launcher$State;->APPS_CUSTOMIZE:Lcom/voxel/launcher3/Launcher$State;

    if-ne v0, v1, :cond_0

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

.method public isDragging()Z
    .locals 1

    .line 5400
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    return v0
.end method

.method public isDraggingEnabled()Z
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherModel;->isLoadingWorkspace()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 2

    .line 5733
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/voxel/launcher3/CellLayout;

    if-eqz v1, :cond_0

    .line 5734
    invoke-virtual {v0}, Lcom/voxel/launcher3/Hotseat;->getLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLauncherDefault()Z
    .locals 4

    .line 1469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1470
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 1471
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1472
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1475
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1476
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1478
    invoke-virtual {v2, v0, v3, v1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 1480
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1481
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isOnCustomContent()Z
    .locals 1

    .line 4115
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->isOnOrMovingToCustomContent()Z

    move-result v0

    return v0
.end method

.method public isRotationEnabled()Z
    .locals 2

    .line 7269
    sget-boolean v0, Lcom/voxel/launcher3/Launcher;->sForceEnableRotation:Z

    if-nez v0, :cond_1

    .line 7270
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isWorkspaceLoading()Z
    .locals 1

    .line 4142
    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .line 4138
    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_0

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

.method public launchGoogleNowActivity(Z)V
    .locals 4

    const-string v0, "search"

    .line 3120
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 3121
    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3125
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ASSIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10008000

    if-eqz p1, :cond_1

    const/high16 v3, 0x10000

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    .line 3126
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3128
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3129
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/LaunchUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p1, :cond_2

    const/high16 p1, 0x10a0000

    const v0, 0x7f010016

    .line 3131
    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/Launcher;->overridePendingTransition(II)V

    :cond_2
    return-void
.end method

.method public lockScreenOrientation()V
    .locals 1

    .line 7276
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7277
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 7278
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 7277
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->mapConfigurationOriActivityInfoOri(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 14

    move-object v6, p0

    move v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 1494
    invoke-direct {p0, v3}, Lcom/voxel/launcher3/Launcher;->setWaitingForResult(Z)V

    const/16 v4, 0xe

    if-ne v0, v4, :cond_0

    return-void

    .line 1499
    :cond_0
    iget v4, v6, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetId:I

    const/4 v5, -0x1

    .line 1500
    iput v5, v6, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetId:I

    .line 1502
    new-instance v7, Lcom/voxel/launcher3/-$$Lambda$Launcher$ScNnRdmDAXxHvT8hK51OmWraQl4;

    invoke-direct {v7, p0, v1}, Lcom/voxel/launcher3/-$$Lambda$Launcher$ScNnRdmDAXxHvT8hK51OmWraQl4;-><init>(Lcom/voxel/launcher3/Launcher;I)V

    .line 1505
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v8

    const/16 v9, 0xb

    const/16 v10, 0x1f4

    const/4 v11, 0x1

    if-ne v0, v9, :cond_4

    if-eqz v2, :cond_1

    const-string v0, "appWidgetId"

    .line 1508
    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    if-nez v1, :cond_2

    .line 1510
    invoke-direct {p0, v3, v2}, Lcom/voxel/launcher3/Launcher;->completeTwoStageWidgetDrop(II)V

    .line 1511
    iget-object v0, v6, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, v11, v7, v10, v3}, Lcom/voxel/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_1

    :cond_2
    if-ne v1, v5, :cond_3

    .line 1514
    iget-object v3, v6, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    const/4 v4, 0x0

    iget-object v5, v6, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    const/16 v7, 0x1f4

    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/Launcher;->addAppWidgetImpl(ILcom/voxel/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/16 v9, 0x6f

    if-ne v0, v9, :cond_c

    if-ne v1, v5, :cond_b

    if-eqz v2, :cond_5

    const-string v1, "appWidgetId"

    .line 1524
    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1525
    :cond_5
    iget-object v1, v6, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v1, v5}, Lcom/voxel/launcher3/Workspace;->getWidgetForAppWidgetId(I)Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1526
    instance-of v5, v1, Lcom/voxel/launcher3/PendingAppWidgetHostView;

    if-nez v5, :cond_6

    goto :goto_3

    .line 1531
    :cond_6
    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    .line 1534
    iget-object v7, v6, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    iget-object v7, v7, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x4

    :goto_2
    iput v3, v5, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 1538
    invoke-static {p0, v5}, Lcom/voxel/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    .line 1540
    iget-object v3, v6, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v3, :cond_8

    .line 1541
    check-cast v1, Lcom/voxel/launcher3/PendingAppWidgetHostView;

    invoke-direct {p0, v1}, Lcom/voxel/launcher3/Launcher;->reconfigureWidget(Lcom/voxel/launcher3/PendingAppWidgetHostView;)V

    goto :goto_4

    .line 1543
    :cond_8
    iget-object v1, v6, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    invoke-direct {p0, p1, v2, v4, v1}, Lcom/voxel/launcher3/Launcher;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/voxel/launcher3/ItemInfo;)Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    move-result-object v0

    if-eqz v8, :cond_9

    .line 1546
    sput-object v0, Lcom/voxel/launcher3/Launcher;->sPendingAddItem:Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    goto :goto_4

    .line 1548
    :cond_9
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->completeAdd(Lcom/voxel/launcher3/Launcher$PendingAddArguments;)J

    goto :goto_4

    :cond_a
    :goto_3
    const-string v0, "Launcher"

    const-string v1, "Widget update called, when the widget no longer exists."

    .line 1527
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    :goto_4
    return-void

    :cond_c
    const/16 v9, 0xa

    if-ne v0, v9, :cond_e

    if-ne v1, v5, :cond_d

    .line 1555
    iget-object v0, v6, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1556
    iget-object v0, v6, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, v3}, Lcom/voxel/launcher3/Workspace;->exitOverviewMode(Z)V

    :cond_d
    return-void

    :cond_e
    const/16 v9, 0x9

    if-eq v0, v9, :cond_10

    const/4 v9, 0x5

    if-ne v0, v9, :cond_f

    goto :goto_5

    :cond_f
    const/4 v9, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/4 v9, 0x1

    :goto_6
    if-eqz v9, :cond_18

    if-eqz v2, :cond_11

    const-string v7, "appWidgetId"

    .line 1567
    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    :cond_11
    if-gez v5, :cond_12

    goto :goto_7

    :cond_12
    move v4, v5

    :goto_7
    if-ltz v4, :cond_16

    if-nez v1, :cond_13

    goto :goto_8

    :cond_13
    if-nez v8, :cond_15

    .line 1592
    iget-object v0, v6, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-wide v7, v0, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v12, -0x64

    cmp-long v0, v7, v12

    if-nez v0, :cond_14

    .line 1595
    iget-object v0, v6, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-wide v7, v0, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 1596
    invoke-direct {p0, v7, v8}, Lcom/voxel/launcher3/Launcher;->ensurePendingDropLayoutExists(J)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 1598
    :cond_14
    iget-object v0, v6, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    iget-object v2, v6, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-wide v7, v2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v0, v7, v8}, Lcom/voxel/launcher3/Workspace;->getScreenWithId(J)Lcom/voxel/launcher3/CellLayout;

    move-result-object v0

    .line 1600
    invoke-virtual {v0, v11}, Lcom/voxel/launcher3/CellLayout;->setDropPending(Z)V

    .line 1601
    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$Launcher$uxuwNko07SMmckGOLLuPJhg3HCA;

    invoke-direct {v2, p0, v1, v4, v0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$uxuwNko07SMmckGOLLuPJhg3HCA;-><init>(Lcom/voxel/launcher3/Launcher;IILcom/voxel/launcher3/CellLayout;)V

    .line 1605
    iget-object v0, v6, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, v11, v2, v10, v3}, Lcom/voxel/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_9

    .line 1608
    :cond_15
    iget-object v1, v6, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    invoke-direct {p0, p1, v2, v4, v1}, Lcom/voxel/launcher3/Launcher;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/voxel/launcher3/ItemInfo;)Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    move-result-object v0

    .line 1610
    sput-object v0, Lcom/voxel/launcher3/Launcher;->sPendingAddItem:Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    goto :goto_9

    :cond_16
    :goto_8
    const-string v0, "Launcher"

    const-string v1, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity."

    .line 1577
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    invoke-direct {p0, v3, v4}, Lcom/voxel/launcher3/Launcher;->completeTwoStageWidgetDrop(II)V

    .line 1581
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$L-jRKWzPvvf7CTPfJnpHeu7B2jE;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$L-jRKWzPvvf7CTPfJnpHeu7B2jE;-><init>(Lcom/voxel/launcher3/Launcher;)V

    if-eqz v8, :cond_17

    .line 1585
    iget-object v1, v6, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/voxel/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 1587
    :cond_17
    iget-object v1, v6, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v1, v11, v0, v10, v3}, Lcom/voxel/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    :goto_9
    return-void

    :cond_18
    const/16 v9, 0xc

    if-ne v0, v9, :cond_1b

    if-ne v1, v5, :cond_1a

    .line 1619
    iget-object v1, v6, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    invoke-direct {p0, p1, v2, v4, v1}, Lcom/voxel/launcher3/Launcher;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/voxel/launcher3/ItemInfo;)Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    move-result-object v0

    if-eqz v8, :cond_19

    .line 1622
    sput-object v0, Lcom/voxel/launcher3/Launcher;->sPendingAddItem:Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    goto :goto_a

    .line 1624
    :cond_19
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->completeAdd(Lcom/voxel/launcher3/Launcher$PendingAddArguments;)J

    :cond_1a
    :goto_a
    return-void

    :cond_1b
    if-ne v1, v5, :cond_1d

    .line 1636
    iget-object v4, v6, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-wide v8, v4, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v12, -0x1

    cmp-long v4, v8, v12

    if-eqz v4, :cond_1d

    .line 1637
    iget-object v1, v6, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    invoke-direct {p0, p1, v2, v5, v1}, Lcom/voxel/launcher3/Launcher;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/voxel/launcher3/ItemInfo;)Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    move-result-object v0

    .line 1639
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1640
    sput-object v0, Lcom/voxel/launcher3/Launcher;->sPendingAddItem:Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    goto :goto_b

    .line 1642
    :cond_1c
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->completeAdd(Lcom/voxel/launcher3/Launcher$PendingAddArguments;)J

    .line 1643
    iget-object v0, v6, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, v11, v7, v10, v3}, Lcom/voxel/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_b

    :cond_1d
    if-nez v1, :cond_1e

    .line 1647
    iget-object v0, v6, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, v11, v7, v10, v3}, Lcom/voxel/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 1650
    :cond_1e
    :goto_b
    iget-object v0, v6, Lcom/voxel/launcher3/Launcher;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    return-void
.end method

.method public onAllAppsDropCompleted(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Z)Z
    .locals 1

    const/4 p1, 0x1

    const/16 p2, 0x12c

    const/4 v0, 0x0

    .line 5542
    invoke-virtual {p0, p1, p2, v0}, Lcom/voxel/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    return p1
.end method

.method public onAllAppsLongPress(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Landroid/view/View;Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)Z
    .locals 2

    .line 5524
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 5525
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5526
    invoke-virtual {p3}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getActivityName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x10200000

    .line 5527
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const p3, 0x7f0a0186

    .line 5529
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 5530
    iget-object p3, p0, Lcom/voxel/launcher3/Launcher;->mSearchItemShortcutHandler:Lcom/voxel/launcher3/SearchItemShortcutHandler;

    invoke-virtual {p3, p0, v0}, Lcom/voxel/launcher3/SearchItemShortcutHandler;->createAppDragInfo(Landroid/content/Context;Landroid/content/Intent;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5534
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5536
    invoke-virtual {p0, p2, p3, p1}, Lcom/voxel/launcher3/Launcher;->startDrag(Landroid/view/View;Lcom/voxel/launcher3/ItemInfo;Lcom/evie/common/dragndrop/DragSource;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onAllWidgetsDropCompleted(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/view/View;Lcom/voxel/launcher3/DropTarget$DragObject;ZZ)Z
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    .line 5583
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object p4

    if-eq p2, p4, :cond_1

    instance-of p4, p2, Lcom/voxel/launcher3/Folder;

    if-nez p4, :cond_1

    :cond_0
    const/16 p4, 0x12c

    .line 5586
    invoke-virtual {p0, v0, p4, p1}, Lcom/voxel/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    :cond_1
    const/4 p4, 0x0

    .line 5589
    invoke-virtual {p0, p4}, Lcom/voxel/launcher3/Launcher;->unlockScreenOrientation(Z)V

    if-nez p5, :cond_4

    .line 5594
    instance-of p5, p2, Lcom/voxel/launcher3/Workspace;

    if-eqz p5, :cond_2

    .line 5595
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getCurrentWorkspaceScreen()I

    move-result p5

    .line 5596
    check-cast p2, Lcom/voxel/launcher3/Workspace;

    .line 5597
    invoke-virtual {p2, p5}, Lcom/voxel/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/CellLayout;

    .line 5598
    iget-object p5, p3, Lcom/voxel/launcher3/DropTarget$DragObject;->dragInfo:Lcom/voxel/launcher3/ItemInfo;

    if-eqz p2, :cond_2

    .line 5600
    iget v1, p5, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget p5, p5, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    .line 5601
    invoke-virtual {p2, p1, v1, p5}, Lcom/voxel/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result p1

    xor-int/2addr p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 5605
    invoke-virtual {p0, p4}, Lcom/voxel/launcher3/Launcher;->showOutOfSpaceMessage(Z)V

    .line 5607
    :cond_3
    iput-boolean p4, p3, Lcom/voxel/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    :cond_4
    return v0
.end method

.method public onAllWidgetsLongPress(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/view/View;Lcom/voxel/launcher3/PendingAddItemInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z
    .locals 8

    .line 5554
    new-instance v7, Lcom/voxel/launcher3/dragndrop/DragOptions;

    invoke-direct {v7}, Lcom/voxel/launcher3/dragndrop/DragOptions;-><init>()V

    .line 5555
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object p4

    new-instance p6, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;

    invoke-direct {p6, p2, p3, p5}, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;-><init>(Landroid/view/View;Lcom/voxel/launcher3/PendingAddItemInfo;Landroid/graphics/Bitmap;)V

    invoke-virtual {p4, p6}, Lcom/voxel/launcher3/Workspace;->prepareDragWithProvider(Lcom/voxel/launcher3/graphics/DragPreviewProvider;)V

    .line 5557
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x3f4ccccd    # 0.8f

    move-object v1, p5

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/voxel/launcher3/dragndrop/DragController;->startDragTouchCentered(Landroid/graphics/Bitmap;Lcom/evie/common/dragndrop/DragSource;Lcom/voxel/launcher3/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FLcom/voxel/launcher3/dragndrop/DragOptions;)Lcom/voxel/launcher3/dragndrop/DragView;

    .line 5561
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getDragController()Lcom/voxel/launcher3/dragndrop/DragController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 5563
    sget-object p2, Lcom/voxel/launcher3/Launcher$State;->APPS_CUSTOMIZE:Lcom/voxel/launcher3/Launcher$State;

    iput-object p2, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    .line 5564
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->enterSpringLoadedDragMode()V

    .line 5565
    invoke-virtual {p0, p1, p3}, Lcom/voxel/launcher3/Launcher;->popStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V

    :cond_0
    return p3
.end method

.method protected onAssistIntent(ZZ)V
    .locals 0

    .line 3880
    sget-object p2, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->ASSIST:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    invoke-virtual {p0, p2, p1}, Lcom/voxel/launcher3/Launcher;->activateSearch(Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;Z)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 3469
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onAttachedToWindow()V

    .line 3472
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 3473
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 3474
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 3475
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 3477
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 3478
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3484
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v1, v0}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3485
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    .line 3486
    invoke-static {p0}, Lcom/voxel/launcher3/Utilities;->setupTransparentSystemBarsForLmp(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 3487
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mAttached:Z

    .line 3488
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mVisible:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 4474
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getCurrentStackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    if-eqz v0, :cond_0

    .line 4477
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->runExitAnimation()V

    goto/16 :goto_0

    .line 4478
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->getCurrentFactor()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4479
    invoke-virtual {p0, v0, v2}, Lcom/voxel/launcher3/Launcher;->changeAllAppsVisibility(ZZ)V

    goto :goto_0

    .line 4480
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4481
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/Launcher;->showOverviewMode(Z)V

    goto :goto_0

    .line 4482
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4483
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/Workspace;->exitOverviewMode(Z)V

    goto :goto_0

    .line 4484
    :cond_3
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getCurrentFactor()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 4485
    sget-object v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->BACK:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    iget-boolean v1, p0, Lcom/voxel/launcher3/Launcher;->isStopped:Z

    xor-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/voxel/launcher3/Launcher;->deactivateSearch(Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;Z)V

    goto :goto_0

    .line 4486
    :cond_4
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getOpenFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4487
    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4488
    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->dismissEditingName()V

    goto :goto_0

    .line 4490
    :cond_5
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->closeFolder()Z

    goto :goto_0

    .line 4492
    :cond_6
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->isOnOrMovingToCustomContent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4493
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLauncherCustomContentPresenter:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->getSideScreen()Lcom/evie/sidescreen/SideScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreen;->onBack()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4494
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/Workspace;->moveToDefaultScreen(Z)Z

    goto :goto_0

    .line 4497
    :cond_7
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->exitWidgetResizeMode()Z

    .line 4500
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->showOutlinesTemporarily()V

    :cond_8
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 4521
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4525
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getCurrentFactor()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    .line 4526
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getCurrentFactor()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return-void

    .line 4530
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4534
    :cond_2
    instance-of v0, p1, Lcom/voxel/launcher3/Workspace;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 4535
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Workspace;->isInOverviewMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4536
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1, v1}, Lcom/voxel/launcher3/Workspace;->exitOverviewMode(Z)V

    :cond_3
    return-void

    .line 4541
    :cond_4
    instance-of v0, p1, Lcom/voxel/launcher3/CellLayout;

    if-eqz v0, :cond_5

    .line 4542
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4543
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/voxel/launcher3/Workspace;->exitOverviewMode(IZ)V

    .line 4547
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 4549
    instance-of v1, v0, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v1, :cond_6

    .line 4550
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->onClickAppShortcut(Landroid/view/View;)V

    goto :goto_0

    .line 4551
    :cond_6
    instance-of v1, v0, Lcom/voxel/launcher3/FolderInfo;

    if-eqz v1, :cond_7

    .line 4552
    instance-of v0, p1, Lcom/voxel/launcher3/FolderIcon;

    if-eqz v0, :cond_a

    .line 4553
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->onClickFolderIcon(Landroid/view/View;)V

    goto :goto_0

    .line 4555
    :cond_7
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    if-ne p1, v1, :cond_8

    goto :goto_0

    .line 4558
    :cond_8
    instance-of v1, v0, Lcom/voxel/launcher3/AppInfo;

    if-eqz v1, :cond_9

    .line 4559
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    goto :goto_0

    .line 4560
    :cond_9
    instance-of v0, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_a

    .line 4561
    instance-of v0, p1, Lcom/voxel/launcher3/PendingAppWidgetHostView;

    if-eqz v0, :cond_a

    .line 4562
    check-cast p1, Lcom/voxel/launcher3/PendingAppWidgetHostView;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->onClickPendingWidget(Lcom/voxel/launcher3/PendingAppWidgetHostView;)V

    :cond_a
    :goto_0
    return-void
.end method

.method protected onClickAddWidgetButton(Landroid/view/View;)V
    .locals 0

    .line 4939
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isDesktopLockedCurrently()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4940
    new-instance p1, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;

    invoke-direct {p1}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    return-void

    .line 4944
    :cond_0
    invoke-static {}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->newInstance()Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    move-result-object p1

    .line 4945
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    return-void
.end method

.method protected onClickAppShortcut(Landroid/view/View;)V
    .locals 4

    .line 4743
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 4744
    instance-of v1, v0, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v1, :cond_a

    .line 4749
    check-cast v0, Lcom/voxel/launcher3/ShortcutInfo;

    .line 4750
    iget-object v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    .line 4752
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.intent.action.CALL"

    .line 4754
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4757
    :cond_0
    iget v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    if-eqz v2, :cond_6

    .line 4758
    iget v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v2, v2, -0x5

    and-int/lit8 v2, v2, -0x9

    if-nez v2, :cond_1

    goto :goto_1

    .line 4764
    :cond_1
    iget-object p1, v0, Lcom/voxel/launcher3/ShortcutInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 4766
    iget-object p1, v0, Lcom/voxel/launcher3/ShortcutInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    const p1, 0x7f12002c

    .line 4771
    iget v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const p1, 0x7f120201

    goto :goto_0

    .line 4773
    :cond_3
    iget v2, v0, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_4

    iget v0, v0, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    :cond_4
    const p1, 0x7f12024b

    .line 4777
    :cond_5
    :goto_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 4783
    :cond_6
    :goto_1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 4784
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 4786
    const-class v2, Lcom/voxel/launcher3/MemoryDumpActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4787
    invoke-static {p0}, Lcom/voxel/launcher3/MemoryDumpActivity;->startDump(Landroid/content/Context;)V

    return-void

    .line 4789
    :cond_7
    const-class v2, Lcom/voxel/launcher3/ToggleWeightWatcher;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4790
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->toggleShowWeightWatcher()V

    return-void

    .line 4796
    :cond_8
    instance-of v1, p1, Lcom/voxel/launcher3/BubbleTextView;

    if-eqz v1, :cond_9

    .line 4797
    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutInfo;->isPromise()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x4

    .line 4798
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 4800
    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$Launcher$JL9YE_-t4w1nwULsQukRbUYlwcs;

    invoke-direct {v1, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$Launcher$JL9YE_-t4w1nwULsQukRbUYlwcs;-><init>(Lcom/voxel/launcher3/Launcher;Landroid/view/View;)V

    .line 4799
    invoke-direct {p0, v0, v1}, Lcom/voxel/launcher3/Launcher;->showBrokenAppInstallDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 4806
    :cond_9
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    return-void

    .line 4745
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input must be a Shortcut"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onClickFolderIcon(Landroid/view/View;)V
    .locals 6

    .line 4890
    instance-of v0, p1, Lcom/voxel/launcher3/FolderIcon;

    if-eqz v0, :cond_4

    .line 4894
    check-cast p1, Lcom/voxel/launcher3/FolderIcon;

    .line 4895
    invoke-virtual {p1}, Lcom/voxel/launcher3/FolderIcon;->getFolderInfo()Lcom/voxel/launcher3/FolderInfo;

    move-result-object v0

    .line 4896
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getOpenFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v1

    .line 4900
    iget-boolean v2, v0, Lcom/voxel/launcher3/FolderInfo;->opened:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    const-string v2, "Launcher"

    .line 4901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder info marked as open, but associated folder is not open. Screen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/voxel/launcher3/FolderInfo;->screenId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/voxel/launcher3/FolderInfo;->cellX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/voxel/launcher3/FolderInfo;->cellY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 4903
    iput-boolean v2, v0, Lcom/voxel/launcher3/FolderInfo;->opened:Z

    .line 4905
    :cond_0
    iget-boolean v2, v0, Lcom/voxel/launcher3/FolderInfo;->opened:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/voxel/launcher3/Folder;->getInfo()Lcom/voxel/launcher3/FolderInfo;

    move-result-object v2

    if-ne v2, v0, :cond_1

    return-void

    .line 4910
    :cond_1
    iget-boolean v0, v0, Lcom/voxel/launcher3/FolderInfo;->opened:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/voxel/launcher3/FolderIcon;->getFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4912
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->closeFolder()Z

    .line 4914
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->openFolder(Lcom/voxel/launcher3/FolderIcon;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 4919
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Workspace;->getPageForView(Landroid/view/View;)I

    move-result v0

    .line 4921
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Launcher;->closeFolder(Lcom/voxel/launcher3/Folder;)V

    .line 4922
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 4924
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->closeFolder()Z

    .line 4926
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->openFolder(Lcom/voxel/launcher3/FolderIcon;)V

    :cond_3
    :goto_0
    return-void

    .line 4891
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input must be a FolderIcon"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onClickPagedViewIcon(Landroid/view/View;)V
    .locals 0

    .line 4568
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    return-void
.end method

.method public onClickPendingWidget(Lcom/voxel/launcher3/PendingAppWidgetHostView;)V
    .locals 8

    .line 4579
    invoke-virtual {p1}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    .line 4580
    iget v1, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    iget v1, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 4583
    invoke-static {p0}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v1

    iget-object v3, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v1, v3, v4}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 4587
    new-instance v3, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;-><init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;Landroid/os/Parcelable;)V

    .line 4588
    iget v5, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->spanX:I

    iput v5, v3, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->spanX:I

    .line 4589
    iget v5, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->spanY:I

    iput v5, v3, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->spanY:I

    .line 4590
    iget v5, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    iput v5, v3, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 4591
    iget v5, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    iput v5, v3, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 4593
    invoke-static {p0, v3}, Lcom/voxel/launcher3/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v3

    .line 4595
    iget-object v5, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v5}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v5

    .line 4596
    iput v5, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 4597
    iget-object v6, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v6, v5, v1, v3}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v3

    const/16 v6, 0x6f

    if-eqz v3, :cond_2

    .line 4604
    iget-object v7, v1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v7, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/4 v7, 0x4

    :goto_0
    iput v7, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 4608
    invoke-static {p0, v0}, Lcom/voxel/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    .line 4610
    iget-object v7, v1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v7, :cond_1

    .line 4611
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Launcher;->reconfigureWidget(Lcom/voxel/launcher3/PendingAppWidgetHostView;)V

    goto :goto_1

    .line 4613
    :cond_1
    invoke-direct {p0, v6, v4, v5, v0}, Lcom/voxel/launcher3/Launcher;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/voxel/launcher3/ItemInfo;)Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    move-result-object p1

    .line 4615
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Launcher;->completeAdd(Lcom/voxel/launcher3/Launcher$PendingAddArguments;)J

    :cond_2
    :goto_1
    if-nez v3, :cond_7

    .line 4619
    iput-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    .line 4620
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "appWidgetId"

    .line 4621
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "appWidgetProvider"

    .line 4622
    iget-object v0, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4623
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v0

    const-string v1, "appWidgetProviderProfile"

    .line 4624
    invoke-virtual {v0, p1, v1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->addToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4628
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4629
    invoke-virtual {p0, p1, v6}, Lcom/voxel/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_3
    const-string v0, "Launcher"

    .line 4631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot fetch activity for intent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f1202d5

    .line 4632
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 4633
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 4636
    :cond_4
    invoke-virtual {p1}, Lcom/voxel/launcher3/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4637
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Launcher;->reconfigureWidget(Lcom/voxel/launcher3/PendingAppWidgetHostView;)V

    goto :goto_2

    .line 4638
    :cond_5
    iget v1, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->installProgress:I

    if-gez v1, :cond_6

    .line 4640
    iget-object v1, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4641
    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$Launcher$-p6La6hTpXv01UtHvHx5czN1Et0;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$-p6La6hTpXv01UtHvHx5czN1Et0;-><init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/PendingAppWidgetHostView;Ljava/lang/String;Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V

    invoke-direct {p0, v1, v2}, Lcom/voxel/launcher3/Launcher;->showBrokenAppInstallDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 4645
    :cond_6
    iget-object v1, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4646
    invoke-static {v1}, Lcom/voxel/launcher3/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/voxel/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public onClickSearchButton(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 4671
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 4673
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->onSearchRequested()Z

    return-void
.end method

.method public onClickSettingsButton(Landroid/view/View;)V
    .locals 1

    .line 4966
    sget-object p1, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeState:Lcom/voxel/launcher3/Launcher$State;

    .line 4967
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.voxel.simplesearchlauncher.settings.SettingsActivity"

    .line 4968
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 4969
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4970
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onClickVoiceButton(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 4682
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 4684
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->startVoice()V

    return-void
.end method

.method protected onClickWallpaperPicker(Landroid/view/View;)V
    .locals 1

    .line 4954
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SET_WALLPAPER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4955
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getWallpaperPickerComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v0, 0xa

    .line 4956
    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 867
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/evie/search/local/LocalSearchManager;->getInstance(Landroid/content/Context;Z)Lcom/evie/search/local/LocalSearchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;

    .line 869
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    const-string v0, "DEBUG-HOME-DELAY"

    const-string v2, "**** Launcher.onCreate() Launcer activity starting ****"

    .line 871
    invoke-static {v0, v2}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->isDevDebugLogEnabled()Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "STARTUP-PERFORMANCE"

    const-string v4, "- Launcher Activity onCreate() starting..."

    .line 876
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 880
    :goto_0
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Activity;)V

    .line 882
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 884
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 885
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 888
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 889
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 890
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 891
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 892
    invoke-virtual {v9, v6, v7}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 893
    invoke-virtual {v9, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 894
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 895
    invoke-virtual {v9, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 897
    iget v6, v8, Landroid/graphics/Point;->y:I

    iput v6, p0, Lcom/voxel/launcher3/Launcher;->mScreenHeight:I

    .line 900
    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/LauncherAppState;->initDynamicGrid(Landroid/content/Context;)Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v6

    .line 903
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/voxel/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/voxel/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 905
    iget-object v7, p0, Lcom/voxel/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v9, 0x0

    invoke-static {v7, v9, v8}, Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil;->processUpgrade(Landroid/content/SharedPreferences;Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;I)Z

    .line 906
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v7

    iput-boolean v7, p0, Lcom/voxel/launcher3/Launcher;->mIsSafeModeEnabled:Z

    .line 907
    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/LauncherAppState;->setLauncher(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/LauncherModel;

    move-result-object v7

    iput-object v7, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    .line 908
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mIconCache:Lcom/voxel/launcher3/IconCache;

    .line 909
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mIconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {v0, v6}, Lcom/voxel/launcher3/IconCache;->flushInvalidIcons(Lcom/voxel/launcher3/DeviceProfile;)V

    .line 910
    new-instance v0, Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/dragndrop/DragController;-><init>(Lcom/voxel/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    .line 911
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 913
    new-instance v0, Lcom/voxel/launcher3/Stats;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/Stats;-><init>(Lcom/voxel/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mStats:Lcom/voxel/launcher3/Stats;

    .line 915
    invoke-static {p0}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetManager:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    .line 917
    new-instance v0, Lcom/voxel/launcher3/LauncherAppWidgetHost;

    const/16 v7, 0x400

    invoke-direct {v0, p0, v7}, Lcom/voxel/launcher3/LauncherAppWidgetHost;-><init>(Lcom/voxel/launcher3/Launcher;I)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    .line 918
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->startListening()V

    const-string v0, "device_policy"

    .line 921
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 922
    new-instance v0, Landroid/content/ComponentName;

    const-string v7, "com.voxel.simplesearchlauncher.receiver.DeviceAdminReceiverSub"

    invoke-direct {v0, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    .line 927
    iput-boolean v8, p0, Lcom/voxel/launcher3/Launcher;->mPaused:Z

    .line 934
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->checkForLocaleChange()V

    .line 937
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->isDevDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 938
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_1
    const v0, 0x7f0d0060

    .line 940
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->setContentView(I)V

    .line 941
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->isDevDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "STARTUP-PERFORMANCE"

    .line 942
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    - Load view layout time: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_2
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->isDevDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 948
    :cond_3
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->setupViews()V

    .line 949
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->isDevDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "STARTUP-PERFORMANCE"

    .line 950
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    - Setup Views time: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_4
    new-instance v0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    invoke-direct {v0}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mBackgroundFolderAnimationHelper:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    .line 955
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mBackgroundFolderAnimationHelper:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    new-instance v2, Lcom/voxel/launcher3/Launcher$3;

    invoke-direct {v2, p0}, Lcom/voxel/launcher3/Launcher$3;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->setListener(Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;)V

    .line 1007
    invoke-virtual {v6, p0}, Lcom/voxel/launcher3/DeviceProfile;->layout(Lcom/voxel/launcher3/Launcher;)V

    .line 1009
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->registerContentObservers()V

    .line 1011
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 1012
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 1018
    iget-boolean p1, p0, Lcom/voxel/launcher3/Launcher;->mRestoring:Z

    if-nez p1, :cond_5

    .line 1022
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    const/16 v0, -0x3e9

    invoke-virtual {p1, v1, v0}, Lcom/voxel/launcher3/LauncherModel;->startLoader(ZI)V

    .line 1031
    :cond_5
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 1032
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {p1, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1034
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 1035
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->canAccessWallpaper()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher;->mIsLiveWallpaper:Z

    .line 1037
    new-instance p1, Lcom/voxel/launcher3/Launcher$4;

    invoke-direct {p1, p0}, Lcom/voxel/launcher3/Launcher$4;-><init>(Lcom/voxel/launcher3/Launcher;)V

    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWallpaperBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1063
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.WALLPAPER_CHANGED"

    .line 1064
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWallpaperBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0, p1}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1068
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0, p1}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1072
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 1074
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getLauncherDefaultState()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    .line 1076
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getApplication()Landroid/app/Application;

    move-result-object p1

    new-instance v0, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;

    invoke-direct {v0, v1}, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;-><init>(Lcom/evie/search/local/LocalSearchManager;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1078
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->checkUpgradeVersion()V

    .line 1080
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->isDevDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "STARTUP-PERFORMANCE"

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "* Launcher Activity onCreate() total time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1081
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string p1, "DEBUG-HOME-DELAY"

    const-string v0, "**** Launcher.onCreate() DONE ****"

    .line 1085
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 3940
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 3942
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearMemoryCaches()V

    .line 3945
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3946
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3947
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3949
    invoke-static {}, Lcom/voxel/launcher3/LauncherAnimUtils;->onDestroyActivity()V

    .line 3952
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 3956
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v2, p0}, Lcom/voxel/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/voxel/launcher3/LauncherModel$Callbacks;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3957
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherModel;->stopLoader()V

    .line 3958
    invoke-virtual {v0, v3}, Lcom/voxel/launcher3/LauncherAppState;->setLauncher(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/LauncherModel;

    .line 3962
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Launcher"

    const-string v4, "problem while stopping AppWidgetHost during Launcher destruction"

    .line 3964
    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3966
    :goto_0
    iput-object v3, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    .line 3968
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3970
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 3972
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3974
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWallpaperBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 3975
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3976
    iput-object v3, p0, Lcom/voxel/launcher3/Launcher;->mWallpaperBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3979
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3981
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mRefreshBlurredImageTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    .line 3982
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3983
    iput-object v3, p0, Lcom/voxel/launcher3/Launcher;->mRefreshBlurredImageTask:Landroid/os/AsyncTask;

    .line 3986
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLauncherCustomContentPresenter:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    if-eqz v0, :cond_3

    .line 3987
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->dispose()V

    .line 3988
    iput-object v3, p0, Lcom/voxel/launcher3/Launcher;->mLauncherCustomContentPresenter:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    .line 3991
    :cond_3
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->clearAllResizeFrames()Z

    .line 3992
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLauncherView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->removeAllViews()V

    .line 3993
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->removeAllWorkspaceScreens()V

    .line 3994
    iput-object v3, p0, Lcom/voxel/launcher3/Launcher;->mLauncherView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3995
    iput-object v3, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    .line 3996
    iput-object v3, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    .line 3998
    invoke-static {p0}, Lcom/voxel/launcher3/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/PackageInstallerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/compat/PackageInstallerCompat;->onStop()V

    .line 4000
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    invoke-virtual {v0}, Lcom/evie/search/SearchPresenter;->clearPresenters()V

    .line 4001
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchUiHelper:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->cleanup()V

    .line 4003
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    if-eqz v0, :cond_4

    .line 4004
    invoke-virtual {v0, v3}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4005
    iput-object v3, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    .line 4007
    :cond_4
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mBlurImageView:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    if-eqz v0, :cond_5

    .line 4008
    invoke-virtual {v0, v3}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4009
    iput-object v3, p0, Lcom/voxel/launcher3/Launcher;->mBlurImageView:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    .line 4012
    :cond_5
    iput-object v3, p0, Lcom/voxel/launcher3/Launcher;->mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;

    .line 4014
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->stop()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 3497
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 3498
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mVisible:Z

    .line 3500
    iget-boolean v1, p0, Lcom/voxel/launcher3/Launcher;->mAttached:Z

    if-eqz v1, :cond_0

    .line 3501
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3502
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mAttached:Z

    .line 3504
    :cond_0
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->updateRunning()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 3734
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mShownDialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onFolderFragmentExit(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V
    .locals 3

    .line 5385
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mFolderFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5386
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->getFolderIcon()Lcom/voxel/launcher3/FolderIcon;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5387
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->getFolderIcon()Lcom/voxel/launcher3/FolderIcon;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/FolderIcon;->setIconsVisible(Z)V

    .line 5388
    invoke-virtual {p1, v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->setFolderIcon(Lcom/voxel/launcher3/FolderIcon;)V

    .line 5390
    :cond_0
    invoke-virtual {p1, v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->setFolder(Lcom/voxel/launcher3/Folder;)V

    .line 5391
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 5392
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 5393
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 5395
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setVisibility(I)V

    return-void
.end method

.method public onFolderFragmentRequestClose(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V
    .locals 0

    .line 5372
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->getFolder()Lcom/voxel/launcher3/Folder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->closeFolder(Lcom/voxel/launcher3/Folder;)V

    return-void
.end method

.method public onFolderFragmentWillExit(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;)V
    .locals 1

    .line 5378
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->getFolder()Lcom/voxel/launcher3/Folder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/voxel/launcher3/DropTarget;)V

    .line 5380
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mBackgroundFolderAnimationHelper:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;

    invoke-virtual {p1}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->animateCloseFolder()V

    return-void
.end method

.method protected onHomeIntent(ZZ)V
    .locals 2

    const-string v0, "DEBUG-HOME-DELAY"

    const-string v1, "----------- onHomeIntent ------------"

    .line 3866
    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    .line 3869
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getCurrentFactor()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 3870
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mCustomGestureListener:Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/gestures/CustomGestureListener;->onHomeButtonPressed()V

    goto :goto_0

    .line 3872
    :cond_0
    sget-object p2, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->HOME:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    invoke-direct {p0, p2, p1}, Lcom/voxel/launcher3/Launcher;->deactivateSearch(Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;Z)V

    goto :goto_0

    .line 3875
    :cond_1
    sget-object p2, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->HOME:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    invoke-direct {p0, p2, p1}, Lcom/voxel/launcher3/Launcher;->deactivateSearch(Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;Z)V

    :goto_0
    return-void
.end method

.method protected onInteractionBegin()V
    .locals 0

    return-void
.end method

.method protected onInteractionEnd()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 2218
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 2219
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 2220
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 2222
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->acceptFilter()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 2223
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    iget-object v3, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v3, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2225
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2232
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->onSearchRequested()Z

    move-result p1

    return p1

    :cond_1
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    .line 2237
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    .line 5447
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5448
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5449
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    sget-object v2, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    if-eq v0, v2, :cond_2

    return v1

    .line 5451
    :cond_2
    instance-of v0, p1, Lcom/voxel/launcher3/Workspace;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 5452
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Workspace;->isInOverviewMode()Z

    move-result p1

    if-nez p1, :cond_4

    .line 5453
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Workspace;->enterOverviewMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5455
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1, v1, v2}, Lcom/voxel/launcher3/Workspace;->performHapticFeedback(II)Z

    return v2

    :cond_3
    return v1

    :cond_4
    return v1

    .line 5468
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/voxel/launcher3/ItemInfo;

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 5469
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/ItemInfo;

    .line 5470
    new-instance v4, Lcom/voxel/launcher3/CellLayout$CellInfo;

    invoke-direct {v4, p1, v0}, Lcom/voxel/launcher3/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/voxel/launcher3/ItemInfo;)V

    .line 5471
    iget-object v0, v4, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 5472
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->resetAddInfo()V

    goto :goto_0

    :cond_6
    move-object v0, v3

    move-object v4, v0

    .line 5477
    :goto_0
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    .line 5478
    iget-object v6, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v6}, Lcom/voxel/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v6

    if-nez v6, :cond_c

    if-nez v0, :cond_9

    .line 5481
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, v1, v2}, Lcom/voxel/launcher3/Workspace;->performHapticFeedback(II)Z

    .line 5484
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5485
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isDesktopLockedCurrently()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5486
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Workspace;->startReordering(Landroid/view/View;)Z

    goto :goto_1

    .line 5488
    :cond_7
    new-instance p1, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;

    invoke-direct {p1}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;-><init>()V

    .line 5489
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    goto :goto_1

    .line 5492
    :cond_8
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Workspace;->enterOverviewMode()Z

    .line 5494
    :goto_1
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1, v1, v2}, Lcom/voxel/launcher3/Workspace;->performHapticFeedback(II)Z

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_a

    .line 5497
    iget-object v5, p0, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    iget v6, v4, Lcom/voxel/launcher3/CellLayout$CellInfo;->cellX:I

    iget v7, v4, Lcom/voxel/launcher3/CellLayout$CellInfo;->cellY:I

    .line 5498
    invoke-virtual {v5, v6, v7}, Lcom/voxel/launcher3/Hotseat;->getOrderInHotseat(II)I

    move-result v5

    .line 5497
    invoke-virtual {p0, v5}, Lcom/voxel/launcher3/Launcher;->isAllAppsButtonRank(I)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    .line 5501
    :goto_2
    instance-of v6, v0, Lcom/voxel/launcher3/Folder;

    if-nez v6, :cond_c

    if-nez v5, :cond_c

    .line 5502
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5504
    new-instance p1, Lcom/voxel/launcher3/dragndrop/DragOptions;

    invoke-direct {p1}, Lcom/voxel/launcher3/dragndrop/DragOptions;-><init>()V

    .line 5505
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isDesktopLockedCurrently()Z

    move-result v1

    iput-boolean v1, p1, Lcom/voxel/launcher3/dragndrop/DragOptions;->isDesktopLocked:Z

    .line 5508
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/ItemInfo;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->canProperlyShow(Lcom/voxel/launcher3/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5509
    new-instance v1, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/ItemInfo;

    iget-object v6, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-direct {v1, v0, v5, v6}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;-><init>(Landroid/view/View;Lcom/voxel/launcher3/ItemInfo;Lcom/evie/common/dragndrop/DragSource;)V

    .line 5510
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Launcher;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    .line 5511
    invoke-virtual {v1, v3}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->createDeferDragCondition(Ljava/lang/Runnable;)Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;

    move-result-object v0

    iput-object v0, p1, Lcom/voxel/launcher3/dragndrop/DragOptions;->deferDragCondition:Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;

    .line 5514
    :cond_b
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0, v4, p1}, Lcom/voxel/launcher3/Workspace;->startDragFromWorkspace(Lcom/voxel/launcher3/CellLayout$CellInfo;Lcom/voxel/launcher3/dragndrop/DragOptions;)V

    :cond_c
    :goto_3
    return v2
.end method

.method public onLowMemory()V
    .locals 1

    .line 2126
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    .line 2129
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mIconCache:Lcom/voxel/launcher3/IconCache;

    if-eqz v0, :cond_0

    .line 2130
    invoke-virtual {v0}, Lcom/voxel/launcher3/IconCache;->flush()V

    .line 2133
    :cond_0
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearMemoryCaches()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7

    .line 3743
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "android.intent.action.MAIN"

    .line 3746
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.ASSIST"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3750
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mShownDialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/DialogInterface;

    .line 3751
    invoke-interface {v3}, Landroid/content/DialogInterface;->dismiss()V

    or-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3754
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mShownDialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3757
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->closeSystemDialogs()V

    .line 3759
    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mHasFocus:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->isLaunchingVoiceAssist:Z

    if-nez v0, :cond_2

    .line 3760
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v4, 0x400000

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_2

    sget-object v0, Lcom/voxel/simplesearchlauncher/activity/ResetLauncherActivity;->RESET_EXTRA_KEY:Ljava/lang/String;

    .line 3762
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 3764
    :goto_1
    sget-object v4, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->KEY_LAUNCHER_RESTORED:Ljava/lang/String;

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3765
    new-instance v4, Lcom/voxel/launcher3/-$$Lambda$Launcher$XHFBWYbBofTN9dVJDPR4rpH1MHI;

    invoke-direct {v4, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$XHFBWYbBofTN9dVJDPR4rpH1MHI;-><init>(Lcom/voxel/launcher3/Launcher;)V

    .line 3766
    invoke-virtual {p0, v4}, Lcom/voxel/launcher3/Launcher;->addOnResumeCallback(Ljava/lang/Runnable;)V

    .line 3769
    :cond_3
    sget-object v4, Lcom/voxel/simplesearchlauncher/activity/ResetLauncherActivity;->VERIFY_EXTRA_KEY:Ljava/lang/String;

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/activity/ResetLauncherActivity;->isLauncherDefault(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3770
    new-instance p1, Lcom/voxel/launcher3/-$$Lambda$Launcher$Dh6rPjEzyDWM8tPhfVyQd0kRtiU;

    invoke-direct {p1, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$Dh6rPjEzyDWM8tPhfVyQd0kRtiU;-><init>(Lcom/voxel/launcher3/Launcher;)V

    .line 3771
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->addOnResumeCallback(Ljava/lang/Runnable;)V

    return-void

    .line 3775
    :cond_4
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    if-nez v4, :cond_5

    return-void

    .line 3779
    :cond_5
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getOpenFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v4

    .line 3781
    iget-object v5, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v5}, Lcom/voxel/launcher3/Workspace;->exitWidgetResizeMode()Z

    move-result v5

    or-int/2addr v2, v5

    if-eqz v0, :cond_6

    .line 3782
    iget-object v5, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    sget-object v6, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v5}, Lcom/voxel/launcher3/Workspace;->isTouchActive()Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v4, :cond_6

    .line 3783
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->shouldMoveToDefaultScreenOnHomeIntent()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3784
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v4, v3}, Lcom/voxel/launcher3/Workspace;->moveToDefaultScreen(Z)Z

    move-result v4

    or-int/2addr v2, v4

    .line 3787
    :cond_6
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->closeFolder()Z

    move-result v4

    or-int/2addr v2, v4

    .line 3788
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->exitSpringLoadedDragMode()Z

    move-result v4

    or-int/2addr v2, v4

    .line 3790
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getStackFragmentCount()I

    move-result v4

    if-lez v4, :cond_9

    sub-int/2addr v4, v3

    .line 3793
    invoke-virtual {p0, v4}, Lcom/voxel/launcher3/Launcher;->getStackFragmentAt(I)Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    move-result-object v5

    .line 3794
    instance-of v5, v5, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;

    if-nez v5, :cond_8

    if-eqz v0, :cond_7

    :goto_2
    if-ltz v4, :cond_8

    .line 3799
    invoke-virtual {p0, v4}, Lcom/voxel/launcher3/Launcher;->getStackFragmentAt(I)Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->runExitAnimation()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 3802
    :cond_7
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    invoke-virtual {v4}, Lcom/voxel/launcher3/FragmentHelper;->closeAllFragments()V

    .line 3806
    :cond_8
    invoke-direct {p0, v1, v0}, Lcom/voxel/launcher3/Launcher;->changeSearchMode(ZZ)V

    or-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    .line 3810
    :goto_3
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsFragment:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsMotionTracker:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;

    invoke-virtual {v4}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->getCurrentFactor()F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_a

    .line 3811
    invoke-virtual {p0, v1, v0}, Lcom/voxel/launcher3/Launcher;->changeAllAppsVisibility(ZZ)V

    or-int/lit8 v2, v2, 0x1

    :cond_a
    if-eqz v0, :cond_c

    .line 3818
    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    sget-object v6, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    if-eq v4, v6, :cond_b

    const/4 v4, 0x1

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    :goto_4
    or-int/2addr v2, v4

    .line 3819
    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/Launcher;->showWorkspace(Z)V

    goto :goto_5

    .line 3821
    :cond_c
    sget-object v3, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    iput-object v3, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeState:Lcom/voxel/launcher3/Launcher$State;

    .line 3824
    :goto_5
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 3825
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_d

    const-string v4, "input_method"

    .line 3826
    invoke-virtual {p0, v4}, Lcom/voxel/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 3828
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v4, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_d
    if-nez v5, :cond_f

    const-string v1, "android.intent.action.MAIN"

    .line 3840
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3841
    invoke-virtual {p0, v0, v2}, Lcom/voxel/launcher3/Launcher;->onHomeIntent(ZZ)V

    goto :goto_6

    :cond_e
    const-string v1, "android.intent.action.ASSIST"

    .line 3842
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3843
    invoke-virtual {p0, v0, v2}, Lcom/voxel/launcher3/Launcher;->onAssistIntent(ZZ)V

    :cond_f
    :goto_6
    return-void
.end method

.method public onPageBoundSynchronously(I)V
    .locals 1

    .line 6947
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPageSwitch(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 5

    .line 2096
    invoke-static {}, Lcom/voxel/launcher3/InstallShortcutReceiver;->enableInstallQueue()V

    .line 2097
    invoke-static {p0}, Lcom/voxel/launcher3/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/PackageInstallerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/compat/PackageInstallerCompat;->onPause()V

    .line 2099
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x1

    .line 2101
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mPaused:Z

    .line 2102
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v1}, Lcom/voxel/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 2103
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v1}, Lcom/voxel/launcher3/dragndrop/DragController;->resetLastGestureUpTime()V

    .line 2107
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Workspace;->getCustomContentCallbacks()Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2108
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Workspace;->getCustomContentCallbacks()Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;->onHide()V

    .line 2111
    :cond_0
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->pause()V

    .line 2114
    invoke-static {}, Lcom/voxel/simplesearchlauncher/fragment/Executors;->getMainThreadExecutor()Lcom/voxel/launcher3/MainThreadExecutor;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mForgetWallpaperRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/voxel/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;J)V

    .line 2115
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    invoke-virtual {v1}, Lcom/evie/search/SearchPresenter;->clearDragSink()V

    .line 2116
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {v1, v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->requestLogsSync(Z)V

    .line 2118
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLauncherCustomContentPresenter:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    if-eqz v0, :cond_1

    .line 2119
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->onPause()V

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 4120
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 4122
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getOpenFolder()Lcom/voxel/launcher3/Folder;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    .line 4124
    invoke-direct {p0, v0, p1}, Lcom/voxel/launcher3/Launcher;->changeSearchMode(ZZ)V

    .line 4126
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->isAllAppsVisibleOrMovingToVisible()Z

    move-result v1

    xor-int/2addr v1, p1

    invoke-virtual {p0, v1, p1}, Lcom/voxel/launcher3/Launcher;->changeAllAppsVisibility(ZZ)V

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 1659
    sget-object v0, Lcom/voxel/launcher3/Launcher;->sPermissionHelper:Lcom/voxel/simplesearchlauncher/activity/PermissionHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper;->handleRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/16 p2, 0xd

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eq p1, p2, :cond_2

    const/16 p2, 0xf

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 1685
    :cond_1
    array-length p1, p3

    if-lez p1, :cond_5

    aget p1, p3, v1

    if-nez p1, :cond_5

    .line 1686
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWallpaperBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 1665
    :cond_2
    sget-object p1, Lcom/voxel/launcher3/Launcher;->sPendingAddItem:Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    if-eqz p1, :cond_5

    iget p1, p1, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->requestCode:I

    if-ne p1, p2, :cond_5

    .line 1667
    sget-object p1, Lcom/voxel/launcher3/Launcher;->sPendingAddItem:Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    iget-wide p1, p1, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->container:J

    sget-object v2, Lcom/voxel/launcher3/Launcher;->sPendingAddItem:Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    iget-wide v2, v2, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->screenId:J

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/voxel/launcher3/Launcher;->getCellLayout(JJ)Lcom/voxel/launcher3/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1669
    sget-object p2, Lcom/voxel/launcher3/Launcher;->sPendingAddItem:Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    iget p2, p2, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->cellX:I

    sget-object v2, Lcom/voxel/launcher3/Launcher;->sPendingAddItem:Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    iget v2, v2, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->cellY:I

    invoke-virtual {p1, p2, v2}, Lcom/voxel/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v0

    .line 1671
    :goto_0
    sget-object p2, Lcom/voxel/launcher3/Launcher;->sPendingAddItem:Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    iget-object p2, p2, Lcom/voxel/launcher3/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 1672
    sput-object v0, Lcom/voxel/launcher3/Launcher;->sPendingAddItem:Lcom/voxel/launcher3/Launcher$PendingAddArguments;

    .line 1673
    array-length v2, p3

    if-lez v2, :cond_4

    aget p3, p3, v1

    if-nez p3, :cond_4

    .line 1675
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/launcher3/Launcher;->startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const p1, 0x7f12017f

    const/4 p2, 0x1

    .line 1678
    new-array p2, p2, [Ljava/lang/Object;

    const p3, 0x7f120037

    .line 1679
    invoke-virtual {p0, p3}, Lcom/voxel/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    .line 1678
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1679
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 3885
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 3886
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3887
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 1827
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1829
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 1832
    invoke-static {}, Lcom/voxel/simplesearchlauncher/fragment/Executors;->getMainThreadExecutor()Lcom/voxel/launcher3/MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mForgetWallpaperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/MainThreadExecutor;->removeCallback(Ljava/lang/Runnable;)V

    .line 1834
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarStyle()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setUseSubtleBackground(Z)V

    .line 1835
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewScroller:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarDesktopEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getSearchBarHiddenHeight()I

    move-result v1

    int-to-float v1, v1

    :goto_1
    invoke-virtual {v0, p0, v1}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->put(Ljava/lang/Object;F)V

    .line 1836
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsUpChevron:Landroid/widget/ImageView;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isAppDrawerHintEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1838
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 1839
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->canAccessWallpaper()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 1843
    iget-boolean v4, p0, Lcom/voxel/launcher3/Launcher;->mIsLiveWallpaper:Z

    const/4 v5, 0x0

    if-eq v1, v4, :cond_3

    .line 1844
    iput-boolean v1, p0, Lcom/voxel/launcher3/Launcher;->mIsLiveWallpaper:Z

    .line 1845
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->refreshBlurredImage()V

    .line 1846
    iget-boolean v1, p0, Lcom/voxel/launcher3/Launcher;->mIsLiveWallpaper:Z

    if-eqz v1, :cond_3

    .line 1847
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    invoke-virtual {v1, v5}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1851
    :cond_3
    iget-boolean v1, p0, Lcom/voxel/launcher3/Launcher;->mIsLiveWallpaper:Z

    if-nez v1, :cond_4

    .line 1852
    new-instance v1, Lcom/voxel/launcher3/Launcher$8;

    invoke-direct {v1, p0, v0}, Lcom/voxel/launcher3/Launcher$8;-><init>(Lcom/voxel/launcher3/Launcher;Landroid/app/WallpaperManager;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v3, [Ljava/lang/Void;

    .line 1875
    invoke-virtual {v1, v0, v4}, Lcom/voxel/launcher3/Launcher$8;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1878
    :cond_4
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->cleanupGoogleNowLaunchBackground()V

    .line 1880
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAppWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->startListening()V

    .line 1882
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher;->isLaunchingVoiceAssist:Z

    const-string v0, "DEBUG-HOME-DELAY"

    const-string v1, "Launcher.onResume()"

    .line 1884
    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setImeOptions(I)V

    .line 1888
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->shouldShowIntroScreen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1889
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->showIntroScreen()V

    goto :goto_3

    .line 1891
    :cond_5
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->showFirstRunActivity()Z

    move-result v0

    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->isShowingOnboard:Z

    .line 1898
    :goto_3
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;

    invoke-virtual {v0, p0}, Lcom/evie/search/local/LocalSearchManager;->initContactsIfNeeded(Landroid/content/Context;)V

    .line 1899
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;

    invoke-virtual {v0}, Lcom/evie/search/local/LocalSearchManager;->updateRecents()V

    .line 1900
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    invoke-virtual {v0}, Lcom/evie/search/SearchPresenter;->refreshFrequents()V

    .line 1901
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$Launcher$WNdnB1SSSbgSkfr6tBGGVKORK8Y;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$WNdnB1SSSbgSkfr6tBGGVKORK8Y;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/evie/search/SearchPresenter;->setDragSink(Lcom/evie/common/dragndrop/DragSink;)V

    .line 1909
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeState:Lcom/voxel/launcher3/Launcher$State;

    sget-object v1, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    if-ne v0, v1, :cond_6

    .line 1910
    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/Launcher;->showWorkspace(Z)V

    goto :goto_4

    .line 1911
    :cond_6
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeState:Lcom/voxel/launcher3/Launcher$State;

    sget-object v1, Lcom/voxel/launcher3/Launcher$State;->APPS_CUSTOMIZE:Lcom/voxel/launcher3/Launcher$State;

    if-ne v0, v1, :cond_7

    .line 1915
    invoke-virtual {p0, v2, v2}, Lcom/voxel/launcher3/Launcher;->changeAllAppsVisibility(ZZ)V

    .line 1917
    :cond_7
    :goto_4
    sget-object v0, Lcom/voxel/launcher3/Launcher$State;->NONE:Lcom/voxel/launcher3/Launcher$State;

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeState:Lcom/voxel/launcher3/Launcher$State;

    .line 1920
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    sget-object v1, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->setWorkspaceBackground(Z)V

    .line 1922
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher;->mPaused:Z

    .line 1924
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/voxel/launcher3/LauncherModel$Callbacks;)Z

    move-result v0

    const/16 v1, -0x3e9

    if-nez v0, :cond_9

    .line 1925
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherModel;->stopLoader()V

    .line 1926
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/LauncherAppState;->setLauncher(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/LauncherModel;

    .line 1927
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v0, v2, v1}, Lcom/voxel/launcher3/LauncherModel;->startLoader(ZI)V

    goto :goto_7

    .line 1928
    :cond_9
    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mRestoring:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v0, :cond_a

    goto :goto_6

    .line 1933
    :cond_a
    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->isShowingOnboard:Z

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->shouldRunFirstRunClings()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1934
    invoke-direct {p0, v2}, Lcom/voxel/launcher3/Launcher;->setWorkspaceLoading(Z)V

    .line 1935
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v0, v3, v2}, Lcom/voxel/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    .line 1936
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    const/16 v4, 0xc

    invoke-virtual {v0, v2, v1, v4}, Lcom/voxel/launcher3/LauncherModel;->startLoader(ZII)V

    .line 1937
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher;->mRestoring:Z

    .line 1938
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    goto :goto_7

    .line 1929
    :cond_b
    :goto_6
    invoke-direct {p0, v2}, Lcom/voxel/launcher3/Launcher;->setWorkspaceLoading(Z)V

    .line 1930
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v0, v2, v1}, Lcom/voxel/launcher3/LauncherModel;->startLoader(ZI)V

    .line 1931
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher;->mRestoring:Z

    .line 1932
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    .line 1940
    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    const-string v0, "DEBUG-HOME-DELAY"

    .line 1941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--> Running bindOnResumeCallbacks: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    .line 1942
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1941
    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1956
    :goto_8
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 1957
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1965
    :cond_d
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "DEBUG-HOME-DELAY"

    const-string v1, "--> bindOnResumeCallbacks DONE"

    .line 1971
    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    :cond_e
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    const-string v0, "DEBUG-HOME-DELAY"

    .line 1974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--> Running onResumeCallbacks: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    .line 1975
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1974
    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1977
    :goto_9
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 1978
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1980
    :cond_f
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "DEBUG-HOME-DELAY"

    const-string v1, "--> Running mOnResumeCallbacks DONE"

    .line 1982
    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    :cond_10
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWaitingForResume:Lcom/voxel/launcher3/BubbleTextView;

    if-eqz v0, :cond_11

    .line 1989
    invoke-virtual {v0, v3}, Lcom/voxel/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 1996
    :cond_11
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->reinflateWidgetsIfNecessary()V

    .line 1999
    invoke-static {p0}, Lcom/voxel/launcher3/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 2002
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->closeFolder()Z

    .line 2003
    invoke-virtual {p0, v3, v3}, Lcom/voxel/launcher3/Launcher;->changeAllAppsVisibility(ZZ)V

    .line 2004
    invoke-direct {p0, v3, v3}, Lcom/voxel/launcher3/Launcher;->changeSearchMode(ZZ)V

    .line 2007
    :cond_12
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchUiHelper:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->showFeedbackItemIfNeeded()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2008
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchUiHelper:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->showSetLauncherSearchPromptIfNeeded()Z

    .line 2012
    :cond_13
    invoke-virtual {p0, v3}, Lcom/voxel/launcher3/Launcher;->updateVoiceButtonProxyVisible(Z)V

    .line 2018
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getCustomContentCallbacks()Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2022
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->isOnOrMovingToCustomContent()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2023
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getCustomContentCallbacks()Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;->onShow(Z)V

    .line 2026
    :cond_14
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->updateInteractionForState()V

    .line 2027
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->onResume()V

    .line 2029
    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->isShowingOnboard:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->sendHomeAnalyticsEventOnResume:Z

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->shouldRunFirstRunClings()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2030
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->isLauncherDefault()Z

    move-result v0

    .line 2032
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->hasLaunchedHome()Z

    move-result v1

    if-nez v1, :cond_15

    .line 2033
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->handleHomeFirstTimeEvent(Z)V

    goto :goto_a

    .line 2035
    :cond_15
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v2, "ev_launcher_home"

    new-instance v4, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v6, "is_default"

    .line 2036
    invoke-virtual {v4, v6, v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Z)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v4

    .line 2035
    invoke-virtual {v1, v2, v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 2039
    :goto_a
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher;->sendHomeAnalyticsEventOnResume:Z

    .line 2041
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    sget-object v2, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;->UNKNOWN:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    if-ne v1, v2, :cond_17

    if-eqz v0, :cond_16

    .line 2042
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;->DEFAULT:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    goto :goto_b

    :cond_16
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;->NOT_DEFAULT:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    :goto_b
    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    .line 2044
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->setLauncherDefaultState(Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;)V

    goto :goto_c

    .line 2046
    :cond_17
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    sget-object v2, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;->DEFAULT:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    if-ne v1, v2, :cond_18

    if-nez v0, :cond_18

    .line 2048
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;->NOT_DEFAULT:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    .line 2049
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->setLauncherDefaultState(Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;)V

    .line 2050
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v1, "ev_switch_to_not_default"

    invoke-virtual {v0, v1, v5}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 2051
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->requestLogsSync()V

    goto :goto_c

    .line 2052
    :cond_18
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    sget-object v2, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;->NOT_DEFAULT:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    if-ne v1, v2, :cond_19

    if-eqz v0, :cond_19

    .line 2054
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;->DEFAULT:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    .line 2055
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->setLauncherDefaultState(Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;)V

    .line 2056
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v1, "ev_switch_to_default"

    invoke-virtual {v0, v1, v5}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 2057
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->requestLogsSync()V

    .line 2062
    :cond_19
    :goto_c
    invoke-static {p0}, Lcom/voxel/launcher3/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/PackageInstallerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/compat/PackageInstallerCompat;->onResume()V

    .line 2068
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->resume()V

    .line 2069
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/IconCache;->onResume()V

    .line 2071
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {v0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->refreshShortcutsIfRequired()V

    .line 2073
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLauncherCustomContentPresenter:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    if-eqz v0, :cond_1a

    .line 2074
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->onResume()V

    .line 2077
    :cond_1a
    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mShowUpgradeNotice:Z

    if-eqz v0, :cond_1b

    .line 2078
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$Launcher$dJhZZPJHFIbNbeK_QVr87na-ZX4;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$dJhZZPJHFIbNbeK_QVr87na-ZX4;-><init>(Lcom/voxel/launcher3/Launcher;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2082
    iput-boolean v3, p0, Lcom/voxel/launcher3/Launcher;->mShowUpgradeNotice:Z

    :cond_1b
    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    .line 2088
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 2090
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/FragmentHelper;->onResume()V

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 2192
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/voxel/launcher3/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2193
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mModel:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherModel;->stopLoader()V

    .line 2200
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 3893
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/FragmentHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3895
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "launcher.current_screen"

    .line 3896
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    .line 3897
    invoke-virtual {v1}, Lcom/voxel/launcher3/Workspace;->getCurrentPageOffsetFromCustomContent()I

    move-result v1

    .line 3896
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3900
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->forceCloseFolders()V

    .line 3902
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "launcher.state"

    .line 3904
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3906
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-wide v0, v0, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-wide v0, v0, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    const-string v0, "launcher.add_container"

    .line 3908
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-wide v1, v1, Lcom/voxel/launcher3/ItemInfo;->container:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "launcher.add_screen"

    .line 3909
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-wide v1, v1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "launcher.add_cell_x"

    .line 3910
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget v1, v1, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "launcher.add_cell_y"

    .line 3911
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget v1, v1, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "launcher.add_span_x"

    .line 3912
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget v1, v1, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "launcher.add_span_y"

    .line 3913
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iget v1, v1, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "launcher.add_widget_info"

    .line 3914
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetInfo:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "launcher.add_widget_id"

    .line 3915
    iget v1, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddWidgetId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3918
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mFolderInfo:Lcom/voxel/launcher3/FolderInfo;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_2

    const-string v0, "launcher.rename_folder"

    const/4 v1, 0x1

    .line 3919
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "launcher.rename_folder_id"

    .line 3920
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mFolderInfo:Lcom/voxel/launcher3/FolderInfo;

    iget-wide v1, v1, Lcom/voxel/launcher3/FolderInfo;->id:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    const-string v0, "launcher.view_ids"

    .line 3935
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4132
    invoke-virtual {p0, v1, v2, v1, v0}, Lcom/voxel/launcher3/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return v0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 3729
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mShownDialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onStackableFragmentRequestClose(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V
    .locals 1

    .line 4450
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/FragmentHelper;->onStackableFragmentRequestClose(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    return-void
.end method

.method public onStackableFragmentWillRequestClose(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V
    .locals 1

    .line 4445
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/FragmentHelper;->onStackableFragmentWillRequestClose(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1806
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    const/4 v0, 0x0

    .line 1808
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->isStopped:Z

    .line 1809
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/FragmentHelper;->onStart()V

    const/4 v0, 0x1

    .line 1811
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    const-string v1, "DEBUG-HOME-DELAY"

    const-string v2, "Launcher.onStart()"

    .line 1813
    invoke-static {v1, v2}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->stopLogsSync()V

    const-string v1, "DEBUG-HOME-DELAY"

    const-string v2, "Launcher.onStart() DONE"

    .line 1817
    invoke-static {v1, v2}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->sendHomeAnalyticsEventOnResume:Z

    .line 1821
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    invoke-virtual {v0, p0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->acquireLocation(Ljava/lang/Object;)V

    .line 1822
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->start()V

    return-void
.end method

.method protected onStop()V
    .locals 4

    .line 1770
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    const/4 v0, 0x1

    .line 1771
    iput-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->isStopped:Z

    .line 1772
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    invoke-virtual {v0, p0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->releaseLocation(Ljava/lang/Object;)V

    .line 1774
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mShownDialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface;

    .line 1775
    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mShownDialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1779
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->isLauncherDefault()Z

    move-result v0

    .line 1781
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->hideAlternateHintTextMode(Z)V

    .line 1783
    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 1785
    iget-boolean v1, p0, Lcom/voxel/launcher3/Launcher;->isShowingOnboard:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->shouldRunFirstRunClings()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->hasLaunchedHome()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1786
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->handleHomeFirstTimeEvent(Z)V

    .line 1789
    :cond_1
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    sget-object v2, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;->DEFAULT:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_2

    .line 1791
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;->NOT_DEFAULT:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    .line 1792
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->setLauncherDefaultState(Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;)V

    .line 1793
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v1, "ev_switch_to_not_default"

    invoke-virtual {v0, v1, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    goto :goto_1

    .line 1794
    :cond_2
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    sget-object v2, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;->NOT_DEFAULT:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_3

    .line 1796
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;->DEFAULT:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    .line 1797
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mPreviousDefaultState:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->setLauncherDefaultState(Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$LauncherDefaultState;)V

    .line 1798
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v1, "ev_switch_to_default"

    invoke-virtual {v0, v1, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 1801
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->requestLogsSync()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchDownAllAppsButton(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 4976
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public onTouchDownScrollingWidget(Lcom/voxel/launcher3/LauncherAppWidgetHostView;)V
    .locals 1

    .line 4980
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerGestureListener:Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;

    if-eqz v0, :cond_0

    .line 4981
    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->checkForAdapterView()Z

    move-result p1

    iput-boolean p1, v0, Lcom/voxel/launcher3/Launcher$MainLayerGestureListener;->touchDownScrollingWidget:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 5710
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5714
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5719
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    .line 5720
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    if-eqz v0, :cond_2

    .line 5721
    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->sendMotionEvent(Landroid/view/MotionEvent;)V

    .line 5726
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5727
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v1
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 6184
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onTrimMemory(I)V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6197
    :cond_0
    sget-object p1, Lcom/facebook/common/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInBackground:Lcom/facebook/common/memory/MemoryTrimType;

    .line 6198
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mIconCache:Lcom/voxel/launcher3/IconCache;

    if-eqz v0, :cond_2

    .line 6199
    invoke-virtual {v0}, Lcom/voxel/launcher3/IconCache;->flush()V

    goto :goto_0

    .line 6193
    :cond_1
    sget-object p1, Lcom/facebook/common/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInForeground:Lcom/facebook/common/memory/MemoryTrimType;

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 6204
    invoke-static {}, Lcom/voxel/launcher3/LauncherApplication;->getApplication()Lcom/voxel/launcher3/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/BaseApplication;->getMemoryRegistry()Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;->trimMemory(Lcom/facebook/common/memory/MemoryTrimType;)V

    :cond_3
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 2206
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 2207
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher;->mHasFocus:Z

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3508
    :goto_0
    iput-boolean p1, p0, Lcom/voxel/launcher3/Launcher;->mVisible:Z

    .line 3509
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->updateRunning()V

    .line 3513
    iget-boolean p1, p0, Lcom/voxel/launcher3/Launcher;->mVisible:Z

    if-eqz p1, :cond_2

    .line 3516
    iget-boolean p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspaceLoading:Z

    if-nez p1, :cond_1

    .line 3517
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 3521
    new-instance v0, Lcom/voxel/launcher3/Launcher$22;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/Launcher$22;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 3544
    :cond_1
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->clearTypedText()V

    :cond_2
    return-void
.end method

.method protected onWorkspaceLockedChanged()V
    .locals 0

    return-void
.end method

.method public onWorkspaceShown(Z)V
    .locals 0

    return-void
.end method

.method public openFolder(Lcom/voxel/launcher3/FolderIcon;)V
    .locals 5

    .line 5279
    invoke-virtual {p1}, Lcom/voxel/launcher3/FolderIcon;->getFolder()Lcom/voxel/launcher3/Folder;

    move-result-object v0

    .line 5280
    iget-object v1, v0, Lcom/voxel/launcher3/Folder;->mInfo:Lcom/voxel/launcher3/FolderInfo;

    const/4 v2, 0x1

    .line 5282
    iput-boolean v2, v1, Lcom/voxel/launcher3/FolderInfo;->opened:Z

    .line 5284
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 5286
    new-instance v2, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    invoke-direct {v2}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;-><init>()V

    .line 5287
    invoke-virtual {v2, p1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->setFolderIcon(Lcom/voxel/launcher3/FolderIcon;)V

    .line 5288
    invoke-virtual {v2, v0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->setFolder(Lcom/voxel/launcher3/Folder;)V

    const v3, 0x7f0a011d

    const/4 v4, 0x0

    .line 5290
    invoke-virtual {v1, v3, v2, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 5291
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 5292
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 5294
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mFolderFragments:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5295
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/dragndrop/DragController;->addDropTarget(Lcom/voxel/launcher3/DropTarget;)V

    .line 5297
    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$Launcher$LKLY7MD3Fc71w_x4Fz3GFw9qDJk;

    invoke-direct {v1, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$Launcher$LKLY7MD3Fc71w_x4Fz3GFw9qDJk;-><init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/FolderIcon;)V

    invoke-virtual {v2, v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->setListener(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$FolderFragmentListener;)V

    const/16 p1, 0x20

    .line 5314
    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Folder;->sendAccessibilityEvent(I)V

    .line 5315
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object p1

    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method protected overrideWallpaperDimensions()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public performHapticFeedbackOnTouchDown(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 4987
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public popStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V
    .locals 1

    .line 4464
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/FragmentHelper;->popStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V

    return-void
.end method

.method protected populateCustomContentContainer()V
    .locals 3

    .line 1102
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLauncherCustomContentPresenter:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    if-nez v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLauncherCustomContentPresenterFactory:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;

    invoke-virtual {v0, p0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;->create(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLauncherCustomContentPresenter:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLauncherCustomContentViewHolder:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;

    if-nez v0, :cond_1

    .line 1106
    new-instance v0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mLauncherView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/voxel/launcher3/Launcher;->mLauncherCustomContentPresenter:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    invoke-direct {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;-><init>(Landroid/view/View;Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLauncherCustomContentViewHolder:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;

    .line 1107
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLauncherCustomContentPresenter:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mLauncherCustomContentViewHolder:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->setViewHolder(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;)V

    .line 1109
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mLauncherCustomContentViewHolder:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->getCustomContentView()Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mLauncherCustomContentPresenter:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    const-string v2, "Evie Sidescreen"

    invoke-virtual {p0, v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->addToCustomContentPage(Landroid/view/View;Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method processShortcut(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    .line 4305
    invoke-static {p0, p1, v0}, Lcom/voxel/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method processShortcutFromDrop(Landroid/content/ComponentName;JJ[I[I)V
    .locals 1

    .line 4218
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->resetAddInfo()V

    .line 4219
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mPendingAddInfo:Lcom/voxel/launcher3/ItemInfo;

    iput-wide p2, v0, Lcom/voxel/launcher3/ItemInfo;->container:J

    .line 4220
    iput-wide p4, v0, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 4221
    iput-object p7, v0, Lcom/voxel/launcher3/ItemInfo;->dropPos:[I

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    .line 4224
    aget p2, p6, p2

    iput p2, v0, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    const/4 p2, 0x1

    .line 4225
    aget p2, p6, p2

    iput p2, v0, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    .line 4228
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4229
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4230
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/Launcher;->processShortcut(Landroid/content/Intent;)V

    return-void
.end method

.method public providesTransitionAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V
    .locals 2

    .line 4455
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    const v1, 0x7f0a00dd

    invoke-virtual {v0, v1, p1}, Lcom/voxel/launcher3/FragmentHelper;->pushStackFragment(ILcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    .line 4456
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 4457
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->requiresFullScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 4458
    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/Launcher;->changeSearchMode(ZZ)V

    :cond_0
    return-void
.end method

.method public removeAppWidget(Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V
    .locals 1

    .line 3609
    iget-object v0, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3610
    iput-object v0, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    return-void
.end method

.method public removeFolder(Lcom/voxel/launcher3/FolderInfo;)V
    .locals 3

    .line 4343
    sget-object v0, Lcom/voxel/launcher3/Launcher;->sFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    iget-wide v1, p1, Lcom/voxel/launcher3/FolderInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/voxel/launcher3/util/LongArrayMap;->remove(J)V

    return-void
.end method

.method public removeViewForItemInfo(Lcom/voxel/launcher3/ItemInfo;)V
    .locals 2

    .line 4334
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    new-instance v1, Lcom/voxel/launcher3/Launcher$24;

    invoke-direct {v1, p0, p1}, Lcom/voxel/launcher3/Launcher$24;-><init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/ItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Workspace;->removeItemsByMatcher(Lcom/voxel/launcher3/util/ItemInfoMatcher;)V

    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 1

    .line 3602
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3603
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3604
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->updateRunning()V

    :cond_0
    return-void
.end method

.method public resetQSBScroll()V
    .locals 2

    .line 2148
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/voxel/launcher3/SearchDropTargetBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2149
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getQsbBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public setAllAppsButton(Landroid/view/View;)V
    .locals 0

    .line 3151
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    return-void
.end method

.method public setLoadOnResume()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setWallpaperOffsets(FF)V
    .locals 1

    .line 5618
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mMainLayerBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    if-eqz v0, :cond_0

    .line 5619
    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setOffsets(FF)V

    .line 5621
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mBlurImageView:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    if-eqz v0, :cond_1

    .line 5622
    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setOffsets(FF)V

    .line 5624
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    if-eqz v0, :cond_2

    .line 5625
    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;->setOffsets(FF)V

    .line 5627
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->mSubtleBackground:Lcom/voxel/simplesearchlauncher/view/CenterCropOffsetImageView;

    if-eqz v0, :cond_3

    .line 5628
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setSubtleOffsets(FF)V

    .line 5630
    :cond_3
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHotseatBg:Lcom/voxel/simplesearchlauncher/view/HotseatImageView;

    if-eqz v0, :cond_4

    .line 5631
    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/HotseatImageView;->setOffsets(FF)V

    :cond_4
    return-void
.end method

.method protected shouldMoveToDefaultScreenOnHomeIntent()Z
    .locals 1

    .line 3858
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mQsbSearchViewEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 3859
    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

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

.method public showBlurImage()V
    .locals 3

    .line 5676
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    .line 5677
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 5678
    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$Launcher$jeEDl4ovx6w1uKQuDIGOdCemTJM;

    invoke-direct {v2, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$jeEDl4ovx6w1uKQuDIGOdCemTJM;-><init>(Lcom/voxel/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5679
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 5682
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBarAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    const/4 v2, 0x0

    int-to-float v2, v2

    invoke-static {v1, p0, v2}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->ofFloat(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;F)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 5683
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mIndicatorAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    invoke-static {v1, p0, v2}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->ofFloat(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;F)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 5684
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspaceAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    invoke-static {v1, p0, v2}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->ofFloat(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;F)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 5685
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mHotseatAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    invoke-static {v1, p0, v2}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->ofFloat(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;F)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 5686
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mOverviewPanelAlpha:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    invoke-static {v1, p0, v2}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->ofFloat(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;F)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 5687
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showFirstRunActivity()Z
    .locals 3

    .line 7392
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->shouldRunFirstRunActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->hasFirstRunActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7393
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getFirstRunActivity()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    .line 7395
    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 7396
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v1, "ev_onboard_initiated"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 7397
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->requestLogsSync(Z)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showFirstRunClings()Z
    .locals 2

    .line 7418
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mPaused:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7422
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getCurrentStackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7424
    instance-of v0, v0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;

    if-eqz v0, :cond_1

    return v1

    .line 7428
    :cond_1
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->shouldRunFirstRunClings()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 7432
    :cond_2
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->getFirstRunDidAutoImport()Z

    move-result v0

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;->getInstance(Z)Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherPromptFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    .line 7433
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->markFirstRunClingShown()V

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method protected showIntroScreen()V
    .locals 2

    .line 7473
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getIntroScreen()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 7474
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Launcher;->changeWallpaperVisiblity(Z)V

    if-eqz v0, :cond_0

    .line 7476
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->showOverlayView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method showOutOfSpaceMessage(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f12016a

    goto :goto_0

    :cond_0
    const p1, 0x7f1201b0

    .line 3615
    :goto_0
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method showOverviewMode(Z)V
    .locals 3

    .line 6252
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Workspace;->setVisibility(I)V

    .line 6253
    sget-object v0, Lcom/voxel/launcher3/Workspace$State;->OVERVIEW:Lcom/voxel/launcher3/Workspace$State;

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/voxel/launcher3/Launcher;->hideAppsCustomizeHelper(Lcom/voxel/launcher3/Workspace$State;ZZLjava/lang/Runnable;)V

    .line 6254
    sget-object v0, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    iput-object v0, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    .line 6255
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->onWorkspaceShown(Z)V

    return-void
.end method

.method public showSpecialFragments()V
    .locals 3

    .line 4424
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsFragment:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4425
    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->setVisible(Z)V

    .line 4428
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mFolderFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;

    .line 4429
    invoke-virtual {v2, v1}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->setVisible(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public showWorkspace(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 6208
    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/Launcher;->showWorkspace(ZLjava/lang/Runnable;)V

    return-void
.end method

.method showWorkspace(ZLjava/lang/Runnable;)V
    .locals 4

    .line 6216
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    if-nez v0, :cond_0

    return-void

    .line 6220
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    sget-object v1, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->getState()Lcom/voxel/launcher3/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    if-eq v0, v1, :cond_5

    .line 6221
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    sget-object v1, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 6222
    :goto_0
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v1, v3}, Lcom/voxel/launcher3/Workspace;->setVisibility(I)V

    .line 6223
    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    invoke-direct {p0, v1, p1, v3, p2}, Lcom/voxel/launcher3/Launcher;->hideAppsCustomizeHelper(Lcom/voxel/launcher3/Workspace$State;ZZLjava/lang/Runnable;)V

    .line 6227
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    .line 6228
    :cond_3
    invoke-virtual {p2, v3}, Lcom/voxel/launcher3/SearchDropTargetBar;->showSearchBar(Z)V

    .line 6232
    :cond_4
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 6233
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 6238
    :cond_5
    sget-object p2, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    iput-object p2, p0, Lcom/voxel/launcher3/Launcher;->mState:Lcom/voxel/launcher3/Launcher$State;

    .line 6241
    iput-boolean v2, p0, Lcom/voxel/launcher3/Launcher;->mUserPresent:Z

    .line 6242
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->updateRunning()V

    .line 6245
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x20

    .line 6246
    invoke-virtual {p2, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 6248
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->onWorkspaceShown(Z)V

    return-void
.end method

.method showWorkspaceIsLoadingMessage()V
    .locals 2

    const v0, 0x7f1202aa

    const/4 v1, 0x0

    .line 3619
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    .line 4026
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->setWaitingForResult(Z)V

    .line 4028
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivitySafely(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 5197
    invoke-virtual {p0, v0, p1, v0}, Lcom/voxel/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 1

    const v0, 0x7f12002c

    .line 5201
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/voxel/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;I)Z
    .locals 3

    .line 5206
    iget-boolean v0, p0, Lcom/voxel/launcher3/Launcher;->mIsSafeModeEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lcom/voxel/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f120201

    .line 5207
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    .line 5211
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/launcher3/Launcher;->startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5213
    invoke-static {p0, p4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/Toast;->show()V

    const-string p4, "Launcher"

    .line 5214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch. tag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " intent="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public startApplicationUninstallActivity(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5042
    :try_start_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 5043
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const p1, 0x7f1202af

    .line 5052
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    .line 5055
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5056
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 5057
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    const-string v4, "package"

    .line 5058
    invoke-static {v4, v1, p1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10800000

    .line 5059
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_2

    const-string p1, "android.intent.extra.USER"

    .line 5062
    invoke-virtual {p2, v2, p1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->addToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5064
    :cond_2
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/Launcher;->startActivitySafely(Landroid/content/Intent;)Z

    return v0
.end method

.method public startBinding()V
    .locals 1

    const/4 v0, 0x1

    .line 6565
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/Launcher;->setWorkspaceLoading(Z)V

    .line 6570
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6573
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 6575
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->clearDropTargets()V

    .line 6576
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->removeAllWorkspaceScreens()V

    .line 6578
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->forceCloseFolders()V

    .line 6580
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6581
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mHotseat:Lcom/voxel/launcher3/Hotseat;

    if-eqz v0, :cond_0

    .line 6582
    invoke-virtual {v0}, Lcom/voxel/launcher3/Hotseat;->refreshLayout()V

    .line 6586
    :cond_0
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    .line 6587
    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/DeviceProfile;->layout(Lcom/voxel/launcher3/Launcher;)V

    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/voxel/launcher3/ItemInfo;Lcom/evie/common/dragndrop/DragSource;)V
    .locals 2

    .line 3175
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3177
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    new-instance v1, Lcom/voxel/launcher3/Launcher$19;

    invoke-direct {v1, p0, p1}, Lcom/voxel/launcher3/Launcher$19;-><init>(Lcom/voxel/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/dragndrop/DragController;->addDragListener(Lcom/voxel/launcher3/dragndrop/DragController$DragListener;)V

    .line 3207
    new-instance v0, Lcom/voxel/launcher3/dragndrop/DragOptions;

    invoke-direct {v0}, Lcom/voxel/launcher3/dragndrop/DragOptions;-><init>()V

    .line 3208
    iget-object v1, p0, Lcom/voxel/launcher3/Launcher;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isDesktopLockedCurrently()Z

    move-result v1

    iput-boolean v1, v0, Lcom/voxel/launcher3/dragndrop/DragOptions;->isDesktopLocked:Z

    .line 3211
    invoke-static {p2}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->canProperlyShow(Lcom/voxel/launcher3/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3212
    new-instance v1, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-direct {v1, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;-><init>(Landroid/view/View;Lcom/voxel/launcher3/ItemInfo;Lcom/evie/common/dragndrop/DragSource;)V

    .line 3213
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/Launcher;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    const/4 p2, 0x0

    .line 3214
    invoke-virtual {v1, p2}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->createDeferDragCondition(Ljava/lang/Runnable;)Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;

    move-result-object p2

    iput-object p2, v0, Lcom/voxel/launcher3/dragndrop/DragOptions;->deferDragCondition:Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;

    .line 3217
    :cond_0
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {p2, p1, p3, v0}, Lcom/voxel/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/evie/common/dragndrop/DragSource;Lcom/voxel/launcher3/dragndrop/DragOptions;)Lcom/voxel/launcher3/dragndrop/DragView;

    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1

    const/4 p4, 0x1

    .line 4039
    invoke-virtual {p0, p4}, Lcom/voxel/launcher3/Launcher;->showWorkspace(Z)V

    if-nez p1, :cond_0

    .line 4043
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p3, :cond_1

    .line 4046
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "source"

    const-string v0, "launcher-search"

    .line 4047
    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4049
    :cond_1
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 4050
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mSearchDropTargetBar:Lcom/voxel/launcher3/SearchDropTargetBar;

    if-eqz v0, :cond_2

    .line 4051
    invoke-virtual {v0}, Lcom/voxel/launcher3/SearchDropTargetBar;->getSearchBarBounds()Landroid/graphics/Rect;

    move-result-object p4

    .line 4054
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/voxel/launcher3/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4057
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher;->clearTypedText()V

    :cond_3
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)Z
    .locals 0

    .line 4070
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/voxel/launcher3/Launcher;->startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    return p1
.end method

.method public startVoice()V
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x10000000

    :try_start_0
    const-string v2, "search"

    .line 4690
    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 4691
    invoke-virtual {v2}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 4692
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4693
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 4695
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v2, "onClickVoiceButton"

    .line 4697
    invoke-direct {p0, v0, v3, v2}, Lcom/voxel/launcher3/Launcher;->startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4699
    :catch_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.WEB_SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4700
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "onClickVoiceButton"

    .line 4701
    invoke-virtual {p0, v0, v2, v1}, Lcom/voxel/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public unlockScreenOrientation(Z)V
    .locals 3

    .line 7283
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 7285
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher;->setRequestedOrientation(I)V

    goto :goto_0

    .line 7287
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$Launcher$d-1czdx1XY2BjLd8E-nl1V-LG08;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/-$$Lambda$Launcher$d-1czdx1XY2BjLd8E-nl1V-LG08;-><init>(Lcom/voxel/launcher3/Launcher;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updatePackageBadge(Ljava/lang/String;)V
    .locals 2

    .line 7200
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 7201
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/voxel/launcher3/Workspace;->updatePackageBadge(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    :cond_0
    return-void
.end method

.method public updatePackageState(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;",
            ">;)V"
        }
    .end annotation

    .line 7188
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 7189
    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Workspace;->updatePackageState(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public updateVoiceButtonProxyVisible(Z)V
    .locals 2

    const v0, 0x7f0a02e6

    .line 6423
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 6425
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    .line 6426
    invoke-virtual {p1}, Lcom/voxel/launcher3/Workspace;->shouldVoiceButtonProxyBeVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 6427
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6428
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_2
    return-void
.end method
