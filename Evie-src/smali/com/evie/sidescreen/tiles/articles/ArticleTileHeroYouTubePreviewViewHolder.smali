.class public Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;
.super Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;
.source "ArticleTileHeroYouTubePreviewViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder<",
        "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;",
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

.field mPoppableMedia:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mProgressText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mVideoFrame:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mVideoProgress:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget v0, Lcom/evie/sidescreen/R$layout;->tile_article_hero_youtube_video:I

    sput v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private static formatVideoProgressText(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3e8

    .line 100
    div-long/2addr p0, v0

    const-wide/16 v0, 0x3c

    .line 101
    div-long v2, p0, v0

    .line 102
    rem-long/2addr p0, v0

    .line 103
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v4, p1

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public hideImage()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public hideVideoProgressText()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mVideoProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onImageClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;->onMediaClick(Landroid/view/View;)V

    return-void
.end method

.method public setVideoFrameAspectRatio(II)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mVideoFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "H,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 87
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mVideoFrame:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public showImage(Ljava/lang/String;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public showVideoProgressText(J)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mProgressText:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->formatVideoProgressText(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewViewHolder;->mVideoProgress:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
