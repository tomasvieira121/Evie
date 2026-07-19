.class public final Lcom/voxel/simplesearchlauncher/utils/HashUtil;
.super Ljava/lang/Object;
.source "HashUtil.java"


# direct methods
.method private static firstTerm(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static hash(II)I
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/utils/HashUtil;->firstTerm(I)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static hash(ILjava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 57
    invoke-static {p0, v0}, Lcom/voxel/simplesearchlauncher/utils/HashUtil;->hash(II)I

    move-result p0

    return p0

    .line 59
    :cond_0
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/utils/HashUtil;->isArray(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/voxel/simplesearchlauncher/utils/HashUtil;->hash(II)I

    move-result p0

    return p0

    .line 63
    :cond_1
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 65
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_2

    .line 67
    invoke-static {p0, v2}, Lcom/voxel/simplesearchlauncher/utils/HashUtil;->hash(ILjava/lang/Object;)I

    move-result p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p0
.end method

.method private static isArray(Ljava/lang/Object;)Z
    .locals 0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    return p0
.end method
