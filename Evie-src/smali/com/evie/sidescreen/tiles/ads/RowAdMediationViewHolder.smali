.class public Lcom/evie/sidescreen/tiles/ads/RowAdMediationViewHolder;
.super Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationViewHolder;
.source "RowAdMediationViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationViewHolder<",
        "Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget v0, Lcom/evie/sidescreen/R$layout;->tile_ad_row:I

    sput v0, Lcom/evie/sidescreen/tiles/ads/RowAdMediationViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
