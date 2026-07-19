.class public Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;
.super Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;
.source "AppFlashFeedbackSlide.java"


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
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    .line 26
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;->mSearch:Lcom/evie/search/SearchPresenter;

    .line 27
    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;->mActivity:Landroid/app/Activity;

    .line 28
    iput p5, p0, Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;->mNegativeIndex:I

    .line 30
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f12013b

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 31
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;->mPositiveButton:Landroid/widget/Button;

    const p2, 0x7f12013a

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 32
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;->mNegativeButton:Landroid/widget/Button;

    const p2, 0x7f120139

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 34
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;->mPositiveButton:Landroid/widget/Button;

    new-instance p2, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$AppFlashFeedbackSlide$tqgzhUU3qszGlImCiZ0_TOnwBcA;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$AppFlashFeedbackSlide$tqgzhUU3qszGlImCiZ0_TOnwBcA;-><init>(Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;->mNegativeButton:Landroid/widget/Button;

    new-instance p2, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$AppFlashFeedbackSlide$tWy3XxE0SRPgBfMWwXWY9VACJuY;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$AppFlashFeedbackSlide$tWy3XxE0SRPgBfMWwXWY9VACJuY;-><init>(Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;Landroid/view/View;)V
    .locals 4

    const-string p1, "AppFlashFeedback@verizonwireless.com"

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?subject=Feedback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.SUBJECT"

    const-string v1, "Feedback"

    .line 40
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 43
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;->mSearch:Lcom/evie/search/SearchPresenter;

    invoke-virtual {p1}, Lcom/evie/search/SearchPresenter;->removeCustomPresenter()V

    .line 45
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object p1

    const-string v0, "ev_search_feedback_finished"

    new-instance v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v2, "type"

    const-string v3, "neg_enjoy_yes_feedback"

    .line 46
    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;Landroid/view/View;)V
    .locals 4

    .line 50
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget v0, p0, Lcom/voxel/simplesearchlauncher/search/view/AppFlashFeedbackSlide;->mNegativeIndex:I

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V

    .line 51
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object p1

    const-string v0, "ev_search_feedback_finished"

    new-instance v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v2, "type"

    const-string v3, "neg_enjoy_no_feedback"

    .line 52
    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    .line 51
    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    return-void
.end method
