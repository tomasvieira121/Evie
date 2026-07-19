.class public interface abstract Lcom/evie/models/frequentlyused/FrequentlyUsedAPI;
.super Ljava/lang/Object;
.source "FrequentlyUsedAPI.java"


# virtual methods
.method public abstract predict(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-ID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/evie/models/frequentlyused/data/FrequentlyUsedResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/predict"
    .end annotation
.end method
