.class public final synthetic Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$fLGWy8xiVFSRHXqSvmdnj-RUQOY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lio/reactivex/Observable;

.field private final synthetic f$1:Lio/reactivex/Observable;

.field private final synthetic f$2:Lio/reactivex/Observable;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/Observable;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$fLGWy8xiVFSRHXqSvmdnj-RUQOY;->f$0:Lio/reactivex/Observable;

    iput-object p2, p0, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$fLGWy8xiVFSRHXqSvmdnj-RUQOY;->f$1:Lio/reactivex/Observable;

    iput-object p3, p0, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$fLGWy8xiVFSRHXqSvmdnj-RUQOY;->f$2:Lio/reactivex/Observable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$fLGWy8xiVFSRHXqSvmdnj-RUQOY;->f$0:Lio/reactivex/Observable;

    iget-object v1, p0, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$fLGWy8xiVFSRHXqSvmdnj-RUQOY;->f$1:Lio/reactivex/Observable;

    iget-object v2, p0, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$fLGWy8xiVFSRHXqSvmdnj-RUQOY;->f$2:Lio/reactivex/Observable;

    invoke-static {v0, v1, v2, p1}, Lcom/evie/sidescreen/weather/WeatherPresenter;->lambda$refreshWeather$2(Lio/reactivex/Observable;Lio/reactivex/Observable;Lio/reactivex/Observable;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
