.class public Lcom/voxel/simplesearchlauncher/importer/ActionLauncher3;
.super Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;
.source "ActionLauncher3.java"


# static fields
.field private static final sShortcutComponent:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.actionlauncher.playstore"

    const-string v2, "com.actionlauncher.ShortcutWrapperActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/importer/ActionLauncher3;->sShortcutComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getBaseContentUri()Ljava/lang/String;
    .locals 1

    const-string v0, "content://com.actionlauncher.playstore.settings/"

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.actionlauncher.playstore"

    return-object v0
.end method

.method protected loadUnknownItemType(ILandroid/database/Cursor;Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)Lcom/voxel/launcher3/ItemInfo;
    .locals 1

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    .line 30
    invoke-virtual {p0, p2, p3, p4}, Lcom/voxel/simplesearchlauncher/importer/ActionLauncher3;->loadShortcutInfoFromCursor(Landroid/database/Cursor;Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object p1

    return-object p1

    .line 32
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;->loadUnknownItemType(ILandroid/database/Cursor;Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onLoadShortcutInfoFromCursor(Lcom/voxel/launcher3/ShortcutInfo;Landroid/database/Cursor;Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter$CursorItemIndexes;)V
    .locals 0

    .line 36
    invoke-virtual {p1}, Lcom/voxel/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    .line 40
    sget-object p3, Lcom/voxel/simplesearchlauncher/importer/ActionLauncher3;->sShortcutComponent:Landroid/content/ComponentName;

    invoke-virtual {p3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 41
    iput-object p2, p1, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    :cond_1
    return-void
.end method
