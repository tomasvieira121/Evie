.class public Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment$ClearRecentsDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SearchSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearRecentsDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreateDialog$0(Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment$ClearRecentsDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment$ClearRecentsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/evie/search/local/LocalSearchManager;->getInstance(Landroid/content/Context;Z)Lcom/evie/search/local/LocalSearchManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evie/search/local/LocalSearchManager;->clearRecentItems()V

    .line 211
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment$ClearRecentsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f1200d6

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 213
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object p1

    const-string p2, "ev_settings_clear_recent_items"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 206
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment$ClearRecentsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f120098

    .line 207
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f120097

    .line 208
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 209
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SearchSettingsFragment$ClearRecentsDialogFragment$S-VImVZk0iBkjeOKwtlD9tg5AH8;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SearchSettingsFragment$ClearRecentsDialogFragment$S-VImVZk0iBkjeOKwtlD9tg5AH8;-><init>(Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment$ClearRecentsDialogFragment;)V

    const v1, 0x1040013

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x1040009

    const/4 v1, 0x0

    .line 215
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
