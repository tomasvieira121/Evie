.class public final synthetic Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$fETDiGzYJkc0GNFtBRTP7kXIHLc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$fETDiGzYJkc0GNFtBRTP7kXIHLc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$fETDiGzYJkc0GNFtBRTP7kXIHLc;

    invoke-direct {v0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$fETDiGzYJkc0GNFtBRTP7kXIHLc;-><init>()V

    sput-object v0, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$fETDiGzYJkc0GNFtBRTP7kXIHLc;->INSTANCE:Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$fETDiGzYJkc0GNFtBRTP7kXIHLc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->lambda$onBindViewHolder$4(Ljava/lang/Boolean;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    move-result-object p1

    return-object p1
.end method
