.class public Lcom/evie/sidescreen/TileSettings;
.super Ljava/lang/Object;
.source "TileSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/TileSettings$TileSettingsBuilder;
    }
.end annotation


# instance fields
.field private final autoplayVideos:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/TileSettings;->autoplayVideos:Lio/reactivex/Observable;

    return-void
.end method

.method public static builder()Lcom/evie/sidescreen/TileSettings$TileSettingsBuilder;
    .locals 1

    .line 9
    new-instance v0, Lcom/evie/sidescreen/TileSettings$TileSettingsBuilder;

    invoke-direct {v0}, Lcom/evie/sidescreen/TileSettings$TileSettingsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public autoplayVideos()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/evie/sidescreen/TileSettings;->autoplayVideos:Lio/reactivex/Observable;

    return-object v0
.end method
