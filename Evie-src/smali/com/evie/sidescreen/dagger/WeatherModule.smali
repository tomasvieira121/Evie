.class public Lcom/evie/sidescreen/dagger/WeatherModule;
.super Ljava/lang/Object;
.source "WeatherModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesWeatherModel(Lretrofit2/Retrofit;)Lcom/evie/models/weather/WeatherModel;
    .locals 1

    .line 19
    invoke-virtual {p1}, Lretrofit2/Retrofit;->newBuilder()Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    const-class v0, Lcom/evie/models/weather/WeatherAPI;

    .line 21
    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/models/weather/WeatherAPI;

    .line 23
    new-instance v0, Lcom/evie/models/weather/WeatherModel;

    invoke-direct {v0, p1}, Lcom/evie/models/weather/WeatherModel;-><init>(Lcom/evie/models/weather/WeatherAPI;)V

    return-object v0
.end method
