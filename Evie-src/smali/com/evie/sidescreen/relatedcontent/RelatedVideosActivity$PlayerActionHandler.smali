.class public Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;
.super Ljava/lang/Object;
.source "RelatedVideosActivity.java"

# interfaces
.implements Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayerActionHandler"
.end annotation


# instance fields
.field private SENSOR_ORIENTATION_CHANGE_DELAY:I

.field private mControlsFocus:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private orientationHandler:Landroid/os/Handler;

.field private sensorRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x7d0

    .line 646
    iput p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->SENSOR_ORIENTATION_CHANGE_DELAY:I

    .line 648
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->mControlsFocus:Lio/reactivex/subjects/BehaviorSubject;

    .line 649
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->orientationHandler:Landroid/os/Handler;

    .line 650
    new-instance p1, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$PlayerActionHandler$w6GnehXxoKQOvYaFbahwX_m-b64;

    invoke-direct {p1, p0}, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$PlayerActionHandler$w6GnehXxoKQOvYaFbahwX_m-b64;-><init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;)V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->sensorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;)V
    .locals 0

    .line 645
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->exitFullScreenOrientation()V

    return-void
.end method

.method private enterFullScreenOrientation()V
    .locals 4

    .line 723
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->orientationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->sensorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 726
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$300(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setRequestedOrientation(I)V

    .line 736
    :goto_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$200(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->orientationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->sensorRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->SENSOR_ORIENTATION_CHANGE_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private exitFullScreenOrientation()V
    .locals 4

    .line 711
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->orientationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->sensorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 713
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setRequestedOrientation(I)V

    .line 714
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$200(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->orientationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->sensorRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->SENSOR_ORIENTATION_CHANGE_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;)V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setRequestedOrientation(I)V

    return-void
.end method


# virtual methods
.method public manuallyEnterFullScreen()V
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$300(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$200(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->orientationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->sensorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 746
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setRequestedOrientation(I)V

    .line 748
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$600(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Landroid/view/OrientationEventListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->createOrientationListenerInstance()Landroid/view/OrientationEventListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$602(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Landroid/view/OrientationEventListener;)Landroid/view/OrientationEventListener;

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$600(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 753
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$600(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 757
    :cond_1
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->enterFullScreenOrientation()V

    goto :goto_0

    .line 761
    :cond_2
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->onEnterFullScreen()V

    :cond_3
    :goto_0
    return-void
.end method

.method public manuallyExitFullScreen()V
    .locals 2

    .line 766
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$600(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Landroid/view/OrientationEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$600(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 768
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$602(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Landroid/view/OrientationEventListener;)Landroid/view/OrientationEventListener;

    .line 771
    :cond_0
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->exitFullScreenOrientation()V

    .line 774
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$400(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$300(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 775
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->onExitFullScreen()V

    :cond_1
    return-void
.end method

.method public observeControlsFocus()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->mControlsFocus:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method

.method public onEnterFullScreen()V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$400(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->mControlsFocus:Lio/reactivex/subjects/BehaviorSubject;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 679
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$402(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Z)Z

    .line 681
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$500(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Lorg/schema/VideoObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$000(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler;->enterFullscreen()V

    return-void
.end method

.method public onExitFullScreen()V
    .locals 3

    .line 689
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$400(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$402(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Z)Z

    .line 694
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 695
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 697
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$000(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler;->exitFullscreen()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    iget-object v0, v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 662
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->mControlsFocus:Lio/reactivex/subjects/BehaviorSubject;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 663
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$000(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler;->onVideoPause()V

    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    iget-object v0, v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mContentView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 655
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->mControlsFocus:Lio/reactivex/subjects/BehaviorSubject;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 656
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$000(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler;->onVideoPlay()V

    return-void
.end method

.method public onScrub(J)V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->mControlsFocus:Lio/reactivex/subjects/BehaviorSubject;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 669
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$000(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/evie/sidescreen/relatedcontent/VideoHandler;->onVideoScrub(J)V

    return-void
.end method
