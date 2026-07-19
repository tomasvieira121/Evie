.class public Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;
.super Lcom/evie/sidescreen/SideScreenActivity;
.source "PersonalizeSearchActivity.java"

# interfaces
.implements Ldagger/android/support/HasSupportFragmentInjector;


# instance fields
.field mNoResults:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mNoSearchYet:Z

.field mOptions:Lcom/evie/models/topics/data/ListTopicsRequestOptions;

.field mResultsContainer:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSearchEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTopicsListFragment:Lcom/evie/sidescreen/personalize/TopicsListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->startSearch(Ljava/lang/String;)V

    return-void
.end method

.method private startSearch(Ljava/lang/String;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mOptions:Lcom/evie/models/topics/data/ListTopicsRequestOptions;

    invoke-virtual {v0, p1}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->setSearchQuery(Ljava/lang/String;)V

    .line 124
    iget-boolean p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mNoSearchYet:Z

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mNoResults:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mResultsContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 127
    iput-boolean v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mNoSearchYet:Z

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mTopicsListFragment:Lcom/evie/sidescreen/personalize/TopicsListFragment;

    iget-object p1, p1, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mTopicsListPresenter:Lcom/evie/sidescreen/personalize/TopicsListPresenter;

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mOptions:Lcom/evie/models/topics/data/ListTopicsRequestOptions;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->setOptions(Lcom/evie/models/topics/data/ListTopicsRequestOptions;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 135
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getPopupViewProvider()Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;
    .locals 2

    .line 141
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method protected getScreenViewMetaData()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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

    const-string v0, "personalize-search"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 42
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->onCreateInject()V

    .line 43
    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget p1, Lcom/evie/sidescreen/R$layout;->ss_personalize_search_activity:I

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->setContentView(I)V

    .line 45
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 46
    new-instance p1, Lcom/evie/models/topics/data/ListTopicsRequestOptions;

    invoke-direct {p1}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mOptions:Lcom/evie/models/topics/data/ListTopicsRequestOptions;

    .line 47
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mOptions:Lcom/evie/models/topics/data/ListTopicsRequestOptions;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/evie/models/topics/data/ListTopicsRequestOptions;->setLimit(I)V

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mNoSearchYet:Z

    .line 50
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mOptions:Lcom/evie/models/topics/data/ListTopicsRequestOptions;

    new-instance v1, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    const-string v2, "personalize_search"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/evie/sidescreen/analytics/data/ScreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Lcom/evie/sidescreen/personalize/TopicsListFragment;->createInstance(Lcom/evie/models/topics/data/ListTopicsRequestOptions;ZZLcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/personalize/TopicsListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mTopicsListFragment:Lcom/evie/sidescreen/personalize/TopicsListFragment;

    .line 52
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mResultsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mTopicsListFragment:Lcom/evie/sidescreen/personalize/TopicsListFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 54
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 56
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mSearchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity$1;-><init>(Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 82
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mTopicsListFragment:Lcom/evie/sidescreen/personalize/TopicsListFragment;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/personalize/TopicsListFragment;->setActive(Z)V

    .line 83
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mTopicsListFragment:Lcom/evie/sidescreen/personalize/TopicsListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/personalize/TopicsListFragment;->setActive(Z)V

    .line 89
    invoke-super {p0}, Lcom/evie/sidescreen/SideScreenActivity;->onDestroy()V

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

    .line 146
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->getSupportFragmentInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method
