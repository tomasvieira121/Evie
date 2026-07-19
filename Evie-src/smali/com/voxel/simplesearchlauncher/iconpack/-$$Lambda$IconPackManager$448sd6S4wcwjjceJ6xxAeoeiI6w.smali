.class public final synthetic Lcom/voxel/simplesearchlauncher/iconpack/-$$Lambda$IconPackManager$448sd6S4wcwjjceJ6xxAeoeiI6w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/voxel/simplesearchlauncher/iconpack/-$$Lambda$IconPackManager$448sd6S4wcwjjceJ6xxAeoeiI6w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/voxel/simplesearchlauncher/iconpack/-$$Lambda$IconPackManager$448sd6S4wcwjjceJ6xxAeoeiI6w;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/iconpack/-$$Lambda$IconPackManager$448sd6S4wcwjjceJ6xxAeoeiI6w;-><init>()V

    sput-object v0, Lcom/voxel/simplesearchlauncher/iconpack/-$$Lambda$IconPackManager$448sd6S4wcwjjceJ6xxAeoeiI6w;->INSTANCE:Lcom/voxel/simplesearchlauncher/iconpack/-$$Lambda$IconPackManager$448sd6S4wcwjjceJ6xxAeoeiI6w;

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

    check-cast p1, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    check-cast p2, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->lambda$getAllIconPacks$0(Lcom/voxel/simplesearchlauncher/iconpack/IconPack;Lcom/voxel/simplesearchlauncher/iconpack/IconPack;)I

    move-result p1

    return p1
.end method
