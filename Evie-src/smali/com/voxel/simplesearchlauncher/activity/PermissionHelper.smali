.class public Lcom/voxel/simplesearchlauncher/activity/PermissionHelper;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;
    }
.end annotation


# instance fields
.field private final mCallRequestCode:I

.field private mPendingCallIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper;->mCallRequestCode:I

    return-void
.end method


# virtual methods
.method public checkIntentPermission(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 2

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.CALL"

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.CALL_PHONE"

    .line 43
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget v0, p0, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper;->mCallRequestCode:I

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;->newInstance(I)Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v1, "dialog"

    invoke-virtual {v0, p1, v1}, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper$CallPermissionDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 47
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper;->mPendingCallIntent:Landroid/content/Intent;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public handleRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)Z
    .locals 2

    .line 54
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper;->mPendingCallIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper;->mPendingCallIntent:Landroid/content/Intent;

    .line 56
    iget v0, p0, Lcom/voxel/simplesearchlauncher/activity/PermissionHelper;->mCallRequestCode:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 58
    array-length p2, p4

    if-lez p2, :cond_0

    aget p2, p4, v1

    if-nez p2, :cond_0

    .line 60
    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
