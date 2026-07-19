.class public final Lcom/voxel/simplesearchlauncher/importer/NovaLauncher;
.super Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;
.source "NovaLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getBaseContentUri()Ljava/lang/String;
    .locals 1

    const-string v0, "content://com.teslacoilsw.launcher.settings/"

    return-object v0
.end method

.method public getMainScreenId(Ljava/util/TreeMap;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x2

    .line 33
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.teslacoilsw.launcher"

    return-object v0
.end method

.method protected onLoadShortcutInfoFromCursor(Lcom/voxel/launcher3/ShortcutInfo;Landroid/database/Cursor;Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)V
    .locals 4

    .line 39
    iget-object v0, p1, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/voxel/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p1}, Lcom/voxel/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/voxel/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.teslacoilsw.launcher.ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iput-object v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    return-void

    .line 49
    :cond_1
    iget v0, p4, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->iconTypeIndex:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 50
    iget v2, p4, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->iconTypeIndex:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eqz v2, :cond_6

    .line 53
    :cond_2
    iget p4, p4, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;->iconResourceIndex:I

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 57
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_4

    .line 62
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    .line 63
    invoke-virtual {p4, p2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 64
    invoke-static {p2, p3}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p1, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 69
    :cond_4
    :goto_1
    iget-object p2, p1, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_5

    .line 71
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 72
    iget-object p4, p1, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p2, p4}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 73
    invoke-static {p2, p3}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p1, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 78
    :cond_5
    :goto_2
    iget-object p2, p1, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_6

    .line 79
    iput-object v1, p1, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    return-void

    :cond_6
    return-void
.end method
