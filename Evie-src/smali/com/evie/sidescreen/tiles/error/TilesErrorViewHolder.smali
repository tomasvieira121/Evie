.class public Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "TilesErrorViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    sget v0, Lcom/evie/sidescreen/R$layout;->tiles_error:I

    sput v0, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/error/TilesErrorViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/error/TilesErrorPresenter;->onRetryClick(Landroid/view/View;)V

    return-void
.end method
