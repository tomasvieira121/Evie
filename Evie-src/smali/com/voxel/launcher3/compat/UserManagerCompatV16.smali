.class public Lcom/voxel/launcher3/compat/UserManagerCompatV16;
.super Lcom/voxel/launcher3/compat/UserManagerCompat;
.source "UserManagerCompatV16.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/UserManagerCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;
    .locals 0

    return-object p1
.end method

.method public getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;
    .locals 0

    return-object p1
.end method

.method public getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUserForSerialNumber(J)Lcom/voxel/launcher3/compat/UserHandleCompat;
    .locals 0

    .line 36
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    return-object p1
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isQuietModeEnabled(Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isUserUnlocked(Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
