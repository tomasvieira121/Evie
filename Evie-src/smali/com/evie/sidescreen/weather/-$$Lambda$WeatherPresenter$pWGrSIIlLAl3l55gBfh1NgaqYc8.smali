.class public final synthetic Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$pWGrSIIlLAl3l55gBfh1NgaqYc8;
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

    iput-object p1, p0, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$pWGrSIIlLAl3l55gBfh1NgaqYc8;->f$0:Lcom/evie/sidescreen/weather/WeatherPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/weather/-$$Lambda$WeatherPresenter$pWGrSIIlLAl3l55gBfh1NgaqYc8;->f$0:Lcom/evie/sidescreen/weather/WeatherPresenter;

    check-cast p1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/weather/WeatherPresenter;->lambda$onBindViewHolder$0(Lcom/evie/sidescreen/weather/WeatherPresenter;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    return-void
.end method
