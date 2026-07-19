.class public final Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesWallpaperModelFactory;
.super Ljava/lang/Object;
.source "BackgroundModule_ProvidesWallpaperModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/models/wallpaper/WallpaperModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/sidescreen/dagger/BackgroundModule;

.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/BackgroundModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/BackgroundModule;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesWallpaperModelFactory;->module:Lcom/evie/sidescreen/dagger/BackgroundModule;

    .line 23
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesWallpaperModelFactory;->retrofitProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/BackgroundModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesWallpaperModelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/BackgroundModule;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesWallpaperModelFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesWallpaperModelFactory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesWallpaperModelFactory;-><init>(Lcom/evie/sidescreen/dagger/BackgroundModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesWallpaperModel(Lcom/evie/sidescreen/dagger/BackgroundModule;Lretrofit2/Retrofit;)Lcom/evie/models/wallpaper/WallpaperModel;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/BackgroundModule;->providesWallpaperModel(Lretrofit2/Retrofit;)Lcom/evie/models/wallpaper/WallpaperModel;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 38
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/models/wallpaper/WallpaperModel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/models/wallpaper/WallpaperModel;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesWallpaperModelFactory;->module:Lcom/evie/sidescreen/dagger/BackgroundModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesWallpaperModelFactory;->retrofitProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Retrofit;

    invoke-static {v0, v1}, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesWallpaperModelFactory;->proxyProvidesWallpaperModel(Lcom/evie/sidescreen/dagger/BackgroundModule;Lretrofit2/Retrofit;)Lcom/evie/models/wallpaper/WallpaperModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesWallpaperModelFactory;->get()Lcom/evie/models/wallpaper/WallpaperModel;

    move-result-object v0

    return-object v0
.end method
