.class public Lcom/voxel/simplesearchlauncher/importer/PixelLauncher;
.super Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;
.source "PixelLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getBaseContentUri()Ljava/lang/String;
    .locals 1

    const-string v0, "content://com.google.android.apps.nexuslauncher.settings/"

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.apps.nexuslauncher"

    return-object v0
.end method
