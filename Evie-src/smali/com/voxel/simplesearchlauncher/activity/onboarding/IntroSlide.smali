.class public Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;
.super Lcom/voxel/simplesearchlauncher/view/Slide;
.source "IntroSlide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;
    }
.end annotation


# instance fields
.field private mActivity:Landroidx/fragment/app/FragmentActivity;

.field private mDefaultItemData:Lcom/voxel/simplesearchlauncher/importer/ImportData;

.field private mHandler:Landroid/os/Handler;

.field private mImporterDataReady:Z

.field private mImporterInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

.field private mLoadImportersTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            "Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

.field private mSpinner:Landroid/view/View;

.field private mVideoView:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

.field private mWaitStartTime:J


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V
    .locals 3

    .line 268
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d007a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/view/Slide;-><init>(Landroid/view/View;)V

    .line 72
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mImporterDataReady:Z

    .line 83
    new-instance v1, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)V

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mLoadImportersTask:Landroid/os/AsyncTask;

    .line 270
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 271
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    .line 272
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mHandler:Landroid/os/Handler;

    .line 273
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    .line 275
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mView:Landroid/view/View;

    const p3, 0x7f0a02e0

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mVideoView:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    .line 276
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mView:Landroid/view/View;

    const p3, 0x7f0a01e1

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mSpinner:Landroid/view/View;

    .line 278
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mLoadImportersTask:Landroid/os/AsyncTask;

    sget-object p3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    aput-object p1, v1, v0

    invoke-virtual {p2, p3, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mImporterInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mWaitStartTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;J)J
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mWaitStartTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mImporterInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Lcom/voxel/simplesearchlauncher/view/TextureVideoView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mVideoView:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->showSpinner()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->waitForImporters()V

    return-void
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Lcom/voxel/simplesearchlauncher/importer/ImportData;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mDefaultItemData:Lcom/voxel/simplesearchlauncher/importer/ImportData;

    return-object p0
.end method

.method static synthetic access$202(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;Lcom/voxel/simplesearchlauncher/importer/ImportData;)Lcom/voxel/simplesearchlauncher/importer/ImportData;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mDefaultItemData:Lcom/voxel/simplesearchlauncher/importer/ImportData;

    return-object p1
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mActivity:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mImporterDataReady:Z

    return p0
.end method

.method static synthetic access$502(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mImporterDataReady:Z

    return p1
.end method

.method static synthetic access$600(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->hideSpinner()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mSpinner:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->continueToOnboarding()V

    return-void
.end method

.method static synthetic access$900(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private continueToOnboarding()V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mImporterInfos:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 382
    :cond_1
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->setupSlideLayoutForImportPopup()V

    goto :goto_1

    .line 380
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->setupSlideLayoutForNoImport()V

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method private hideSpinner()Landroid/view/ViewPropertyAnimator;
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mSpinner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 299
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mSpinner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 301
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method private setupSlideLayoutForImportPopup()V
    .locals 12

    .line 399
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->setupSlideLayoutForTutorial()I

    move-result v0

    .line 401
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mImporterInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 402
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mImporterInfos:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;

    move-object v8, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v8, v1

    .line 405
    :goto_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    new-instance v11, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportIntroSlide;

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mDefaultItemData:Lcom/voxel/simplesearchlauncher/importer/ImportData;

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x2

    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    move-object v4, v11

    move-object v6, v1

    move v9, v2

    invoke-direct/range {v4 .. v10}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportIntroSlide;-><init>(Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/voxel/simplesearchlauncher/importer/ImportData;Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;ILcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V

    add-int/2addr v0, v3

    invoke-virtual {v1, v11, v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V

    .line 407
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    new-instance v1, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mImporterInfos:Ljava/util/List;

    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    invoke-direct {v1, v4, v0, v5, v6}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;-><init>(Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Ljava/util/List;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V

    .line 408
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    invoke-virtual {v0, v3}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V

    return-void
.end method

.method private setupSlideLayoutForNoImport()V
    .locals 2

    .line 413
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->setupSlideLayoutForTutorial()I

    move-result v0

    if-lez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V

    goto :goto_0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :goto_0
    return-void
.end method

.method private setupSlideLayoutForTutorial()I
    .locals 4

    .line 390
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->needsPermissions(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    new-instance v2, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mActivity:Landroidx/fragment/app/FragmentActivity;

    check-cast v3, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    invoke-direct {v2, v3, v0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;-><init>(Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;Lcom/voxel/simplesearchlauncher/view/SlideLayout;)V

    invoke-virtual {v0, v2, v1}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private showSpinner()Landroid/view/ViewPropertyAnimator;
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mSpinner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 284
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mSpinner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mSpinner:Landroid/view/View;

    instance-of v1, v0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    if-eqz v1, :cond_0

    .line 286
    check-cast v0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    invoke-virtual {v0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->startAnimation()V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mSpinner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 289
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 292
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 293
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method private waitForImporters()V
    .locals 4

    .line 307
    new-instance v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$2;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)V

    .line 370
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
    .locals 1

    .line 427
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 428
    new-instance v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$3;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public getSlideExitingAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
    .locals 3

    .line 502
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 504
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2ee

    .line 505
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 507
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onEnteringSlide()V
    .locals 0

    return-void
.end method

.method public onExitingSlide()V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;->mVideoView:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->release()V

    return-void
.end method
