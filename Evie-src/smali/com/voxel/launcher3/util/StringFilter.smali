.class public abstract Lcom/voxel/launcher3/util/StringFilter;
.super Ljava/lang/Object;
.source "StringFilter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/launcher3/util/StringFilter$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/voxel/launcher3/util/StringFilter;-><init>()V

    return-void
.end method

.method public static of(Ljava/util/Set;)Lcom/voxel/launcher3/util/StringFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/voxel/launcher3/util/StringFilter;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/voxel/launcher3/util/StringFilter$2;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/util/StringFilter$2;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public abstract matches(Ljava/lang/String;)Z
.end method
