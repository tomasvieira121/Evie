.class synthetic Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory$1;
.super Ljava/lang/Object;
.source "ArticleTilePresenterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$evie$models$sidescreen$data$TileType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    invoke-static {}, Lcom/evie/models/sidescreen/data/TileType;->values()[Lcom/evie/models/sidescreen/data/TileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory$1;->$SwitchMap$com$evie$models$sidescreen$data$TileType:[I

    :try_start_0
    sget-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory$1;->$SwitchMap$com$evie$models$sidescreen$data$TileType:[I

    sget-object v1, Lcom/evie/models/sidescreen/data/TileType;->HERO:Lcom/evie/models/sidescreen/data/TileType;

    invoke-virtual {v1}, Lcom/evie/models/sidescreen/data/TileType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory$1;->$SwitchMap$com$evie$models$sidescreen$data$TileType:[I

    sget-object v1, Lcom/evie/models/sidescreen/data/TileType;->ROW:Lcom/evie/models/sidescreen/data/TileType;

    invoke-virtual {v1}, Lcom/evie/models/sidescreen/data/TileType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
