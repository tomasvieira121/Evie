.class public final synthetic Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$axZITgd2mHi-kiz5Y2vu9RceQiQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/weather/WeatherPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/weather/WeatherPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$axZITgd2mHi-kiz5Y2vu9RceQiQ;->f$0:Lcom/evie/sidescreen/weather/WeatherPresenter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$axZITgd2mHi-kiz5Y2vu9RceQiQ;->f$0:Lcom/evie/sidescreen/weather/WeatherPresenter;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/weather/WeatherPresenter;->lambda$refreshWeather$3(Lcom/evie/sidescreen/weather/WeatherPresenter;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
