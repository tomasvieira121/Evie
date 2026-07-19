.class public final synthetic Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$BN0xNXhy8iok2j1aAejfUANwe8w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/weather/WeatherPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/weather/WeatherPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$BN0xNXhy8iok2j1aAejfUANwe8w;->f$0:Lcom/evie/sidescreen/weather/WeatherPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$BN0xNXhy8iok2j1aAejfUANwe8w;->f$0:Lcom/evie/sidescreen/weather/WeatherPresenter;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/weather/WeatherPresenter;->lambda$onBindViewHolder$1(Lcom/evie/sidescreen/weather/WeatherPresenter;Landroid/util/Pair;)V

    return-void
.end method
