.class public interface abstract Lcom/evie/models/frequentlyused/room/AppLaunchDAO;
.super Ljava/lang/Object;
.source "AppLaunchDAO.java"


# virtual methods
.method public abstract deleteAllOlderThanLimit(J)I
.end method

.method public abstract getAllEntries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/models/frequentlyused/room/AppLaunchEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMostRecentEntry()Lio/reactivex/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Lcom/evie/models/frequentlyused/room/AppLaunchEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertAppLaunchEntry(Lcom/evie/models/frequentlyused/room/AppLaunchEntry;)V
.end method
