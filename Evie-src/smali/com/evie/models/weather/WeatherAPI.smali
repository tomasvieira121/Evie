.class public interface abstract Lcom/evie/models/weather/WeatherAPI;
.super Ljava/lang/Object;
.source "WeatherAPI.java"


# virtual methods
.method public abstract getWeather(DD)Lio/reactivex/Observable;
    .param p1    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "lat"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "lon"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/evie/models/weather/WeatherData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/android/weather"
    .end annotation
.end method
