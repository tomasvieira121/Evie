.class final enum Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;
.super Ljava/lang/Enum;
.source "ArticleTileHeroVideoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MediaState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

.field public static final enum IMAGE:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

.field public static final enum SNAPSHOT:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

.field public static final enum VIDEO_ERROR:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

.field public static final enum VIDEO_LOADING:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

.field public static final enum VIDEO_PAUSED:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

.field public static final enum VIDEO_PREVIEW:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

.field public static final enum VIDEO_READY:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 528
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    const-string v1, "VIDEO_LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_LOADING:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    .line 531
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    const-string v1, "VIDEO_READY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_READY:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    .line 534
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    const-string v1, "VIDEO_PAUSED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_PAUSED:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    .line 537
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    const-string v1, "VIDEO_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_ERROR:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    .line 540
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    const-string v1, "IMAGE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->IMAGE:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    .line 543
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    const-string v1, "SNAPSHOT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->SNAPSHOT:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    .line 546
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    const-string v1, "VIDEO_PREVIEW"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_PREVIEW:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    const/4 v0, 0x7

    .line 525
    new-array v0, v0, [Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    sget-object v1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_LOADING:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_READY:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_PAUSED:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_ERROR:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->IMAGE:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->SNAPSHOT:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_PREVIEW:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->$VALUES:[Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 525
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;
    .locals 1

    .line 525
    const-class v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    return-object p0
.end method

.method public static values()[Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;
    .locals 1

    .line 525
    sget-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->$VALUES:[Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    invoke-virtual {v0}, [Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    return-object v0
.end method
