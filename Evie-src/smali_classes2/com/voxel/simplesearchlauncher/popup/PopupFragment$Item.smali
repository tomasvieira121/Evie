.class public final enum Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;
.super Ljava/lang/Enum;
.source "PopupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/popup/PopupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

.field public static final enum NOTIFICATION:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

.field public static final enum SHORTCUT:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

.field public static final enum SYSTEM_SHORTCUT:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

.field public static final enum SYSTEM_SHORTCUT_ICON:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;


# instance fields
.field public final isShortcut:Z

.field public final layoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 83
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    const-string v1, "SHORTCUT"

    const v2, 0x7f0d0084

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->SHORTCUT:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    .line 84
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    const-string v1, "NOTIFICATION"

    const v5, 0x7f0d0088

    invoke-direct {v0, v1, v4, v5, v3}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->NOTIFICATION:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    .line 85
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    const-string v1, "SYSTEM_SHORTCUT"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->SYSTEM_SHORTCUT:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    .line 86
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    const-string v1, "SYSTEM_SHORTCUT_ICON"

    const/4 v2, 0x3

    const v6, 0x7f0d008a

    invoke-direct {v0, v1, v2, v6, v4}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->SYSTEM_SHORTCUT_ICON:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    const/4 v0, 0x4

    .line 82
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    sget-object v1, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->SHORTCUT:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->NOTIFICATION:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->SYSTEM_SHORTCUT:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    aput-object v1, v0, v5

    sget-object v1, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->SYSTEM_SHORTCUT_ICON:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    aput-object v1, v0, v2

    sput-object v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->$VALUES:[Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput p3, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->layoutId:I

    .line 93
    iput-boolean p4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->isShortcut:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;
    .locals 1

    .line 82
    const-class v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    return-object p0
.end method

.method public static values()[Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;
    .locals 1

    .line 82
    sget-object v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->$VALUES:[Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    invoke-virtual {v0}, [Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    return-object v0
.end method
