.class public final Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;
.super Ljava/lang/Object;
.source "ArticleTilePresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final articleTileHeroCaptionPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final articleTileHeroImagePresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final articleTileHeroOathPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final articleTileHeroVideoPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final articleTileHeroYouTubePreviewPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final articleTileRowPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;->articleTileHeroCaptionPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;->articleTileHeroVideoPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;->articleTileHeroYouTubePreviewPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;->articleTileHeroOathPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;->articleTileRowPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;->articleTileHeroImagePresenterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory;",
            ">;)",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;"
        }
    .end annotation

    .line 71
    new-instance v7, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;
    .locals 8

    .line 53
    new-instance v7, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;->articleTileHeroCaptionPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;->articleTileHeroVideoPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 55
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;->articleTileHeroYouTubePreviewPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 56
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;->articleTileHeroOathPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 57
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;->articleTileRowPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 58
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;->articleTileHeroImagePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 59
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory;)V

    return-object v7
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory_Factory;->get()Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;

    move-result-object v0

    return-object v0
.end method
