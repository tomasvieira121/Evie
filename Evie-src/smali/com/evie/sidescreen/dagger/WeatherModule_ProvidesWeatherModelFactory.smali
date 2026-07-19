.class public final Lcom/evie/sidescreen/dagger/WeatherModule_ProvidesWeatherModelFactory;
.super Ljava/lang/Object;
.source "WeatherModule_ProvidesWeatherModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/models/weather/WeatherModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/sidescreen/dagger/WeatherModule;

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
.method public constructor <init>(Lcom/evie/sidescreen/dagger/WeatherModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/WeatherModule;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/WeatherModule_ProvidesWeatherModelFactory;->module:Lcom/evie/sidescreen/dagger/WeatherModule;

    .line 22
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/WeatherModule_ProvidesWeatherModelFactory;->retrofitProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/WeatherModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/WeatherModule_ProvidesWeatherModelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/WeatherModule;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/WeatherModule_ProvidesWeatherModelFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/evie/sidescreen/dagger/WeatherModule_ProvidesWeatherModelFactory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/dagger/WeatherModule_ProvidesWeatherModelFactory;-><init>(Lcom/evie/sidescreen/dagger/WeatherModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesWeatherModel(Lcom/evie/sidescreen/dagger/WeatherModule;Lretrofit2/Retrofit;)Lcom/evie/models/weather/WeatherModel;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/WeatherModule;->providesWeatherModel(Lretrofit2/Retrofit;)Lcom/evie/models/weather/WeatherModel;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 36
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/models/weather/WeatherModel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/models/weather/WeatherModel;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/WeatherModule_ProvidesWeatherModelFactory;->module:Lcom/evie/sidescreen/dagger/WeatherModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/WeatherModule_ProvidesWeatherModelFactory;->retrofitProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Retrofit;

    invoke-static {v0, v1}, Lcom/evie/sidescreen/dagger/WeatherModule_ProvidesWeatherModelFactory;->proxyProvidesWeatherModel(Lcom/evie/sidescreen/dagger/WeatherModule;Lretrofit2/Retrofit;)Lcom/evie/models/weather/WeatherModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/WeatherModule_ProvidesWeatherModelFactory;->get()Lcom/evie/models/weather/WeatherModel;

    move-result-object v0

    return-object v0
.end method
