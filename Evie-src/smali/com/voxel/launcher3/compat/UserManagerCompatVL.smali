.class public Lcom/voxel/launcher3/compat/UserManagerCompatVL;
.super Lcom/voxel/launcher3/compat/UserManagerCompatV17;
.source "UserManagerCompatVL.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/compat/UserManagerCompatV17;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    .line 43
    iput-object p1, p0, Lcom/voxel/launcher3/compat/UserManagerCompatVL;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p2, :cond_0

    return-object p1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserManagerCompatVL;->mUsers:Lcom/voxel/launcher3/util/LongArrayMap;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/voxel/launcher3/compat/UserManagerCompatVL;->mUserToSerialMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    monitor-exit p0

    return-object v0

    .line 71
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 75
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 80
    invoke-static {v2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1

    :catchall_0
    move-exception v0

    .line 71
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    return-void
.end method
