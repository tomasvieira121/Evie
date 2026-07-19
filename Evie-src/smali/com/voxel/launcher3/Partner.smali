.class public Lcom/voxel/launcher3/Partner;
.super Ljava/lang/Object;
.source "Partner.java"


# static fields
.field private static sPartner:Lcom/voxel/launcher3/Partner; = null

.field private static sSearched:Z = false


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/voxel/launcher3/Partner;->mPackageName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/voxel/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/pm/PackageManager;)Lcom/voxel/launcher3/Partner;
    .locals 3

    const-class v0, Lcom/voxel/launcher3/Partner;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-boolean v1, Lcom/voxel/launcher3/Partner;->sSearched:Z

    if-nez v1, :cond_1

    const-string v1, "com.android.launcher3.action.PARTNER_CUSTOMIZATION"

    .line 54
    invoke-static {v1, p0}, Lcom/voxel/launcher3/Utilities;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 56
    new-instance v1, Lcom/voxel/launcher3/Partner;

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Resources;

    invoke-direct {v1, v2, p0}, Lcom/voxel/launcher3/Partner;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    sput-object v1, Lcom/voxel/launcher3/Partner;->sPartner:Lcom/voxel/launcher3/Partner;

    :cond_0
    const/4 p0, 0x1

    .line 58
    sput-boolean p0, Lcom/voxel/launcher3/Partner;->sSearched:Z

    .line 60
    :cond_1
    sget-object p0, Lcom/voxel/launcher3/Partner;->sPartner:Lcom/voxel/launcher3/Partner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/voxel/launcher3/Partner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/voxel/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getWallpaperDirectory()Ljava/io/File;
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/voxel/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "system_wallpaper_directory"

    const-string v2, "string"

    .line 88
    invoke-virtual {p0}, Lcom/voxel/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/voxel/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public hideDefaultWallpaper()Z
    .locals 4

    .line 81
    invoke-virtual {p0}, Lcom/voxel/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "default_wallpapper_hidden"

    const-string v2, "bool"

    .line 82
    invoke-virtual {p0}, Lcom/voxel/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/voxel/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
