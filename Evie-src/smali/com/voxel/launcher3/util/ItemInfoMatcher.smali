.class public abstract Lcom/voxel/launcher3/util/ItemInfoMatcher;
.super Ljava/lang/Object;
.source "ItemInfoMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ofComponents(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/util/ItemInfoMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")",
            "Lcom/voxel/launcher3/util/ItemInfoMatcher;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/voxel/launcher3/util/ItemInfoMatcher$1;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/util/ItemInfoMatcher$1;-><init>(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-object v0
.end method

.method public static ofPackages(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/util/ItemInfoMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")",
            "Lcom/voxel/launcher3/util/ItemInfoMatcher;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/voxel/launcher3/util/ItemInfoMatcher$2;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/util/ItemInfoMatcher$2;-><init>(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-object v0
.end method

.method public static ofShortcutKeys(Ljava/util/HashSet;)Lcom/voxel/launcher3/util/ItemInfoMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/voxel/launcher3/shortcuts/ShortcutKey;",
            ">;)",
            "Lcom/voxel/launcher3/util/ItemInfoMatcher;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/voxel/launcher3/util/ItemInfoMatcher$3;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/util/ItemInfoMatcher$3;-><init>(Ljava/util/HashSet;)V

    return-object v0
.end method


# virtual methods
.method public abstract matches(Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
.end method
