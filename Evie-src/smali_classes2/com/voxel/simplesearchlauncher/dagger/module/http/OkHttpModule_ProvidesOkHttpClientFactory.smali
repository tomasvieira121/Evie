.class public final Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule_ProvidesOkHttpClientFactory;
.super Ljava/lang/Object;
.source "OkHttpModule_ProvidesOkHttpClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule_ProvidesOkHttpClientFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;)Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule_ProvidesOkHttpClientFactory;
    .locals 1

    .line 25
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule_ProvidesOkHttpClientFactory;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule_ProvidesOkHttpClientFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;)V

    return-object v0
.end method

.method public static proxyProvidesOkHttpClient(Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;)Lokhttp3/OkHttpClient;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;->providesOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/OkHttpClient;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule_ProvidesOkHttpClientFactory;->get()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/OkHttpClient;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule_ProvidesOkHttpClientFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule_ProvidesOkHttpClientFactory;->proxyProvidesOkHttpClient(Lcom/voxel/simplesearchlauncher/dagger/module/http/OkHttpModule;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
