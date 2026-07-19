.class public Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;
.super Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;
.source "LockOverlayFragment.java"


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final REVERSE_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAuthenticationCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

.field mBackground:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mCancellationSignal:Landroidx/core/os/CancellationSignal;

.field private mCloseRunnable:Ljava/lang/Runnable;

.field mControlGroup:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mControlHeight:I

.field mFingerprintIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mGroupContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mIsClosing:Z

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field mText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mUnlockIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x3eb33333    # 0.35f

    const v1, 0x3f451eb8    # 0.77f

    const v2, 0x3e428f5c    # 0.19f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 51
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    const v0, 0x3f4f5c29    # 0.81f

    const/4 v1, 0x0

    const v2, 0x3f266666    # 0.65f

    const v3, 0x3e6b851f    # 0.23f

    .line 52
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->REVERSE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;-><init>()V

    .line 47
    new-instance v0, Lcom/voxel/simplesearchlauncher/lock/-$$Lambda$LockOverlayFragment$V0bJJ8DPxVfBFmesOX8xQycXZIs;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/lock/-$$Lambda$LockOverlayFragment$V0bJJ8DPxVfBFmesOX8xQycXZIs;-><init>(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mCloseRunnable:Ljava/lang/Runnable;

    .line 140
    new-instance v0, Lcom/voxel/simplesearchlauncher/lock/-$$Lambda$LockOverlayFragment$Dtg6mx2_ItdaG1IUn3AJsrR1OUM;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/lock/-$$Lambda$LockOverlayFragment$Dtg6mx2_ItdaG1IUn3AJsrR1OUM;-><init>(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 145
    new-instance v0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mAuthenticationCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->onUnlockSuccess()V

    return-void
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->notifyFragmentRequestClose()V

    return-void
.end method

.method public static synthetic lambda$animateOpen$2(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$animateOpen$3(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mControlGroup:Landroid/view/View;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mControlHeight:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->runExitAnimation()V

    return-void
.end method

.method public static synthetic lambda$new$4(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;Landroid/view/View;)Z
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->onUnlockSuccess()V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$onViewCreated$1(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->runExitAnimation()V

    return-void
.end method

.method public static synthetic lambda$runExitAnimation$5(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$runExitAnimation$6(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mControlGroup:Landroid/view/View;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mControlHeight:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private onUnlockSuccess()V
    .locals 3

    .line 131
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setDesktopUnlockedTemporarily(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f12011e

    const/4 v2, 0x0

    .line 135
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->runExitAnimation()V

    return-void
.end method


# virtual methods
.method animateOpen()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mGroupContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 85
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 86
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mGroupContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mControlHeight:I

    const/4 v0, 0x2

    .line 88
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 89
    sget-object v2, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 90
    new-instance v2, Lcom/voxel/simplesearchlauncher/lock/-$$Lambda$LockOverlayFragment$bGDVt5SGtgHDfk376_sJwt4PYQ8;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/lock/-$$Lambda$LockOverlayFragment$bGDVt5SGtgHDfk376_sJwt4PYQ8;-><init>(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 94
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 95
    sget-object v2, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    new-instance v2, Lcom/voxel/simplesearchlauncher/lock/-$$Lambda$LockOverlayFragment$wu20FlRqrur2vFB4eP54u94CC7k;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/lock/-$$Lambda$LockOverlayFragment$wu20FlRqrur2vFB4eP54u94CC7k;-><init>(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 99
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mControlGroup:Landroid/view/View;

    iget v3, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mControlHeight:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 101
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 103
    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 104
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 105
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 106
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public focusFragment(Z)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0d0063

    const/4 p3, 0x0

    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onFragmentWillClose()V
    .locals 2

    .line 207
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onFragmentWillClose()V

    .line 209
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

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
    .locals 0

    .line 62
    invoke-super {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 64
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mView:Landroid/view/View;

    .line 65
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mHandler:Landroid/os/Handler;

    .line 68
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/lock/-$$Lambda$LockOverlayFragment$Nc6ea21zOP9qDFt-DDp6tdsWVcc;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/lock/-$$Lambda$LockOverlayFragment$Nc6ea21zOP9qDFt-DDp6tdsWVcc;-><init>(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->setupFingerprints(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->setupLongpress()V

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->scheduleClose()V

    .line 80
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->animateOpen()V

    return-void
.end method

.method public runExitAnimation()V
    .locals 3

    .line 171
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mIsClosing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mIsClosing:Z

    .line 177
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->notifyFragmentWillRequestClose()V

    const/4 v0, 0x2

    .line 179
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 180
    sget-object v2, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->REVERSE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    new-instance v2, Lcom/voxel/simplesearchlauncher/lock/-$$Lambda$LockOverlayFragment$mevStcq_kdNPBg4W5TUurlZYet8;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/lock/-$$Lambda$LockOverlayFragment$mevStcq_kdNPBg4W5TUurlZYet8;-><init>(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 185
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 186
    sget-object v2, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->REVERSE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 187
    new-instance v2, Lcom/voxel/simplesearchlauncher/lock/-$$Lambda$LockOverlayFragment$jJH-6rqrYCAoYT7V94rk0JOpn7Y;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/lock/-$$Lambda$LockOverlayFragment$jJH-6rqrYCAoYT7V94rk0JOpn7Y;-><init>(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 191
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 192
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 193
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 194
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 195
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 196
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment$2;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment$2;-><init>(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method scheduleClose()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mCloseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method setupFingerprints(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;)V
    .locals 7

    .line 115
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mText:Landroid/widget/TextView;

    const v1, 0x7f12011c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    new-instance v0, Landroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    .line 119
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mAuthenticationCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->authenticate(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    return-void
.end method

.method setupLongpress()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mUnlockIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mText:Landroid/widget/TextView;

    const v1, 0x7f12011d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mUnlockIcon:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLongClickable(Z)V

    .line 127
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mUnlockIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public unfocusFragment(Z)V
    .locals 0

    return-void
.end method
