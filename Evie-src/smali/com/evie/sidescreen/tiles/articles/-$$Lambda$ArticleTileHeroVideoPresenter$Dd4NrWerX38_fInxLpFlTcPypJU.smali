.class public final synthetic Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$Dd4NrWerX38_fInxLpFlTcPypJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$Dd4NrWerX38_fInxLpFlTcPypJU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$Dd4NrWerX38_fInxLpFlTcPypJU;

    invoke-direct {v0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$Dd4NrWerX38_fInxLpFlTcPypJU;-><init>()V

    sput-object v0, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$Dd4NrWerX38_fInxLpFlTcPypJU;->INSTANCE:Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$Dd4NrWerX38_fInxLpFlTcPypJU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/core/util/Pair;

    invoke-static {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->lambda$onBindViewHolder$2(Landroidx/core/util/Pair;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
