.class public Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;
.super Ljava/lang/Object;
.source "LifecycleCallbacks.java"


# instance fields
.field private mEventSubjectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleEvent;",
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsResumed:Z

.field private mIsShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->mEventSubjectMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->mIsShowing:Z

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->mIsResumed:Z

    .line 21
    invoke-static {}, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->values()[Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 22
    iget-object v4, p0, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->mEventSubjectMap:Ljava/util/Map;

    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/lifecycle/-$$Lambda$LifecycleCallbacks$_r3CLjfkQva7fepv87piJynEh4o;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/lifecycle/-$$Lambda$LifecycleCallbacks$_r3CLjfkQva7fepv87piJynEh4o;-><init>(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 26
    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->HIDE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/lifecycle/-$$Lambda$LifecycleCallbacks$APkuwKR5DG7HjfrwXpCWka7ysy0;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/lifecycle/-$$Lambda$LifecycleCallbacks$APkuwKR5DG7HjfrwXpCWka7ysy0;-><init>(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 27
    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->RESUME:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/lifecycle/-$$Lambda$LifecycleCallbacks$zNKPMLTUbFacjNYKIIToF0Brl2A;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/lifecycle/-$$Lambda$LifecycleCallbacks$zNKPMLTUbFacjNYKIIToF0Brl2A;-><init>(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 28
    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->PAUSE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/lifecycle/-$$Lambda$LifecycleCallbacks$Ch0aHGu5sQ1W0bOlov5Fac_Tpxc;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/lifecycle/-$$Lambda$LifecycleCallbacks$Ch0aHGu5sQ1W0bOlov5Fac_Tpxc;-><init>(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 30
    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->DETACH:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/lifecycle/-$$Lambda$LifecycleCallbacks$zg5DPBRePXBVxf8BIc_WgAS0DMk;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/lifecycle/-$$Lambda$LifecycleCallbacks$zg5DPBRePXBVxf8BIc_WgAS0DMk;-><init>(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->mIsShowing:Z

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->mIsShowing:Z

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->mIsResumed:Z

    return-void
.end method

.method public static synthetic lambda$new$3(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->mIsResumed:Z

    return-void
.end method

.method public static synthetic lambda$new$4(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->mIsResumed:Z

    .line 32
    iput-boolean p1, p0, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->mIsShowing:Z

    return-void
.end method


# virtual methods
.method public getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/lifecycle/LifecycleEvent;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleEvent;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->mEventSubjectMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/Observable;

    return-object p1
.end method

.method public isResumed()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->mIsResumed:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->mIsShowing:Z

    return v0
.end method

.method public onLifecycleEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->mEventSubjectMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
