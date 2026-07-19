.class public Lcom/voxel/simplesearchlauncher/importer/LGLauncher3;
.super Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;
.source "LGLauncher3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getFavoritesContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.lge.launcher3.settings/favorites?notify=true"

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.lge.launcher3"

    return-object v0
.end method
