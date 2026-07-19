.class public Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;
.super Lcom/evie/sidescreen/tiles/TileViewHolder;
.source "AbstractHeroViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/evie/sidescreen/tiles/TilePresenter;",
        ">",
        "Lcom/evie/sidescreen/tiles/TileViewHolder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field sideMargin:I
    .annotation runtime Lbutterknife/BindDimen;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/TileViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setTopHeroMode(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;->sideMargin:I

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method
