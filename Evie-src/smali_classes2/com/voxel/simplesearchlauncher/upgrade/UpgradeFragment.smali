.class public Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;
.super Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;
.source "UpgradeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final REVERSE_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field mBackground:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCloseButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mDoneButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFeed:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

.field mGestures:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

.field mItemView:Landroid/view/View;

.field mSearchBar:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x3eb33333    # 0.35f

    const v1, 0x3f451eb8    # 0.77f

    const v2, 0x3e428f5c    # 0.19f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    const v0, 0x3f4f5c29    # 0.81f

    const/4 v1, 0x0

    const v2, 0x3f266666    # 0.65f

    const v3, 0x3e6b851f    # 0.23f

    .line 42
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->REVERSE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->notifyFragmentRequestClose()V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->runExitAnimation()V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$1(Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->runExitAnimation()V

    return-void
.end method


# virtual methods
.method public focusFragment(Z)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0118

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mItemView:Landroid/view/View;

    .line 51
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mItemView:Landroid/view/View;

    return-object p1
.end method

.method protected onFragmentWillClose()V
    .locals 1

    .line 126
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onFragmentWillClose()V

    .line 127
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mSearchBar:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mVideo:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mSearchBar:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mVideo:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->stop()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mFeed:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mVideo:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mFeed:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mVideo:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->stop()V

    :cond_1
    return-void
.end method

.method public onPopLauncherStackedAppearance(Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 0

    return-void
.end method

.method public onPushLauncherStackedAppearance(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 56
    invoke-super {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mItemView:Landroid/view/View;

    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 59
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mCloseButton:Landroid/view/View;

    new-instance v0, Lcom/voxel/simplesearchlauncher/upgrade/-$$Lambda$UpgradeFragment$cM24P-e04X7DJ_igACsqvmzEhOA;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/upgrade/-$$Lambda$UpgradeFragment$cM24P-e04X7DJ_igACsqvmzEhOA;-><init>(Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mDoneButton:Landroid/view/View;

    new-instance v0, Lcom/voxel/simplesearchlauncher/upgrade/-$$Lambda$UpgradeFragment$sK6bTzf5PvXccflm5OYx7IX2NEE;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/upgrade/-$$Lambda$UpgradeFragment$sK6bTzf5PvXccflm5OYx7IX2NEE;-><init>(Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance p2, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    const v0, 0x7f0a0236

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mSearchBar:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    .line 63
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mSearchBar:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    const v0, 0x7f1202b6

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->setTitle(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mSearchBar:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    const v0, 0x7f1202b5

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->setDescription(Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mSearchBar:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    const v0, 0x7f110003

    const v1, 0x4015b1e6

    invoke-virtual {p2, v0, v1}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->setVideo(IF)V

    .line 67
    new-instance p2, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    const v0, 0x7f0a0132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mGestures:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    .line 68
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mGestures:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    const v0, 0x7f1202b4

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->setTitle(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mGestures:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    const v0, 0x7f1202b3

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->setDescription(Ljava/lang/String;)V

    .line 71
    new-instance p2, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    const v0, 0x7f0a0105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mFeed:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    .line 72
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSideScreenEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mFeed:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    const p2, 0x7f1202b2

    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->setTitle(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mFeed:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    const p2, 0x7f1202b1

    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->setDescription(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mFeed:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    const p2, 0x7f110002

    const v0, 0x3f9161fa

    invoke-virtual {p1, p2, v0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->setVideo(IF)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mFeed:Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$FeatureSection;->mView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :goto_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mContainer:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/view/View;->measure(II)V

    .line 81
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 82
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public runExitAnimation()V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->notifyFragmentWillRequestClose()V

    .line 92
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->mContainer:Landroid/view/View;

    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$1;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/voxel/simplesearchlauncher/upgrade/UpgradeFragment;->REVERSE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public unfocusFragment(Z)V
    .locals 0

    return-void
.end method
