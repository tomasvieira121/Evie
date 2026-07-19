.class public Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "OnboardingActivity.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

.field private mOnRequestPermissionsResultCallback:Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

.field mPermissionMode:Z

.field private mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 89
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 77
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->mPermissionMode:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->finish()V

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->getDisplayedChild()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->getSlide(I)Lcom/voxel/simplesearchlauncher/view/Slide;

    move-result-object v0

    instance-of v0, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->getDisplayedChild()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 44
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 46
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->mContentView:Landroid/view/View;

    .line 49
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->mContentView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0xc000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 54
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->mContentView:Landroid/view/View;

    const v0, 0x7f0a0281

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    .line 56
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "permission"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    new-instance v2, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;

    invoke-direct {v2, p0, p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;-><init>(Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;Lcom/voxel/simplesearchlauncher/view/SlideLayout;)V

    invoke-virtual {p1, v2, v1}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V

    .line 59
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->mPermissionMode:Z

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    new-instance v2, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    invoke-direct {v2, p0, p1, v3}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V

    invoke-virtual {p1, v2, v1}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->addSlide(Lcom/voxel/simplesearchlauncher/view/Slide;I)V

    .line 63
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 64
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "launcher.first_run_activity_displayed"

    .line 65
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "launcher.show_evie_two_intro"

    .line 66
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    const v0, 0x146a900

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setFirstVersion(I)V

    .line 71
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setCurrentVersion(I)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 111
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->mOnRequestPermissionsResultCallback:Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v0, p1, p2, p3}, Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public setOnRequestPermissionsResultCallback(Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->mOnRequestPermissionsResultCallback:Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

    return-void
.end method
