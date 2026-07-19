.class public abstract Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;
.super Ljava/lang/Object;
.source "DeepShortcutInfoCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActivity()Landroid/content/ComponentName;
.end method

.method public getActivityInfo(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;
    .locals 3

    .line 91
    new-instance v0, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;

    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract getDisabledMessage()Ljava/lang/CharSequence;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLongLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getPackage()Ljava/lang/String;
.end method

.method public abstract getRank()I
.end method

.method public abstract getShortLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;
.end method

.method public abstract isDeclaredInManifest()Z
.end method

.method public abstract isDynamic()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isPinned()Z
.end method

.method public makeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 50
    invoke-static {p1}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object p1

    .line 51
    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 52
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.launcher3.DEEP_SHORTCUT"

    .line 53
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 55
    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v2, 0x10200000

    .line 56
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v2, "profile"

    .line 57
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "shortcut_id"

    .line 58
    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
