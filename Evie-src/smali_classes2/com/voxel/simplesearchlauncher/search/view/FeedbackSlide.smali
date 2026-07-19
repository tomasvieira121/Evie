.class public Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;
.super Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;
.source "FeedbackSlide.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mNegativeIndex:I

.field private mSearch:Lcom/evie/search/SearchPresenter;

.field private mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/evie/search/SearchPresenter;Landroid/app/Activity;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 26
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    .line 27
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;->mSearch:Lcom/evie/search/SearchPresenter;

    .line 28
    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;->mActivity:Landroid/app/Activity;

    .line 29
    iput p5, p0, Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;->mNegativeIndex:I

    .line 31
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f12013b

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 32
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;->mPositiveButton:Landroid/widget/Button;

    const p2, 0x7f12013a

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 33
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;->mNegativeButton:Landroid/widget/Button;

    const p2, 0x7f120139

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 35
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;->mPositiveButton:Landroid/widget/Button;

    new-instance p2, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$FeedbackSlide$UnN6fkGGHK2u-8u6owz5fj_91vs;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$FeedbackSlide$UnN6fkGGHK2u-8u6owz5fj_91vs;-><init>(Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;->mNegativeButton:Landroid/widget/Button;

    new-instance p2, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$FeedbackSlide$2J4KbzeOGBpC7_qwr6_Q9pNfki4;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$FeedbackSlide$2J4KbzeOGBpC7_qwr6_Q9pNfki4;-><init>(Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;Landroid/view/View;)V
    .locals 4

    const-string p1, "hello@evie.com"

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?subject=Launcher Feedback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.SUBJECT"

    const-string v1, "Launcher Feedback"

    .line 41
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 44
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;->mSearch:Lcom/evie/search/SearchPresenter;

    invoke-virtual {p1}, Lcom/evie/search/SearchPresenter;->removeCustomPresenter()V

    .line 46
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object p1

    const-string v0, "ev_search_feedback_finished"

    new-instance v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v2, "type"

    const-string v3, "neg_enjoy_yes_feedback"

    .line 47
    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;Landroid/view/View;)V
    .locals 4

    .line 51
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget v0, p0, Lcom/voxel/simplesearchlauncher/search/view/FeedbackSlide;->mNegativeIndex:I

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V

    .line 52
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object p1

    const-string v0, "ev_search_feedback_finished"

    new-instance v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v2, "type"

    const-string v3, "neg_enjoy_no_feedback"

    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    .line 52
    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    return-void
.end method
