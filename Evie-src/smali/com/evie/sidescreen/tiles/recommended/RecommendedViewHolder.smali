.class public Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "RecommendedViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field private mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

.field mLoading:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    sget v0, Lcom/evie/sidescreen/R$layout;->tile_recommended:I

    sput v0, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    new-instance v0, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-direct {v0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    .line 31
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder$1;-><init>(Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 39
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;)Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    return-object p0
.end method


# virtual methods
.method public hideLoading()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->mLoading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public setItemPresenters(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->mAdapter:Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;->setItemPresenters(Ljava/util/List;Z)V

    .line 46
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    if-eqz p1, :cond_2

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    :goto_1
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public showError()V
    .locals 0

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->mLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method
