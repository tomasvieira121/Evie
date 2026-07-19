.class public Lcom/voxel/simplesearchlauncher/fragment/LauncherRestoredFragment;
.super Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;
.source "LauncherRestoredFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getNegativeClickListener$0(Lcom/voxel/simplesearchlauncher/fragment/LauncherRestoredFragment;Landroid/view/View;)V
    .locals 2

    .line 40
    new-instance p1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherRestoredFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;-><init>(Landroid/app/Activity;)V

    .line 41
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherRestoredFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "undo_restore.zip"

    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->restoreFromLocalBackup(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 42
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->deconstruct()V

    return-void
.end method

.method static synthetic lambda$getPositiveClickListener$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected getHeaderImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 28
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherRestoredFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getMainText()Ljava/lang/CharSequence;
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherRestoredFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getNegativeClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 39
    new-instance v0, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$LauncherRestoredFragment$zM5RMwN4any_vKrm9GCOZVDYstQ;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$LauncherRestoredFragment$zM5RMwN4any_vKrm9GCOZVDYstQ;-><init>(Lcom/voxel/simplesearchlauncher/fragment/LauncherRestoredFragment;)V

    return-object v0
.end method

.method protected getNegativeText()Ljava/lang/CharSequence;
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherRestoredFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getPositiveClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 54
    sget-object v0, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$LauncherRestoredFragment$AjB4le9gGdZ3hnzF1nWxcFAM60A;->INSTANCE:Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$LauncherRestoredFragment$AjB4le9gGdZ3hnzF1nWxcFAM60A;

    return-object v0
.end method

.method protected getPositiveText()Ljava/lang/CharSequence;
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherRestoredFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onFragmentDidClose()V
    .locals 0

    .line 65
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->onFragmentDidClose()V

    return-void
.end method
