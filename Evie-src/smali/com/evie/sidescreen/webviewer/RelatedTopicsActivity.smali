.class public Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;
.super Lcom/evie/sidescreen/SideScreenActivity;
.source "RelatedTopicsActivity.java"

# interfaces
.implements Ldagger/android/support/HasSupportFragmentInjector;


# static fields
.field public static final EXTRA_ARTICLE_ID_KEY:Ljava/lang/String;

.field public static final EXTRA_TOPICS_KEY:Ljava/lang/String;

.field private static final PREFIX:Ljava/lang/String; = "com.evie.sidescreen.webviewer.RelatedTopicsActivity"


# instance fields
.field private mReferringArticleId:Ljava/lang/String;

.field mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mToolbarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".topics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->EXTRA_TOPICS_KEY:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".article_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->EXTRA_ARTICLE_ID_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getPopupViewProvider()Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;
    .locals 2

    .line 130
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method protected getScreenViewMetaData()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->mReferringArticleId:Ljava/lang/String;

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

    const-string v0, "related-topics"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 84
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->onCreateInject()V

    .line 85
    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/evie/sidescreen/R$layout;->ss_related_topics_activity:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->setContentView(Landroid/view/View;)V

    .line 88
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->EXTRA_TOPICS_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_0

    .line 97
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->finish()V

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->EXTRA_ARTICLE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->mReferringArticleId:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/evie/models/topics/data/ListTopicsRequestOptions;

    invoke-direct {v0}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;-><init>()V

    .line 104
    invoke-virtual {v0, p1}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->setIds(Ljava/util/List;)V

    .line 105
    new-instance p1, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const-string v2, "related_topic"

    iget-object v3, p0, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->mReferringArticleId:Ljava/lang/String;

    invoke-direct {p1, v2, v3, v1}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, p1}, Lcom/evie/sidescreen/personalize/TopicsListFragment;->createInstance(Lcom/evie/models/topics/data/ListTopicsRequestOptions;ZZLcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/personalize/TopicsListFragment;

    move-result-object p1

    .line 109
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v3, Lcom/evie/sidescreen/R$id;->container:I

    .line 110
    invoke-virtual {v0, v3, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 114
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 115
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 118
    iget-object p1, p0, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->mToolbarTitle:Landroid/widget/TextView;

    sget v0, Lcom/evie/sidescreen/R$string;->ss_related_topics_title:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->finish()V

    const/4 v0, 0x1

    return v0
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

    .line 135
    invoke-virtual {p0}, Lcom/evie/sidescreen/webviewer/RelatedTopicsActivity;->getSupportFragmentInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method
