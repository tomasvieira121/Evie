.class public interface abstract Lcom/evie/config/LauncherConfigAPI;
.super Ljava/lang/Object;
.source "LauncherConfigAPI.java"


# virtual methods
.method public abstract getLauncherConfig()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/evie/config/LauncherConfigData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/config/launcher"
    .end annotation
.end method
