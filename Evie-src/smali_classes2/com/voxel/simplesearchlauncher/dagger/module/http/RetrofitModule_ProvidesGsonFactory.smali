.class public final Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesGsonFactory;
.super Ljava/lang/Object;
.source "RetrofitModule_ProvidesGsonFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/gson/Gson;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;

.field private final typeAdaptersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/Class;",
            "Lcom/google/gson/JsonDeserializer;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/Class;",
            "Lcom/google/gson/JsonDeserializer;",
            ">;>;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesGsonFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;

    .line 24
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesGsonFactory;->typeAdaptersProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesGsonFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/Class;",
            "Lcom/google/gson/JsonDeserializer;",
            ">;>;>;)",
            "Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesGsonFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesGsonFactory;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesGsonFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesGson(Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;Ljava/util/Set;)Lcom/google/gson/Gson;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/Class;",
            "Lcom/google/gson/JsonDeserializer;",
            ">;>;)",
            "Lcom/google/gson/Gson;"
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;->providesGson(Ljava/util/Set;)Lcom/google/gson/Gson;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 39
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/Gson;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/google/gson/Gson;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesGsonFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesGsonFactory;->typeAdaptersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesGsonFactory;->proxyProvidesGson(Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule;Ljava/util/Set;)Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/http/RetrofitModule_ProvidesGsonFactory;->get()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method
