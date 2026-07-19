.class public Lcom/voxel/simplesearchlauncher/popup/PopupFragment;
.super Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;
.source "PopupFragment.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;,
        Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;
    }
.end annotation


# instance fields
.field mBackgroundWash:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

.field private mDeferredDragIcon:Landroid/view/View;

.field private mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

.field private mDragListener:Lcom/voxel/launcher3/dragndrop/DragController$DragListener;

.field private mDragSource:Lcom/evie/common/dragndrop/DragSource;

.field private mItemInfo:Lcom/voxel/launcher3/ItemInfo;

.field private mItemView:Landroid/view/View;

.field mLauncher:Lcom/voxel/launcher3/Launcher;

.field private mNotificationDismissedReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationOnClickListener:Landroid/view/View$OnClickListener;

.field private mOriginalDragSource:Lcom/evie/common/dragndrop/DragSource;

.field mPopupContainer:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mShortcutOnClickListener:Landroid/view/View$OnClickListener;

.field private mShortcutOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mSourceView:Landroid/view/View;

.field private mStartDragThreshold:I

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;-><init>()V

    .line 373
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$xOrCwN7C03Xz7r31aFMUoxQC97g;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$xOrCwN7C03Xz7r31aFMUoxQC97g;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mNotificationOnClickListener:Landroid/view/View$OnClickListener;

    .line 387
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$uiC1aOgw_fKyjMoaU6huPbfW4Yc;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$uiC1aOgw_fKyjMoaU6huPbfW4Yc;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mShortcutOnClickListener:Landroid/view/View$OnClickListener;

    .line 483
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$2;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$2;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDragListener:Lcom/voxel/launcher3/dragndrop/DragController$DragListener;

    .line 500
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$3;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$3;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDragSource:Lcom/evie/common/dragndrop/DragSource;

    .line 537
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$zck-5hps8jAII1oY6Fae8d8l0P4;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$zck-5hps8jAII1oY6Fae8d8l0P4;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mShortcutOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 591
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$5;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$5;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mNotificationDismissedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/voxel/launcher3/ItemInfo;Lcom/evie/common/dragndrop/DragSource;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;-><init>()V

    .line 373
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$xOrCwN7C03Xz7r31aFMUoxQC97g;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$xOrCwN7C03Xz7r31aFMUoxQC97g;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mNotificationOnClickListener:Landroid/view/View$OnClickListener;

    .line 387
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$uiC1aOgw_fKyjMoaU6huPbfW4Yc;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$uiC1aOgw_fKyjMoaU6huPbfW4Yc;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mShortcutOnClickListener:Landroid/view/View$OnClickListener;

    .line 483
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$2;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$2;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDragListener:Lcom/voxel/launcher3/dragndrop/DragController$DragListener;

    .line 500
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$3;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$3;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDragSource:Lcom/evie/common/dragndrop/DragSource;

    .line 537
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$zck-5hps8jAII1oY6Fae8d8l0P4;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$zck-5hps8jAII1oY6Fae8d8l0P4;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mShortcutOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 591
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$5;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$5;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mNotificationDismissedReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mSourceView:Landroid/view/View;

    .line 124
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    .line 125
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mOriginalDragSource:Lcom/evie/common/dragndrop/DragSource;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mStartDragThreshold:I

    return p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)Landroid/view/View;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDeferredDragIcon:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDeferredDragIcon:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)Lcom/voxel/launcher3/dragndrop/DragController;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->notifyFragmentRequestClose()V

    return-void
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)Lcom/voxel/launcher3/ItemInfo;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)Landroid/os/Handler;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static canProperlyShow(Lcom/voxel/launcher3/ItemInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private deferDrag(Landroid/view/View;)V
    .locals 1

    .line 317
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDeferredDragIcon:Landroid/view/View;

    .line 318
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getDragController()Lcom/voxel/launcher3/dragndrop/DragController;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    .line 319
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDragListener:Lcom/voxel/launcher3/dragndrop/DragController$DragListener;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/dragndrop/DragController;->addDragListener(Lcom/voxel/launcher3/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method private deleteItem(Lcom/voxel/launcher3/ItemInfo;)V
    .locals 2

    .line 436
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->isWorkspaceOrFolderApplication(Lcom/voxel/launcher3/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0, p1}, Lcom/voxel/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    .line 438
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Launcher;->removeViewForItemInfo(Lcom/voxel/launcher3/ItemInfo;)V

    goto :goto_0

    .line 439
    :cond_0
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->isWorkspaceFolder(Lcom/voxel/launcher3/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    move-object v0, p1

    check-cast v0, Lcom/voxel/launcher3/FolderInfo;

    .line 442
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/voxel/launcher3/Launcher;->removeFolder(Lcom/voxel/launcher3/FolderInfo;)V

    .line 443
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/voxel/launcher3/Launcher;->removeViewForItemInfo(Lcom/voxel/launcher3/ItemInfo;)V

    .line 444
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1, v0}, Lcom/voxel/launcher3/LauncherModel;->deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/voxel/launcher3/FolderInfo;)V

    goto :goto_0

    .line 445
    :cond_1
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->isWorkspaceOrFolderWidget(Lcom/voxel/launcher3/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    move-object v1, p1

    check-cast v1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/Launcher;->removeAppWidget(Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V

    .line 448
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Launcher;->removeViewForItemInfo(Lcom/voxel/launcher3/ItemInfo;)V

    .line 449
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0, p1}, Lcom/voxel/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    .line 452
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getAppWidgetHost()Lcom/voxel/launcher3/LauncherAppWidgetHost;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 453
    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->isWidgetIdValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$ropvpEB7RUnr4KlqhfJHfliYp4M;

    invoke-direct {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$ropvpEB7RUnr4KlqhfJHfliYp4M;-><init>(Lcom/voxel/launcher3/LauncherAppWidgetInfo;Lcom/voxel/launcher3/LauncherAppWidgetHost;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    .line 460
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    .line 461
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_0
    return-void
.end method

.method private isDragSourceWorkspaceOrFolder(Lcom/voxel/launcher3/ItemInfo;)Z
    .locals 4

    .line 467
    iget-wide v0, p1, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isWorkspaceFolder(Lcom/voxel/launcher3/ItemInfo;)Z
    .locals 1

    .line 479
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->isDragSourceWorkspaceOrFolder(Lcom/voxel/launcher3/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lcom/voxel/launcher3/FolderInfo;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isWorkspaceOrFolderApplication(Lcom/voxel/launcher3/ItemInfo;)Z
    .locals 1

    .line 471
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->isDragSourceWorkspaceOrFolder(Lcom/voxel/launcher3/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isWorkspaceOrFolderWidget(Lcom/voxel/launcher3/ItemInfo;)Z
    .locals 1

    .line 475
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->isDragSourceWorkspaceOrFolder(Lcom/voxel/launcher3/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$deleteItem$4(Lcom/voxel/launcher3/LauncherAppWidgetInfo;Lcom/voxel/launcher3/LauncherAppWidgetHost;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "================= Widget deleted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    iget p0, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;Landroid/view/View;)V
    .locals 1

    .line 374
    check-cast p1, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    .line 375
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->getNotificationContent()Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    move-result-object p1

    .line 377
    :try_start_0
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :catch_0
    iget-boolean v0, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->autoCancel:Z

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object v0

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->notificationKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->dismissNotification(Ljava/lang/String;)V

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->runExitAnimation()V

    return-void
.end method

.method public static synthetic lambda$new$3(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;Landroid/view/View;)V
    .locals 3

    .line 391
    instance-of v0, p1, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 392
    move-object v0, p1

    check-cast v0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;

    .line 393
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mInfo:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;

    .line 394
    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mSystemShortcut:Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 397
    instance-of v2, v0, Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;

    if-eqz v2, :cond_1

    .line 398
    check-cast v0, Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v1, :cond_2

    .line 403
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/voxel/launcher3/Launcher;->onClick(Landroid/view/View;)V

    .line 405
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->dismissWithoutAnimation()V

    :cond_2
    if-nez v0, :cond_3

    .line 408
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->dismissWithoutAnimation()V

    goto :goto_1

    .line 410
    :cond_3
    sget-object p1, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$6;->$SwitchMap$com$voxel$simplesearchlauncher$popup$SystemShortcut:[I

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 423
    :pswitch_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->dismissWithoutAnimation()V

    .line 425
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->newInstance(Lcom/voxel/launcher3/ItemInfo;)Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 427
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Launcher;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    goto :goto_1

    .line 417
    :pswitch_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->runExitAnimation()V

    .line 418
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object p1

    .line 419
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mSourceView:Landroid/view/View;

    check-cast v1, Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/Workspace;->getCurrentDropLayout()Lcom/voxel/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->addResizeFrame(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/LauncherAppWidgetHostView;Lcom/voxel/launcher3/CellLayout;)V

    goto :goto_1

    .line 412
    :pswitch_2
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->runExitAnimation()V

    .line 413
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->deleteItem(Lcom/voxel/launcher3/ItemInfo;)V

    .line 414
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/voxel/launcher3/Workspace;->removeExtraEmptyScreen(ZZ)V

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$new$5(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;Landroid/view/View;)Z
    .locals 2

    .line 538
    check-cast p1, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;

    .line 540
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mInfo:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragController()Lcom/voxel/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 549
    :cond_2
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->startShortcutDrag(Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;)V

    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;Landroid/view/View;)V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->runExitAnimation()V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$1(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;Lcom/voxel/simplesearchlauncher/notification/Notifier;Ljava/util/List;Landroid/content/ComponentName;Landroid/content/Context;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/List;)V
    .locals 4

    .line 218
    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getStatusBarNotificationsForKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    .line 221
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 225
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 226
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isAtLeastO()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 228
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    .line 231
    :cond_1
    new-instance v3, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    invoke-direct {v3, p4, v2}, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_3

    .line 236
    iget-object p4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    .line 238
    invoke-virtual {p4, p3, p5, p6}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->queryForShortcutsContainer(Landroid/content/ComponentName;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object p3

    .line 237
    invoke-static {p3, v1}, Lcom/voxel/launcher3/shortcuts/ShortcutFilter;->sortAndFilterShortcuts(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 236
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    :cond_3
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mPopupContainer:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    iget-object p4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p3, p4, v0, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->updateNotifications(Landroid/os/Handler;Ljava/util/List;I)V

    .line 244
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mPopupContainer:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mUiHandler:Landroid/os/Handler;

    iget-object p4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {p1, p3, p4, p2, p7}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->updateShortcuts(Landroid/os/Handler;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private startShortcutDrag(Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;)V
    .locals 8

    .line 326
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDragListener:Lcom/voxel/launcher3/dragndrop/DragController$DragListener;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/dragndrop/DragController;->addDragListener(Lcom/voxel/launcher3/dragndrop/DragController$DragListener;)V

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->setIconVisible(Z)V

    .line 329
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 330
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->getIconCenter()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 331
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->getIconView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 333
    new-instance v7, Lcom/voxel/launcher3/dragndrop/DragOptions;

    invoke-direct {v7}, Lcom/voxel/launcher3/dragndrop/DragOptions;-><init>()V

    .line 334
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isDesktopLockedCurrently()Z

    move-result v1

    iput-boolean v1, v7, Lcom/voxel/launcher3/dragndrop/DragOptions;->isDesktopLocked:Z

    .line 335
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object v2

    .line 336
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->getIconView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDragSource:Lcom/evie/common/dragndrop/DragSource;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->getFinalInfo()Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object v5

    new-instance v6, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;

    .line 337
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->getIconView()Landroid/view/View;

    move-result-object p1

    invoke-direct {v6, p1, v0}, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;-><init>(Landroid/view/View;Landroid/graphics/Point;)V

    .line 335
    invoke-virtual/range {v2 .. v7}, Lcom/voxel/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/evie/common/dragndrop/DragSource;Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/graphics/DragPreviewProvider;Lcom/voxel/launcher3/dragndrop/DragOptions;)Lcom/voxel/launcher3/dragndrop/DragView;

    move-result-object p1

    .line 338
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Lcom/voxel/launcher3/dragndrop/DragView;->animateShiftFrom(II)V

    return-void
.end method


# virtual methods
.method public createDeferDragCondition(Ljava/lang/Runnable;)Lcom/voxel/launcher3/dragndrop/DragOptions$DeferDragCondition;
    .locals 1

    .line 348
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public dismissWithoutAnimation()V
    .locals 0

    .line 556
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->notifyFragmentWillRequestClose()V

    .line 557
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->notifyFragmentRequestClose()V

    return-void
.end method

.method public focusFragment(Z)V
    .locals 0

    return-void
.end method

.method public getItemsToPopulate(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;",
            ">;",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 254
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-eqz p3, :cond_1

    if-le v1, v4, :cond_1

    const/4 v1, 0x2

    :cond_1
    if-eqz p3, :cond_2

    .line 262
    sget-object p3, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->NOTIFICATION:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    if-ge v2, v1, :cond_3

    .line 265
    sget-object p3, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->SHORTCUT:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 268
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    .line 269
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;

    if-eqz p1, :cond_4

    .line 270
    sget-object p3, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->SYSTEM_SHORTCUT_ICON:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    goto :goto_3

    :cond_4
    sget-object p3, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->SYSTEM_SHORTCUT:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    :goto_3
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 134
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 135
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 140
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700b9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mStartDragThreshold:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0085

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mItemView:Landroid/view/View;

    .line 150
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mItemView:Landroid/view/View;

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 308
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onDetach()V

    .line 310
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDragListener:Lcom/voxel/launcher3/dragndrop/DragController$DragListener;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/dragndrop/DragController;->removeDragListener(Lcom/voxel/launcher3/dragndrop/DragController$DragListener;)V

    .line 311
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mSourceView:Landroid/view/View;

    instance-of v1, v0, Lcom/voxel/launcher3/BubbleTextView;

    if-eqz v1, :cond_0

    .line 312
    check-cast v0, Lcom/voxel/launcher3/BubbleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/BubbleTextView;->setBadgeEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onPopLauncherStackedAppearance(Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 0

    return-void
.end method

.method public onPushLauncherStackedAppearance(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 295
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onStart()V

    .line 296
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mNotificationDismissedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.evie.notification_dismissed"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 302
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onStop()V

    .line 303
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mNotificationDismissedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 14

    move-object v9, p0

    .line 156
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 160
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 162
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/Launcher;

    iput-object v0, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 163
    iget-object v0, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mBackgroundWash:Landroid/view/View;

    new-instance v1, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$ECUxpG8xO8JgDH2Tl5QuJM6QRds;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$ECUxpG8xO8JgDH2Tl5QuJM6QRds;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mSourceView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->deferDrag(Landroid/view/View;)V

    .line 166
    iget-object v0, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mSourceView:Landroid/view/View;

    instance-of v1, v0, Lcom/voxel/launcher3/BubbleTextView;

    if-eqz v1, :cond_0

    .line 167
    check-cast v0, Lcom/voxel/launcher3/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/BubbleTextView;->setBadgeEnabled(Z)V

    .line 170
    :cond_0
    iget-object v0, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    if-nez v0, :cond_1

    .line 171
    iget-object v0, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDragController:Lcom/voxel/launcher3/dragndrop/DragController;

    iget-object v1, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDragListener:Lcom/voxel/launcher3/dragndrop/DragController$DragListener;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/dragndrop/DragController;->removeDragListener(Lcom/voxel/launcher3/dragndrop/DragController$DragListener;)V

    .line 172
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->dismissWithoutAnimation()V

    return-void

    .line 176
    :cond_1
    invoke-virtual {v0}, Lcom/voxel/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move-object v6, v1

    .line 179
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 181
    iget-object v1, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mOriginalDragSource:Lcom/evie/common/dragndrop/DragSource;

    invoke-interface {v1}, Lcom/evie/common/dragndrop/DragSource;->supportsRemoveDropTarget()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    sget-object v1, Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;->REMOVE:Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_3
    iget-object v1, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mSourceView:Landroid/view/View;

    instance-of v2, v1, Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    if-eqz v2, :cond_4

    .line 185
    check-cast v1, Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 187
    sget-object v1, Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;->RESIZE:Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v0, :cond_5

    .line 191
    sget-object v0, Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;->APP_OPTIONS:Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 195
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 197
    iget-object v0, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    iget v0, v0, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    if-nez v0, :cond_6

    .line 200
    iget-object v0, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    new-instance v1, Lcom/voxel/launcher3/util/ComponentKey;

    iget-object v2, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    .line 201
    invoke-virtual {v2}, Lcom/voxel/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-object v3, v3, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-direct {v1, v2, v3}, Lcom/voxel/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 200
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->getShortcutIdsForComponentKey(Lcom/voxel/launcher3/util/ComponentKey;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v0

    iget-object v1, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    invoke-virtual {v1}, Lcom/voxel/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getNotificationKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    :cond_6
    iget-object v0, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v3

    .line 208
    invoke-virtual {p0, v7, v8, v10}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->getItemsToPopulate(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 209
    iget-object v0, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mPopupContainer:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    iget-object v2, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mSourceView:Landroid/view/View;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->populateAndShow(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$ActionHandler;Landroid/view/View;Lcom/voxel/launcher3/dragndrop/DragLayer;Ljava/util/List;I)V

    .line 212
    invoke-static {}, Lcom/voxel/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v0

    .line 213
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mUiHandler:Landroid/os/Handler;

    .line 214
    iget-object v1, v9, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-object v11, v1, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 215
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 216
    invoke-static {v5}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v2

    .line 217
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v13, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$UdkXyvZalNfhaAtNif0t0ULpyUI;

    move-object v0, v13

    move-object v1, p0

    move-object v3, v10

    move-object v4, v6

    move-object v6, v7

    move-object v7, v11

    invoke-direct/range {v0 .. v8}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$UdkXyvZalNfhaAtNif0t0ULpyUI;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;Lcom/voxel/simplesearchlauncher/notification/Notifier;Ljava/util/List;Landroid/content/ComponentName;Landroid/content/Context;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/List;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    .line 157
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public registerNotificationActions(Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mNotificationOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public registerShortcutActions(Landroid/view/View;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mShortcutOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    instance-of v0, p1, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    check-cast p1, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;

    .line 285
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mShortcutOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public runExitAnimation()V
    .locals 2

    .line 562
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->notifyFragmentWillRequestClose()V

    .line 563
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->mPopupContainer:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    new-instance v1, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$4;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$4;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->animateClose(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public unfocusFragment(Z)V
    .locals 0

    return-void
.end method
