.class public Lcom/voxel/launcher3/util/ComponentKey;
.super Ljava/lang/Object;
.source "ComponentKey.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field private final mHashCode:I

.field public final user:Lcom/voxel/launcher3/compat/UserHandleCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/voxel/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 38
    iput-object p2, p0, Lcom/voxel/launcher3/util/ComponentKey;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/util/ComponentKey;->mHashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 82
    check-cast p1, Lcom/voxel/launcher3/util/ComponentKey;

    .line 83
    iget-object v0, p1, Lcom/voxel/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/voxel/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/voxel/launcher3/util/ComponentKey;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iget-object v0, p0, Lcom/voxel/launcher3/util/ComponentKey;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

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
    .locals 1

    .line 77
    iget v0, p0, Lcom/voxel/launcher3/util/ComponentKey;->mHashCode:I

    return v0
.end method
