.class public Lcom/evie/sidescreen/dagger/TileSettingsModule;
.super Ljava/lang/Object;
.source "TileSettingsModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideAutoplayVideoSetting(Lcom/evie/sidescreen/TileSettings;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/TileSettings;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-virtual {p1}, Lcom/evie/sidescreen/TileSettings;->autoplayVideos()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
