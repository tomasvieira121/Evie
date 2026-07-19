.class Lcom/voxel/launcher3/IconCache$CacheKey;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/IconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheKey"
.end annotation


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public user:Lcom/voxel/launcher3/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/voxel/launcher3/IconCache$CacheKey;->componentName:Landroid/content/ComponentName;

    .line 89
    iput-object p2, p0, Lcom/voxel/launcher3/IconCache$CacheKey;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 99
    check-cast p1, Lcom/voxel/launcher3/IconCache$CacheKey;

    .line 100
    iget-object v0, p1, Lcom/voxel/launcher3/IconCache$CacheKey;->componentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/voxel/launcher3/IconCache$CacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/voxel/launcher3/IconCache$CacheKey;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iget-object v0, p0, Lcom/voxel/launcher3/IconCache$CacheKey;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/voxel/launcher3/IconCache$CacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/voxel/launcher3/IconCache$CacheKey;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v1}, Lcom/voxel/launcher3/compat/UserHandleCompat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
