.class public Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;
.super Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;
.source "ArticleTileRowViewHolder.java"


# static fields
.field public static final ID:I


# instance fields
.field protected mSubtitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget v0, Lcom/evie/sidescreen/R$layout;->tile_article_row:I

    sput v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hideSubtitle()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;->mSubtitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowViewHolder;->mSubtitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
