.class public final enum Lcom/evie/models/sidescreen/data/TileType;
.super Ljava/lang/Enum;
.source "TileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/models/sidescreen/data/TileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/models/sidescreen/data/TileType;

.field public static final enum ARTICLE_SEED:Lcom/evie/models/sidescreen/data/TileType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "article_seed"
    .end annotation
.end field

.field public static final enum DISCOVERY:Lcom/evie/models/sidescreen/data/TileType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discovery"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum HERO:Lcom/evie/models/sidescreen/data/TileType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hero"
    .end annotation
.end field

.field public static final enum PLAYLIST_ITEM:Lcom/evie/models/sidescreen/data/TileType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playlist_video"
    .end annotation
.end field

.field public static final enum RELATED_ARTICLE:Lcom/evie/models/sidescreen/data/TileType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "related_article"
    .end annotation
.end field

.field public static final enum ROW:Lcom/evie/models/sidescreen/data/TileType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "row"
    .end annotation
.end field

.field public static final enum TOPIC_RECOMMENDATION:Lcom/evie/models/sidescreen/data/TileType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "topic_recommendation"
    .end annotation
.end field

.field public static final enum VIDEO_SEED:Lcom/evie/models/sidescreen/data/TileType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_seed"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 7
    new-instance v0, Lcom/evie/models/sidescreen/data/TileType;

    const-string v1, "HERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evie/models/sidescreen/data/TileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/models/sidescreen/data/TileType;->HERO:Lcom/evie/models/sidescreen/data/TileType;

    .line 10
    new-instance v0, Lcom/evie/models/sidescreen/data/TileType;

    const-string v1, "ROW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/evie/models/sidescreen/data/TileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/models/sidescreen/data/TileType;->ROW:Lcom/evie/models/sidescreen/data/TileType;

    .line 13
    new-instance v0, Lcom/evie/models/sidescreen/data/TileType;

    const-string v1, "DISCOVERY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/evie/models/sidescreen/data/TileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/models/sidescreen/data/TileType;->DISCOVERY:Lcom/evie/models/sidescreen/data/TileType;

    .line 17
    new-instance v0, Lcom/evie/models/sidescreen/data/TileType;

    const-string v1, "TOPIC_RECOMMENDATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/evie/models/sidescreen/data/TileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/models/sidescreen/data/TileType;->TOPIC_RECOMMENDATION:Lcom/evie/models/sidescreen/data/TileType;

    .line 20
    new-instance v0, Lcom/evie/models/sidescreen/data/TileType;

    const-string v1, "PLAYLIST_ITEM"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/evie/models/sidescreen/data/TileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/models/sidescreen/data/TileType;->PLAYLIST_ITEM:Lcom/evie/models/sidescreen/data/TileType;

    .line 23
    new-instance v0, Lcom/evie/models/sidescreen/data/TileType;

    const-string v1, "RELATED_ARTICLE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/evie/models/sidescreen/data/TileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/models/sidescreen/data/TileType;->RELATED_ARTICLE:Lcom/evie/models/sidescreen/data/TileType;

    .line 26
    new-instance v0, Lcom/evie/models/sidescreen/data/TileType;

    const-string v1, "ARTICLE_SEED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/evie/models/sidescreen/data/TileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/models/sidescreen/data/TileType;->ARTICLE_SEED:Lcom/evie/models/sidescreen/data/TileType;

    .line 29
    new-instance v0, Lcom/evie/models/sidescreen/data/TileType;

    const-string v1, "VIDEO_SEED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/evie/models/sidescreen/data/TileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/models/sidescreen/data/TileType;->VIDEO_SEED:Lcom/evie/models/sidescreen/data/TileType;

    const/16 v0, 0x8

    .line 5
    new-array v0, v0, [Lcom/evie/models/sidescreen/data/TileType;

    sget-object v1, Lcom/evie/models/sidescreen/data/TileType;->HERO:Lcom/evie/models/sidescreen/data/TileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/models/sidescreen/data/TileType;->ROW:Lcom/evie/models/sidescreen/data/TileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evie/models/sidescreen/data/TileType;->DISCOVERY:Lcom/evie/models/sidescreen/data/TileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evie/models/sidescreen/data/TileType;->TOPIC_RECOMMENDATION:Lcom/evie/models/sidescreen/data/TileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evie/models/sidescreen/data/TileType;->PLAYLIST_ITEM:Lcom/evie/models/sidescreen/data/TileType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/evie/models/sidescreen/data/TileType;->RELATED_ARTICLE:Lcom/evie/models/sidescreen/data/TileType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/evie/models/sidescreen/data/TileType;->ARTICLE_SEED:Lcom/evie/models/sidescreen/data/TileType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/evie/models/sidescreen/data/TileType;->VIDEO_SEED:Lcom/evie/models/sidescreen/data/TileType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/evie/models/sidescreen/data/TileType;->$VALUES:[Lcom/evie/models/sidescreen/data/TileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/models/sidescreen/data/TileType;
    .locals 1

    .line 5
    const-class v0, Lcom/evie/models/sidescreen/data/TileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/models/sidescreen/data/TileType;

    return-object p0
.end method

.method public static values()[Lcom/evie/models/sidescreen/data/TileType;
    .locals 1

    .line 5
    sget-object v0, Lcom/evie/models/sidescreen/data/TileType;->$VALUES:[Lcom/evie/models/sidescreen/data/TileType;

    invoke-virtual {v0}, [Lcom/evie/models/sidescreen/data/TileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/models/sidescreen/data/TileType;

    return-object v0
.end method
