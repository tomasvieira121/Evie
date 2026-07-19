.class public final synthetic Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$8$zAnz0sl-bPxKB4mfk2oe4nhCGI8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$8$zAnz0sl-bPxKB4mfk2oe4nhCGI8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$8$zAnz0sl-bPxKB4mfk2oe4nhCGI8;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$8$zAnz0sl-bPxKB4mfk2oe4nhCGI8;-><init>()V

    sput-object v0, Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$8$zAnz0sl-bPxKB4mfk2oe4nhCGI8;->INSTANCE:Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$8$zAnz0sl-bPxKB4mfk2oe4nhCGI8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    check-cast p2, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$8;->lambda$doInBackground$0(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)I

    move-result p1

    return p1
.end method
