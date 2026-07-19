.class public final Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesRetrofitFactory;
.super Ljava/lang/Object;
.source "RetrofitModule_ProvidesRetrofitFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lretrofit2/Retrofit;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;

.field private final serverUrlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesRetrofitFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;

    .line 30
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesRetrofitFactory;->gsonProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesRetrofitFactory;->clientProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesRetrofitFactory;->serverUrlProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesRetrofitFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesRetrofitFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesRetrofitFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesRetrofitFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesRetrofit(Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;->providesRetrofit(Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 52
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/Retrofit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesRetrofitFactory;->get()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit2/Retrofit;
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesRetrofitFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesRetrofitFactory;->gsonProvider:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesRetrofitFactory;->clientProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/OkHttpClient;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesRetrofitFactory;->serverUrlProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 37
    invoke-static {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesRetrofitFactory;->proxyProvidesRetrofit(Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method
