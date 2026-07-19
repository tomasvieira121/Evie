.class public Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;
.super Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;
.source "RelatedArticleViewHolder.java"


# static fields
.field public static final ID:I


# instance fields
.field protected mPlayButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mSubtitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget v0, Lcom/evie/sidescreen/R$layout;->tile_related_article:I

    sput v0, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hidePlayButton()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->mPlayButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideSubtitle()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->mSubtitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showPlayButton()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->mPlayButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/RelatedArticleViewHolder;->mSubtitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
