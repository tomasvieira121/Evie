.class public Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;
.super Ljava/lang/Object;
.source "FullScreenPeekyControls.java"


# instance fields
.field private isShown:Z

.field private mActionHandler:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$ActionHandler;

.field private mContainer:Landroid/view/View;

.field private mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mFullScreenController:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/View;Landroid/view/View;Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$ActionHandler;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->isShown:Z

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mHandler:Landroid/os/Handler;

    .line 30
    iput-object p2, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mWindow:Landroid/view/Window;

    .line 31
    iput-object p3, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mFullScreenController:Landroid/view/View;

    .line 34
    sget p2, Lcom/evie/sidescreen/R$id;->fullscreen_controller:I

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/evie/sidescreen/R$color;->dark_theme_bg_transparent:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    iput-object p4, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mContainer:Landroid/view/View;

    .line 40
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x1006

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 43
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mWindow:Landroid/view/Window;

    const/16 p2, 0x400

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 45
    iput-object p5, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mActionHandler:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$ActionHandler;

    return-void
.end method

.method public static synthetic lambda$initialize$0(Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->showControls()V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->hideControlsDelayed()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$initialize$1(Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->toggleController()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 72
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideControls()V
    .locals 3

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->isShown:Z

    .line 88
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mFullScreenController:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 89
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mFullScreenController:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public hideControlsDelayed()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3

    .line 49
    new-instance v0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$8Ll1RBhZHBAVi2-dB_ehD9ycrcI;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$8Ll1RBhZHBAVi2-dB_ehD9ycrcI;-><init>(Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;)V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mRunnable:Ljava/lang/Runnable;

    .line 50
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mActionHandler:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$ActionHandler;

    .line 51
    invoke-interface {v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$ActionHandler;->observeControlsFocus()Lio/reactivex/Observable;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$FullScreenPeekyControls$kmDlNlkXkUuWUHbDthVlXo0QRpM;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$FullScreenPeekyControls$kmDlNlkXkUuWUHbDthVlXo0QRpM;-><init>(Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;)V

    .line 53
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/evie/sidescreen/R$dimen;->ss_popup_video_viewer_playback_control_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mHeight:I

    .line 65
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mContainer:Landroid/view/View;

    new-instance v0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$FullScreenPeekyControls$3R6rBy_f5kE_wzUm1tyihyFQtDA;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$FullScreenPeekyControls$3R6rBy_f5kE_wzUm1tyihyFQtDA;-><init>(Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 94
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public showControls()V
    .locals 3

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->isShown:Z

    .line 77
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mFullScreenController:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 79
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->mFullScreenController:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public toggleController()V
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->isShown:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->hideControls()V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->showControls()V

    .line 102
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->hideControlsDelayed()V

    :goto_0
    return-void
.end method
