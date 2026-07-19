.class public Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;
.super Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;
.source "ResetLauncherFailureFragment.java"


# instance fields
.field mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private mResetHomeActivity:Landroid/app/Activity;

.field private mResetHomeOnClose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;->mResetHomeOnClose:Z

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;->mResetHomeActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic lambda$getNegativeClickListener$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$getPositiveClickListener$1(Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;->mResetHomeOnClose:Z

    .line 72
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;->mResetHomeActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected getHeaderImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getMainText()Ljava/lang/CharSequence;
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getNegativeClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 58
    sget-object v0, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$ResetLauncherFailureFragment$0m0o1-pZGrbrDde8JgpBaTnG_wc;->INSTANCE:Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$ResetLauncherFailureFragment$0m0o1-pZGrbrDde8JgpBaTnG_wc;

    return-object v0
.end method

.method protected getNegativeText()Ljava/lang/CharSequence;
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getPositiveClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 70
    new-instance v0, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$ResetLauncherFailureFragment$rHL55wcfmpeUSbm9cPxhK8YHiNs;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$ResetLauncherFailureFragment$rHL55wcfmpeUSbm9cPxhK8YHiNs;-><init>(Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;)V

    return-object v0
.end method

.method protected getPositiveText()Ljava/lang/CharSequence;
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 37
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onFragmentDidClose()V
    .locals 2

    .line 83
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->onFragmentDidClose()V

    .line 84
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;->mResetHomeOnClose:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/ResetLauncherFailureFragment;->mResetHomeActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/voxel/simplesearchlauncher/activity/ResetLauncherActivity;->resetHome(Landroid/app/Activity;ZZ)V

    :cond_0
    return-void
.end method
