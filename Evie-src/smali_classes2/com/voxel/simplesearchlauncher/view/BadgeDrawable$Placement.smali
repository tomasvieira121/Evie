.class public final enum Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;
.super Ljava/lang/Enum;
.source "BadgeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Placement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

.field public static final enum BOTTOM_LEFT:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

.field public static final enum BOTTOM_RIGHT:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

.field public static final enum TOP_LEFT:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

.field public static final enum TOP_RIGHT:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;


# instance fields
.field left:I

.field top:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;->TOP_LEFT:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    .line 33
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    const-string v1, "TOP_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;->TOP_RIGHT:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    .line 34
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    const-string v1, "BOTTOM_LEFT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;->BOTTOM_LEFT:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    .line 35
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3, v3}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;->BOTTOM_RIGHT:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    const/4 v0, 0x4

    .line 31
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    sget-object v1, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;->TOP_LEFT:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;->TOP_RIGHT:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;->BOTTOM_LEFT:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;->BOTTOM_RIGHT:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    aput-object v1, v0, v5

    sput-object v0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;->$VALUES:[Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;->left:I

    .line 42
    iput p4, p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;->top:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;
    .locals 1

    .line 31
    const-class v0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    return-object p0
.end method

.method public static values()[Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;
    .locals 1

    .line 31
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;->$VALUES:[Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    invoke-virtual {v0}, [Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/simplesearchlauncher/view/BadgeDrawable$Placement;

    return-object v0
.end method
