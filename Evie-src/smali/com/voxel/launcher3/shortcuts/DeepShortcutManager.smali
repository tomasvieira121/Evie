.class public abstract Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;
.super Ljava/lang/Object;
.source "DeepShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/shortcuts/DeepShortcutManager$ShortcutHostPermissionChangedListener;
    }
.end annotation


# instance fields
.field protected final mDeepShortcutIdsMap:Lcom/voxel/launcher3/util/MultiHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/voxel/launcher3/util/MultiHashMap<",
            "Lcom/voxel/launcher3/util/ComponentKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/voxel/launcher3/util/MultiHashMap;

    invoke-direct {v0}, Lcom/voxel/launcher3/util/MultiHashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->mDeepShortcutIdsMap:Lcom/voxel/launcher3/util/MultiHashMap;

    return-void
.end method


# virtual methods
.method public abstract addPermissionListener(Lcom/voxel/launcher3/shortcuts/DeepShortcutManager$ShortcutHostPermissionChangedListener;)V
.end method

.method public abstract finishStartup()V
.end method

.method public abstract getShortcutIconDrawable(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;I)Landroid/graphics/drawable/Drawable;
.end method

.method public getShortcutIdsForComponentKey(Lcom/voxel/launcher3/util/ComponentKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/util/ComponentKey;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->mDeepShortcutIdsMap:Lcom/voxel/launcher3/util/MultiHashMap;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/util/MultiHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public abstract pinShortcut(Lcom/voxel/launcher3/shortcuts/ShortcutKey;)V
.end method

.method public abstract queryForFullDetails(Ljava/lang/String;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryForPinnedShortcuts(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryForShortcutsContainer(Landroid/content/ComponentName;Ljava/util/List;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refreshShortcutsIfRequired()V
.end method

.method public abstract startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
.end method

.method public abstract unpinShortcut(Lcom/voxel/launcher3/shortcuts/ShortcutKey;)V
.end method

.method protected updateDeepShortcutMap(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->mDeepShortcutIdsMap:Lcom/voxel/launcher3/util/MultiHashMap;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->mDeepShortcutIdsMap:Lcom/voxel/launcher3/util/MultiHashMap;

    invoke-virtual {v1}, Lcom/voxel/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 123
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/util/ComponentKey;

    if-eqz p1, :cond_1

    .line 125
    iget-object v3, v2, Lcom/voxel/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iget-object v2, v2, Lcom/voxel/launcher3/util/ComponentKey;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 126
    invoke-virtual {v2, p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 132
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    .line 133
    invoke-virtual {p2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 134
    invoke-virtual {p2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->isDynamic()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    const/4 p3, 0x1

    goto :goto_2

    :cond_5
    const/4 p3, 0x0

    :goto_2
    if-eqz p3, :cond_3

    .line 136
    new-instance p3, Lcom/voxel/launcher3/util/ComponentKey;

    .line 137
    invoke-virtual {p2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v2

    invoke-direct {p3, v1, v2}, Lcom/voxel/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 138
    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->mDeepShortcutIdsMap:Lcom/voxel/launcher3/util/MultiHashMap;

    invoke-virtual {p2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Lcom/voxel/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 141
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    return-void
.end method

.method public abstract wasLastCallSuccess()Z
.end method
