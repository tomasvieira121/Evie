.class public Lcom/voxel/simplesearchlauncher/lock/LockOverlayActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "LockOverlayActivity.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;


# instance fields
.field private mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0062

    .line 23
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayActivity;->setContentView(I)V

    .line 24
    new-instance p1, Lcom/voxel/launcher3/FragmentHelper;

    invoke-direct {p1, p0}, Lcom/voxel/launcher3/FragmentHelper;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayActivity;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    return-void
.end method

.method public onStackableFragmentRequestClose(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayActivity;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/FragmentHelper;->onStackableFragmentRequestClose(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    .line 53
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayActivity;->finish()V

    return-void
.end method

.method public onStackableFragmentWillRequestClose(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayActivity;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/FragmentHelper;->onStackableFragmentWillRequestClose(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 30
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 31
    new-instance v0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayActivity;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    return-void
.end method

.method public popStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayActivity;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/FragmentHelper;->popStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V

    return-void
.end method

.method public providesTransitionAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayActivity;->mFragmentHelper:Lcom/voxel/launcher3/FragmentHelper;

    const v1, 0x7f0a00ae

    invoke-virtual {v0, v1, p1}, Lcom/voxel/launcher3/FragmentHelper;->pushStackFragment(ILcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    return-void
.end method
