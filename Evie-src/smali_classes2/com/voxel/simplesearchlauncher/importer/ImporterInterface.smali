.class public interface abstract Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;
.super Ljava/lang/Object;
.source "ImporterInterface.java"


# static fields
.field public static final IMPORTER_INTERFACES:[Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    .line 17
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;

    new-instance v1, Lcom/voxel/simplesearchlauncher/importer/NovaLauncher;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/importer/NovaLauncher;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/voxel/simplesearchlauncher/importer/TouchWizLauncher;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/importer/TouchWizLauncher;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/voxel/simplesearchlauncher/importer/GoogleAndroidLauncher;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/importer/GoogleAndroidLauncher;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/voxel/simplesearchlauncher/importer/Trebuchet;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/importer/Trebuchet;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/voxel/simplesearchlauncher/importer/AndroidLauncher3;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/importer/AndroidLauncher3;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/voxel/simplesearchlauncher/importer/LGLauncher2;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/importer/LGLauncher2;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/voxel/simplesearchlauncher/importer/BlurLauncher;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/importer/BlurLauncher;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/voxel/simplesearchlauncher/importer/HTCLauncher;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/importer/HTCLauncher;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/voxel/simplesearchlauncher/importer/AndroidLauncher;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/importer/AndroidLauncher;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/voxel/simplesearchlauncher/importer/PixelLauncher;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/importer/PixelLauncher;-><init>()V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/voxel/simplesearchlauncher/importer/LGLauncher3;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/importer/LGLauncher3;-><init>()V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/voxel/simplesearchlauncher/importer/ActionLauncher3;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/importer/ActionLauncher3;-><init>()V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;->IMPORTER_INTERFACES:[Lcom/voxel/simplesearchlauncher/importer/ImporterInterface;

    return-void
.end method


# virtual methods
.method public abstract canImport(Landroid/content/Context;)Z
.end method

.method public abstract getCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
.end method

.method public abstract getMainScreenId(Ljava/util/TreeMap;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract loadItem(Landroid/database/Cursor;Landroid/content/Context;)Lcom/voxel/launcher3/ItemInfo;
.end method

.method public abstract loadScreens(Landroid/content/ContentResolver;)Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method
