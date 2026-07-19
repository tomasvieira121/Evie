.class public Lcom/evie/sidescreen/TileSettings$TileSettingsBuilder;
.super Ljava/lang/Object;
.source "TileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/TileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TileSettingsBuilder"
.end annotation


# instance fields
.field private autoplayVideos:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/TileSettings$TileSettingsBuilder;->autoplayVideos:Lio/reactivex/Observable;

    return-void
.end method


# virtual methods
.method public autoplayVideos(Lio/reactivex/Observable;)Lcom/evie/sidescreen/TileSettings$TileSettingsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/evie/sidescreen/TileSettings$TileSettingsBuilder;"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/evie/sidescreen/TileSettings$TileSettingsBuilder;->autoplayVideos:Lio/reactivex/Observable;

    return-object p0
.end method

.method public build()Lcom/evie/sidescreen/TileSettings;
    .locals 2

    .line 9
    new-instance v0, Lcom/evie/sidescreen/TileSettings;

    iget-object v1, p0, Lcom/evie/sidescreen/TileSettings$TileSettingsBuilder;->autoplayVideos:Lio/reactivex/Observable;

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/TileSettings;-><init>(Lio/reactivex/Observable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TileSettings.TileSettingsBuilder(autoplayVideos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/sidescreen/TileSettings$TileSettingsBuilder;->autoplayVideos:Lio/reactivex/Observable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
