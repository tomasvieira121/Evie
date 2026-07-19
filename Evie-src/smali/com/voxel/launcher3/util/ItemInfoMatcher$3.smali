.class final Lcom/voxel/launcher3/util/ItemInfoMatcher$3;
.super Lcom/voxel/launcher3/util/ItemInfoMatcher;
.source "ItemInfoMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/util/ItemInfoMatcher;->ofShortcutKeys(Ljava/util/HashSet;)Lcom/voxel/launcher3/util/ItemInfoMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$keys:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/voxel/launcher3/util/ItemInfoMatcher$3;->val$keys:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/voxel/launcher3/util/ItemInfoMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 1

    .line 61
    iget p2, p1, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/voxel/launcher3/util/ItemInfoMatcher$3;->val$keys:Ljava/util/HashSet;

    check-cast p1, Lcom/voxel/launcher3/ShortcutInfo;

    .line 62
    invoke-static {p1}, Lcom/voxel/launcher3/shortcuts/ShortcutKey;->fromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;)Lcom/voxel/launcher3/shortcuts/ShortcutKey;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
