.class public Lcom/evie/config/LauncherConfigModel;
.super Ljava/lang/Object;
.source "LauncherConfigModel.java"


# instance fields
.field private final mAPI:Lcom/evie/config/LauncherConfigAPI;


# direct methods
.method public constructor <init>(Lcom/evie/config/LauncherConfigAPI;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/config/LauncherConfigModel;->mAPI:Lcom/evie/config/LauncherConfigAPI;

    return-void
.end method


# virtual methods
.method public getContent()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/evie/common/data/Lce<",
            "Lcom/evie/config/LauncherConfigData;",
            ">;>;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/evie/config/LauncherConfigModel;->mAPI:Lcom/evie/config/LauncherConfigAPI;

    invoke-interface {v0}, Lcom/evie/config/LauncherConfigAPI;->getLauncherConfig()Lio/reactivex/Observable;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/evie/common/data/Lce;->transformRequestToLce()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
