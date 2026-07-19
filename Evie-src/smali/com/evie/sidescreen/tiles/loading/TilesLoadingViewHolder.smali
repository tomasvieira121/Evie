.class public Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "TilesLoadingViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mLoading:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget v0, Lcom/evie/sidescreen/R$layout;->tiles_loading:I

    sput v0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hideProgress()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;->mLoading:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 34
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public showProgress()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingViewHolder;->mLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
