.class final Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;
.super Lcom/voxel/launcher3/util/ComponentKey;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WidgetCacheKey"
.end annotation


# instance fields
.field final size:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/lang/String;)V
    .locals 0

    .line 651
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 652
    iput-object p3, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 662
    invoke-super {p0, p1}, Lcom/voxel/launcher3/util/ComponentKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    iget-object p1, p1, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 657
    invoke-super {p0}, Lcom/voxel/launcher3/util/ComponentKey;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
