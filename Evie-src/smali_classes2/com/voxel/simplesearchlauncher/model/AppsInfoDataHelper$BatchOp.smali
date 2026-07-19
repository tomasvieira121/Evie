.class public final enum Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;
.super Ljava/lang/Enum;
.source "AppsInfoDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BatchOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

.field public static final enum TYPE_DELETE:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

.field public static final enum TYPE_INSERT:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

.field public static final enum TYPE_UPDATE:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    const-string v1, "TYPE_INSERT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->TYPE_INSERT:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    .line 36
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    const-string v1, "TYPE_UPDATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->TYPE_UPDATE:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    .line 37
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    const-string v1, "TYPE_DELETE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->TYPE_DELETE:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    const/4 v0, 0x3

    .line 34
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->TYPE_INSERT:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->TYPE_UPDATE:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->TYPE_DELETE:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    aput-object v1, v0, v4

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->$VALUES:[Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;
    .locals 1

    .line 34
    const-class v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    return-object p0
.end method

.method public static values()[Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;
    .locals 1

    .line 34
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->$VALUES:[Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    invoke-virtual {v0}, [Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    return-object v0
.end method
