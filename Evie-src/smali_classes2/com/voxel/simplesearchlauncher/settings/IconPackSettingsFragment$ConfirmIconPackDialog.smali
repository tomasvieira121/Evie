.class public Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "IconPackSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmIconPackDialog"
.end annotation


# static fields
.field private static final ICON_PACK_LABEL_KEY:Ljava/lang/String;

.field private static final ICON_PACK_PACKAGE_NAME_KEY:Ljava/lang/String;

.field private static final ICON_PACK_VERSION_CODE_KEY:Ljava/lang/String;

.field private static final PREFIX:Ljava/lang/String;


# instance fields
.field mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 366
    const-class v0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->PREFIX:Ljava/lang/String;

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".label"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->ICON_PACK_LABEL_KEY:Ljava/lang/String;

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".package_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->ICON_PACK_PACKAGE_NAME_KEY:Ljava/lang/String;

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".version_code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->ICON_PACK_VERSION_CODE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 364
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 388
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$onCreateDialog$1(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 391
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->clearAllCustomIcons()V

    .line 392
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearCaches()V

    .line 393
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/IconCache;->flush()V

    .line 394
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    .line 395
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 396
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->notifySuccess()V

    return-void
.end method

.method public static newInstance(Lcom/voxel/simplesearchlauncher/iconpack/IconPack;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;
    .locals 3

    .line 373
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 374
    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->ICON_PACK_LABEL_KEY:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->ICON_PACK_PACKAGE_NAME_KEY:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->ICON_PACK_VERSION_CODE_KEY:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->getVersionCode()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    new-instance p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;

    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;-><init>()V

    .line 378
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->setArguments(Landroid/os/Bundle;)V

    .line 379
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    return-object p0
.end method

.method private notifySuccess()V
    .locals 4

    .line 406
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->getTargetRequestCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 386
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 387
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;->ICON_PACK_LABEL_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f120092

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 388
    sget-object v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$IconPackSettingsFragment$ConfirmIconPackDialog$521Zuv1liKk6SQ8r3p69qpfajAQ;->INSTANCE:Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$IconPackSettingsFragment$ConfirmIconPackDialog$521Zuv1liKk6SQ8r3p69qpfajAQ;

    const v2, 0x7f120093

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 390
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$IconPackSettingsFragment$ConfirmIconPackDialog$KFjk0LiRhCmd5Ur2P8CJszvQza4;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$IconPackSettingsFragment$ConfirmIconPackDialog$KFjk0LiRhCmd5Ur2P8CJszvQza4;-><init>(Lcom/voxel/simplesearchlauncher/settings/IconPackSettingsFragment$ConfirmIconPackDialog;)V

    const v2, 0x7f120094

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 398
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 401
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
