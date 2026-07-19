.class public Lcom/voxel/launcher3/util/PackageUserKey;
.super Ljava/lang/Object;
.source "PackageUserKey.java"


# instance fields
.field private mHashCode:I

.field public mPackageName:Ljava/lang/String;

.field public mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method public static fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/voxel/launcher3/util/PackageUserKey;
    .locals 2

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 26
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v0

    .line 30
    :goto_0
    new-instance v1, Lcom/voxel/launcher3/util/PackageUserKey;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/voxel/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-object v1
.end method

.method private update(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 2

    .line 38
    iput-object p1, p0, Lcom/voxel/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/voxel/launcher3/util/PackageUserKey;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    const/4 v0, 0x2

    .line 40
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/util/PackageUserKey;->mHashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 62
    instance-of v0, p1, Lcom/voxel/launcher3/util/PackageUserKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    check-cast p1, Lcom/voxel/launcher3/util/PackageUserKey;

    .line 64
    iget-object v0, p0, Lcom/voxel/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/voxel/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/launcher3/util/PackageUserKey;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iget-object p1, p1, Lcom/voxel/launcher3/util/PackageUserKey;->mUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/voxel/launcher3/util/PackageUserKey;->mHashCode:I

    return v0
.end method
