.class public Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "HideAppsSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmHideAppDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 326
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreateDialog$0(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 339
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 340
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;->getTargetRequestCode()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onCreateDialog$1(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 346
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 347
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;->getTargetRequestCode()I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;
    .locals 1

    .line 329
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 336
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 337
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 338
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$HideAppsSettingsFragment$ConfirmHideAppDialog$jyNknLyt_RvZ9UgXZ01ecjCg4uM;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$HideAppsSettingsFragment$ConfirmHideAppDialog$jyNknLyt_RvZ9UgXZ01ecjCg4uM;-><init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;)V

    const v1, 0x7f120059

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 345
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$HideAppsSettingsFragment$ConfirmHideAppDialog$I2AkpzWXOkP6s6_04EP8DBaXd0I;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$HideAppsSettingsFragment$ConfirmHideAppDialog$I2AkpzWXOkP6s6_04EP8DBaXd0I;-><init>(Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;)V

    const v1, 0x7f12005a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 353
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 358
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;->getTargetRequestCode()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, v1, v0}, Lcom/voxel/simplesearchlauncher/settings/HideAppsSettingsFragment$ConfirmHideAppDialog;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 362
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
