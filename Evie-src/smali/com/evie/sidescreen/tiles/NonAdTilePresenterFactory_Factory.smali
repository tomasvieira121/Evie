.class public final Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;
.super Ljava/lang/Object;
.source "NonAdTilePresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final articleSeedPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final articleTilePresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final playlistItemPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final recommendedPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final relatedArticlePresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final videoSeedPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final yelpPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->articleTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->recommendedPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->playlistItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->relatedArticlePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->articleSeedPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->videoSeedPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p7, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->yelpPresenterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;",
            ">;)",
            "Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;"
        }
    .end annotation

    .line 70
    new-instance v8, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;
    .locals 9

    .line 52
    new-instance v8, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->articleTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 53
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->recommendedPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->playlistItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 55
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->relatedArticlePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 56
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->articleSeedPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 57
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->videoSeedPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 58
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->yelpPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 59
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory;Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory;Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory;Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;)V

    return-object v8
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory_Factory;->get()Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;

    move-result-object v0

    return-object v0
.end method
