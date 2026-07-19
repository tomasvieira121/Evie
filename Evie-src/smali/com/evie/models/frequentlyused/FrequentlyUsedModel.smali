.class public interface abstract Lcom/evie/models/frequentlyused/FrequentlyUsedModel;
.super Ljava/lang/Object;
.source "FrequentlyUsedModel.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# virtual methods
.method public abstract addAppLaunchEntry(Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V
.end method

.method public abstract getFrequentlyUsedApps()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract refresh()V
.end method
