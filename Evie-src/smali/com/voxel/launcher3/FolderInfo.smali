.class public Lcom/voxel/launcher3/FolderInfo;
.super Lcom/voxel/launcher3/ItemInfo;
.source "FolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/FolderInfo$FolderListener;
    }
.end annotation


# instance fields
.field public contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/FolderInfo$FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field public opened:Z

.field public options:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/voxel/launcher3/ItemInfo;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    const/4 v0, 0x2

    .line 66
    iput v0, p0, Lcom/voxel/launcher3/FolderInfo;->itemType:I

    .line 67
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/FolderInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    return-void
.end method


# virtual methods
.method public add(Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getFolderAlphabetSortEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    sget-object v1, Lcom/voxel/launcher3/Folder;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/voxel/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/voxel/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/voxel/launcher3/FolderInfo$FolderListener;->onAdd(Lcom/voxel/launcher3/ShortcutInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderInfo;->itemsChanged()V

    return-void
.end method

.method public addListener(Lcom/voxel/launcher3/FolderInfo$FolderListener;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/voxel/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method itemsChanged()V
    .locals 2

    const/4 v0, 0x0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/voxel/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/voxel/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/FolderInfo$FolderListener;

    invoke-interface {v1}, Lcom/voxel/launcher3/FolderInfo$FolderListener;->onItemsChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 1

    .line 109
    invoke-super {p0, p1, p2}, Lcom/voxel/launcher3/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 110
    iget-object p1, p0, Lcom/voxel/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxel/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "title"

    .line 111
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "options"

    .line 112
    iget v0, p0, Lcom/voxel/launcher3/FolderInfo;->options:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public remove(Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/voxel/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/voxel/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/voxel/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/voxel/launcher3/FolderInfo$FolderListener;->onRemove(Lcom/voxel/launcher3/ShortcutInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/FolderInfo;->itemsChanged()V

    return-void
.end method

.method public removeListener(Lcom/voxel/launcher3/FolderInfo$FolderListener;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/voxel/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOption(IZLandroid/content/Context;)V
    .locals 1

    .line 161
    iget v0, p0, Lcom/voxel/launcher3/FolderInfo;->options:I

    if-eqz p2, :cond_0

    or-int/2addr p1, v0

    .line 163
    iput p1, p0, Lcom/voxel/launcher3/FolderInfo;->options:I

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    .line 165
    iput p1, p0, Lcom/voxel/launcher3/FolderInfo;->options:I

    :goto_0
    if-eqz p3, :cond_1

    .line 167
    iget p1, p0, Lcom/voxel/launcher3/FolderInfo;->options:I

    if-eq v0, p1, :cond_1

    .line 168
    invoke-static {p3, p0}, Lcom/voxel/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 101
    iput-object p1, p0, Lcom/voxel/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/voxel/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/voxel/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/voxel/launcher3/FolderInfo$FolderListener;->onTitleChanged(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderInfo(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voxel/launcher3/FolderInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/FolderInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voxel/launcher3/FolderInfo;->container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voxel/launcher3/FolderInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/FolderInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/FolderInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/FolderInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/FolderInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/launcher3/FolderInfo;->dropPos:[I

    .line 148
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/voxel/launcher3/ItemInfo;->unbind()V

    .line 133
    iget-object v0, p0, Lcom/voxel/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
