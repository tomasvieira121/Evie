.class public Lcom/voxel/launcher3/compat/UserManagerCompatVN;
.super Lcom/voxel/launcher3/compat/UserManagerCompatVM;
.source "UserManagerCompatVN.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/compat/UserManagerCompatVM;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isQuietModeEnabled(Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserManagerCompatVN;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public isUserUnlocked(Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
    .locals 4

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserManagerCompatVN;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/compat/UserManagerCompatVN;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/compat/UserManagerCompatVN;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
