.class public Lcom/voxel/launcher3/compat/UserManagerCompatV17;
.super Lcom/voxel/launcher3/compat/UserManagerCompatV16;
.source "UserManagerCompatV17.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# instance fields
.field protected mUserManager:Landroid/os/UserManager;

.field protected mUserToSerialMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mUsers:Lcom/voxel/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/voxel/launcher3/util/LongArrayMap<",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/UserManagerCompatV16;-><init>()V

    const-string v0, "user"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/voxel/launcher3/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J
    .locals 2

    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserManagerCompatV17;->mUserToSerialMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserManagerCompatV17;->mUserToSerialMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    monitor-exit p0

    return-wide v0

    .line 49
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception p1

    .line 49
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getUserForSerialNumber(J)Lcom/voxel/launcher3/compat/UserHandleCompat;
    .locals 1

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserManagerCompatV17;->mUsers:Lcom/voxel/launcher3/util/LongArrayMap;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserManagerCompatV17;->mUsers:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/compat/UserHandleCompat;

    monitor-exit p0

    return-object p1

    .line 58
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 58
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
