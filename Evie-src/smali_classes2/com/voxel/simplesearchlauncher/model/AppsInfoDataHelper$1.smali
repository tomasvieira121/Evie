.class synthetic Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$1;
.super Ljava/lang/Object;
.source "AppsInfoDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$voxel$simplesearchlauncher$model$AppsInfoDataHelper$BatchOp:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 123
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->values()[Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$1;->$SwitchMap$com$voxel$simplesearchlauncher$model$AppsInfoDataHelper$BatchOp:[I

    :try_start_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$1;->$SwitchMap$com$voxel$simplesearchlauncher$model$AppsInfoDataHelper$BatchOp:[I

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->TYPE_INSERT:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$1;->$SwitchMap$com$voxel$simplesearchlauncher$model$AppsInfoDataHelper$BatchOp:[I

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->TYPE_UPDATE:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$1;->$SwitchMap$com$voxel$simplesearchlauncher$model$AppsInfoDataHelper$BatchOp:[I

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->TYPE_DELETE:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
