.class public final Lcom/voxel/simplesearchlauncher/importer/HTCLauncher;
.super Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;
.source "HTCLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getFavoritesContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.htc.launcher.settings/favorites?notify=true&workspace_id=1"

    .line 21
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

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

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.htc.launcher"

    return-object v0
.end method
