.class public abstract Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;
.super Lcom/evie/sidescreen/tiles/TilePresenter;
.source "AbstractArticleTilePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;",
        ">",
        "Lcom/evie/sidescreen/tiles/TilePresenter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field protected final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field protected final mArticle:Lorg/schema/NewsArticle;

.field private final mArticlePopupMenuHelper:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

.field private final mPopupImageViewerPresenterFactory:Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;


# direct methods
.method public constructor <init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p3, p5}, Lcom/evie/sidescreen/tiles/TilePresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    .line 64
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    .line 65
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 66
    iput-object p6, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticlePopupMenuHelper:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

    .line 67
    iput-object p7, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mPopupImageViewerPresenterFactory:Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;

    return-void
.end method

.method private getTargetAssetWidthPixels(Landroid/content/Context;Landroid/view/View;)I
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 267
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 268
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v0, :cond_2

    .line 271
    instance-of v1, p2, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_1

    instance-of p2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-nez p2, :cond_1

    goto :goto_0

    .line 272
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to determine view width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-ltz v0, :cond_3

    goto :goto_1

    .line 274
    :cond_3
    invoke-static {p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result v0

    :goto_1
    return v0
.end method


# virtual methods
.method protected bindHeader(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getPublisherOrganization()Lorg/schema/Organization;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v0}, Lorg/schema/Organization;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {v0}, Lorg/schema/Organization;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->showPublisher(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->hidePublisher()V

    .line 91
    :goto_0
    invoke-virtual {v0}, Lorg/schema/Organization;->getFaviconUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v0}, Lorg/schema/Organization;->getFaviconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->showHeaderLogo(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->hideHeaderLogo()V

    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->hidePublisher()V

    .line 98
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->hideHeaderLogo()V

    .line 101
    :goto_1
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getDisplayTopicDescription()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 103
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->showTopic(Ljava/lang/String;)V

    goto :goto_2

    .line 105
    :cond_3
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->hideTopic()V

    .line 108
    :goto_2
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getTags()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    const/4 v2, 0x0

    .line 110
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 111
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schema/Tag;

    .line 112
    invoke-virtual {p1, v2}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->getTagView(I)Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;

    move-result-object v4

    .line 114
    invoke-virtual {v3}, Lorg/schema/Tag;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 115
    invoke-virtual {v3}, Lorg/schema/Tag;->getImgUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 116
    invoke-virtual {v3}, Lorg/schema/Tag;->getTint()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v5, :cond_4

    .line 119
    invoke-virtual {v3}, Lorg/schema/Tag;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v4, v8}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->showTagText(Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;Ljava/lang/String;)V

    goto :goto_4

    .line 121
    :cond_4
    invoke-virtual {p1, v4}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->hideTagText(Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;)V

    :goto_4
    if-eqz v6, :cond_5

    .line 125
    invoke-virtual {v3}, Lorg/schema/Tag;->getImgUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v4, v8}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->showTagImage(Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;Ljava/lang/String;)V

    goto :goto_5

    .line 127
    :cond_5
    invoke-virtual {p1, v4}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->hideTagImage(Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;)V

    :goto_5
    if-nez v5, :cond_7

    if-eqz v6, :cond_6

    goto :goto_6

    .line 133
    :cond_6
    invoke-virtual {p1, v4}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->hideTagDivider(Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;)V

    goto :goto_7

    .line 131
    :cond_7
    :goto_6
    invoke-virtual {p1, v4}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->showTagDivider(Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;)V

    :goto_7
    if-eqz v7, :cond_8

    .line 137
    invoke-virtual {v3}, Lorg/schema/Tag;->getTint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->setTagTint(Lcom/evie/sidescreen/tiles/articles/ArticleTileTagViewHolder;Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    if-nez v0, :cond_a

    goto :goto_8

    .line 141
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_8
    invoke-virtual {p1, v1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->removeExtraTagViews(I)V

    .line 143
    iget-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->itemView:Landroid/view/View;

    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    .line 145
    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getDatePublished()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v0, v1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->getTimeElapsedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->shouldDisplayAge()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 148
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->showTimeElapsed(Ljava/lang/String;)V

    goto :goto_9

    .line 150
    :cond_b
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->hideTimeElapsed()V

    .line 153
    :goto_9
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->hideLink()V

    .line 155
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->updateDividers()V

    return-void
.end method

.method protected bindImage(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;IF)V"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 160
    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->showImage(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getImage()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/schema/MediaSelector;->selectMediaUrl(Ljava/util/List;IF)Ljava/lang/String;

    move-result-object p2

    .line 163
    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->showImage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bindTitle(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->showTitle(Ljava/lang/String;)V

    return-void
.end method

.method protected getAnalyticsAttributes()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "trending_article"

    .line 171
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_news_article"

    .line 172
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract getImageAspectRatio()F
.end method

.method public handleArticleClick(Landroid/view/View;)V
    .locals 8

    const-string v0, "image"

    .line 184
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getImage()Ljava/util/List;

    move-result-object v0

    const/16 v3, 0x44c

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v4}, Lorg/schema/MediaSelector;->selectMedia(Ljava/util/List;IF)Lorg/schema/MediaObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lorg/schema/MediaObject;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 188
    invoke-virtual {v0}, Lorg/schema/MediaObject;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-virtual {v0}, Lorg/schema/MediaObject;->getExternalUrl()Ljava/lang/String;

    move-result-object v0

    .line 190
    instance-of v4, p1, Landroid/widget/ImageView;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 191
    :goto_0
    iget-object v6, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mPopupImageViewerPresenterFactory:Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;

    iget-object v7, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v6, v3, v0, v7, v4}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenterFactory;->create(Ljava/lang/String;Ljava/lang/String;Lorg/schema/NewsArticle;Landroid/widget/ImageView;)Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenter;

    move-result-object v0

    .line 192
    iget-object v3, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v3, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;

    iget-object v3, v3, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    move-result-object v3

    check-cast v3, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;

    .line 193
    invoke-virtual {v3, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->bindPresenter(Lcom/evie/sidescreen/mvp/ItemPresenter;)V

    .line 194
    invoke-virtual {v0, v3}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenter;->bindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    .line 196
    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenter;->showPopup()V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 200
    iget-object v3, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v3}, Lorg/schema/NewsArticle;->isShowIntermediate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const-class v3, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;

    invoke-virtual {v0, v3}, Lcom/evie/sidescreen/ActivityStarter;->getLocalActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 202
    sget-object v3, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->EXTRA_ARTICLE:Ljava/lang/String;

    iget-object v4, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 203
    iget-object v3, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    invoke-virtual {v3, p1, v0, v2}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    .line 207
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->launchWebViewer(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public isSameItem(Ljava/lang/Object;)Z
    .locals 1

    .line 248
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/TilePresenter;->isSameItem(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 252
    :cond_0
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;

    .line 253
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    iget-object p1, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public launchWebViewer(Landroid/view/View;)V
    .locals 11

    .line 212
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 213
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getPublisherOrganization()Lorg/schema/Organization;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lorg/schema/Organization;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Lorg/schema/Organization;->getFaviconUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {v0}, Lorg/schema/Organization;->getAndroidPackageId()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object v8, v1

    .line 218
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 219
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getTopics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/schema/Thing;

    .line 222
    instance-of v6, v5, Lorg/schema/evie/topics/Topic;

    if-eqz v6, :cond_3

    .line 223
    check-cast v5, Lorg/schema/evie/topics/Topic;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 227
    :cond_4
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getAnalytics()Ljava/util/Map;

    move-result-object v1

    const-string v5, "analytics_proto"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    sget-object v5, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_TOPICS_KEY:Ljava/lang/String;

    invoke-interface {v7, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_FAVICON_KEY:Ljava/lang/String;

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_ANALYTICS_PROTO_KEY:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getHeadline()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getAndroidUrl()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getAmpUrl()Ljava/lang/String;

    move-result-object v10

    move-object v2, p1

    invoke-virtual/range {v1 .. v10}, Lcom/evie/sidescreen/ActivityStarter;->startUrl(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onArticleClick(Landroid/view/View;)V
    .locals 0

    .line 177
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->onTapped()V

    .line 178
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->trackTap()V

    .line 179
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->handleArticleClick(Landroid/view/View;)V

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 44
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->bindTitle(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->bindHeader(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V

    .line 74
    iget-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;

    iget-object v1, v1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-direct {p0, v0, v1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->getTargetAssetWidthPixels(Landroid/content/Context;Landroid/view/View;)I

    move-result v0

    .line 75
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->getImageAspectRatio()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->bindImage(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;IF)V

    return-void
.end method

.method public onContextMenuClick(Landroid/view/View;)V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticlePopupMenuHelper:Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;->showMenuAtView(Lorg/schema/NewsArticle;Landroid/content/Context;Landroid/view/View;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    return-void
.end method

.method protected trackTap()V
    .locals 3

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "trending_article"

    .line 239
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_news_article"

    .line 240
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_content_tile"

    .line 241
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_screen_info"

    .line 242
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTilePresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v2, "ev_ss_tap"

    invoke-virtual {v1, v2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
