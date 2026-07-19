.class public Lcom/voxel/launcher3/ItemInfo;
.super Lcom/evie/common/dragndrop/ItemInfoCommon;
.source "ItemInfo.java"


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:J

.field contentDescription:Ljava/lang/CharSequence;

.field dropPos:[I

.field public id:J

.field public itemType:I

.field public minSpanX:I

.field public minSpanY:I

.field public rank:I

.field public screenId:J

.field public spanX:I

.field public spanY:I

.field public user:Lcom/voxel/launcher3/compat/UserHandleCompat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 117
    invoke-direct {p0}, Lcom/evie/common/dragndrop/ItemInfoCommon;-><init>()V

    const-wide/16 v0, -0x1

    .line 47
    iput-wide v0, p0, Lcom/voxel/launcher3/ItemInfo;->id:J

    .line 63
    iput-wide v0, p0, Lcom/voxel/launcher3/ItemInfo;->container:J

    .line 68
    iput-wide v0, p0, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    .line 78
    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    const/4 v0, 0x1

    .line 83
    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 88
    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    .line 93
    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->minSpanX:I

    .line 98
    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->minSpanY:I

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->rank:I

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/voxel/launcher3/ItemInfo;->dropPos:[I

    .line 118
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    return-void
.end method

.method public constructor <init>(Lcom/voxel/launcher3/ItemInfo;)V
    .locals 2

    .line 121
    invoke-direct {p0}, Lcom/evie/common/dragndrop/ItemInfoCommon;-><init>()V

    const-wide/16 v0, -0x1

    .line 47
    iput-wide v0, p0, Lcom/voxel/launcher3/ItemInfo;->id:J

    .line 63
    iput-wide v0, p0, Lcom/voxel/launcher3/ItemInfo;->container:J

    .line 68
    iput-wide v0, p0, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    .line 78
    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    const/4 v0, 0x1

    .line 83
    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 88
    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    .line 93
    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->minSpanX:I

    .line 98
    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->minSpanY:I

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->rank:I

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/voxel/launcher3/ItemInfo;->dropPos:[I

    .line 122
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/ItemInfo;->copyFrom(Lcom/voxel/launcher3/ItemInfo;)V

    return-void
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 177
    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    const-string v0, "icon"

    .line 178
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/voxel/launcher3/ItemInfo;)V
    .locals 2

    .line 126
    iget-wide v0, p1, Lcom/voxel/launcher3/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/voxel/launcher3/ItemInfo;->id:J

    .line 127
    iget v0, p1, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    .line 128
    iget v0, p1, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    .line 129
    iget v0, p1, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    .line 130
    iget v0, p1, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    .line 131
    iget v0, p1, Lcom/voxel/launcher3/ItemInfo;->rank:I

    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->rank:I

    .line 132
    iget-wide v0, p1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    iput-wide v0, p0, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 133
    iget v0, p1, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    iput v0, p0, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    .line 134
    iget-wide v0, p1, Lcom/voxel/launcher3/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/voxel/launcher3/ItemInfo;->container:J

    .line 135
    iget-object v0, p1, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iput-object v0, p0, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 136
    iget-object p1, p1, Lcom/voxel/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/voxel/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/voxel/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 3

    const-string v0, "itemType"

    .line 158
    iget v1, p0, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "container"

    .line 159
    iget-wide v1, p0, Lcom/voxel/launcher3/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "screen"

    .line 160
    iget-wide v1, p0, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "cellX"

    .line 161
    iget v1, p0, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellY"

    .line 162
    iget v1, p0, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanX"

    .line 163
    iget v1, p0, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanY"

    .line 164
    iget v1, p0, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "rank"

    .line 165
    iget v1, p0, Lcom/voxel/launcher3/ItemInfo;->rank:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    invoke-static {p1}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    const-string p1, "profileId"

    .line 167
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    iget-wide p1, p0, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    const-wide/16 v0, -0xc9

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    return-void

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voxel/launcher3/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voxel/launcher3/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/launcher3/ItemInfo;->dropPos:[I

    .line 195
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 0

    return-void
.end method
