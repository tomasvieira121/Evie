.class public abstract Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;
.super Lcom/evie/sidescreen/tiles/TileViewHolder;
.source "AbstractArticleTileViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;",
        ">",
        "Lcom/evie/sidescreen/tiles/TileViewHolder<",
        "TP;>;"
    }
.end annotation


# instance fields
.field protected mButtonTouchDelegateSize:I
    .annotation runtime Lbutterknife/BindDimen;
    .end annotation
.end field

.field protected mContent:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mHeader:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mHeaderContextButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mHeaderLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mHeaderLink:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mHeaderLinkDivider:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mHeaderLogo:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mHeaderPublisher:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mHeaderTagContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mHeaderTimeElapsed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mHeaderTimeElapsedDivider:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mHeaderTopic:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mHeaderTopicDivider:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mImage:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 80
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/TileViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$AbstractArticleTileViewHolder$rP5qnAVGzWfu-bF733uvI_YZT0Y;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$AbstractArticleTileViewHolder$rP5qnAVGzWfu-bF733uvI_YZT0Y;-><init>(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;Landroid/view/View;)V
    .locals 6

    .line 85
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 90
    iget v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mButtonTouchDelegateSize:I

    div-int/lit8 v1, v1, 0x2

    neg-int v2, v1

    .line 92
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 93
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 94
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 95
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 96
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderContextButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderContextButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 99
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 100
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderContextButton:Landroid/view/View;

    :goto_0
    if-eq v2, v1, :cond_1

    .line 102
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 103
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v5, v2

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    move-object v2, v3

    goto :goto_0

    .line 107
    :cond_1
    new-instance v1, Lcom/evie/sidescreen/util/HackedTouchDelegate;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderContextButton:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Lcom/evie/sidescreen/util/HackedTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 108
    invoke-virtual {p1, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method


# virtual methods
.method public getTagView(I)Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTagContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 190
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTagContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/evie/sidescreen/R$layout;->tile_article_header_tag:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTagContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTagContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 196
    :goto_0
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public hideHeader()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeader:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 262
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideHeaderContextButton()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderContextButton:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 274
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideHeaderLogo()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLogo:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLogo:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public hideImage()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 131
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideLink()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLink:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hidePublisher()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderPublisher:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideTagDivider(Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;)V
    .locals 1

    .line 231
    iget-object p1, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;->divider:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideTagImage(Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;)V
    .locals 2

    .line 222
    iget-object v0, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 223
    iget-object p1, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public hideTagText(Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;)V
    .locals 1

    .line 213
    iget-object p1, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;->text:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideTimeElapsed()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTimeElapsed:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideTopic()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTopic:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v1, :cond_0

    move-object p1, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->onArticleClick(Landroid/view/View;)V

    return-void
.end method

.method public onContextMenuClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->onContextMenuClick(Landroid/view/View;)V

    return-void
.end method

.method public removeExtraTagViews(I)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTagContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_0

    sub-int p1, v0, p1

    .line 203
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTagContainer:Landroid/view/ViewGroup;

    sub-int/2addr v0, p1

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->removeViews(II)V

    :cond_0
    return-void
.end method

.method public setHeaderContextButtonClickability(Z)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderContextButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public setTagTint(Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;Ljava/lang/String;)V
    .locals 2

    .line 235
    iget-object v0, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;->text:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    iget-object p1, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setColorFilter(I)V

    return-void
.end method

.method public showHeaderLogo(Ljava/lang/String;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLogo:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLogo:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public showImage(Ljava/lang/String;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showPublisher(Ljava/lang/String;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderPublisher:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderPublisher:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showTagDivider(Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;)V
    .locals 1

    .line 227
    iget-object p1, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;->divider:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showTagImage(Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;Ljava/lang/String;)V
    .locals 1

    .line 217
    iget-object v0, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 218
    iget-object p1, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return-void
.end method

.method public showTagText(Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;Ljava/lang/String;)V
    .locals 1

    .line 208
    iget-object v0, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object p1, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;->text:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showTimeElapsed(Ljava/lang/String;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTimeElapsed:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTimeElapsed:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showTitle(Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showTopic(Ljava/lang/String;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTopic:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTopic:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updateDividers()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTopicDivider:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTopic:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTimeElapsedDivider:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTimeElapsed:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLinkDivider:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLink:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLogo:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderPublisher:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 244
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTopicDivider:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTopicDivider:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTimeElapsedDivider:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTimeElapsedDivider:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLinkDivider:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLinkDivider:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
