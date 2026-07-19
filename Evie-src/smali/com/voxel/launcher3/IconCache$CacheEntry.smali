.class Lcom/voxel/launcher3/IconCache$CacheEntry;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/IconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheEntry"
.end annotation


# instance fields
.field public contentDescription:Ljava/lang/CharSequence;

.field public icon:Landroid/graphics/Bitmap;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/launcher3/IconCache$1;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/voxel/launcher3/IconCache$CacheEntry;-><init>()V

    return-void
.end method
