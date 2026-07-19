.class public Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;
.super Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;
.source "VideoSeedViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder<",
        "Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mSubtitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private maxLines:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    sget v0, Lcom/evie/sidescreen/R$layout;->tile_video_related_seed:I

    sput v0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result p1

    iput p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->maxLines:I

    return-void
.end method


# virtual methods
.method public hideSubtitle()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 41
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result p1

    iget v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->maxLines:I

    if-ne p1, v0, :cond_0

    .line 42
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    return-void
.end method

.method public showSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    iget v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->maxLines:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 32
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
