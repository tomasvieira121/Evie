.class public final Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;
.super Ljava/lang/Object;
.source "BackgroundModule_ProvidesBackgroundModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/background/BackgroundModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final activationModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundEnabledProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final callbacksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final clientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/evie/sidescreen/dagger/BackgroundModule;

.field private final wallpaperModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/wallpaper/WallpaperModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/BackgroundModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/BackgroundModule;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/wallpaper/WallpaperModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->module:Lcom/evie/sidescreen/dagger/BackgroundModule;

    .line 43
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->backgroundEnabledProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->callbacksProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p5, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->activationModelProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->wallpaperModelProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p7, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->clientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/BackgroundModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/BackgroundModule;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/wallpaper/WallpaperModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;"
        }
    .end annotation

    .line 71
    new-instance v8, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;-><init>(Lcom/evie/sidescreen/dagger/BackgroundModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static proxyProvidesBackgroundModel(Lcom/evie/sidescreen/dagger/BackgroundModule;ZLandroid/content/Context;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/models/wallpaper/WallpaperModel;Lokhttp3/OkHttpClient;)Lcom/evie/sidescreen/background/BackgroundModel;
    .locals 0

    .line 90
    invoke-virtual/range {p0 .. p6}, Lcom/evie/sidescreen/dagger/BackgroundModule;->providesBackgroundModel(ZLandroid/content/Context;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/models/wallpaper/WallpaperModel;Lokhttp3/OkHttpClient;)Lcom/evie/sidescreen/background/BackgroundModel;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 89
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/background/BackgroundModel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/background/BackgroundModel;
    .locals 7

    .line 53
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->module:Lcom/evie/sidescreen/dagger/BackgroundModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->backgroundEnabledProvider:Ljavax/inject/Provider;

    .line 55
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 56
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->callbacksProvider:Ljavax/inject/Provider;

    .line 57
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->activationModelProvider:Ljavax/inject/Provider;

    .line 58
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evie/sidescreen/ActivationModel;

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->wallpaperModelProvider:Ljavax/inject/Provider;

    .line 59
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evie/models/wallpaper/WallpaperModel;

    iget-object v6, p0, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->clientProvider:Ljavax/inject/Provider;

    .line 60
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/OkHttpClient;

    .line 53
    invoke-static/range {v0 .. v6}, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->proxyProvidesBackgroundModel(Lcom/evie/sidescreen/dagger/BackgroundModule;ZLandroid/content/Context;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/models/wallpaper/WallpaperModel;Lokhttp3/OkHttpClient;)Lcom/evie/sidescreen/background/BackgroundModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/BackgroundModule_ProvidesBackgroundModelFactory;->get()Lcom/evie/sidescreen/background/BackgroundModel;

    move-result-object v0

    return-object v0
.end method
