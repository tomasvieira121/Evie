.class public Lcom/evie/sidescreen/TopEmptyShortViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "TopEmptyShortViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/TopEmptyShortItemPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_top_empty_short_item:I

    sput v0, Lcom/evie/sidescreen/TopEmptyShortViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setHeight(I)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/evie/sidescreen/TopEmptyShortViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 17
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    iget-object p1, p0, Lcom/evie/sidescreen/TopEmptyShortViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
