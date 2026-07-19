.class public Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "ImageCaptionPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;",
        ">;",
        "Lcom/evie/sidescreen/tiles/TileRowDividerItemDecoration$TileRowDividerContractor;"
    }
.end annotation


# instance fields
.field private final mArticle:Lorg/schema/NewsArticle;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnMenuClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lorg/schema/NewsArticle;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionPresenter;->mArticle:Lorg/schema/NewsArticle;

    .line 32
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionPresenter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 33
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionPresenter;->mOnMenuClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected static getTimeElapsedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 92
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {p1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 103
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 104
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    .line 105
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v5

    .line 106
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const/4 p1, 0x1

    cmp-long v9, v3, v7

    if-lez v9, :cond_1

    .line 109
    sget v0, Lcom/evie/sidescreen/R$string;->ss_days_ago:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    cmp-long v3, v5, v7

    if-lez v3, :cond_2

    .line 112
    sget v0, Lcom/evie/sidescreen/R$string;->ss_hours_ago:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 115
    :cond_2
    sget v3, Lcom/evie/sidescreen/R$string;->ss_minutes_ago:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-virtual {p0, v3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v1
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;
    .locals 1

    .line 38
    new-instance v0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 43
    sget v0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->setText(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getPublisherOrganization()Lorg/schema/Organization;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v0}, Lorg/schema/Organization;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {v0}, Lorg/schema/Organization;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->showPublisher(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->hidePublisher()V

    .line 58
    :goto_0
    invoke-virtual {v0}, Lorg/schema/Organization;->getFaviconUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v0}, Lorg/schema/Organization;->getFaviconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->showHeaderLogo(Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->hideHeaderLogo()V

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->hidePublisher()V

    .line 65
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->hideHeaderLogo()V

    .line 68
    :goto_1
    iget-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->itemView:Landroid/view/View;

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionPresenter;->mArticle:Lorg/schema/NewsArticle;

    .line 70
    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getDatePublished()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionPresenter;->getTimeElapsedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 73
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->showTimeElapsed(Ljava/lang/String;)V

    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->hideTimeElapsed()V

    .line 78
    :goto_2
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->hideLink()V

    .line 80
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/ImageCaptionViewHolder;->updateDividers()V

    return-void
.end method

.method public shouldShowBottomTileDivider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowTopTileDivider()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
