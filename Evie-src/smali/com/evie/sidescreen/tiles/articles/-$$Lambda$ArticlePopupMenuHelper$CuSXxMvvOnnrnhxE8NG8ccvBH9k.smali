.class public final synthetic Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticlePopupMenuHelper$CuSXxMvvOnnrnhxE8NG8ccvBH9k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

.field private final synthetic f$1:Lorg/schema/NewsArticle;

.field private final synthetic f$2:Lcom/evie/sidescreen/analytics/data/ScreenInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticlePopupMenuHelper$CuSXxMvvOnnrnhxE8NG8ccvBH9k;->f$0:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticlePopupMenuHelper$CuSXxMvvOnnrnhxE8NG8ccvBH9k;->f$1:Lorg/schema/NewsArticle;

    iput-object p3, p0, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticlePopupMenuHelper$CuSXxMvvOnnrnhxE8NG8ccvBH9k;->f$2:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticlePopupMenuHelper$CuSXxMvvOnnrnhxE8NG8ccvBH9k;->f$0:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticlePopupMenuHelper$CuSXxMvvOnnrnhxE8NG8ccvBH9k;->f$1:Lorg/schema/NewsArticle;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticlePopupMenuHelper$CuSXxMvvOnnrnhxE8NG8ccvBH9k;->f$2:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->lambda$share$0(Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Ljava/lang/String;)V

    return-void
.end method
