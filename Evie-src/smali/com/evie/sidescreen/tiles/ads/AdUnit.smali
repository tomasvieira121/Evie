.class public abstract Lcom/evie/sidescreen/tiles/ads/AdUnit;
.super Ljava/lang/Object;
.source "AdUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/evie/sidescreen/mvp/MvpViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mImpressionTapSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mTestMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/ads/AdUnit;->mTestMode:Z

    .line 16
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/ads/AdUnit;->mLoadSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 19
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/ads/AdUnit;->mImpressionTapSubject:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public getLoadCompletable()Lio/reactivex/Completable;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/ads/AdUnit;->mLoadSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->ignoreElements()Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public abstract isLoadError()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract load()V
.end method

.method public setTestMode(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/evie/sidescreen/tiles/ads/AdUnit;->mTestMode:Z

    return-void
.end method
