.class public final Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable_Factory;
.super Ljava/lang/Object;
.source "ExoPlayerObservable_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataSourceFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final extractorsFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final playerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/SimpleExoPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/SimpleExoPlayer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable_Factory;->playerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable_Factory;->dataSourceFactoryProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable_Factory;->extractorsFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/SimpleExoPlayer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;",
            ">;)",
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable_Factory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;
    .locals 4

    .line 32
    new-instance v0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    iget-object v1, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable_Factory;->playerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable_Factory;->dataSourceFactoryProvider:Ljavax/inject/Provider;

    .line 33
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v3, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable_Factory;->extractorsFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;-><init>(Ljavax/inject/Provider;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable_Factory;->get()Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    move-result-object v0

    return-object v0
.end method
