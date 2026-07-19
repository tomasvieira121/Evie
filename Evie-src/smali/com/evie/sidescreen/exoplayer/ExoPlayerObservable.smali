.class public Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;
.super Lio/reactivex/Observable;
.source "ExoPlayerObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final mExtractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private final mHandler:Landroid/os/Handler;

.field private mLastKnownPosition:J

.field private mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private final mPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/SimpleExoPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDisposable:Lio/reactivex/disposables/Disposable;

.field private final mProgressObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "*>;"
        }
    .end annotation
.end field

.field private final mRendererListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

.field private final mStateListener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

.field private final mSubject:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/SimpleExoPlayer;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;",
            ")V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 52
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mSubject:Lio/reactivex/subjects/Subject;

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    .line 56
    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mProgressObservable:Lio/reactivex/Observable;

    .line 60
    new-instance v0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable$1;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable$1;-><init>(Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;)V

    iput-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mRendererListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    .line 79
    new-instance v0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable$2;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable$2;-><init>(Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;)V

    iput-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mStateListener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 121
    iput-wide v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mLastKnownPosition:J

    .line 129
    iput-object p1, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayerProvider:Ljavax/inject/Provider;

    .line 130
    iput-object p2, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 131
    iput-object p3, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mExtractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;)Lio/reactivex/subjects/Subject;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mSubject:Lio/reactivex/subjects/Subject;

    return-object p0
.end method

.method private disposeProgressDisposable()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mProgressDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mProgressDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$play$1(Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 251
    iget-object p1, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mSubject:Lio/reactivex/subjects/Subject;

    new-instance v0, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;

    invoke-virtual {p0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getPosition()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;-><init>(J)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$prepare$0(Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;Lcom/google/android/exoplayer2/ExoPlayer;Lcom/google/android/exoplayer2/source/MediaSource;Ljava/io/IOException;)V
    .locals 0

    .line 198
    iget-object p3, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eq p3, p1, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-direct {p0, p2}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)Lio/reactivex/Observable;

    return-void
.end method

.method private prepare(Lcom/google/android/exoplayer2/source/MediaSource;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    .line 214
    iget-object p1, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mSubject:Lio/reactivex/subjects/Subject;

    return-object p1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mLastKnownPosition:J

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->disposeProgressDisposable()V

    .line 229
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :cond_1
    return-void
.end method

.method public getDuration()J
    .locals 7

    .line 315
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 319
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    move-wide v1, v3

    :cond_1
    return-wide v1
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    return-object v0

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExoPlayerObservable is not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPosition()J
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 328
    iget-wide v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mLastKnownPosition:J

    return-wide v0

    .line 330
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public initialize()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->dispose()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iput-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 142
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mStateListener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 143
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mRendererListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoDebugListener(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 264
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mSubject:Lio/reactivex/subjects/Subject;

    new-instance v1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Pause;

    invoke-direct {v1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Pause;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 265
    invoke-direct {p0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->disposeProgressDisposable()V

    return-void
.end method

.method public play()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 248
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mSubject:Lio/reactivex/subjects/Subject;

    new-instance v1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Play;

    invoke-direct {v1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Play;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 249
    invoke-direct {p0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->disposeProgressDisposable()V

    .line 250
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mProgressObservable:Lio/reactivex/Observable;

    new-instance v1, Lcom/evie/sidescreen/exoplayer/-$$Lambda$ExoPlayerObservable$V7DeVTzwUv5QcCF31BdzLIewYQ8;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/exoplayer/-$$Lambda$ExoPlayerObservable$V7DeVTzwUv5QcCF31BdzLIewYQ8;-><init>(Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mProgressDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public prepare(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object p1, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mSubject:Lio/reactivex/subjects/Subject;

    new-instance v0, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Error;

    invoke-direct {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Error;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 168
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 171
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 172
    iget-object p1, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 175
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    iget-object v2, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v3, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable$3;

    invoke-direct {v4, p0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable$3;-><init>(Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 188
    new-instance v6, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    iget-object v2, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v3, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mExtractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    iget-object v4, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/evie/sidescreen/exoplayer/-$$Lambda$ExoPlayerObservable$GzxNTzWCEU78BlXYqHJgCNlHXJU;

    invoke-direct {v5, p0, p1, v0}, Lcom/evie/sidescreen/exoplayer/-$$Lambda$ExoPlayerObservable$GzxNTzWCEU78BlXYqHJgCNlHXJU;-><init>(Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;Lcom/google/android/exoplayer2/ExoPlayer;Lcom/google/android/exoplayer2/source/MediaSource;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    .line 204
    invoke-direct {p0, v6}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public seek(J)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 281
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mSubject:Lio/reactivex/subjects/Subject;

    new-instance v1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;

    invoke-direct {v1, p1, p2}, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;-><init>(J)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    return-void
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;",
            ">;)V"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->mSubject:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
