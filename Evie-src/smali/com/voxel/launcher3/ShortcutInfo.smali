.class public Lcom/voxel/launcher3/ShortcutInfo;
.super Lcom/voxel/launcher3/ItemInfo;
.source "ShortcutInfo.java"


# instance fields
.field public customIcon:Z

.field disabledMessage:Ljava/lang/CharSequence;

.field firstInstallTime:J

.field public flags:I

.field public iconResource:Landroid/content/Intent$ShortcutIconResource;

.field isDisabled:I

.field private mInstallProgress:I

.field promisedIntent:Landroid/content/Intent;

.field status:I

.field public usingFallbackIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/voxel/launcher3/ItemInfo;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    .line 144
    iput v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->flags:I

    const/4 v0, 0x1

    .line 154
    iput v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/voxel/launcher3/ShortcutInfo;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 170
    iput-object p2, p0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 171
    iput-object p3, p0, Lcom/voxel/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 172
    iput-object p4, p0, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 173
    iput-object p5, p0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    return-void
.end method

.method public constructor <init>(Lcom/voxel/launcher3/AppInfo;)V
    .locals 3

    .line 195
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/ItemInfo;-><init>(Lcom/voxel/launcher3/ItemInfo;)V

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    .line 144
    iput v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->flags:I

    .line 196
    iget-object v1, p1, Lcom/voxel/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 197
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p1, Lcom/voxel/launcher3/AppInfo;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 198
    iput-boolean v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->customIcon:Z

    .line 199
    iget v0, p1, Lcom/voxel/launcher3/AppInfo;->flags:I

    iput v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->flags:I

    .line 200
    iget-wide v0, p1, Lcom/voxel/launcher3/AppInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->firstInstallTime:J

    return-void
.end method

.method public constructor <init>(Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 2

    .line 177
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/ItemInfo;-><init>(Lcom/voxel/launcher3/ItemInfo;)V

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    .line 144
    iput v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->flags:I

    .line 178
    iget-object v0, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 179
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 180
    iget-object v0, p1, Lcom/voxel/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 182
    iget-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 185
    :cond_0
    iget-object v0, p1, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 186
    iget-boolean v0, p1, Lcom/voxel/launcher3/ShortcutInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->customIcon:Z

    .line 187
    iget v0, p1, Lcom/voxel/launcher3/ShortcutInfo;->flags:I

    iput v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->flags:I

    .line 188
    iget-wide v0, p1, Lcom/voxel/launcher3/ShortcutInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->firstInstallTime:J

    .line 189
    iget-object v0, p1, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iput-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 190
    iget p1, p1, Lcom/voxel/launcher3/ShortcutInfo;->status:I

    iput p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->status:I

    return-void
.end method

.method public constructor <init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 207
    invoke-direct {p0}, Lcom/voxel/launcher3/ItemInfo;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    .line 144
    iput v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->flags:I

    .line 208
    invoke-virtual {p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 210
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isNycMR1OrAbove()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    .line 211
    iput v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 213
    iput v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    .line 215
    :goto_0
    iput v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->flags:I

    .line 216
    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/launcher3/ShortcutInfo;->updateFromDeepShortcutInfo(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getBadgedIcon(Landroid/graphics/Bitmap;Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/IconCache;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .line 345
    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->addShadowToIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 347
    new-instance v0, Lcom/voxel/launcher3/AppInfo;

    invoke-direct {v0}, Lcom/voxel/launcher3/AppInfo;-><init>()V

    .line 348
    iget-object v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iput-object v1, v0, Lcom/voxel/launcher3/AppInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 349
    invoke-virtual {p2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 351
    :try_start_0
    invoke-virtual {p2, p4}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getActivityInfo(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Lcom/voxel/launcher3/IconCache;->getTitleAndIcon(Lcom/voxel/launcher3/AppInfo;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    iget-object p2, v0, Lcom/voxel/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, p2, p4}, Lcom/voxel/launcher3/Utilities;->badgeWithBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :catch_0
    return-object p1
.end method

.method public getDeepShortcutId()Ljava/lang/String;
    .locals 2

    .line 308
    iget v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutInfo;->getPromisedIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shortcut_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIcon(Lcom/voxel/launcher3/IconCache;)Landroid/graphics/Bitmap;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/ShortcutInfo;->updateIcon(Lcom/voxel/launcher3/IconCache;)V

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getInstallProgress()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->mInstallProgress:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPromisedIntent()Landroid/content/Intent;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public hasStatusFlag(I)Z
    .locals 1

    .line 287
    iget v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->status:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isPromise()Z
    .locals 1

    const/4 v0, 0x3

    .line 292
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    .line 237
    invoke-super {p0, p1, p2}, Lcom/voxel/launcher3/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 239
    iget-object p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v1, "title"

    .line 240
    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 243
    invoke-virtual {p1, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    const-string p1, "intent"

    .line 244
    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-boolean p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->customIcon:Z

    if-eqz p1, :cond_3

    const-string p1, "iconType"

    const/4 v0, 0x1

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 247
    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    iget-object p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2, p1}, Lcom/voxel/launcher3/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 251
    :cond_3
    iget-boolean p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    if-nez p1, :cond_4

    .line 252
    iget-object p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2, p1}, Lcom/voxel/launcher3/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    :cond_4
    const-string p1, "iconType"

    .line 255
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 254
    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    iget-object p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz p1, :cond_5

    const-string v0, "iconPackage"

    .line 257
    iget-object p1, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "iconResource"

    .line 259
    iget-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setInstallProgress(I)V
    .locals 0

    .line 300
    iput p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->mInstallProgress:I

    .line 301
    iget p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->status:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->dropPos:[I

    .line 270
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromDeepShortcutInfo(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;Landroid/content/Context;)V
    .locals 3

    .line 314
    invoke-virtual {p1, p3}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 315
    invoke-virtual {p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 317
    invoke-virtual {p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 321
    :cond_0
    invoke-static {p3}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 322
    invoke-virtual {v1, v0, v2}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 323
    invoke-virtual {p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    goto :goto_0

    .line 326
    :cond_1
    iget v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    .line 328
    :goto_0
    invoke-virtual {p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->disabledMessage:Ljava/lang/CharSequence;

    .line 331
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 333
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 332
    invoke-virtual {p2, p1, v1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->getShortcutIconDrawable(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 335
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v0

    if-nez p2, :cond_2

    .line 337
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/voxel/launcher3/IconCache;->getDefaultIcon(Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    .line 338
    :cond_2
    invoke-static {p2, p3}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 339
    :goto_1
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/voxel/launcher3/ShortcutInfo;->getBadgedIcon(Landroid/graphics/Bitmap;Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/IconCache;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public updateIcon(Lcom/voxel/launcher3/IconCache;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/IconCache;->getIcon(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 232
    iget-object v0, p0, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/voxel/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    return-void
.end method
