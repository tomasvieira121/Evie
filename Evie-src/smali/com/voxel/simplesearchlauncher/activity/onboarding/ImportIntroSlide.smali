.class public Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportIntroSlide;
.super Lcom/voxel/simplesearchlauncher/view/Slide;
.source "ImportIntroSlide.java"


# instance fields
.field private mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/voxel/simplesearchlauncher/importer/ImportData;Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;ILcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 33
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v4, 0x7f0d0076

    invoke-virtual {v0, v4, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/view/Slide;-><init>(Landroid/view/View;)V

    .line 34
    iput-object v2, v7, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportIntroSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    .line 36
    iget-object v0, v7, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportIntroSlide;->mView:Landroid/view/View;

    const v4, 0x7f0a01cc

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 37
    iget-object v4, v7, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportIntroSlide;->mView:Landroid/view/View;

    const v5, 0x7f0a01cf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/widget/Button;

    .line 38
    iget-object v4, v7, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportIntroSlide;->mView:Landroid/view/View;

    const v5, 0x7f0a01ce

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120194

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, v3, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->label:Ljava/lang/String;

    aput-object v8, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_0
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object v0

    const-string v1, "ev_onboard_import"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 45
    new-instance v8, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportIntroSlide$C_pSSh4OTtgrQx4MvTH-IOhL4fE;

    move-object v0, v8

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportIntroSlide$C_pSSh4OTtgrQx4MvTH-IOhL4fE;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportIntroSlide;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;I)V

    invoke-virtual {v9, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportIntroSlide$51kRjDCPzZB5uiMt822cxYhw-Sk;

    move-object v8, v0

    move-object v10, v14

    move-object/from16 v11, p3

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    invoke-direct/range {v8 .. v13}, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportIntroSlide$51kRjDCPzZB5uiMt822cxYhw-Sk;-><init>(Landroid/widget/Button;Landroid/widget/Button;Lcom/voxel/simplesearchlauncher/importer/ImportData;Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportIntroSlide;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;ILandroid/view/View;)V
    .locals 0

    .line 46
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 51
    iget-object p1, p2, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->importData:Lcom/voxel/simplesearchlauncher/importer/ImportData;

    invoke-static {p3, p1, p4}, Lcom/voxel/simplesearchlauncher/importer/LauncherImportHelper;->importItems(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/ImportData;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V

    .line 52
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 53
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "launcher.first_run_did_auto_import"

    const/4 p4, 0x1

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportIntroSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    invoke-virtual {p1, p5}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$new$1(Landroid/widget/Button;Landroid/widget/Button;Lcom/voxel/simplesearchlauncher/importer/ImportData;Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;Landroid/view/View;)V
    .locals 0

    const/4 p5, 0x0

    .line 61
    invoke-virtual {p0, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p1, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_0

    .line 64
    iget-object p0, p2, Lcom/voxel/simplesearchlauncher/importer/ImportData;->itemInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p2, Lcom/voxel/simplesearchlauncher/importer/ImportData;->screens:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 65
    invoke-static {p3, p2, p4}, Lcom/voxel/simplesearchlauncher/importer/LauncherImportHelper;->importItems(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/ImportData;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V

    .line 67
    :cond_0
    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
    .locals 3

    .line 78
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportIntroSlide;->mView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2ee

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 83
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getSlideExitingAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
    .locals 3

    .line 89
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 91
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportIntroSlide;->mView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 93
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p1

    nop

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
