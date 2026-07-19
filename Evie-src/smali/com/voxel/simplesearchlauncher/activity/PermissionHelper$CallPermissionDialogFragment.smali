.class public Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;
.super Landroid/app/DialogFragment;
.source "PermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/activity/PermissionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallPermissionDialogFragment"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;

.field private static final REQUEST_CODE_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    const-class v0, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;->PREFIX:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".request_code_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;->REQUEST_CODE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreateDialog$0(Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;ILandroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "android.permission.CALL_PHONE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 102
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$1(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 105
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$2(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 107
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public static newInstance(I)Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;
    .locals 2

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    sget-object v1, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;->REQUEST_CODE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    new-instance p0, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;

    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;-><init>()V

    .line 77
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 84
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;->REQUEST_CODE_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 85
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0048

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0203

    .line 87
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f0a01b7

    .line 88
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f0a00a0

    .line 89
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f12019a

    .line 90
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(I)V

    const v6, 0x7f120199

    .line 91
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 94
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    new-instance v1, Lcom/voxel/simplesearchlauncher/activity/-$$Lambda$PermissionHelper$CallPermissionDialogFragment$IbcQZMl9o9lgGthdqvZVNv-ZeOo;

    invoke-direct {v1, p0, p1, v0}, Lcom/voxel/simplesearchlauncher/activity/-$$Lambda$PermissionHelper$CallPermissionDialogFragment$IbcQZMl9o9lgGthdqvZVNv-ZeOo;-><init>(Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;ILandroid/app/Dialog;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance p1, Lcom/voxel/simplesearchlauncher/activity/-$$Lambda$PermissionHelper$CallPermissionDialogFragment$KrolzV54IHoHxupT1t0kPVqQF4E;

    invoke-direct {p1, v0}, Lcom/voxel/simplesearchlauncher/activity/-$$Lambda$PermissionHelper$CallPermissionDialogFragment$KrolzV54IHoHxupT1t0kPVqQF4E;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance p1, Lcom/voxel/simplesearchlauncher/activity/-$$Lambda$PermissionHelper$CallPermissionDialogFragment$T_hQABFR4sfKlPdRYbGcr7rB-rc;

    invoke-direct {p1, v0}, Lcom/voxel/simplesearchlauncher/activity/-$$Lambda$PermissionHelper$CallPermissionDialogFragment$T_hQABFR4sfKlPdRYbGcr7rB-rc;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
