.class public Lcom/evie/sidescreen/background/BackgroundModelDisabled;
.super Lcom/evie/sidescreen/background/BackgroundModel;
.source "BackgroundModelDisabled.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/evie/sidescreen/background/BackgroundModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-static {}, Lio/reactivex/Observable;->never()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
