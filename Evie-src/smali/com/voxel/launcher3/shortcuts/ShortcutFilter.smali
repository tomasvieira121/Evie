.class public Lcom/voxel/launcher3/shortcuts/ShortcutFilter;
.super Ljava/lang/Object;
.source "ShortcutFilter.java"


# static fields
.field private static final RANK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Lcom/voxel/launcher3/shortcuts/-$$Lambda$ShortcutFilter$BWyIAD9t6_8duwpy_NaBzY7H5oQ;->INSTANCE:Lcom/voxel/launcher3/shortcuts/-$$Lambda$ShortcutFilter$BWyIAD9t6_8duwpy_NaBzY7H5oQ;

    sput-object v0, Lcom/voxel/launcher3/shortcuts/ShortcutFilter;->RANK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic lambda$static$0(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;)I
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getRank()I

    move-result p0

    invoke-virtual {p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getRank()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static sortAndFilterShortcuts(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 61
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 62
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    invoke-virtual {v1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 69
    :cond_1
    sget-object p1, Lcom/voxel/launcher3/shortcuts/ShortcutFilter;->RANK_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_2

    return-object p0

    .line 76
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    .line 80
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v0, :cond_3

    .line 84
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v4}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 92
    :cond_3
    invoke-virtual {v4}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    if-ge v3, v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v5, v3

    .line 95
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object p1
.end method
