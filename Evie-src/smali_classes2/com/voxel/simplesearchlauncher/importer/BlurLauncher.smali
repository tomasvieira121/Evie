.class public final Lcom/voxel/simplesearchlauncher/importer/BlurLauncher;
.super Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;
.source "BlurLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getFavoritesContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.android.launcher.settings/favorites?notify=true"

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.motorola.blur.home"

    return-object v0
.end method
