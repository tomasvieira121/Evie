.class final Lcom/voxel/launcher3/util/ItemInfoMatcher$1;
.super Lcom/voxel/launcher3/util/ItemInfoMatcher;
.source "ItemInfoMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/util/ItemInfoMatcher;->ofComponents(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/util/ItemInfoMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$components:Ljava/util/HashSet;

.field final synthetic val$user:Lcom/voxel/launcher3/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/voxel/launcher3/util/ItemInfoMatcher$1;->val$components:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/voxel/launcher3/util/ItemInfoMatcher$1;->val$user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-direct {p0}, Lcom/voxel/launcher3/util/ItemInfoMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/voxel/launcher3/util/ItemInfoMatcher$1;->val$components:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iget-object p2, p0, Lcom/voxel/launcher3/util/ItemInfoMatcher$1;->val$user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
