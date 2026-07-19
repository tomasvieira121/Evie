.class public Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;
.super Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;
.source "DeepShortcutInfoCompatV16.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field mActivity:Landroid/content/ComponentName;

.field mDisabledMessage:Ljava/lang/CharSequence;

.field mEnabled:Z

.field mIconResId:I

.field mId:Ljava/lang/String;

.field mIntent:Landroid/content/Intent;

.field mLongLabel:Ljava/lang/CharSequence;

.field mPackage:Ljava/lang/String;

.field mRank:I

.field mShortLabel:Ljava/lang/CharSequence;

.field mUserHandle:Lcom/voxel/launcher3/compat/UserHandleCompat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/content/ComponentName;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getActivityInfo(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;
    .locals 3

    .line 133
    new-instance v0, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;

    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->getUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/voxel/launcher3/compat/DeferredLauncherActivityInfo;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;Landroid/content/Context;)V

    return-object v0
.end method

.method public getDisabledMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mLongLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mRank:I

    return v0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mShortLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mUserHandle:Lcom/voxel/launcher3/compat/UserHandleCompat;

    return-object v0
.end method

.method public isDeclaredInManifest()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDynamic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mEnabled:Z

    return v0
.end method

.method public isPinned()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public makeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 56
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object p1
.end method
