.class public interface abstract Lcom/evie/models/wallpaper/WallpaperAPI;
.super Ljava/lang/Object;
.source "WallpaperAPI.java"


# virtual methods
.method public abstract getWallpapers()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/evie/models/wallpaper/WallpaperData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/android/wallpaper"
    .end annotation
.end method
