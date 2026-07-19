.class public Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;
.super Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;
.source "ArticleTileHeroImageViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder<",
        "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mImage:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget v0, Lcom/evie/sidescreen/R$layout;->tile_article_hero_image:I

    sput v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getImage()Landroid/widget/ImageView;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object v0
.end method

.method public hideImage()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public onContentClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;->onArticleClick(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method public showImage(Ljava/lang/String;F)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setAspectRatio(F)V

    .line 43
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImageViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method
