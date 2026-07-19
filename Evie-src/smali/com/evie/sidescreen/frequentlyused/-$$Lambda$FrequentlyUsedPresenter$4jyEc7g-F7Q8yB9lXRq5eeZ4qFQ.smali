.class public final synthetic Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$4jyEc7g-F7Q8yB9lXRq5eeZ4qFQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$4jyEc7g-F7Q8yB9lXRq5eeZ4qFQ;->f$0:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/-$$Lambda$FrequentlyUsedPresenter$4jyEc7g-F7Q8yB9lXRq5eeZ4qFQ;->f$0:Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;

    check-cast p1, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->lambda$null$2(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
