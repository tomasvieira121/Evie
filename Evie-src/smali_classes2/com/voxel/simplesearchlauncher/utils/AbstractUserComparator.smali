.class public abstract Lcom/voxel/simplesearchlauncher/utils/AbstractUserComparator;
.super Ljava/lang/Object;
.source "AbstractUserComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/voxel/launcher3/ItemInfo;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mMyUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

.field private final mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/AbstractUserComparator;->mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

    .line 36
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/AbstractUserComparator;->mMyUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    return-void
.end method


# virtual methods
.method public compare(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/AbstractUserComparator;->mMyUser:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iget-object v1, p1, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/AbstractUserComparator;->mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

    iget-object p1, p1, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/AbstractUserComparator;->mUserManager:Lcom/voxel/launcher3/compat/UserManagerCompat;

    iget-object p2, p2, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, p2}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/voxel/launcher3/ItemInfo;

    check-cast p2, Lcom/voxel/launcher3/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/utils/AbstractUserComparator;->compare(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;)I

    move-result p1

    return p1
.end method
