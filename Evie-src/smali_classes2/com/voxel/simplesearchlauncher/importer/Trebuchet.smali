.class public final Lcom/voxel/simplesearchlauncher/importer/Trebuchet;
.super Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;
.source "Trebuchet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/importer/BaseLauncherImporter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getBaseContentUri()Ljava/lang/String;
    .locals 1

    const-string v0, "content://com.android.launcher3.settings/"

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.cyanogenmod.trebuchet"

    return-object v0
.end method
