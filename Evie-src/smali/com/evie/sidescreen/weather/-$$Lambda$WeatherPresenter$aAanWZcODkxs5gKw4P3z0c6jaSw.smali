.class public final synthetic Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$aAanWZcODkxs5gKw4P3z0c6jaSw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/weather/WeatherPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/weather/WeatherPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$aAanWZcODkxs5gKw4P3z0c6jaSw;->f$0:Lcom/evie/sidescreen/weather/WeatherPresenter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$aAanWZcODkxs5gKw4P3z0c6jaSw;->f$0:Lcom/evie/sidescreen/weather/WeatherPresenter;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/weather/WeatherPresenter;->lambda$refreshWeather$4(Lcom/evie/sidescreen/weather/WeatherPresenter;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
