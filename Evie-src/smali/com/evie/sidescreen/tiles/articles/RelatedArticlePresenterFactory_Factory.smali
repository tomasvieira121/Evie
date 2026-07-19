.class public final Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;
.super Ljava/lang/Object;
.source "RelatedArticlePresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;"
        }
    .end annotation
.end field

.field private final articlePopupMenuHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;",
            ">;)",
            "Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;
    .locals 5

    .line 37
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;->articlePopupMenuHelperProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;->popupImageViewerPresenterFactoryProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory_Factory;->get()Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;

    move-result-object v0

    return-object v0
.end method
