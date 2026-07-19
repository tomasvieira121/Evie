.class public Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;
.super Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;
.source "DeepShortcutInfoCompatVNMr1.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x19
.end annotation


# instance fields
.field private mShortcutInfo:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ShortcutInfo;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/content/ComponentName;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getActivityInfo(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;
    .locals 3

    .line 146
    new-instance v0, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;

    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->getUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;Landroid/content/Context;)V

    return-object v0
.end method

.method public getDisabledMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    return v0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public getUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method

.method public isDeclaredInManifest()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    return v0
.end method

.method public isDynamic()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    return v0
.end method

.method public makeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 55
    invoke-static {p1}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->getUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 57
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.launcher3.DEEP_SHORTCUT"

    .line 58
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v2, 0x10200000

    .line 61
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v2, "profile"

    .line 62
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "shortcut_id"

    .line 63
    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatVNMr1;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
