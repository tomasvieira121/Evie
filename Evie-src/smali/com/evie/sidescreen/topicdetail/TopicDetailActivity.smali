.class public Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;
.super Lcom/evie/sidescreen/SideScreenActivity;
.source "TopicDetailActivity.java"

# interfaces
.implements Lcom/evie/sidescreen/topicdetail/TopicDetailFragment$TopicDetailIdProvider;
.implements Ldagger/android/support/HasSupportFragmentInjector;


# static fields
.field public static final INTENT_FROM_RELATED_VIDEOS:Ljava/lang/String;

.field public static final INTENT_KEY_TOPIC_ID:Ljava/lang/String;

.field private static final PREFIX:Ljava/lang/String; = "com.evie.sidescreen.topicdetail.TopicDetailActivity"


# instance fields
.field private mFromRelatedVideos:Z

.field mPopupView:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPopupViewProvider:Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

.field private mResult:Landroid/content/Intent;

.field private mTopicId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".topicId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->INTENT_KEY_TOPIC_ID:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".from_related_videos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->INTENT_FROM_RELATED_VIDEOS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenActivity;-><init>()V

    .line 35
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mPopupViewProvider:Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    return-void
.end method


# virtual methods
.method public getPopupViewProvider()Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mPopupViewProvider:Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    return-object v0
.end method

.method protected getScreenViewMetaData()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mTopicId:Ljava/lang/String;

    return-object v0
.end method

.method protected getScreenViewProtobuf()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getScreenViewSubType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getScreenViewTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getScreenViewType()Ljava/lang/String;
    .locals 1

    const-string v0, "topic-detail"

    return-object v0
.end method

.method public getTopicId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mTopicId:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->onCreateInject()V

    .line 44
    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->INTENT_KEY_TOPIC_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mTopicId:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->INTENT_FROM_RELATED_VIDEOS:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mFromRelatedVideos:Z

    .line 49
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mTopicId:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->finish()V

    return-void

    .line 54
    :cond_0
    sget p1, Lcom/evie/sidescreen/R$layout;->ss_topic_detail_activity:I

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->setContentView(I)V

    .line 55
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 56
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mPopupViewProvider:Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mPopupView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;->setPopupView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setArticleResult(Lorg/schema/NewsArticle;)Z
    .locals 2

    .line 116
    iget-boolean v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mFromRelatedVideos:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mResult:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mResult:Landroid/content/Intent;

    const/4 v0, -0x1

    .line 120
    iget-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mResult:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mResult:Landroid/content/Intent;

    const-string v1, "article"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public setIsFollowingResult(Z)V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mFromRelatedVideos:Z

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mResult:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mResult:Landroid/content/Intent;

    const/4 v0, -0x1

    .line 109
    iget-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mResult:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->mResult:Landroid/content/Intent;

    const-string v1, "following"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public supportFragmentInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->getSupportFragmentInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method
