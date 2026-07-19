.class final enum Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;
.super Ljava/lang/Enum;
.source "IconPackType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

.field public static final enum ADW_LAUNCHER:Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

.field public static final enum APEX_LAUNCHER:Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

.field public static final enum GO_LAUNCHER:Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

.field public static final enum NOVA_LAUNCHER:Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;


# instance fields
.field public action:Ljava/lang/String;

.field public category:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    const-string v1, "APEX_LAUNCHER"

    const-string v2, "android.intent.action.MAIN"

    const-string v3, "com.anddoes.launcher.THEME"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->APEX_LAUNCHER:Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    .line 11
    new-instance v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    const-string v1, "GO_LAUNCHER"

    const-string v2, "com.gau.go.launcherex.theme"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->GO_LAUNCHER:Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    .line 12
    new-instance v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    const-string v1, "NOVA_LAUNCHER"

    const-string v2, "com.novalauncher.THEME"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->NOVA_LAUNCHER:Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    .line 13
    new-instance v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    const-string v1, "ADW_LAUNCHER"

    const-string v2, "org.adw.launcher.icons.ACTION_PICK_ICON"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->ADW_LAUNCHER:Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    sget-object v1, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->APEX_LAUNCHER:Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->GO_LAUNCHER:Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->NOVA_LAUNCHER:Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->ADW_LAUNCHER:Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->$VALUES:[Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->action:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->action:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->category:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;
    .locals 1

    .line 8
    const-class v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    return-object p0
.end method

.method public static values()[Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;
    .locals 1

    .line 8
    sget-object v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->$VALUES:[Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    invoke-virtual {v0}, [Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;

    return-object v0
.end method


# virtual methods
.method public makeIntent()Landroid/content/Intent;
    .locals 2

    .line 28
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->action:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPackType;->category:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method
