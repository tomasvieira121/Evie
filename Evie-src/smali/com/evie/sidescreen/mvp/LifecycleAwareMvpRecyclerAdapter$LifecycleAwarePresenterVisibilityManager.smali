.class Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;
.super Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;
.source "LifecycleAwareMvpRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LifecycleAwarePresenterVisibilityManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;-><init>(Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;-><init>(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;)V

    return-void
.end method

.method public static synthetic lambda$listen$0(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    invoke-static {p1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->access$200(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;)Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    move-result-object p1

    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 41
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    invoke-static {v0}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->access$200(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;)Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static synthetic lambda$listen$1(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->setShowing(Z)V

    return-void
.end method

.method public static synthetic lambda$listen$2(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    iget-object p1, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    invoke-static {p1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->access$200(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;)Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    move-result-object p1

    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->HIDE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 53
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$listen$3(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->setShowing(Z)V

    return-void
.end method

.method public static synthetic lambda$listen$4(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    iget-object p1, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    invoke-static {p1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->access$200(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;)Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    move-result-object p1

    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->RESUME:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 60
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$listen$5(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->setResumed(Z)V

    return-void
.end method

.method public static synthetic lambda$listen$6(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    iget-object p1, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    invoke-static {p1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->access$200(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;)Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    move-result-object p1

    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->PAUSE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 67
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$listen$7(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->setResumed(Z)V

    return-void
.end method


# virtual methods
.method public listen()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    iget-object v0, v0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    .line 38
    invoke-static {v1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->access$100(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;)Lcom/evie/sidescreen/ActivationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evie/sidescreen/ActivationModel;->getActivationObservable()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$bDREH0VSAyncIBbMlCkCTjHFQ8g;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$bDREH0VSAyncIBbMlCkCTjHFQ8g;-><init>(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;)V

    .line 39
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 47
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$ipTfCPiYAwLNZ8xAudiKMe67loA;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$ipTfCPiYAwLNZ8xAudiKMe67loA;-><init>(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;)V

    .line 48
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 50
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    iget-object v0, v0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    .line 51
    invoke-static {v1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->access$100(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;)Lcom/evie/sidescreen/ActivationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evie/sidescreen/ActivationModel;->getActivationObservable()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$utMWqihP3zy1SDXg1tgyM5hrwOY;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$utMWqihP3zy1SDXg1tgyM5hrwOY;-><init>(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;)V

    .line 52
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 54
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$JwpLfV-oc0nBEoG5tkdjTaK3cjc;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$JwpLfV-oc0nBEoG5tkdjTaK3cjc;-><init>(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;)V

    .line 55
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 57
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    iget-object v0, v0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    .line 58
    invoke-static {v1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->access$100(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;)Lcom/evie/sidescreen/ActivationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evie/sidescreen/ActivationModel;->getActivationObservable()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$RW4qslqiju37uGj-mYw4r1xwJzo;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$RW4qslqiju37uGj-mYw4r1xwJzo;-><init>(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;)V

    .line 59
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 61
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$77mZoP2ADnb5vxzQ8qAqWpdMTfk;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$77mZoP2ADnb5vxzQ8qAqWpdMTfk;-><init>(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;)V

    .line 62
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 64
    iget-object v0, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    iget-object v0, v0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;->this$0:Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    .line 65
    invoke-static {v1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->access$100(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;)Lcom/evie/sidescreen/ActivationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evie/sidescreen/ActivationModel;->getActivationObservable()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$ucKXumP0N0GnqX28qqHjl_R__hI;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$ucKXumP0N0GnqX28qqHjl_R__hI;-><init>(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;)V

    .line 66
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 68
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$dNAnfQegi4CKgm_D-g8hjRUtOa8;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/mvp/-$$Lambda$LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager$dNAnfQegi4CKgm_D-g8hjRUtOa8;-><init>(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;)V

    .line 69
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
