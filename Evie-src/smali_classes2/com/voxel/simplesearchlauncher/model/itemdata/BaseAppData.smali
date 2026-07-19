.class public abstract Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;
.super Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;
.source "BaseAppData.java"


# instance fields
.field protected activityName:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field protected packageName:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->packageName:Ljava/lang/String;

    .line 25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->activityName:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->activityName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->packageName:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->itemId:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->activityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->itemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 59
    iget v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->versionCode:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->itemId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->activityName:Ljava/lang/String;

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->itemId:Ljava/lang/String;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->versionCode:I

    return v0
.end method

.method public declared-synchronized setVersionCode(I)V
    .locals 0

    monitor-enter p0

    .line 52
    :try_start_0
    iput p1, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
