.class public Lcom/voxel/launcher3/FragmentHelper;
.super Ljava/lang/Object;
.source "FragmentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/FragmentHelper$PendingPopFragmentInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentHelper"


# instance fields
.field private final mActivity:Landroidx/fragment/app/FragmentActivity;

.field private mClosingStackableFragments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLockedSaveState:Z

.field private mPendingPopFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/FragmentHelper$PendingPopFragmentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mClosingStackableFragments:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mPendingPopFragments:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/voxel/launcher3/FragmentHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public closeAllFragments()V
    .locals 5

    .line 223
    invoke-virtual {p0}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 226
    iget-boolean v1, p0, Lcom/voxel/launcher3/FragmentHelper;->mIsLockedSaveState:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 227
    sget-object v1, Lcom/voxel/launcher3/FragmentHelper;->TAG:Ljava/lang/String;

    const-string v3, "Saving fragment to be popped on resume."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/voxel/launcher3/FragmentHelper;->mPendingPopFragments:Ljava/util/List;

    new-instance v3, Lcom/voxel/launcher3/FragmentHelper$PendingPopFragmentInfo;

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentAt(I)Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/voxel/launcher3/FragmentHelper$PendingPopFragmentInfo;-><init>(Lcom/voxel/launcher3/FragmentHelper;Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    :cond_0
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentAt(I)Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/voxel/launcher3/FragmentHelper;->popStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCurrentStackFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentAt(I)Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    move-result-object v0

    return-object v0
.end method

.method public getStackFragmentAt(I)Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/FragmentHelper;->getTagForBackStackIndex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    :cond_1
    return-object v0
.end method

.method public getStackFragmentCount()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    return v0
.end method

.method public getTagForBackStackIndex(I)Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backstack_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mIsLockedSaveState:Z

    .line 192
    iget-object v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mPendingPopFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mPendingPopFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/FragmentHelper$PendingPopFragmentInfo;

    .line 194
    iget-object v2, v1, Lcom/voxel/launcher3/FragmentHelper$PendingPopFragmentInfo;->fragment:Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    iget-boolean v1, v1, Lcom/voxel/launcher3/FragmentHelper$PendingPopFragmentInfo;->animate:Z

    invoke-virtual {p0, v2, v1}, Lcom/voxel/launcher3/FragmentHelper;->popStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mPendingPopFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 202
    invoke-virtual {p0}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentCount()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_2

    .line 205
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentAt(I)Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->canSaveInstanceState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 208
    iget-object v1, p0, Lcom/voxel/launcher3/FragmentHelper;->mPendingPopFragments:Ljava/util/List;

    new-instance v2, Lcom/voxel/launcher3/FragmentHelper$PendingPopFragmentInfo;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentAt(I)Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    move-result-object v4

    invoke-direct {v2, p0, v4, v3}, Lcom/voxel/launcher3/FragmentHelper$PendingPopFragmentInfo;-><init>(Lcom/voxel/launcher3/FragmentHelper;Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    :cond_0
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentAt(I)Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/voxel/launcher3/FragmentHelper;->popStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 214
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/voxel/launcher3/FragmentHelper;->mClosingStackableFragments:Ljava/util/Set;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    .line 216
    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/FragmentHelper;->onStackableFragmentRequestClose(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    goto :goto_2

    .line 219
    :cond_3
    iput-boolean v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mIsLockedSaveState:Z

    return-void
.end method

.method public onStackableFragmentRequestClose(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V
    .locals 3

    .line 134
    sget-object v0, Lcom/voxel/launcher3/FragmentHelper;->TAG:Ljava/lang/String;

    const-string v1, "onStackableFragmentRequestClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mClosingStackableFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-boolean v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mIsLockedSaveState:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/voxel/launcher3/FragmentHelper;->TAG:Ljava/lang/String;

    const-string v2, "Saving fragment to be popped on resume."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mPendingPopFragments:Ljava/util/List;

    new-instance v2, Lcom/voxel/launcher3/FragmentHelper$PendingPopFragmentInfo;

    invoke-direct {v2, p0, p1, v1}, Lcom/voxel/launcher3/FragmentHelper$PendingPopFragmentInfo;-><init>(Lcom/voxel/launcher3/FragmentHelper;Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "onStackableFragmentRequestClose invoked while locked in Save State mode."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/voxel/launcher3/FragmentHelper;->popStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStackableFragmentWillRequestClose(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V
    .locals 5

    .line 107
    sget-object v0, Lcom/voxel/launcher3/FragmentHelper;->TAG:Ljava/lang/String;

    const-string v1, "onStackableFragmentWillRequestClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mClosingStackableFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->getBackStackIndex()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentAt(I)Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->requiresFullScreen()Z

    move-result v2

    .line 118
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->getRequestCode()I

    move-result v3

    .line 119
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->getResultCode()I

    move-result v4

    .line 120
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->getResultIntent()Landroid/content/Intent;

    move-result-object p1

    .line 117
    invoke-virtual {v0, v3, v4, p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onStackableFragmentResult(IILandroid/content/Intent;)V

    .line 121
    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->focusFragment(Z)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onPopLauncherStackedAppearance(Landroidx/fragment/app/FragmentActivity;Z)V

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 127
    iget-object p1, p0, Lcom/voxel/launcher3/FragmentHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    instance-of v0, p1, Lcom/voxel/launcher3/Launcher;

    if-eqz v0, :cond_1

    .line 128
    check-cast p1, Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->showSpecialFragments()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mIsLockedSaveState:Z

    return-void
.end method

.method public popStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V
    .locals 4

    .line 148
    sget-object v0, Lcom/voxel/launcher3/FragmentHelper;->TAG:Ljava/lang/String;

    const-string v1, "popStackFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 150
    iget-boolean v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mIsLockedSaveState:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->getBackStackIndex()I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/voxel/launcher3/FragmentHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 157
    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 158
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 163
    :try_start_0
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->getBackStackIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/voxel/launcher3/FragmentHelper;->getTagForBackStackIndex(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 165
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    sub-int/2addr v0, v3

    .line 172
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentAt(I)Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->focusFragment(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v0, p2}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onPopLauncherStackedAppearance(Landroidx/fragment/app/FragmentActivity;Z)V

    .line 182
    iget-object p1, p0, Lcom/voxel/launcher3/FragmentHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    instance-of p2, p1, Lcom/voxel/launcher3/Launcher;

    if-eqz p2, :cond_2

    .line 183
    check-cast p1, Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->showSpecialFragments()V

    :catch_0
    :cond_2
    :goto_0
    return-void

    :catch_1
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public pushStackFragment(ILcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V
    .locals 2

    if-eqz p2, :cond_4

    .line 49
    iget-boolean v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mIsLockedSaveState:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentAt(I)Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    instance-of v1, v0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;

    if-eqz v1, :cond_2

    .line 57
    check-cast v0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onPushLauncherStackedAppearance(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->unfocusFragment(Z)V

    .line 63
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->setBackStackIndex(I)V

    .line 64
    iget-object v0, p0, Lcom/voxel/launcher3/FragmentHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/FragmentHelper;->getTagForBackStackIndex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 67
    invoke-virtual {p0}, Lcom/voxel/launcher3/FragmentHelper;->getStackFragmentCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/voxel/launcher3/FragmentHelper;->getTagForBackStackIndex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 68
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 70
    iget-object p1, p0, Lcom/voxel/launcher3/FragmentHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 72
    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->requiresFullScreen()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/voxel/launcher3/FragmentHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    instance-of p2, p1, Lcom/voxel/launcher3/Launcher;

    if-eqz p2, :cond_3

    .line 73
    check-cast p1, Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->hideSpecialFragments()V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method
