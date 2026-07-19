.class public Lcom/voxel/launcher3/util/LongArrayMap;
.super Landroid/util/LongSparseArray;
.source "LongArrayMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/util/LongArrayMap$ValueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/LongSparseArray<",
        "TE;>;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/util/LongSparseArray;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/voxel/launcher3/util/LongArrayMap;->clone()Lcom/voxel/launcher3/util/LongArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/voxel/launcher3/util/LongArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/voxel/launcher3/util/LongArrayMap<",
            "TE;>;"
        }
    .end annotation

    .line 38
    invoke-super {p0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/voxel/launcher3/util/LongArrayMap;->clone()Lcom/voxel/launcher3/util/LongArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(J)Z
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/util/LongArrayMap;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/voxel/launcher3/util/LongArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/voxel/launcher3/util/LongArrayMap$ValueIterator;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/util/LongArrayMap$ValueIterator;-><init>(Lcom/voxel/launcher3/util/LongArrayMap;)V

    return-object v0
.end method
