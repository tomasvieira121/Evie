.class public final enum Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;
.super Ljava/lang/Enum;
.source "RoundedCornerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CornerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

.field public static final enum BOTTOM_LEFT:Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

.field public static final enum BOTTOM_RIGHT:Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

.field public static final enum TOP_LEFT:Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

.field public static final enum TOP_RIGHT:Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->TOP_LEFT:Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    .line 25
    new-instance v0, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    const-string v1, "TOP_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->TOP_RIGHT:Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    .line 26
    new-instance v0, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->BOTTOM_RIGHT:Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    .line 27
    new-instance v0, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    const-string v1, "BOTTOM_LEFT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->BOTTOM_LEFT:Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    const/4 v0, 0x4

    .line 23
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    sget-object v1, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->TOP_LEFT:Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->TOP_RIGHT:Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->BOTTOM_RIGHT:Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->BOTTOM_LEFT:Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->$VALUES:[Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;
    .locals 1

    .line 23
    const-class v0, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    return-object p0
.end method

.method public static values()[Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;
    .locals 1

    .line 23
    sget-object v0, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->$VALUES:[Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    invoke-virtual {v0}, [Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    return-object v0
.end method
