.class public Lcom/voxel/launcher3/compat/UserHandleCompat;
.super Ljava/lang/Object;
.source "UserHandleCompat.java"


# instance fields
.field private mUser:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/UserHandle;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/voxel/launcher3/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    return-void
.end method

.method public static fromUser(Landroid/os/UserHandle;)Lcom/voxel/launcher3/compat/UserHandleCompat;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_0
    new-instance v0, Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/compat/UserHandleCompat;-><init>(Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public static myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;
    .locals 2

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 37
    new-instance v0, Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/launcher3/compat/UserHandleCompat;-><init>(Landroid/os/UserHandle;)V

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-direct {v0}, Lcom/voxel/launcher3/compat/UserHandleCompat;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addToIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 66
    instance-of v0, p1, Lcom/voxel/launcher3/compat/UserHandleCompat;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 69
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    check-cast p1, Lcom/voxel/launcher3/compat/UserHandleCompat;

    iget-object p1, p1, Lcom/voxel/launcher3/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/voxel/launcher3/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
