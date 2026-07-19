.class public final enum Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;
.super Ljava/lang/Enum;
.source "TextureVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/view/TextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

.field public static final enum BOTTOM:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

.field public static final enum BOTTOM_CENTER:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

.field public static final enum CENTER_CROP:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

.field public static final enum TOP:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 66
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    const-string v1, "CENTER_CROP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;->CENTER_CROP:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    new-instance v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    const-string v1, "TOP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;->TOP:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    new-instance v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    const-string v1, "BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;->BOTTOM:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    new-instance v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    const-string v1, "BOTTOM_CENTER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;->BOTTOM_CENTER:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    const/4 v0, 0x4

    .line 65
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    sget-object v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;->CENTER_CROP:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;->TOP:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;->BOTTOM:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;->BOTTOM_CENTER:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;->$VALUES:[Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;
    .locals 1

    .line 65
    const-class v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    return-object p0
.end method

.method public static values()[Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;
    .locals 1

    .line 65
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;->$VALUES:[Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    invoke-virtual {v0}, [Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/simplesearchlauncher/view/TextureVideoView$ScaleType;

    return-object v0
.end method
