.class public Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;
.super Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;
.source "RatingSlide.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mNegativeIndex:I

.field private mSearch:Lcom/evie/search/SearchPresenter;

.field private mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/evie/search/SearchPresenter;Landroid/app/Activity;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 25
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    .line 26
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;->mSearch:Lcom/evie/search/SearchPresenter;

    .line 27
    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;->mActivity:Landroid/app/Activity;

    .line 28
    iput p5, p0, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;->mNegativeIndex:I

    .line 30
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f120143

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 31
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;->mPositiveButton:Landroid/widget/Button;

    const p2, 0x7f120142

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 32
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;->mNegativeButton:Landroid/widget/Button;

    const p2, 0x7f120141

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 34
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;->mPositiveButton:Landroid/widget/Button;

    new-instance p2, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$RatingSlide$7PKofygsuSUeafLdZ_nYMvIICkY;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$RatingSlide$7PKofygsuSUeafLdZ_nYMvIICkY;-><init>(Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;->mNegativeButton:Landroid/widget/Button;

    new-instance p2, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$RatingSlide$3CBN27ZRdIvstHQRWQWblWu1SZE;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$RatingSlide$3CBN27ZRdIvstHQRWQWblWu1SZE;-><init>(Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;Landroid/view/View;)V
    .locals 4

    .line 35
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 39
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 42
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    :goto_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;->mSearch:Lcom/evie/search/SearchPresenter;

    invoke-virtual {p1}, Lcom/evie/search/SearchPresenter;->removeCustomPresenter()V

    .line 47
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object p1

    const-string v0, "ev_search_feedback_finished"

    new-instance v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v2, "type"

    const-string v3, "pos_enjoy_yes_rating"

    .line 48
    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;Landroid/view/View;)V
    .locals 4

    .line 52
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget v0, p0, Lcom/voxel/simplesearchlauncher/search/view/RatingSlide;->mNegativeIndex:I

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V

    .line 54
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object p1

    const-string v0, "ev_search_feedback_finished"

    new-instance v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v2, "type"

    const-string v3, "pos_enjoy_no_rating"

    .line 55
    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    return-void
.end method
