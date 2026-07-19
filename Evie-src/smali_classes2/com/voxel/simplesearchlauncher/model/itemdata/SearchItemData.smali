.class public abstract Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;
.super Ljava/lang/Object;
.source "SearchItemData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData$ActionType;
    }
.end annotation


# instance fields
.field protected label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 57
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    .line 58
    :cond_2
    check-cast p1, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;

    .line 59
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;->getItemId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getItemId()Ljava/lang/String;
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;->label:Ljava/lang/String;

    return-object v0
.end method

.method public abstract handleAction(Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData$ActionType;Landroid/app/Activity;)V
.end method

.method public hashCode()I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;->label:Ljava/lang/String;

    const/16 v1, 0x17

    invoke-static {v1, v0}, Lcom/voxel/simplesearchlauncher/utils/HashUtil;->hash(ILjava/lang/Object;)I

    move-result v0

    .line 67
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/HashUtil;->hash(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized setLabel(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 48
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;->label:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
