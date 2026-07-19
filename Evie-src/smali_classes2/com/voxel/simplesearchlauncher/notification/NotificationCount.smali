.class public Lcom/voxel/simplesearchlauncher/notification/NotificationCount;
.super Ljava/lang/Object;
.source "NotificationCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;
    }
.end annotation


# instance fields
.field public activityName:Ljava/lang/String;

.field public count:I

.field public packageName:Ljava/lang/String;

.field public source:Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 30
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    .line 31
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->activityName:Ljava/lang/String;

    .line 32
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->activityName:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->activityName:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid component name for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->activityName:Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->activityName:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->activityName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static fromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;)Lcom/voxel/simplesearchlauncher/notification/NotificationCount;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 47
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 52
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    check-cast p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    .line 94
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 95
    :cond_2
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->activityName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->activityName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->activityName:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->activityName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 66
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s/%s"

    const/4 v1, 0x2

    .line 84
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->activityName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
