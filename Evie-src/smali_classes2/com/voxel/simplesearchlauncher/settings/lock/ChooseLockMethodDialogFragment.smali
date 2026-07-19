.class public Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ChooseLockMethodDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;,
        Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChooseLockMethodDialogFragment"


# instance fields
.field private dismissOnResume:Z

.field private mDeviceAdminComponentName:Landroid/content/ComponentName;

.field private mGestureType:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

.field private mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreateDialog$0(Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const p2, 0x7f12017e

    const p3, 0x7f12002c

    const/4 p4, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p5, v1

    if-nez v3, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    const-string p6, "device_policy"

    invoke-virtual {p5, p6}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/admin/DevicePolicyManager;

    .line 118
    iget-object p6, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {p5, p6}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 121
    new-instance p5, Landroid/content/Intent;

    const-string p6, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {p5, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p6, "android.app.extra.DEVICE_ADMIN"

    .line 122
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {p5, p6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    :try_start_0
    iput-boolean p4, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->dismissOnResume:Z

    .line 125
    invoke-virtual {p0, p5, p4}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_0

    :catch_0
    move-exception p3

    .line 130
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-static {p4, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 131
    sget-object p2, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Launcher does not have the permission to launch "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p6, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity.  intent="

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 127
    :catch_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    .line 128
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 139
    :cond_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->mGestureType:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    sget-object p4, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->SCREEN_LOCK_DEVICE_ADMIN:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {p2, p3, p4}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V

    .line 140
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->dismiss()V

    goto/16 :goto_0

    :cond_1
    const-wide/16 v1, 0x1

    cmp-long v3, p5, v1

    if-nez v3, :cond_3

    .line 145
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x17

    if-lt p5, p6, :cond_2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p5

    if-nez p5, :cond_2

    .line 146
    new-instance p5, Landroid/content/Intent;

    const-string p6, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {p5, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p6

    invoke-virtual {p5, p6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 149
    :try_start_1
    iput-boolean p4, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->dismissOnResume:Z

    const/4 p4, 0x2

    .line 150
    invoke-virtual {p0, p5, p4}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    :catch_2
    move-exception p3

    .line 155
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-static {p4, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 156
    sget-object p2, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Launcher does not have the permission to launch "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p6, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity.  intent="

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 152
    :catch_3
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    .line 153
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 164
    :cond_2
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->mGestureType:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    sget-object p4, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->SCREEN_LOCK_WRITE_SETTINGS:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {p2, p3, p4}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V

    .line 165
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->dismiss()V

    .line 169
    :catch_4
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 175
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static newInstance(Lcom/voxel/simplesearchlauncher/gestures/GestureType;)Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;
    .locals 3

    .line 63
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;-><init>()V

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "gesture"

    .line 65
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 192
    iput-boolean p3, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->dismissOnResume:Z

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 194
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->mGestureType:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    sget-object p3, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->SCREEN_LOCK_DEVICE_ADMIN:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {p1, p2, p3}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 197
    iput-boolean p3, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->dismissOnResume:Z

    .line 199
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p3

    :cond_1
    if-eqz p3, :cond_2

    .line 203
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->mGestureType:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    sget-object p3, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->SCREEN_LOCK_WRITE_SETTINGS:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {p1, p2, p3}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setActionForGestureType(Lcom/voxel/simplesearchlauncher/gestures/GestureType;Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "gesture"

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/gestures/GestureType;->valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->mGestureType:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->mGestureType:Lcom/voxel/simplesearchlauncher/gestures/GestureType;

    if-nez p1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 93
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    .line 94
    new-instance p1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/voxel/simplesearchlauncher/receiver/DeviceAdminReceiverSub;

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    .line 96
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0046

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v2, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;

    const/4 v3, 0x0

    const v4, 0x7f120050

    const v5, 0x7f12003d

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;-><init>(Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v2, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;

    const/4 v3, 0x1

    const v4, 0x7f120052

    const v5, 0x7f120051

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;-><init>(Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v2, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogAdapter;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, p0, v4, v1}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogAdapter;-><init>(Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;Landroid/content/Context;Ljava/util/List;)V

    const v1, 0x7f0a0180

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 111
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 113
    new-instance v4, Lcom/voxel/simplesearchlauncher/settings/lock/-$$Lambda$ChooseLockMethodDialogFragment$UnjA1DAifX3_AWjZHN0cLR-2RSk;

    invoke-direct {v4, p0, v2}, Lcom/voxel/simplesearchlauncher/settings/lock/-$$Lambda$ChooseLockMethodDialogFragment$UnjA1DAifX3_AWjZHN0cLR-2RSk;-><init>(Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogAdapter;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v1, 0x7f12004d

    .line 172
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/lock/-$$Lambda$ChooseLockMethodDialogFragment$p2kheynMaE5Y8Y0WgzB-qyo-bVo;->INSTANCE:Lcom/voxel/simplesearchlauncher/settings/lock/-$$Lambda$ChooseLockMethodDialogFragment$p2kheynMaE5Y8Y0WgzB-qyo-bVo;

    const v2, 0x7f1200de

    .line 175
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 210
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->getTargetRequestCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 181
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 183
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->dismissOnResume:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method
