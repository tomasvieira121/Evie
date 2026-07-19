.class public Lcom/voxel/launcher3/CheckLongPressHelper;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mHasPerformedLongPress:Z

.field private mPendingCheckForLongPress:Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/voxel/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/CheckLongPressHelper;)Landroid/view/View;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/voxel/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/CheckLongPressHelper;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/voxel/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return p0
.end method

.method static synthetic access$102(Lcom/voxel/launcher3/CheckLongPressHelper;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/voxel/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return p1
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 2

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/voxel/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 54
    iget-object v0, p0, Lcom/voxel/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/voxel/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/voxel/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;

    :cond_0
    return-void
.end method

.method public hasPerformedLongPress()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/voxel/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return v0
.end method

.method public postCheckForLongPress()V
    .locals 4

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/voxel/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 45
    iget-object v0, p0, Lcom/voxel/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;-><init>(Lcom/voxel/launcher3/CheckLongPressHelper;)V

    iput-object v0, p0, Lcom/voxel/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/voxel/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/voxel/launcher3/CheckLongPressHelper$CheckForLongPress;

    .line 49
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherAppState;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 48
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
