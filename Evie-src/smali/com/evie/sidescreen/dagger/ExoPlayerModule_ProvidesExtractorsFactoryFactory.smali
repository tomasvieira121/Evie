.class public final Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesExtractorsFactoryFactory;
.super Ljava/lang/Object;
.source "ExoPlayerModule_ProvidesExtractorsFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/sidescreen/dagger/ExoPlayerModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/ExoPlayerModule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesExtractorsFactoryFactory;->module:Lcom/evie/sidescreen/dagger/ExoPlayerModule;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/ExoPlayerModule;)Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesExtractorsFactoryFactory;
    .locals 1

    .line 26
    new-instance v0, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesExtractorsFactoryFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesExtractorsFactoryFactory;-><init>(Lcom/evie/sidescreen/dagger/ExoPlayerModule;)V

    return-object v0
.end method

.method public static proxyProvidesExtractorsFactory(Lcom/evie/sidescreen/dagger/ExoPlayerModule;)Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/ExoPlayerModule;->providesExtractorsFactory()Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesExtractorsFactoryFactory;->module:Lcom/evie/sidescreen/dagger/ExoPlayerModule;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesExtractorsFactoryFactory;->proxyProvidesExtractorsFactory(Lcom/evie/sidescreen/dagger/ExoPlayerModule;)Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesExtractorsFactoryFactory;->get()Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    move-result-object v0

    return-object v0
.end method
