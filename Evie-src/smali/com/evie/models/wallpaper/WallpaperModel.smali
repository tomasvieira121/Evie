.class public Lcom/evie/models/wallpaper/WallpaperModel;
.super Ljava/lang/Object;
.source "WallpaperModel.java"


# instance fields
.field private final mAPI:Lcom/evie/models/wallpaper/WallpaperAPI;


# direct methods
.method public constructor <init>(Lcom/evie/models/wallpaper/WallpaperAPI;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/wallpaper/WallpaperModel;->mAPI:Lcom/evie/models/wallpaper/WallpaperAPI;

    return-void
.end method


# virtual methods
.method public getWallpapers()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/evie/common/data/Lce<",
            "Lcom/evie/models/wallpaper/WallpaperData;",
            ">;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/evie/models/wallpaper/WallpaperModel;->mAPI:Lcom/evie/models/wallpaper/WallpaperAPI;

    invoke-interface {v0}, Lcom/evie/models/wallpaper/WallpaperAPI;->getWallpapers()Lio/reactivex/Observable;

    move-result-object v0

    .line 16
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/evie/common/data/Lce;->transformRequestToLce()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
