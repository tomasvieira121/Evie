.class public Lcom/evie/sidescreen/tiles/footer/TilesFooterViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "TilesFooterViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/tiles/footer/TilesFooterPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    sget v0, Lcom/evie/sidescreen/R$layout;->tiles_footer:I

    sput v0, Lcom/evie/sidescreen/tiles/footer/TilesFooterViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
