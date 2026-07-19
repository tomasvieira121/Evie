.class public Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;
.super Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;
.source "ArticleSeedViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder<",
        "Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;",
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

.field mSubtitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget v0, Lcom/evie/sidescreen/R$layout;->tile_article_related_seed:I

    sput v0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static trimTrailingWhitespace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 55
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 56
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 57
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public hideSubtitle()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showArticleBody(Ljava/lang/String;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-static {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->trimTrailingWhitespace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showImage(Ljava/lang/String;F)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setAspectRatio(F)V

    .line 47
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public showSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
