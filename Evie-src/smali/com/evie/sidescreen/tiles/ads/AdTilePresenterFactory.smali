.class public interface abstract Lcom/evie/sidescreen/tiles/ads/AdTilePresenterFactory;
.super Ljava/lang/Object;
.source "AdTilePresenterFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/evie/sidescreen/tiles/ads/AdUnit;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(Lcom/evie/sidescreen/tiles/ads/AdUnit;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/Thing;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/TilePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/evie/models/sidescreen/data/SideScreenContentTile;",
            "Lorg/schema/Thing;",
            "Lcom/evie/sidescreen/analytics/data/ScreenInfo;",
            ")",
            "Lcom/evie/sidescreen/tiles/TilePresenter<",
            "*>;"
        }
    .end annotation
.end method
