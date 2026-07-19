.class public final synthetic Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$6id9OlmgkfYEjb_b05RlDErF08U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$6id9OlmgkfYEjb_b05RlDErF08U;->f$0:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$6id9OlmgkfYEjb_b05RlDErF08U;->f$0:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;

    check-cast p1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->lambda$onBindViewHolder$1(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    return-void
.end method
