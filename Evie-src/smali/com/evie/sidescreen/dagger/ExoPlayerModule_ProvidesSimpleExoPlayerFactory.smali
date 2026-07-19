.class public final Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesSimpleExoPlayerFactory;
.super Ljava/lang/Object;
.source "ExoPlayerModule_ProvidesSimpleExoPlayerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/exoplayer2/SimpleExoPlayer;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/evie/sidescreen/dagger/ExoPlayerModule;

.field private final trackSelectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/ExoPlayerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/ExoPlayerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelector;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesSimpleExoPlayerFactory;->module:Lcom/evie/sidescreen/dagger/ExoPlayerModule;

    .line 28
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesSimpleExoPlayerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesSimpleExoPlayerFactory;->trackSelectorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/ExoPlayerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesSimpleExoPlayerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/ExoPlayerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelector;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesSimpleExoPlayerFactory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesSimpleExoPlayerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesSimpleExoPlayerFactory;-><init>(Lcom/evie/sidescreen/dagger/ExoPlayerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesSimpleExoPlayer(Lcom/evie/sidescreen/dagger/ExoPlayerModule;Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/evie/sidescreen/dagger/ExoPlayerModule;->providesSimpleExoPlayer(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 47
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesSimpleExoPlayerFactory;->module:Lcom/evie/sidescreen/dagger/ExoPlayerModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesSimpleExoPlayerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesSimpleExoPlayerFactory;->trackSelectorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-static {v0, v1, v2}, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesSimpleExoPlayerFactory;->proxyProvidesSimpleExoPlayer(Lcom/evie/sidescreen/dagger/ExoPlayerModule;Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesSimpleExoPlayerFactory;->get()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method
