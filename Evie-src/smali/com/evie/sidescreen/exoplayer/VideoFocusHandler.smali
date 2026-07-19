.class public Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;
.super Ljava/lang/Object;
.source "VideoFocusHandler.java"


# instance fields
.field private final mRequesters:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialRequester:Ljava/lang/Object;

.field private final mSubjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSubjects:Ljava/util/Map;

    .line 21
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mRequesters:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method private handlePriorities()V
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mRequesters:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSpecialRequester:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSubjects:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/subjects/Subject;

    .line 144
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSpecialRequester:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 151
    iget-object v2, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSubjects:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/Subject;

    goto :goto_1

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mRequesters:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 156
    iget-object v2, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSubjects:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/Subject;

    :goto_1
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 160
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_3
    const/4 v2, 0x0

    .line 163
    :goto_2
    iget-object v3, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mRequesters:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 164
    iget-object v3, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mRequesters:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 165
    iget-object v4, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSubjects:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/Subject;

    if-eq v3, v0, :cond_4

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public loseSpecialFocus(Ljava/lang/Object;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSpecialRequester:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const-string p1, "attempting to lose special focus it doesn\'t own!"

    .line 120
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSubjects:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/subjects/Subject;

    if-eqz p1, :cond_1

    .line 126
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSpecialRequester:Ljava/lang/Object;

    .line 130
    invoke-direct {p0}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->handlePriorities()V

    return-void
.end method

.method public register(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSubjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSubjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/subjects/BehaviorSubject;

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSubjects:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 44
    :goto_0
    invoke-virtual {p1}, Lio/reactivex/subjects/BehaviorSubject;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public requestFocus(ILjava/lang/Object;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mRequesters:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 65
    iget-object p1, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSubjects:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 66
    invoke-virtual {p0, p2}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->register(Ljava/lang/Object;)Lio/reactivex/Observable;

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->handlePriorities()V

    return-void
.end method

.method public takeSpecialFocus(Ljava/lang/Object;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSpecialRequester:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSubjects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/Subject;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 107
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 111
    :cond_1
    iput-object p1, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSpecialRequester:Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSubjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->register(Ljava/lang/Object;)Lio/reactivex/Observable;

    .line 115
    :cond_2
    invoke-direct {p0}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->handlePriorities()V

    return-void
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSubjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unrequestFocus(ILjava/lang/Object;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mSubjects:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/Subject;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 80
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mRequesters:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ne v0, p2, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unrequesting focus for a priority it doesn\'t own!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->mRequesters:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p2, p1}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 89
    invoke-direct {p0}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->handlePriorities()V

    return-void
.end method
