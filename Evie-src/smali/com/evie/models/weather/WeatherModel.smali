.class public Lcom/evie/models/weather/WeatherModel;
.super Ljava/lang/Object;
.source "WeatherModel.java"


# instance fields
.field private final mAPI:Lcom/evie/models/weather/WeatherAPI;


# direct methods
.method public constructor <init>(Lcom/evie/models/weather/WeatherAPI;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/weather/WeatherModel;->mAPI:Lcom/evie/models/weather/WeatherAPI;

    return-void
.end method


# virtual methods
.method public getWeather(DD)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Lio/reactivex/Observable<",
            "Lcom/evie/common/data/Lce<",
            "Lcom/evie/models/weather/WeatherData;",
            ">;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/evie/models/weather/WeatherModel;->mAPI:Lcom/evie/models/weather/WeatherAPI;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/evie/models/weather/WeatherAPI;->getWeather(DD)Lio/reactivex/Observable;

    move-result-object p1

    .line 16
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 17
    invoke-static {}, Lcom/evie/common/data/Lce;->transformRequestToLce()Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
